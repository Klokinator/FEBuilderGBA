@thumb

;FE8J 08019950 から呼び出される
;r0 章マップ構造体
;r1 壊していよい
;r2 壊してよい
;r3 壊してよい
;r4 マップID
;r5 マップポインタ

;マップ構造体の保存
push {r0}

;一時フラグ 0x28 を変化フラグとして利用する.
mov	r0, #0x28
;blだと距離が足りないかもしれないので、@dcw	$F800 で強制的に飛ばす.
;bl	$00083DA8     ;フラグ状態確認関数
ldr	r2, =$08083DA8
mov	r14, r2
@dcw	$F800


cmp r0,#0x1
bne DEFAULT_PALETTE

;偽のパレットplistを返す
;偽のパレットは、 章マップ構造の未使用領域 #0x2d(+45)を利用する
mov  r0,#0x2d
b END

DEFAULT_PALETTE

;通常のマップパレットを返す.
mov r0,#0x6
END

; マップ構造体を復帰.
pop {r1} 
;パレットplistを返す
ldrb r0,[r1,r0]

;;破壊するコードを補完する.
lsl	r0, r0, #0x2     ;<<2
add	r0, r0, r5       ;マップポインタと合算し、パレットの位置を記録 08907b00->0819E5AC
ldr	r0, [r0, #0x0]
mov	r2, #0xa0
lsl	r2, r2, #0x1

;元の領域に戻す
ldr r1,=$0801995C
mov pc,r1
