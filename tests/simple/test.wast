(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32 i32) (result i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32) (result i32)))
 (type $5 (func (param f64) (result f64)))
 (type $6 (func (result i32)))
 (type $7 (func (param f64 f64 i32) (result f64)))
 (type $8 (func (param f64 i32) (result i32)))
 (type $9 (func (param f64 f64) (result f64)))
 (type $10 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $11 (func (param f64 i32) (result f64)))
 (type $12 (func))
 (import "env" "console_log" (func $import$0 (param i32 i32)))
 (import "env" "memset" (func $import$1 (param i32 i32 i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (data (i32.const 4) "`2")
 (data (i32.const 16) "Hello from webassembly")
 (data (i32.const 48) "\03\00\00\00\04\00\00\00\04\00\00\00\06")
 (data (i32.const 64) "\83\f9\a2\00DNn\00\fc)\15\00\d1W\'\00\dd4\f5\00b\db\c0\00<\99\95\00A\90C\00cQ\fe\00\bb\de\ab\00\b7a\c5\00:n$\00\d2MB\00I\06\e0\00\t\ea.\00\1c\92\d1\00\eb\1d\fe\00)\b1\1c\00\e8>\a7\00\f55\82\00D\bb.\00\9c\e9\84\00\b4&p\00A~_\00\d6\919\00S\839\00\9c\f49\00\8b_\84\00(\f9\bd\00\f8\1f;\00\de\ff\97\00\0f\98\05\00\11/\ef\00\nZ\8b\00m\1fm\00\cf~6\00\t\cb\'\00FO\b7\00\9ef?\00-\ea_\00\ba\'u\00\e5\eb\c7\00={\f1\00\f79\07\00\92R\8a\00\fbk\ea\00\1f\b1_\00\08]\8d\000\03V\00{\fcF\00\f0\abk\00 \bc\cf\006\f4\9a\00\e3\a9\1d\00^a\91\00\08\1b\e6\00\85\99e\00\a0\14_\00\8d@h\00\80\d8\ff\00\'sM\00\06\061\00\caV\15\00\c9\a8s\00{\e2`\00k\8c\c0\00\19\c4G\00\cdg\c3\00\t\e8\dc\00Y\83*\00\8bv\c4\00\a6\1c\96\00D\af\dd\00\19W\d1\00\a5>\05\00\05\07\ff\003~?\00\c22\e8\00\98O\de\00\bb}2\00&=\c3\00\1ek\ef\00\9f\f8^\005\1f:\00\7f\f2\ca\00\f1\87\1d\00|\90!\00j$|\00\d5n\fa\000-w\00\15;C\00\b5\14\c6\00\c3\19\9d\00\ad\c4\c2\00,MA\00\0c\00]\00\86}F\00\e3q-\00\9b\c6\9a\003b\00\00\b4\d2|\00\b4\a7\97\007U\d5\00\d7>\f6\00\a3\10\18\00Mv\fc\00d\9d*\00p\d7\ab\00c|\f8\00z\b0W\00\17\15\e7\00\c0IV\00;\d6\d9\00\a7\848\00$#\cb\00\d6\8aw\00ZT#\00\00\1f\b9\00\f1\n\1b\00\19\ce\df\00\9f1\ff\00f\1ej\00\99Wa\00\ac\fbG\00~\7f\d8\00\"e\b7\002\e8\89\00\e6\bf`\00\ef\c4\cd\00l6\t\00]?\d4\00\16\de\d7\00X;\de\00\de\9b\92\00\d2\"(\00(\86\e8\00\e2XM\00\c6\ca2\00\08\e3\16\00\e0}\cb\00\17\c0P\00\f3\1d\a7\00\18\e0[\00.\134\00\83\12b\00\83H\01\00\f5\8e[\00\ad\b0\7f\00\1e\e9\f2\00HJC\00\10g\d3\00\aa\dd\d8\00\ae_B\00ja\ce\00\n(\a4\00\d3\99\b4\00\06\a6\f2\00\\w\7f\00\a3\c2\83\00a<\88\00\8asx\00\af\8cZ\00o\d7\bd\00-\a6c\00\f4\bf\cb\00\8d\81\ef\00&\c1g\00U\caE\00\ca\d96\00(\a8\d2\00\c2a\8d\00\12\c9w\00\04&\14\00\12F\9b\00\c4Y\c4\00\c8\c5D\00M\b2\91\00\00\17\f3\00\d4C\ad\00)I\e5\00\fd\d5\10\00\00\be\fc\00\1e\94\cc\00p\ce\ee\00\13>\f5\00\ec\f1\80\00\b3\e7\c3\00\c7\f8(\00\93\05\94\00\c1q>\00.\t\b3\00\0bE\f3\00\88\12\9c\00\ab {\00.\b5\9f\00G\92\c2\00{2/\00\0cUm\00r\a7\90\00k\e7\1f\001\cb\96\00y\16J\00Ay\e2\00\f4\df\89\00\e8\94\97\00\e2\e6\84\00\991\97\00\88\edk\00__6\00\bb\fd\0e\00H\9a\b4\00g\a4l\00qrB\00\8d]2\00\9f\15\b8\00\bc\e5\t\00\8d1%\00\f7t9\000\05\1c\00\0d\0c\01\00K\08h\00,\eeX\00G\aa\90\00t\e7\02\00\bd\d6$\00\f7}\a6\00nHr\00\9f\16\ef\00\8e\94\a6\00\b4\91\f6\00\d1SQ\00\cf\n\f2\00 \983\00\f5K~\00\b2ch\00\dd>_\00@]\03\00\85\89\7f\00UR)\007d\c0\00m\d8\10\002H2\00[Lu\00Nq\d4\00ETn\00\0b\t\c1\00*\f5i\00\14f\d5\00\'\07\9d\00]\04P\00\b4;\db\00\eav\c5\00\87\f9\17\00Ik}\00\1d\'\ba\00\96i)\00\c6\cc\ac\00\ad\14T\00\90\e2j\00\88\d9\89\00,rP\00\04\a4\be\00w\07\94\00\f30p\00\00\fc\'\00\eaq\a8\00f\c2I\00d\e0=\00\97\dd\83\00\a3?\97\00C\94\fd\00\0d\86\8c\001A\de\00\929\9d\00\ddp\8c\00\17\b7\e7\00\08\df;\00\157+\00\\\80\a0\00Z\80\93\00\10\11\92\00\0f\e8\d8\00l\80\af\00\db\ffK\008\90\0f\00Y\18v\00b\a5\15\00a\cb\bb\00\c7\89\b9\00\10@\bd\00\d2\f2\04\00Iu\'\00\eb\b6\f6\00\db\"\bb\00\n\14\aa\00\89&/\00d\83v\00\t;3\00\0e\94\1a\00Q:\aa\00\1d\a3\c2\00\af\ed\ae\00\\&\12\00m\c2M\00-z\9c\00\c0V\97\00\03?\83\00\t\f0\f6\00+@\8c\00m1\99\009\b4\07\00\0c \15\00\d8\c3[\00\f5\92\c4\00\c6\adK\00N\ca\a5\00\a77\cd\00\e6\a96\00\ab\92\94\00\ddBh\00\19c\de\00v\8c\ef\00h\8bR\00\fc\db7\00\ae\a1\ab\00\df\151\00\00\ae\a1\00\0c\fb\da\00dMf\00\ed\05\b7\00)e0\00WV\bf\00G\ff:\00j\f9\b9\00u\be\f3\00(\93\df\00\ab\800\00f\8c\f6\00\04\cb\15\00\fa\"\06\00\d9\e4\1d\00=\b3\a4\00W\1b\8f\006\cd\t\00NB\e9\00\13\be\a4\003#\b5\00\f0\aa\1a\00Oe\a8\00\d2\c1\a5\00\0b?\0f\00[x\cd\00#\f9v\00{\8b\04\00\89\17r\00\c6\a6S\00on\e2\00\ef\eb\00\00\9bJX\00\c4\da\b7\00\aaf\ba\00v\cf\cf\00\d1\02\1d\00\b1\f1-\00\8c\99\c1\00\c3\adw\00\86H\da\00\f7]\a0\00\c6\80\f4\00\ac\f0/\00\dd\ec\9a\00?\\\bc\00\d0\dem\00\90\c7\1f\00*\db\b6\00\a3%:\00\00\af\9a\00\adS\93\00\b6W\04\00)-\b4\00K\80~\00\da\07\a7\00v\aa\0e\00{Y\a1\00\16\12*\00\dc\b7-\00\fa\e5\fd\00\89\db\fe\00\89\be\fd\00\e4vl\00\06\a9\fc\00>\80p\00\85n\15\00\fd\87\ff\00(>\07\00ag3\00*\18\86\00M\bd\ea\00\b3\e7\af\00\8fmn\00\95g9\001\bf[\00\84\d7H\000\df\16\00\c7-C\00%a5\00\c9p\ce\000\cb\b8\00\bfl\fd\00\a4\00\a2\00\05l\e4\00Z\dd\a0\00!oG\00b\12\d2\00\b9\\\84\00paI\00kV\e0\00\99R\01\00PU7\00\1e\d5\b7\003\f1\c4\00\13n_\00]0\e4\00\85.\a9\00\1d\b2\c3\00\a126\00\08\b7\a4\00\ea\b1\d4\00\16\f7!\00\8fi\e4\00\'\ffw\00\0c\03\80\00\8d@-\00O\cd\a0\00 \a5\99\00\b3\a2\d3\00/]\n\00\b4\f9B\00\11\da\cb\00}\be\d0\00\9b\db\c1\00\ab\17\bd\00\ca\a2\81\00\08j\\\00.U\17\00\'\00U\00\7f\14\f0\00\e1\07\86\00\14\0bd\00\96A\8d\00\87\be\de\00\da\fd*\00k%\b6\00{\894\00\05\f3\fe\00\b9\bf\9e\00hjO\00J*\a8\00O\c4Z\00-\f8\bc\00\d7Z\98\00\f4\c7\95\00\0dM\8d\00 :\a6\00\a4W_\00\14?\b1\00\808\95\00\cc \01\00q\dd\86\00\c9\de\b6\00\bf`\f5\00Me\11\00\01\07k\00\8c\b0\ac\00\b2\c0\d0\00QUH\00\1e\fb\0e\00\95r\c3\00\a3\06;\00\c0@5\00\06\dc{\00\e0E\cc\00N)\fa\00\d6\ca\c8\00\e8\f3A\00|d\de\00\9bd\d8\00\d9\be1\00\a4\97\c3\00wX\d4\00i\e3\c5\00\f0\da\13\00\ba:<\00F\18F\00Uu_\00\d2\bd\f5\00n\92\c6\00\ac.]\00\0eD\ed\00\1c>B\00a\c4\87\00)\fd\e9\00\e7\d6\f3\00\"|\ca\00o\915\00\08\e0\c5\00\ff\d7\8d\00nj\e2\00\b0\fd\c6\00\93\08\c1\00|]t\00k\ad\b2\00\cdn\9d\00>r{\00\c6\11j\00\f7\cf\a9\00)s\df\00\b5\c9\ba\00\b7\00Q\00\e2\b2\0d\00t\ba$\00\e5}`\00t\d8\8a\00\0d\15,\00\81\18\0c\00~f\94\00\01)\16\00\9fzv\00\fd\fd\be\00VE\ef\00\d9~6\00\ec\d9\13\00\8b\ba\b9\00\c4\97\fc\001\a8\'\00\f1n\c3\00\94\c56\00\d8\a8V\00\b4\a8\b5\00\cf\cc\0e\00\12\89-\00oW4\00,V\89\00\99\ce\e3\00\d6 \b9\00k^\aa\00>*\9c\00\11_\cc\00\fd\0bJ\00\e1\f4\fb\00\8e;m\00\e2\86,\00\e9\d4\84\00\fc\b4\a9\00\ef\ee\d1\00.5\c9\00/9a\008!D\00\1b\d9\c8\00\81\fc\n\00\fbJj\00/\1c\d8\00S\b4\84\00N\99\8c\00T\"\cc\00*U\dc\00\c0\c6\d6\00\0b\19\96\00\1ap\b8\00i\95d\00&Z`\00?R\ee\00\7f\11\0f\00\f4\b5\11\00\fc\cb\f5\004\bc-\004\bc\ee\00\e8]\cc\00\dd^`\00g\8e\9b\00\923\ef\00\c9\17\b8\00aX\9b\00\e1W\bc\00Q\83\c6\00\d8>\10\00\ddqH\00-\1c\dd\00\af\18\a1\00!,F\00Y\f3\d7\00\d9z\98\00\9eT\c0\00O\86\fa\00V\06\fc\00\e5y\ae\00\89\"6\008\ad\"\00g\93\dc\00U\e8\aa\00\82&8\00\ca\e7\9b\00Q\0d\a4\00\993\b1\00\a9\d7\0e\00i\05H\00e\b2\f0\00\7f\88\a7\00\88L\97\00\f9\d16\00!\92\b3\00{\82J\00\98\cf!\00@\9f\dc\00\dcGU\00\e1t:\00g\ebB\00\fe\9d\df\00^\d4_\00{g\a4\00\ba\acz\00U\f6\a2\00+\88#\00A\baU\00Yn\08\00!*\86\009G\83\00\89\e3\e6\00\e5\9e\d4\00I\fb@\00\ffV\e9\00\1c\0f\ca\00\c5Y\8a\00\94\fa+\00\d3\c1\c5\00\0f\c5\cf\00\dbZ\ae\00G\c5\86\00\85Cb\00!\86;\00,y\94\00\10a\87\00*L{\00\80,\1a\00C\bf\12\00\88&\90\00x<\89\00\a8\c4\e4\00\e5\db{\00\c4:\c2\00&\f4\ea\00\f7g\8a\00\0d\92\bf\00e\a3+\00=\93\b1\00\bd|\0b\00\a4Q\dc\00\'\ddc\00i\e1\dd\00\9a\94\19\00\a8)\95\00h\ce(\00\t\ed\b4\00D\9f \00N\98\ca\00p\82c\00~|#\00\0f\b92\00\a7\f5\8e\00\14V\e7\00!\f1\08\00\b5\9d*\00o~M\00\a5\19Q\00\b5\f9\ab\00\82\df\d6\00\96\dda\00\166\02\00\c4:\9f\00\83\a2\a1\00r\edm\009\8dz\00\82\b8\a9\00k2\\\00F\'[\00\004\ed\00\d2\00w\00\fc\f4U\00\01YM\00\e0q\80")
 (data (i32.const 2835) "@\fb!\f9?\00\00\00\00-Dt>\00\00\00\80\98F\f8<\00\00\00`Q\ccx;\00\00\00\80\83\1b\f09\00\00\00@ %z8\00\00\00\80\"\82\e36\00\00\00\00\1d\f3i5")
 (export "add" (func $4))
 (export "what" (func $3))
 (start $5)
 (func $0 (type $11) (param $var$0 f64) (param $var$1 i32) (result f64)
  (block $label$0 f64
   (block $label$1
    (block $label$2
     (block $label$3
      (if
       (i32.ge_s
        (get_local $var$1)
        (i32.const 1024)
       )
       (block $label$4
        (set_local $var$0
         (f64.mul
          (get_local $var$0)
          (f64.const 8988465674311579538646525e283)
         )
        )
        (br_if $label$3
         (i32.lt_s
          (get_local $var$1)
          (i32.const 2047)
         )
        )
        (set_local $var$1
         (select
          (tee_local $var$1
           (i32.add
            (get_local $var$1)
            (i32.const -2046)
           )
          )
          (i32.const 1023)
          (i32.lt_s
           (get_local $var$1)
           (i32.const 1023)
          )
         )
        )
        (set_local $var$0
         (f64.mul
          (get_local $var$0)
          (f64.const 8988465674311579538646525e283)
         )
        )
        (br $label$1)
       )
      )
      (br_if $label$1
       (i32.gt_s
        (get_local $var$1)
        (i32.const -1023)
       )
      )
      (set_local $var$0
       (f64.mul
        (get_local $var$0)
        (f64.const 2.004168360008973e-292)
       )
      )
      (br_if $label$2
       (i32.gt_s
        (get_local $var$1)
        (i32.const -1992)
       )
      )
      (set_local $var$1
       (select
        (tee_local $var$1
         (i32.add
          (get_local $var$1)
          (i32.const 1938)
         )
        )
        (i32.const -1022)
        (i32.gt_s
         (get_local $var$1)
         (i32.const -1022)
        )
       )
      )
      (set_local $var$0
       (f64.mul
        (get_local $var$0)
        (f64.const 2.004168360008973e-292)
       )
      )
      (br $label$1)
     )
     (set_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const -1023)
      )
     )
     (br $label$1)
    )
    (set_local $var$1
     (i32.add
      (get_local $var$1)
      (i32.const 969)
     )
    )
   )
   (f64.mul
    (get_local $var$0)
    (f64.reinterpret/i64
     (i64.shl
      (i64.extend_u/i32
       (i32.add
        (get_local $var$1)
        (i32.const 1023)
       )
      )
      (i64.const 52)
     )
    )
   )
  )
 )
 (func $1 (type $7) (param $var$0 f64) (param $var$1 f64) (param $var$2 i32) (result f64)
  (local $var$3 f64)
  (local $var$4 f64)
  (local $var$5 f64)
  (block $label$0 f64
   (set_local $var$5
    (f64.add
     (f64.mul
      (f64.mul
       (tee_local $var$3
        (f64.mul
         (get_local $var$0)
         (get_local $var$0)
        )
       )
       (f64.mul
        (get_local $var$3)
        (get_local $var$3)
       )
      )
      (f64.add
       (f64.mul
        (get_local $var$3)
        (f64.const 1.58969099521155e-10)
       )
       (f64.const -2.5050760253406863e-08)
      )
     )
     (f64.add
      (f64.mul
       (get_local $var$3)
       (f64.add
        (f64.mul
         (get_local $var$3)
         (f64.const 2.7557313707070068e-06)
        )
        (f64.const -1.984126982985795e-04)
       )
      )
      (f64.const 0.00833333333332249)
     )
    )
   )
   (set_local $var$4
    (f64.mul
     (get_local $var$3)
     (get_local $var$0)
    )
   )
   (if
    (get_local $var$2)
    (block $label$1
     (return
      (f64.sub
       (get_local $var$0)
       (f64.add
        (f64.mul
         (get_local $var$4)
         (f64.const 0.16666666666666632)
        )
        (f64.sub
         (f64.mul
          (get_local $var$3)
          (f64.sub
           (f64.mul
            (get_local $var$1)
            (f64.const 0.5)
           )
           (f64.mul
            (get_local $var$4)
            (get_local $var$5)
           )
          )
         )
         (get_local $var$1)
        )
       )
      )
     )
    )
   )
   (f64.add
    (f64.mul
     (get_local $var$4)
     (f64.add
      (f64.mul
       (get_local $var$3)
       (get_local $var$5)
      )
      (f64.const -0.16666666666666632)
     )
    )
    (get_local $var$0)
   )
  )
 )
 (func $2 (type $9) (param $var$0 f64) (param $var$1 f64) (result f64)
  (local $var$2 f64)
  (local $var$3 f64)
  (local $var$4 f64)
  (f64.add
   (tee_local $var$4
    (f64.sub
     (f64.const 1)
     (tee_local $var$3
      (f64.mul
       (tee_local $var$2
        (f64.mul
         (get_local $var$0)
         (get_local $var$0)
        )
       )
       (f64.const 0.5)
      )
     )
    )
   )
   (f64.add
    (f64.sub
     (f64.sub
      (f64.const 1)
      (get_local $var$4)
     )
     (get_local $var$3)
    )
    (f64.sub
     (f64.mul
      (get_local $var$2)
      (f64.add
       (f64.mul
        (get_local $var$2)
        (f64.add
         (f64.mul
          (get_local $var$2)
          (f64.add
           (f64.mul
            (get_local $var$2)
            (f64.const 2.480158728947673e-05)
           )
           (f64.const -0.001388888888887411)
          )
         )
         (f64.const 0.0416666666666666)
        )
       )
       (f64.mul
        (f64.mul
         (tee_local $var$3
          (f64.mul
           (get_local $var$2)
           (get_local $var$2)
          )
         )
         (get_local $var$3)
        )
        (f64.add
         (f64.mul
          (get_local $var$2)
          (f64.add
           (f64.mul
            (get_local $var$2)
            (f64.const -1.1359647557788195e-11)
           )
           (f64.const 2.087572321298175e-09)
          )
         )
         (f64.const -2.7557314351390663e-07)
        )
       )
      )
     )
     (f64.mul
      (get_local $var$0)
      (get_local $var$1)
     )
    )
   )
  )
 )
 (func $3 (type $5) (param $var$0 f64) (result f64)
  (local $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $var$8 i32)
  (local $var$9 i32)
  (local $var$10 i32)
  (local $var$11 i32)
  (local $var$12 i32)
  (local $var$13 i32)
  (local $var$14 i32)
  (local $var$15 i32)
  (local $var$16 i32)
  (local $var$17 i32)
  (local $var$18 i32)
  (local $var$19 i32)
  (local $var$20 i32)
  (local $var$21 i32)
  (local $var$22 i32)
  (local $var$23 i32)
  (local $var$24 i32)
  (local $var$25 i32)
  (local $var$26 i32)
  (local $var$27 i32)
  (local $var$28 i32)
  (local $var$29 i32)
  (local $var$30 i32)
  (local $var$31 i32)
  (local $var$32 i32)
  (local $var$33 i32)
  (local $var$34 i64)
  (local $var$35 f64)
  (local $var$36 f64)
  (local $var$37 f64)
  (local $var$38 f64)
  (local $var$39 f64)
  (local $var$40 f64)
  (local $var$41 f64)
  (local $var$42 f64)
  (local $var$43 f64)
  (local $var$44 f64)
  (block $label$0 f64
   (set_local $var$38
    (get_local $var$0)
   )
   (i32.store
    (i32.const 4)
    (tee_local $var$13
     (i32.sub
      (i32.load
       (i32.const 4)
      )
      (i32.const 16)
     )
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (if
       (i32.le_u
        (tee_local $var$19
         (i32.and
          (i32.wrap/i64
           (i64.shr_u
            (i64.reinterpret/f64
             (get_local $var$38)
            )
            (i64.const 32)
           )
          )
          (i32.const 2147483647)
         )
        )
        (i32.const 1072243195)
       )
       (block $label$4
        (br_if $label$3
         (i32.gt_u
          (get_local $var$19)
          (i32.const 1045430271)
         )
        )
        (f64.store
         (get_local $var$13)
         (select
          (f64.mul
           (get_local $var$38)
           (f64.const 7.52316384526264e-37)
          )
          (f64.add
           (get_local $var$38)
           (f64.const 1329227995784915872903807e12)
          )
          (i32.lt_u
           (get_local $var$19)
           (i32.const 1048576)
          )
         )
        )
        (br $label$1)
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $var$19)
        (i32.const 2146435072)
       )
      )
      (set_local $var$38
       (f64.sub
        (get_local $var$38)
        (get_local $var$38)
       )
      )
      (br $label$1)
     )
     (set_local $var$38
      (call $1
       (get_local $var$38)
       (f64.const 0)
       (i32.const 0)
      )
     )
     (br $label$1)
    )
    (block $label$5
     (block $label$6
      (if
       (i32.ne
        (tee_local $var$19
         (i32.and
          (block $label$7 i32
           (set_local $var$36
            (get_local $var$38)
           )
           (set_local $var$6
            (get_local $var$13)
           )
           (i32.store
            (i32.const 4)
            (tee_local $var$15
             (i32.sub
              (i32.load
               (i32.const 4)
              )
              (i32.const 48)
             )
            )
           )
           (set_local $var$20
            (i32.wrap/i64
             (i64.shr_u
              (tee_local $var$34
               (i64.reinterpret/f64
                (get_local $var$36)
               )
              )
              (i64.const 63)
             )
            )
           )
           (block $label$8
            (block $label$9
             (block $label$10
              (block $label$11
               (block $label$12
                (block $label$13
                 (block $label$14
                  (block $label$15
                   (block $label$16
                    (block $label$17
                     (block $label$18
                      (block $label$19
                       (block $label$20
                        (if
                         (i32.le_u
                          (tee_local $var$14
                           (i32.and
                            (tee_local $var$8
                             (i32.wrap/i64
                              (i64.shr_u
                               (get_local $var$34)
                               (i64.const 32)
                              )
                             )
                            )
                            (i32.const 2147483647)
                           )
                          )
                          (i32.const 1074752122)
                         )
                         (block $label$21
                          (br_if $label$18
                           (i32.eq
                            (i32.and
                             (get_local $var$8)
                             (i32.const 1048575)
                            )
                            (i32.const 598523)
                           )
                          )
                          (br_if $label$20
                           (i32.gt_u
                            (get_local $var$14)
                            (i32.const 1073928572)
                           )
                          )
                          (br_if $label$15
                           (i32.eqz
                            (get_local $var$20)
                           )
                          )
                          (f64.store
                           (get_local $var$6)
                           (tee_local $var$37
                            (f64.add
                             (tee_local $var$36
                              (f64.add
                               (get_local $var$36)
                               (f64.const 1.5707963267341256)
                              )
                             )
                             (f64.const 6.077100506506192e-11)
                            )
                           )
                          )
                          (f64.store offset=8
                           (get_local $var$6)
                           (f64.add
                            (f64.sub
                             (get_local $var$36)
                             (get_local $var$37)
                            )
                            (f64.const 6.077100506506192e-11)
                           )
                          )
                          (set_local $var$8
                           (i32.const -1)
                          )
                          (br $label$8)
                         )
                        )
                        (if
                         (i32.le_u
                          (get_local $var$14)
                          (i32.const 1075594811)
                         )
                         (block $label$22
                          (br_if $label$19
                           (i32.gt_u
                            (get_local $var$14)
                            (i32.const 1075183036)
                           )
                          )
                          (br_if $label$18
                           (i32.eq
                            (get_local $var$14)
                            (i32.const 1074977148)
                           )
                          )
                          (br_if $label$13
                           (i32.eqz
                            (get_local $var$20)
                           )
                          )
                          (f64.store
                           (get_local $var$6)
                           (tee_local $var$37
                            (f64.add
                             (tee_local $var$36
                              (f64.add
                               (get_local $var$36)
                               (f64.const 4.712388980202377)
                              )
                             )
                             (f64.const 1.8231301519518578e-10)
                            )
                           )
                          )
                          (f64.store offset=8
                           (get_local $var$6)
                           (f64.add
                            (f64.sub
                             (get_local $var$36)
                             (get_local $var$37)
                            )
                            (f64.const 1.8231301519518578e-10)
                           )
                          )
                          (set_local $var$8
                           (i32.const -3)
                          )
                          (br $label$8)
                         )
                        )
                        (br_if $label$18
                         (i32.le_u
                          (get_local $var$14)
                          (i32.const 1094263290)
                         )
                        )
                        (br_if $label$17
                         (i32.lt_u
                          (get_local $var$14)
                          (i32.const 2146435072)
                         )
                        )
                        (f64.store
                         (get_local $var$6)
                         (tee_local $var$36
                          (f64.sub
                           (get_local $var$36)
                           (get_local $var$36)
                          )
                         )
                        )
                        (f64.store offset=8
                         (get_local $var$6)
                         (get_local $var$36)
                        )
                        (set_local $var$8
                         (i32.const 0)
                        )
                        (br $label$8)
                       )
                       (br_if $label$14
                        (i32.eqz
                         (get_local $var$20)
                        )
                       )
                       (f64.store
                        (get_local $var$6)
                        (tee_local $var$37
                         (f64.add
                          (tee_local $var$36
                           (f64.add
                            (get_local $var$36)
                            (f64.const 3.1415926534682512)
                           )
                          )
                          (f64.const 1.2154201013012384e-10)
                         )
                        )
                       )
                       (f64.store offset=8
                        (get_local $var$6)
                        (f64.add
                         (f64.sub
                          (get_local $var$36)
                          (get_local $var$37)
                         )
                         (f64.const 1.2154201013012384e-10)
                        )
                       )
                       (set_local $var$8
                        (i32.const -2)
                       )
                       (br $label$8)
                      )
                      (br_if $label$16
                       (i32.ne
                        (get_local $var$14)
                        (i32.const 1075388923)
                       )
                      )
                     )
                     (f64.store
                      (get_local $var$6)
                      (tee_local $var$36
                       (f64.sub
                        (tee_local $var$41
                         (f64.add
                          (get_local $var$36)
                          (f64.mul
                           (tee_local $var$37
                            (f64.add
                             (f64.add
                              (f64.mul
                               (get_local $var$36)
                               (f64.const 0.6366197723675814)
                              )
                              (f64.const 6755399441055744)
                             )
                             (f64.const -6755399441055744)
                            )
                           )
                           (f64.const -1.5707963267341256)
                          )
                         )
                        )
                        (tee_local $var$43
                         (f64.mul
                          (get_local $var$37)
                          (f64.const 6.077100506506192e-11)
                         )
                        )
                       )
                      )
                     )
                     (set_local $var$8
                      (i32.trunc_s/f64
                       (get_local $var$37)
                      )
                     )
                     (block $label$23
                      (br_if $label$23
                       (i32.lt_s
                        (i32.sub
                         (tee_local $var$14
                          (i32.shr_u
                           (get_local $var$14)
                           (i32.const 20)
                          )
                         )
                         (i32.and
                          (i32.wrap/i64
                           (i64.shr_u
                            (i64.reinterpret/f64
                             (get_local $var$36)
                            )
                            (i64.const 52)
                           )
                          )
                          (i32.const 2047)
                         )
                        )
                        (i32.const 17)
                       )
                      )
                      (f64.store
                       (get_local $var$6)
                       (tee_local $var$36
                        (f64.sub
                         (tee_local $var$42
                          (f64.sub
                           (get_local $var$41)
                           (tee_local $var$36
                            (f64.mul
                             (get_local $var$37)
                             (f64.const 6.077100506303966e-11)
                            )
                           )
                          )
                         )
                         (tee_local $var$43
                          (f64.sub
                           (f64.mul
                            (get_local $var$37)
                            (f64.const 2.0222662487959506e-21)
                           )
                           (f64.sub
                            (f64.sub
                             (get_local $var$41)
                             (get_local $var$42)
                            )
                            (get_local $var$36)
                           )
                          )
                         )
                        )
                       )
                      )
                      (if
                       (i32.ge_s
                        (i32.sub
                         (get_local $var$14)
                         (i32.and
                          (i32.wrap/i64
                           (i64.shr_u
                            (i64.reinterpret/f64
                             (get_local $var$36)
                            )
                            (i64.const 52)
                           )
                          )
                          (i32.const 2047)
                         )
                        )
                        (i32.const 50)
                       )
                       (block $label$24
                        (f64.store
                         (get_local $var$6)
                         (tee_local $var$36
                          (f64.sub
                           (tee_local $var$41
                            (f64.sub
                             (get_local $var$42)
                             (tee_local $var$36
                              (f64.mul
                               (get_local $var$37)
                               (f64.const 2.0222662487111665e-21)
                              )
                             )
                            )
                           )
                           (tee_local $var$43
                            (f64.sub
                             (f64.mul
                              (get_local $var$37)
                              (f64.const 8.4784276603689e-32)
                             )
                             (f64.sub
                              (f64.sub
                               (get_local $var$42)
                               (get_local $var$41)
                              )
                              (get_local $var$36)
                             )
                            )
                           )
                          )
                         )
                        )
                        (br $label$23)
                       )
                      )
                      (set_local $var$41
                       (get_local $var$42)
                      )
                     )
                     (f64.store offset=8
                      (get_local $var$6)
                      (f64.sub
                       (f64.sub
                        (get_local $var$41)
                        (get_local $var$36)
                       )
                       (get_local $var$43)
                      )
                     )
                     (br $label$8)
                    )
                    (f64.store offset=16
                     (get_local $var$15)
                     (tee_local $var$37
                      (f64.convert_s/i32
                       (i32.trunc_s/f64
                        (tee_local $var$36
                         (f64.reinterpret/i64
                          (i64.or
                           (i64.and
                            (get_local $var$34)
                            (i64.const 4503599627370495)
                           )
                           (i64.const 4710765210229538816)
                          )
                         )
                        )
                       )
                      )
                     )
                    )
                    (f64.store offset=24
                     (get_local $var$15)
                     (tee_local $var$37
                      (f64.convert_s/i32
                       (i32.trunc_s/f64
                        (tee_local $var$36
                         (f64.mul
                          (f64.sub
                           (get_local $var$36)
                           (get_local $var$37)
                          )
                          (f64.const 16777216)
                         )
                        )
                       )
                      )
                     )
                    )
                    (f64.store offset=32
                     (get_local $var$15)
                     (tee_local $var$36
                      (f64.mul
                       (f64.sub
                        (get_local $var$36)
                        (get_local $var$37)
                       )
                       (f64.const 16777216)
                      )
                     )
                    )
                    (br_if $label$12
                     (f64.ne
                      (get_local $var$36)
                      (f64.const 0)
                     )
                    )
                    (set_local $var$8
                     (i32.or
                      (i32.add
                       (get_local $var$15)
                       (i32.const 16)
                      )
                      (i32.const 8)
                     )
                    )
                    (set_local $var$21
                     (i32.const 2)
                    )
                    (loop $label$25
                     (set_local $var$21
                      (i32.add
                       (get_local $var$21)
                       (i32.const -1)
                      )
                     )
                     (set_local $var$36
                      (f64.load
                       (get_local $var$8)
                      )
                     )
                     (set_local $var$8
                      (i32.add
                       (get_local $var$8)
                       (i32.const -8)
                      )
                     )
                     (br_if $label$25
                      (f64.eq
                       (get_local $var$36)
                       (f64.const 0)
                      )
                     )
                     (br $label$11)
                    )
                    (unreachable)
                   )
                   (br_if $label$10
                    (i32.eqz
                     (get_local $var$20)
                    )
                   )
                   (f64.store
                    (get_local $var$6)
                    (tee_local $var$37
                     (f64.add
                      (tee_local $var$36
                       (f64.add
                        (get_local $var$36)
                        (f64.const 6.2831853069365025)
                       )
                      )
                      (f64.const 2.430840202602477e-10)
                     )
                    )
                   )
                   (f64.store offset=8
                    (get_local $var$6)
                    (f64.add
                     (f64.sub
                      (get_local $var$36)
                      (get_local $var$37)
                     )
                     (f64.const 2.430840202602477e-10)
                    )
                   )
                   (set_local $var$8
                    (i32.const -4)
                   )
                   (br $label$8)
                  )
                  (f64.store
                   (get_local $var$6)
                   (tee_local $var$37
                    (f64.add
                     (tee_local $var$36
                      (f64.add
                       (get_local $var$36)
                       (f64.const -1.5707963267341256)
                      )
                     )
                     (f64.const -6.077100506506192e-11)
                    )
                   )
                  )
                  (f64.store offset=8
                   (get_local $var$6)
                   (f64.add
                    (f64.sub
                     (get_local $var$36)
                     (get_local $var$37)
                    )
                    (f64.const -6.077100506506192e-11)
                   )
                  )
                  (set_local $var$8
                   (i32.const 1)
                  )
                  (br $label$8)
                 )
                 (f64.store
                  (get_local $var$6)
                  (tee_local $var$37
                   (f64.add
                    (tee_local $var$36
                     (f64.add
                      (get_local $var$36)
                      (f64.const -3.1415926534682512)
                     )
                    )
                    (f64.const -1.2154201013012384e-10)
                   )
                  )
                 )
                 (f64.store offset=8
                  (get_local $var$6)
                  (f64.add
                   (f64.sub
                    (get_local $var$36)
                    (get_local $var$37)
                   )
                   (f64.const -1.2154201013012384e-10)
                  )
                 )
                 (set_local $var$8
                  (i32.const 2)
                 )
                 (br $label$8)
                )
                (f64.store
                 (get_local $var$6)
                 (tee_local $var$37
                  (f64.add
                   (tee_local $var$36
                    (f64.add
                     (get_local $var$36)
                     (f64.const -4.712388980202377)
                    )
                   )
                   (f64.const -1.8231301519518578e-10)
                  )
                 )
                )
                (f64.store offset=8
                 (get_local $var$6)
                 (f64.add
                  (f64.sub
                   (get_local $var$36)
                   (get_local $var$37)
                  )
                  (f64.const -1.8231301519518578e-10)
                 )
                )
                (set_local $var$8
                 (i32.const 3)
                )
                (br $label$8)
               )
               (set_local $var$21
                (i32.const 2)
               )
              )
              (set_local $var$8
               (block $label$26 i32
                (set_local $var$24
                 (i32.add
                  (get_local $var$15)
                  (i32.const 16)
                 )
                )
                (set_local $var$16
                 (get_local $var$15)
                )
                (set_local $var$1
                 (i32.add
                  (i32.shr_u
                   (get_local $var$14)
                   (i32.const 20)
                  )
                  (i32.const -1046)
                 )
                )
                (set_local $var$10
                 (i32.add
                  (get_local $var$21)
                  (i32.const 1)
                 )
                )
                (set_local $var$22
                 (i32.const 1)
                )
                (i32.store
                 (i32.const 4)
                 (tee_local $var$4
                  (i32.sub
                   (i32.load
                    (i32.const 4)
                   )
                   (i32.const 560)
                  )
                 )
                )
                (set_local $var$25
                 (i32.add
                  (get_local $var$1)
                  (i32.mul
                   (tee_local $var$23
                    (select
                     (tee_local $var$2
                      (i32.div_s
                       (i32.add
                        (get_local $var$1)
                        (i32.const -3)
                       )
                       (i32.const 24)
                      )
                     )
                     (i32.const 0)
                     (i32.gt_s
                      (get_local $var$2)
                      (i32.const 0)
                     )
                    )
                   )
                   (i32.const -24)
                  )
                 )
                )
                (if
                 (i32.ge_s
                  (i32.add
                   (tee_local $var$17
                    (i32.load
                     (i32.add
                      (i32.shl
                       (get_local $var$22)
                       (i32.const 2)
                      )
                      (i32.const 48)
                     )
                    )
                   )
                   (tee_local $var$3
                    (i32.add
                     (get_local $var$10)
                     (i32.const -1)
                    )
                   )
                  )
                  (i32.const 0)
                 )
                 (block $label$27
                  (set_local $var$7
                   (i32.add
                    (get_local $var$17)
                    (get_local $var$10)
                   )
                  )
                  (set_local $var$5
                   (i32.add
                    (i32.shl
                     (tee_local $var$1
                      (i32.sub
                       (get_local $var$23)
                       (get_local $var$3)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.const 64)
                   )
                  )
                  (set_local $var$2
                   (i32.add
                    (get_local $var$4)
                    (i32.const 320)
                   )
                  )
                  (loop $label$28
                   (f64.store
                    (get_local $var$2)
                    (block $label$29 f64
                     (if
                      (i32.ge_s
                       (get_local $var$1)
                       (i32.const 0)
                      )
                      (block $label$30
                       (br $label$29
                        (f64.convert_s/i32
                         (i32.load
                          (get_local $var$5)
                         )
                        )
                       )
                      )
                     )
                     (f64.const 0)
                    )
                   )
                   (set_local $var$2
                    (i32.add
                     (get_local $var$2)
                     (i32.const 8)
                    )
                   )
                   (set_local $var$5
                    (i32.add
                     (get_local $var$5)
                     (i32.const 4)
                    )
                   )
                   (set_local $var$1
                    (i32.add
                     (get_local $var$1)
                     (i32.const 1)
                    )
                   )
                   (br_if $label$28
                    (tee_local $var$7
                     (i32.add
                      (get_local $var$7)
                      (i32.const -1)
                     )
                    )
                   )
                  )
                 )
                )
                (set_local $var$9
                 (i32.add
                  (get_local $var$25)
                  (i32.const -24)
                 )
                )
                (block $label$31
                 (if
                  (i32.ge_s
                   (get_local $var$10)
                   (i32.const 1)
                  )
                  (block $label$32
                   (set_local $var$3
                    (i32.add
                     (i32.add
                      (get_local $var$4)
                      (i32.const 320)
                     )
                     (i32.shl
                      (get_local $var$3)
                      (i32.const 3)
                     )
                    )
                   )
                   (set_local $var$7
                    (i32.const 0)
                   )
                   (loop $label$33
                    (set_local $var$35
                     (f64.const 0)
                    )
                    (set_local $var$1
                     (get_local $var$24)
                    )
                    (set_local $var$2
                     (get_local $var$3)
                    )
                    (set_local $var$5
                     (get_local $var$10)
                    )
                    (loop $label$34
                     (set_local $var$35
                      (f64.add
                       (get_local $var$35)
                       (f64.mul
                        (f64.load
                         (get_local $var$1)
                        )
                        (f64.load
                         (get_local $var$2)
                        )
                       )
                      )
                     )
                     (set_local $var$1
                      (i32.add
                       (get_local $var$1)
                       (i32.const 8)
                      )
                     )
                     (set_local $var$2
                      (i32.add
                       (get_local $var$2)
                       (i32.const -8)
                      )
                     )
                     (br_if $label$34
                      (tee_local $var$5
                       (i32.add
                        (get_local $var$5)
                        (i32.const -1)
                       )
                      )
                     )
                    )
                    (f64.store
                     (i32.add
                      (get_local $var$4)
                      (i32.shl
                       (get_local $var$7)
                       (i32.const 3)
                      )
                     )
                     (get_local $var$35)
                    )
                    (set_local $var$3
                     (i32.add
                      (get_local $var$3)
                      (i32.const 8)
                     )
                    )
                    (set_local $var$1
                     (i32.lt_s
                      (get_local $var$7)
                      (get_local $var$17)
                     )
                    )
                    (set_local $var$7
                     (i32.add
                      (get_local $var$7)
                      (i32.const 1)
                     )
                    )
                    (br_if $label$33
                     (get_local $var$1)
                    )
                    (br $label$31)
                   )
                   (unreachable)
                  )
                 )
                 (drop
                  (call $import$1
                   (get_local $var$4)
                   (i32.const 0)
                   (i32.add
                    (i32.shl
                     (select
                      (get_local $var$17)
                      (i32.const 0)
                      (i32.gt_s
                       (get_local $var$17)
                       (i32.const 0)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                )
                (set_local $var$29
                 (i32.sub
                  (i32.const 23)
                  (get_local $var$9)
                 )
                )
                (set_local $var$26
                 (i32.sub
                  (i32.const 24)
                  (get_local $var$9)
                 )
                )
                (set_local $var$30
                 (i32.add
                  (i32.add
                   (get_local $var$4)
                   (i32.shl
                    (get_local $var$17)
                    (i32.const 2)
                   )
                  )
                  (i32.const 476)
                 )
                )
                (set_local $var$31
                 (i32.add
                  (get_local $var$4)
                  (i32.const 476)
                 )
                )
                (set_local $var$32
                 (i32.add
                  (get_local $var$4)
                  (i32.const -8)
                 )
                )
                (set_local $var$33
                 (i32.or
                  (get_local $var$4)
                  (i32.const 8)
                 )
                )
                (set_local $var$11
                 (get_local $var$17)
                )
                (block $label$35
                 (block $label$36
                  (loop $label$37
                   (set_local $var$35
                    (f64.load
                     (i32.add
                      (get_local $var$4)
                      (tee_local $var$27
                       (i32.shl
                        (tee_local $var$3
                         (get_local $var$11)
                        )
                        (i32.const 3)
                       )
                      )
                     )
                    )
                   )
                   (if
                    (i32.eqz
                     (tee_local $var$7
                      (i32.lt_s
                       (get_local $var$3)
                       (i32.const 1)
                      )
                     )
                    )
                    (block $label$38
                     (set_local $var$5
                      (i32.add
                       (get_local $var$3)
                       (i32.const 1)
                      )
                     )
                     (set_local $var$1
                      (i32.add
                       (get_local $var$32)
                       (get_local $var$27)
                      )
                     )
                     (set_local $var$2
                      (i32.add
                       (get_local $var$4)
                       (i32.const 480)
                      )
                     )
                     (loop $label$39
                      (i32.store
                       (get_local $var$2)
                       (i32.trunc_s/f64
                        (f64.add
                         (get_local $var$35)
                         (f64.mul
                          (tee_local $var$39
                           (f64.convert_s/i32
                            (i32.trunc_s/f64
                             (f64.mul
                              (get_local $var$35)
                              (f64.const 5.960464477539063e-08)
                             )
                            )
                           )
                          )
                          (f64.const -16777216)
                         )
                        )
                       )
                      )
                      (set_local $var$2
                       (i32.add
                        (get_local $var$2)
                        (i32.const 4)
                       )
                      )
                      (set_local $var$35
                       (f64.add
                        (f64.load
                         (get_local $var$1)
                        )
                        (get_local $var$39)
                       )
                      )
                      (set_local $var$1
                       (i32.add
                        (get_local $var$1)
                        (i32.const -8)
                       )
                      )
                      (br_if $label$39
                       (i32.gt_s
                        (tee_local $var$5
                         (i32.add
                          (get_local $var$5)
                          (i32.const -1)
                         )
                        )
                        (i32.const 1)
                       )
                      )
                     )
                    )
                   )
                   (block $label$40
                    (set_local $var$35
                     (f64.sub
                      (tee_local $var$35
                       (f64.add
                        (tee_local $var$35
                         (call $0
                          (get_local $var$35)
                          (get_local $var$9)
                         )
                        )
                        (f64.mul
                         (f64.floor
                          (f64.mul
                           (get_local $var$35)
                           (f64.const 0.125)
                          )
                         )
                         (f64.const -8)
                        )
                       )
                      )
                      (f64.convert_s/i32
                       (tee_local $var$11
                        (i32.trunc_s/f64
                         (get_local $var$35)
                        )
                       )
                      )
                     )
                    )
                    (block $label$41
                     (block $label$42
                      (block $label$43
                       (if
                        (i32.eqz
                         (tee_local $var$28
                          (i32.lt_s
                           (get_local $var$9)
                           (i32.const 1)
                          )
                         )
                        )
                        (block $label$44
                         (i32.store
                          (tee_local $var$1
                           (i32.add
                            (i32.add
                             (get_local $var$4)
                             (i32.shl
                              (get_local $var$3)
                              (i32.const 2)
                             )
                            )
                            (i32.const 476)
                           )
                          )
                          (tee_local $var$2
                           (i32.sub
                            (tee_local $var$1
                             (i32.load
                              (get_local $var$1)
                             )
                            )
                            (i32.shl
                             (tee_local $var$1
                              (i32.shr_s
                               (get_local $var$1)
                               (get_local $var$26)
                              )
                             )
                             (get_local $var$26)
                            )
                           )
                          )
                         )
                         (set_local $var$11
                          (i32.add
                           (get_local $var$1)
                           (get_local $var$11)
                          )
                         )
                         (br_if $label$43
                          (i32.ge_s
                           (tee_local $var$18
                            (i32.shr_s
                             (get_local $var$2)
                             (get_local $var$29)
                            )
                           )
                           (i32.const 1)
                          )
                         )
                         (br $label$42)
                        )
                       )
                       (if
                        (get_local $var$9)
                        (block $label$45
                         (set_local $var$18
                          (i32.const 2)
                         )
                         (br_if $label$43
                          (i32.eqz
                           (i32.or
                            (f64.lt
                             (get_local $var$35)
                             (f64.const 0.5)
                            )
                            (f64.ne
                             (get_local $var$35)
                             (get_local $var$35)
                            )
                           )
                          )
                         )
                         (set_local $var$18
                          (i32.const 0)
                         )
                         (br_if $label$41
                          (f64.eq
                           (get_local $var$35)
                           (f64.const 0)
                          )
                         )
                         (br $label$40)
                        )
                       )
                       (br_if $label$42
                        (i32.lt_s
                         (tee_local $var$18
                          (i32.shr_s
                           (i32.load
                            (i32.add
                             (i32.add
                              (get_local $var$4)
                              (i32.shl
                               (get_local $var$3)
                               (i32.const 2)
                              )
                             )
                             (i32.const 476)
                            )
                           )
                           (i32.const 23)
                          )
                         )
                         (i32.const 1)
                        )
                       )
                      )
                      (block $label$46
                       (block $label$47
                        (if
                         (i32.eqz
                          (get_local $var$7)
                         )
                         (block $label$48
                          (set_local $var$12
                           (i32.const 0)
                          )
                          (set_local $var$1
                           (i32.add
                            (get_local $var$4)
                            (i32.const 480)
                           )
                          )
                          (set_local $var$7
                           (get_local $var$3)
                          )
                          (loop $label$49
                           (set_local $var$2
                            (i32.load
                             (get_local $var$1)
                            )
                           )
                           (set_local $var$5
                            (i32.const 16777215)
                           )
                           (block $label$50
                            (if
                             (i32.eqz
                              (get_local $var$12)
                             )
                             (block $label$51
                              (if
                               (i32.eqz
                                (get_local $var$2)
                               )
                               (block $label$52
                                (set_local $var$12
                                 (i32.const 0)
                                )
                                (br $label$50)
                               )
                              )
                              (set_local $var$5
                               (i32.const 16777216)
                              )
                              (set_local $var$12
                               (i32.const 1)
                              )
                             )
                            )
                            (i32.store
                             (get_local $var$1)
                             (i32.sub
                              (get_local $var$5)
                              (get_local $var$2)
                             )
                            )
                           )
                           (set_local $var$1
                            (i32.add
                             (get_local $var$1)
                             (i32.const 4)
                            )
                           )
                           (br_if $label$49
                            (tee_local $var$7
                             (i32.add
                              (get_local $var$7)
                              (i32.const -1)
                             )
                            )
                           )
                          )
                          (br_if $label$46
                           (get_local $var$28)
                          )
                          (br $label$47)
                         )
                        )
                        (set_local $var$12
                         (i32.const 0)
                        )
                        (br_if $label$46
                         (get_local $var$28)
                        )
                       )
                       (set_local $var$2
                        (block $label$53 i32
                         (if
                          (i32.ne
                           (get_local $var$9)
                           (i32.const 1)
                          )
                          (block $label$54
                           (br_if $label$46
                            (i32.ne
                             (get_local $var$9)
                             (i32.const 2)
                            )
                           )
                           (br $label$53
                            (i32.const 4194303)
                           )
                          )
                         )
                         (i32.const 8388607)
                        )
                       )
                       (i32.store
                        (tee_local $var$1
                         (i32.add
                          (i32.add
                           (get_local $var$4)
                           (i32.shl
                            (get_local $var$3)
                            (i32.const 2)
                           )
                          )
                          (i32.const 476)
                         )
                        )
                        (i32.and
                         (i32.load
                          (get_local $var$1)
                         )
                         (get_local $var$2)
                        )
                       )
                      )
                      (set_local $var$11
                       (i32.add
                        (get_local $var$11)
                        (i32.const 1)
                       )
                      )
                      (br_if $label$42
                       (i32.ne
                        (get_local $var$18)
                        (i32.const 2)
                       )
                      )
                      (set_local $var$35
                       (f64.sub
                        (f64.const 1)
                        (get_local $var$35)
                       )
                      )
                      (set_local $var$18
                       (i32.const 2)
                      )
                      (br_if $label$42
                       (i32.eqz
                        (get_local $var$12)
                       )
                      )
                      (set_local $var$35
                       (f64.sub
                        (get_local $var$35)
                        (call $0
                         (f64.const 1)
                         (get_local $var$9)
                        )
                       )
                      )
                     )
                     (br_if $label$40
                      (f64.ne
                       (get_local $var$35)
                       (f64.const 0)
                      )
                     )
                    )
                    (if
                     (i32.gt_s
                      (get_local $var$3)
                      (get_local $var$17)
                     )
                     (block $label$55
                      (set_local $var$1
                       (i32.add
                        (get_local $var$31)
                        (i32.shl
                         (get_local $var$3)
                         (i32.const 2)
                        )
                       )
                      )
                      (set_local $var$2
                       (i32.const 0)
                      )
                      (set_local $var$5
                       (get_local $var$3)
                      )
                      (loop $label$56
                       (set_local $var$2
                        (i32.or
                         (i32.load
                          (get_local $var$1)
                         )
                         (get_local $var$2)
                        )
                       )
                       (set_local $var$1
                        (i32.add
                         (get_local $var$1)
                         (i32.const -4)
                        )
                       )
                       (br_if $label$56
                        (i32.gt_s
                         (tee_local $var$5
                          (i32.add
                           (get_local $var$5)
                           (i32.const -1)
                          )
                         )
                         (get_local $var$17)
                        )
                       )
                      )
                      (br_if $label$36
                       (get_local $var$2)
                      )
                     )
                    )
                    (set_local $var$2
                     (i32.const 0)
                    )
                    (set_local $var$1
                     (get_local $var$30)
                    )
                    (loop $label$57
                     (set_local $var$2
                      (i32.add
                       (get_local $var$2)
                       (i32.const 1)
                      )
                     )
                     (set_local $var$5
                      (i32.load
                       (get_local $var$1)
                      )
                     )
                     (set_local $var$1
                      (i32.add
                       (get_local $var$1)
                       (i32.const -4)
                      )
                     )
                     (br_if $label$57
                      (i32.eqz
                       (get_local $var$5)
                      )
                     )
                    )
                    (set_local $var$11
                     (i32.add
                      (get_local $var$3)
                      (get_local $var$2)
                     )
                    )
                    (br_if $label$37
                     (i32.lt_s
                      (get_local $var$2)
                      (i32.const 1)
                     )
                    )
                    (set_local $var$1
                     (i32.add
                      (get_local $var$3)
                      (i32.const 1)
                     )
                    )
                    (if
                     (i32.ge_s
                      (get_local $var$10)
                      (i32.const 1)
                     )
                     (block $label$58
                      (set_local $var$12
                       (i32.add
                        (i32.add
                         (get_local $var$4)
                         (i32.const 320)
                        )
                        (i32.shl
                         (i32.add
                          (get_local $var$10)
                          (get_local $var$3)
                         )
                         (i32.const 3)
                        )
                       )
                      )
                      (loop $label$59
                       (f64.store
                        (i32.add
                         (i32.add
                          (get_local $var$4)
                          (i32.const 320)
                         )
                         (i32.shl
                          (i32.add
                           (get_local $var$3)
                           (get_local $var$10)
                          )
                          (i32.const 3)
                         )
                        )
                        (f64.convert_s/i32
                         (i32.load
                          (i32.add
                           (i32.shl
                            (i32.add
                             (tee_local $var$7
                              (get_local $var$1)
                             )
                             (get_local $var$23)
                            )
                            (i32.const 2)
                           )
                           (i32.const 64)
                          )
                         )
                        )
                       )
                       (set_local $var$35
                        (f64.const 0)
                       )
                       (set_local $var$1
                        (get_local $var$24)
                       )
                       (set_local $var$2
                        (get_local $var$12)
                       )
                       (set_local $var$5
                        (get_local $var$10)
                       )
                       (loop $label$60
                        (set_local $var$35
                         (f64.add
                          (get_local $var$35)
                          (f64.mul
                           (f64.load
                            (get_local $var$1)
                           )
                           (f64.load
                            (get_local $var$2)
                           )
                          )
                         )
                        )
                        (set_local $var$1
                         (i32.add
                          (get_local $var$1)
                          (i32.const 8)
                         )
                        )
                        (set_local $var$2
                         (i32.add
                          (get_local $var$2)
                          (i32.const -8)
                         )
                        )
                        (br_if $label$60
                         (tee_local $var$5
                          (i32.add
                           (get_local $var$5)
                           (i32.const -1)
                          )
                         )
                        )
                       )
                       (f64.store
                        (i32.add
                         (get_local $var$4)
                         (i32.shl
                          (get_local $var$7)
                          (i32.const 3)
                         )
                        )
                        (get_local $var$35)
                       )
                       (set_local $var$12
                        (i32.add
                         (get_local $var$12)
                         (i32.const 8)
                        )
                       )
                       (set_local $var$1
                        (i32.add
                         (get_local $var$7)
                         (i32.const 1)
                        )
                       )
                       (set_local $var$3
                        (get_local $var$7)
                       )
                       (br_if $label$59
                        (i32.lt_s
                         (get_local $var$7)
                         (get_local $var$11)
                        )
                       )
                       (br $label$37)
                      )
                      (unreachable)
                     )
                    )
                    (drop
                     (call $import$1
                      (i32.add
                       (get_local $var$33)
                       (get_local $var$27)
                      )
                      (i32.const 0)
                      (i32.shl
                       (i32.sub
                        (select
                         (get_local $var$11)
                         (get_local $var$1)
                         (i32.gt_s
                          (get_local $var$11)
                          (get_local $var$1)
                         )
                        )
                        (get_local $var$3)
                       )
                       (i32.const 3)
                      )
                     )
                    )
                    (set_local $var$1
                     (i32.add
                      (i32.shl
                       (i32.add
                        (get_local $var$23)
                        (get_local $var$3)
                       )
                       (i32.const 2)
                      )
                      (i32.const 68)
                     )
                    )
                    (set_local $var$2
                     (i32.add
                      (i32.add
                       (get_local $var$4)
                       (i32.const 320)
                      )
                      (i32.shl
                       (i32.add
                        (get_local $var$10)
                        (get_local $var$3)
                       )
                       (i32.const 3)
                      )
                     )
                    )
                    (loop $label$61
                     (f64.store
                      (get_local $var$2)
                      (f64.convert_s/i32
                       (i32.load
                        (get_local $var$1)
                       )
                      )
                     )
                     (set_local $var$2
                      (i32.add
                       (get_local $var$2)
                       (i32.const 8)
                      )
                     )
                     (set_local $var$1
                      (i32.add
                       (get_local $var$1)
                       (i32.const 4)
                      )
                     )
                     (br_if $label$61
                      (i32.lt_s
                       (tee_local $var$3
                        (i32.add
                         (get_local $var$3)
                         (i32.const 1)
                        )
                       )
                       (get_local $var$11)
                      )
                     )
                     (br $label$37)
                    )
                    (unreachable)
                   )
                  )
                  (block $label$62
                   (if
                    (i32.or
                     (f64.lt
                      (tee_local $var$35
                       (call $0
                        (get_local $var$35)
                        (i32.sub
                         (i32.const 0)
                         (get_local $var$9)
                        )
                       )
                      )
                      (f64.const 16777216)
                     )
                     (f64.ne
                      (get_local $var$35)
                      (get_local $var$35)
                     )
                    )
                    (block $label$63
                     (set_local $var$39
                      (get_local $var$35)
                     )
                     (br $label$62)
                    )
                   )
                   (i32.store
                    (i32.add
                     (i32.add
                      (get_local $var$4)
                      (i32.const 480)
                     )
                     (i32.shl
                      (get_local $var$3)
                      (i32.const 2)
                     )
                    )
                    (i32.trunc_s/f64
                     (f64.add
                      (get_local $var$35)
                      (f64.mul
                       (tee_local $var$39
                        (f64.convert_s/i32
                         (i32.trunc_s/f64
                          (f64.mul
                           (get_local $var$35)
                           (f64.const 5.960464477539063e-08)
                          )
                         )
                        )
                       )
                       (f64.const -16777216)
                      )
                     )
                    )
                   )
                   (set_local $var$3
                    (i32.add
                     (get_local $var$3)
                     (i32.const 1)
                    )
                   )
                   (set_local $var$9
                    (get_local $var$25)
                   )
                  )
                  (i32.store
                   (i32.add
                    (i32.add
                     (get_local $var$4)
                     (i32.const 480)
                    )
                    (i32.shl
                     (get_local $var$3)
                     (i32.const 2)
                    )
                   )
                   (i32.trunc_s/f64
                    (get_local $var$39)
                   )
                  )
                  (br $label$35)
                 )
                 (set_local $var$1
                  (i32.add
                   (i32.add
                    (get_local $var$4)
                    (i32.shl
                     (get_local $var$3)
                     (i32.const 2)
                    )
                   )
                   (i32.const 476)
                  )
                 )
                 (loop $label$64
                  (set_local $var$3
                   (i32.add
                    (get_local $var$3)
                    (i32.const -1)
                   )
                  )
                  (set_local $var$9
                   (i32.add
                    (get_local $var$9)
                    (i32.const -24)
                   )
                  )
                  (set_local $var$2
                   (i32.load
                    (get_local $var$1)
                   )
                  )
                  (set_local $var$1
                   (i32.add
                    (get_local $var$1)
                    (i32.const -4)
                   )
                  )
                  (br_if $label$64
                   (i32.eqz
                    (get_local $var$2)
                   )
                  )
                 )
                )
                (block $label$65
                 (br_if $label$65
                  (i32.lt_s
                   (get_local $var$3)
                   (i32.const 0)
                  )
                 )
                 (set_local $var$5
                  (i32.add
                   (get_local $var$3)
                   (i32.const 1)
                  )
                 )
                 (set_local $var$35
                  (call $0
                   (f64.const 1)
                   (get_local $var$9)
                  )
                 )
                 (set_local $var$1
                  (i32.add
                   (i32.add
                    (get_local $var$4)
                    (i32.const 480)
                   )
                   (i32.shl
                    (get_local $var$3)
                    (i32.const 2)
                   )
                  )
                 )
                 (set_local $var$2
                  (i32.add
                   (get_local $var$4)
                   (i32.shl
                    (get_local $var$3)
                    (i32.const 3)
                   )
                  )
                 )
                 (loop $label$66
                  (f64.store
                   (get_local $var$2)
                   (f64.mul
                    (get_local $var$35)
                    (f64.convert_s/i32
                     (i32.load
                      (get_local $var$1)
                     )
                    )
                   )
                  )
                  (set_local $var$1
                   (i32.add
                    (get_local $var$1)
                    (i32.const -4)
                   )
                  )
                  (set_local $var$2
                   (i32.add
                    (get_local $var$2)
                    (i32.const -8)
                   )
                  )
                  (set_local $var$35
                   (f64.mul
                    (get_local $var$35)
                    (f64.const 5.960464477539063e-08)
                   )
                  )
                  (br_if $label$66
                   (i32.gt_s
                    (tee_local $var$5
                     (i32.add
                      (get_local $var$5)
                      (i32.const -1)
                     )
                    )
                    (i32.const 0)
                   )
                  )
                 )
                 (br_if $label$65
                  (i32.lt_s
                   (get_local $var$3)
                   (i32.const 0)
                  )
                 )
                 (set_local $var$7
                  (i32.add
                   (get_local $var$4)
                   (i32.shl
                    (get_local $var$3)
                    (i32.const 3)
                   )
                  )
                 )
                 (set_local $var$1
                  (get_local $var$3)
                 )
                 (loop $label$67
                  (set_local $var$12
                   (i32.sub
                    (get_local $var$3)
                    (tee_local $var$10
                     (get_local $var$1)
                    )
                   )
                  )
                  (set_local $var$35
                   (f64.const 0)
                  )
                  (set_local $var$1
                   (i32.const 0)
                  )
                  (set_local $var$2
                   (i32.const 0)
                  )
                  (block $label$68
                   (loop $label$69
                    (set_local $var$35
                     (f64.add
                      (get_local $var$35)
                      (f64.mul
                       (f64.load
                        (i32.add
                         (get_local $var$1)
                         (i32.const 2832)
                        )
                       )
                       (f64.load
                        (i32.add
                         (get_local $var$7)
                         (get_local $var$1)
                        )
                       )
                      )
                     )
                    )
                    (br_if $label$68
                     (i32.ge_s
                      (get_local $var$2)
                      (get_local $var$17)
                     )
                    )
                    (set_local $var$1
                     (i32.add
                      (get_local $var$1)
                      (i32.const 8)
                     )
                    )
                    (set_local $var$5
                     (i32.lt_s
                      (get_local $var$2)
                      (get_local $var$12)
                     )
                    )
                    (set_local $var$2
                     (i32.add
                      (get_local $var$2)
                      (i32.const 1)
                     )
                    )
                    (br_if $label$69
                     (get_local $var$5)
                    )
                   )
                  )
                  (f64.store
                   (i32.add
                    (i32.add
                     (get_local $var$4)
                     (i32.const 160)
                    )
                    (i32.shl
                     (get_local $var$12)
                     (i32.const 3)
                    )
                   )
                   (get_local $var$35)
                  )
                  (set_local $var$7
                   (i32.add
                    (get_local $var$7)
                    (i32.const -8)
                   )
                  )
                  (set_local $var$1
                   (i32.add
                    (get_local $var$10)
                    (i32.const -1)
                   )
                  )
                  (br_if $label$67
                   (i32.gt_s
                    (get_local $var$10)
                    (i32.const 0)
                   )
                  )
                 )
                )
                (block $label$70
                 (block $label$71
                  (block $label$72
                   (block $label$73
                    (block $label$74
                     (block $label$75
                      (block $label$76
                       (block $label$77
                        (block $label$78
                         (if
                          (i32.ge_u
                           (i32.add
                            (get_local $var$22)
                            (i32.const -1)
                           )
                           (i32.const 2)
                          )
                          (block $label$79
                           (br_if $label$78
                            (i32.eqz
                             (get_local $var$22)
                            )
                           )
                           (br_if $label$70
                            (i32.ne
                             (get_local $var$22)
                             (i32.const 3)
                            )
                           )
                           (set_local $var$40
                            (f64.const 0)
                           )
                           (block $label$80
                            (br_if $label$80
                             (i32.lt_s
                              (get_local $var$3)
                              (i32.const 1)
                             )
                            )
                            (set_local $var$2
                             (i32.add
                              (get_local $var$3)
                              (i32.const 1)
                             )
                            )
                            (set_local $var$1
                             (i32.add
                              (tee_local $var$5
                               (i32.add
                                (i32.add
                                 (get_local $var$4)
                                 (i32.const 160)
                                )
                                (i32.shl
                                 (get_local $var$3)
                                 (i32.const 3)
                                )
                               )
                              )
                              (i32.const -8)
                             )
                            )
                            (set_local $var$35
                             (f64.load
                              (get_local $var$5)
                             )
                            )
                            (loop $label$81
                             (f64.store
                              (get_local $var$1)
                              (tee_local $var$39
                               (f64.add
                                (tee_local $var$44
                                 (f64.load
                                  (get_local $var$1)
                                 )
                                )
                                (get_local $var$35)
                               )
                              )
                             )
                             (f64.store
                              (i32.add
                               (get_local $var$1)
                               (i32.const 8)
                              )
                              (f64.add
                               (get_local $var$35)
                               (f64.sub
                                (get_local $var$44)
                                (get_local $var$39)
                               )
                              )
                             )
                             (set_local $var$1
                              (i32.add
                               (get_local $var$1)
                               (i32.const -8)
                              )
                             )
                             (set_local $var$35
                              (get_local $var$39)
                             )
                             (br_if $label$81
                              (i32.gt_s
                               (tee_local $var$2
                                (i32.add
                                 (get_local $var$2)
                                 (i32.const -1)
                                )
                               )
                               (i32.const 1)
                              )
                             )
                            )
                            (br_if $label$80
                             (i32.lt_s
                              (get_local $var$3)
                              (i32.const 2)
                             )
                            )
                            (set_local $var$2
                             (i32.add
                              (get_local $var$3)
                              (i32.const 1)
                             )
                            )
                            (set_local $var$1
                             (i32.add
                              (tee_local $var$5
                               (i32.add
                                (i32.add
                                 (get_local $var$4)
                                 (i32.const 160)
                                )
                                (i32.shl
                                 (get_local $var$3)
                                 (i32.const 3)
                                )
                               )
                              )
                              (i32.const -8)
                             )
                            )
                            (set_local $var$35
                             (f64.load
                              (get_local $var$5)
                             )
                            )
                            (loop $label$82
                             (f64.store
                              (get_local $var$1)
                              (tee_local $var$39
                               (f64.add
                                (tee_local $var$44
                                 (f64.load
                                  (get_local $var$1)
                                 )
                                )
                                (get_local $var$35)
                               )
                              )
                             )
                             (f64.store
                              (i32.add
                               (get_local $var$1)
                               (i32.const 8)
                              )
                              (f64.add
                               (get_local $var$35)
                               (f64.sub
                                (get_local $var$44)
                                (get_local $var$39)
                               )
                              )
                             )
                             (set_local $var$1
                              (i32.add
                               (get_local $var$1)
                               (i32.const -8)
                              )
                             )
                             (set_local $var$35
                              (get_local $var$39)
                             )
                             (br_if $label$82
                              (i32.gt_s
                               (tee_local $var$2
                                (i32.add
                                 (get_local $var$2)
                                 (i32.const -1)
                                )
                               )
                               (i32.const 2)
                              )
                             )
                            )
                            (br_if $label$80
                             (i32.lt_s
                              (get_local $var$3)
                              (i32.const 2)
                             )
                            )
                            (set_local $var$2
                             (i32.add
                              (get_local $var$3)
                              (i32.const 1)
                             )
                            )
                            (set_local $var$1
                             (i32.add
                              (i32.add
                               (get_local $var$4)
                               (i32.const 160)
                              )
                              (i32.shl
                               (get_local $var$3)
                               (i32.const 3)
                              )
                             )
                            )
                            (set_local $var$40
                             (f64.const 0)
                            )
                            (loop $label$83
                             (set_local $var$40
                              (f64.add
                               (get_local $var$40)
                               (f64.load
                                (get_local $var$1)
                               )
                              )
                             )
                             (set_local $var$1
                              (i32.add
                               (get_local $var$1)
                               (i32.const -8)
                              )
                             )
                             (br_if $label$83
                              (i32.gt_s
                               (tee_local $var$2
                                (i32.add
                                 (get_local $var$2)
                                 (i32.const -1)
                                )
                               )
                               (i32.const 2)
                              )
                             )
                            )
                           )
                           (set_local $var$35
                            (f64.load offset=160
                             (get_local $var$4)
                            )
                           )
                           (br_if $label$75
                            (i32.eqz
                             (get_local $var$18)
                            )
                           )
                           (f64.store
                            (get_local $var$16)
                            (f64.neg
                             (get_local $var$35)
                            )
                           )
                           (f64.store offset=8
                            (get_local $var$16)
                            (f64.neg
                             (f64.load offset=168
                              (get_local $var$4)
                             )
                            )
                           )
                           (set_local $var$40
                            (f64.neg
                             (get_local $var$40)
                            )
                           )
                           (br $label$74)
                          )
                         )
                         (br_if $label$77
                          (i32.lt_s
                           (get_local $var$3)
                           (i32.const 0)
                          )
                         )
                         (set_local $var$2
                          (i32.add
                           (get_local $var$3)
                           (i32.const 1)
                          )
                         )
                         (set_local $var$1
                          (i32.add
                           (i32.add
                            (get_local $var$4)
                            (i32.const 160)
                           )
                           (i32.shl
                            (get_local $var$3)
                            (i32.const 3)
                           )
                          )
                         )
                         (set_local $var$35
                          (f64.const 0)
                         )
                         (loop $label$84
                          (set_local $var$35
                           (f64.add
                            (get_local $var$35)
                            (f64.load
                             (get_local $var$1)
                            )
                           )
                          )
                          (set_local $var$1
                           (i32.add
                            (get_local $var$1)
                            (i32.const -8)
                           )
                          )
                          (br_if $label$84
                           (i32.gt_s
                            (tee_local $var$2
                             (i32.add
                              (get_local $var$2)
                              (i32.const -1)
                             )
                            )
                            (i32.const 0)
                           )
                          )
                          (br $label$76)
                         )
                         (unreachable)
                        )
                        (br_if $label$73
                         (i32.lt_s
                          (get_local $var$3)
                          (i32.const 0)
                         )
                        )
                        (set_local $var$2
                         (i32.add
                          (get_local $var$3)
                          (i32.const 1)
                         )
                        )
                        (set_local $var$1
                         (i32.add
                          (i32.add
                           (get_local $var$4)
                           (i32.const 160)
                          )
                          (i32.shl
                           (get_local $var$3)
                           (i32.const 3)
                          )
                         )
                        )
                        (set_local $var$35
                         (f64.const 0)
                        )
                        (loop $label$85
                         (set_local $var$35
                          (f64.add
                           (get_local $var$35)
                           (f64.load
                            (get_local $var$1)
                           )
                          )
                         )
                         (set_local $var$1
                          (i32.add
                           (get_local $var$1)
                           (i32.const -8)
                          )
                         )
                         (br_if $label$85
                          (i32.gt_s
                           (tee_local $var$2
                            (i32.add
                             (get_local $var$2)
                             (i32.const -1)
                            )
                           )
                           (i32.const 0)
                          )
                         )
                         (br $label$72)
                        )
                        (unreachable)
                       )
                       (set_local $var$35
                        (f64.const 0)
                       )
                      )
                      (f64.store
                       (get_local $var$16)
                       (select
                        (f64.neg
                         (get_local $var$35)
                        )
                        (get_local $var$35)
                        (get_local $var$18)
                       )
                      )
                      (set_local $var$35
                       (f64.sub
                        (f64.load offset=160
                         (get_local $var$4)
                        )
                        (get_local $var$35)
                       )
                      )
                      (if
                       (i32.ge_s
                        (get_local $var$3)
                        (i32.const 1)
                       )
                       (block $label$86
                        (set_local $var$1
                         (i32.or
                          (i32.add
                           (get_local $var$4)
                           (i32.const 160)
                          )
                          (i32.const 8)
                         )
                        )
                        (loop $label$87
                         (set_local $var$35
                          (f64.add
                           (get_local $var$35)
                           (f64.load
                            (get_local $var$1)
                           )
                          )
                         )
                         (set_local $var$1
                          (i32.add
                           (get_local $var$1)
                           (i32.const 8)
                          )
                         )
                         (br_if $label$87
                          (tee_local $var$3
                           (i32.add
                            (get_local $var$3)
                            (i32.const -1)
                           )
                          )
                         )
                        )
                       )
                      )
                      (set_local $var$40
                       (select
                        (f64.neg
                         (get_local $var$35)
                        )
                        (get_local $var$35)
                        (get_local $var$18)
                       )
                      )
                      (set_local $var$16
                       (i32.add
                        (get_local $var$16)
                        (i32.const 8)
                       )
                      )
                      (br $label$71)
                     )
                     (f64.store
                      (get_local $var$16)
                      (get_local $var$35)
                     )
                     (i64.store offset=8
                      (get_local $var$16)
                      (i64.load offset=168
                       (get_local $var$4)
                      )
                     )
                    )
                    (set_local $var$16
                     (i32.add
                      (get_local $var$16)
                      (i32.const 16)
                     )
                    )
                    (br $label$71)
                   )
                   (set_local $var$35
                    (f64.const 0)
                   )
                  )
                  (set_local $var$40
                   (select
                    (f64.neg
                     (get_local $var$35)
                    )
                    (get_local $var$35)
                    (get_local $var$18)
                   )
                  )
                 )
                 (f64.store
                  (get_local $var$16)
                  (get_local $var$40)
                 )
                )
                (i32.store
                 (i32.const 4)
                 (i32.add
                  (get_local $var$4)
                  (i32.const 560)
                 )
                )
                (i32.and
                 (get_local $var$11)
                 (i32.const 7)
                )
               )
              )
              (set_local $var$36
               (f64.load
                (get_local $var$15)
               )
              )
              (br_if $label$9
               (i32.eqz
                (get_local $var$20)
               )
              )
              (f64.store
               (get_local $var$6)
               (f64.neg
                (get_local $var$36)
               )
              )
              (f64.store offset=8
               (get_local $var$6)
               (f64.neg
                (f64.load offset=8
                 (get_local $var$15)
                )
               )
              )
              (set_local $var$8
               (i32.sub
                (i32.const 0)
                (get_local $var$8)
               )
              )
              (br $label$8)
             )
             (f64.store
              (get_local $var$6)
              (tee_local $var$37
               (f64.add
                (tee_local $var$36
                 (f64.add
                  (get_local $var$36)
                  (f64.const -6.2831853069365025)
                 )
                )
                (f64.const -2.430840202602477e-10)
               )
              )
             )
             (f64.store offset=8
              (get_local $var$6)
              (f64.add
               (f64.sub
                (get_local $var$36)
                (get_local $var$37)
               )
               (f64.const -2.430840202602477e-10)
              )
             )
             (set_local $var$8
              (i32.const 4)
             )
             (br $label$8)
            )
            (f64.store
             (get_local $var$6)
             (get_local $var$36)
            )
            (i64.store offset=8
             (get_local $var$6)
             (i64.load offset=8
              (get_local $var$15)
             )
            )
           )
           (i32.store
            (i32.const 4)
            (i32.add
             (get_local $var$15)
             (i32.const 48)
            )
           )
           (get_local $var$8)
          )
          (i32.const 3)
         )
        )
        (i32.const 2)
       )
       (block $label$88
        (br_if $label$6
         (i32.eq
          (get_local $var$19)
          (i32.const 1)
         )
        )
        (br_if $label$5
         (get_local $var$19)
        )
        (set_local $var$38
         (call $1
          (f64.load
           (get_local $var$13)
          )
          (f64.load offset=8
           (get_local $var$13)
          )
          (i32.const 1)
         )
        )
        (br $label$1)
       )
      )
      (set_local $var$38
       (f64.neg
        (call $1
         (f64.load
          (get_local $var$13)
         )
         (f64.load offset=8
          (get_local $var$13)
         )
         (i32.const 1)
        )
       )
      )
      (br $label$1)
     )
     (set_local $var$38
      (call $2
       (f64.load
        (get_local $var$13)
       )
       (f64.load offset=8
        (get_local $var$13)
       )
      )
     )
     (br $label$1)
    )
    (set_local $var$38
     (f64.neg
      (call $2
       (f64.load
        (get_local $var$13)
       )
       (f64.load offset=8
        (get_local $var$13)
       )
      )
     )
    )
   )
   (i32.store
    (i32.const 4)
    (i32.add
     (get_local $var$13)
     (i32.const 16)
    )
   )
   (get_local $var$38)
  )
 )
 (func $4 (type $3) (param $var$0 i32) (param $var$1 i32) (result i32)
  (i32.add
   (get_local $var$1)
   (get_local $var$0)
  )
 )
 (func $5 (type $12)
  (call $import$0
   (i32.const 16)
   (i32.const 0)
  )
 )
)

