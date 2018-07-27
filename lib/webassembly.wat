(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "_abort" (func $_abort (param i32)))
 (import "env" "_grow" (func $_grow))
 (import "env" "memory" (memory $0 1))
 (export "malloc" (func $malloc))
 (export "free" (func $free)) 
 (table 0 anyfunc)
 (data (i32.const 12) "\00\00\00\00")
 (data (i32.const 512) "\00\00\00\00")
 (func $__errno_location (result i32)
  (i32.const 12)
 )
 (func $abort
  (call $_abort
   (i32.load
    (call $__errno_location)
   )
  )
 )
 (func $malloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
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
                       (block $label$21
                        (block $label$22
                         (block $label$23
                          (block $label$24
                           (block $label$25
                            (block $label$26
                             (block $label$27
                              (block $label$28
                               (block $label$29
                                (block $label$30
                                 (block $label$31
                                  (block $label$32
                                   (block $label$33
                                    (block $label$34
                                     (block $label$35
                                      (block $label$36
                                       (block $label$37
                                        (block $label$38
                                         (block $label$39
                                          (br_if $label$39
                                           (i32.gt_u
                                            (get_local $0)
                                            (i32.const 244)
                                           )
                                          )
                                          (br_if $label$38
                                           (i32.eqz
                                            (i32.and
                                             (tee_local $0
                                              (i32.shr_u
                                               (tee_local $7
                                                (i32.load offset=16
                                                 (i32.const 0)
                                                )
                                               )
                                               (tee_local $10
                                                (i32.shr_u
                                                 (tee_local $6
                                                  (select
                                                   (i32.const 16)
                                                   (i32.and
                                                    (i32.add
                                                     (get_local $0)
                                                     (i32.const 11)
                                                    )
                                                    (i32.const -8)
                                                   )
                                                   (i32.lt_u
                                                    (get_local $0)
                                                    (i32.const 11)
                                                   )
                                                  )
                                                 )
                                                 (i32.const 3)
                                                )
                                               )
                                              )
                                             )
                                             (i32.const 3)
                                            )
                                           )
                                          )
                                          (br_if $label$37
                                           (i32.eq
                                            (tee_local $0
                                             (i32.load offset=8
                                              (tee_local $10
                                               (i32.load
                                                (i32.add
                                                 (tee_local $6
                                                  (i32.shl
                                                   (tee_local $11
                                                    (i32.add
                                                     (i32.and
                                                      (i32.xor
                                                       (get_local $0)
                                                       (i32.const -1)
                                                      )
                                                      (i32.const 1)
                                                     )
                                                     (get_local $10)
                                                    )
                                                   )
                                                   (i32.const 3)
                                                  )
                                                 )
                                                 (i32.const 64)
                                                )
                                               )
                                              )
                                             )
                                            )
                                            (tee_local $6
                                             (i32.add
                                              (get_local $6)
                                              (i32.const 56)
                                             )
                                            )
                                           )
                                          )
                                          (br_if $label$0
                                           (i32.gt_u
                                            (i32.load offset=32
                                             (i32.const 0)
                                            )
                                            (get_local $0)
                                           )
                                          )
                                          (br_if $label$0
                                           (i32.ne
                                            (i32.load offset=12
                                             (get_local $0)
                                            )
                                            (get_local $10)
                                           )
                                          )
                                          (i32.store
                                           (i32.add
                                            (get_local $6)
                                            (i32.const 8)
                                           )
                                           (get_local $0)
                                          )
                                          (i32.store
                                           (i32.add
                                            (get_local $0)
                                            (i32.const 12)
                                           )
                                           (get_local $6)
                                          )
                                          (br $label$36)
                                         )
                                         (set_local $6
                                          (i32.const -1)
                                         )
                                         (br_if $label$23
                                          (i32.gt_u
                                           (get_local $0)
                                           (i32.const -65)
                                          )
                                         )
                                         (set_local $6
                                          (i32.and
                                           (tee_local $0
                                            (i32.add
                                             (get_local $0)
                                             (i32.const 11)
                                            )
                                           )
                                           (i32.const -8)
                                          )
                                         )
                                         (br_if $label$23
                                          (i32.eqz
                                           (tee_local $3
                                            (i32.load offset=20
                                             (i32.const 0)
                                            )
                                           )
                                          )
                                         )
                                         (set_local $8
                                          (i32.const 0)
                                         )
                                         (block $label$40
                                          (br_if $label$40
                                           (i32.eqz
                                            (tee_local $0
                                             (i32.shr_u
                                              (get_local $0)
                                              (i32.const 8)
                                             )
                                            )
                                           )
                                          )
                                          (set_local $8
                                           (i32.const 31)
                                          )
                                          (br_if $label$40
                                           (i32.gt_u
                                            (get_local $6)
                                            (i32.const 16777215)
                                           )
                                          )
                                          (set_local $8
                                           (i32.or
                                            (i32.and
                                             (i32.shr_u
                                              (get_local $6)
                                              (i32.add
                                               (tee_local $0
                                                (i32.add
                                                 (i32.sub
                                                  (i32.const 14)
                                                  (i32.or
                                                   (i32.or
                                                    (tee_local $11
                                                     (i32.and
                                                      (i32.shr_u
                                                       (i32.add
                                                        (tee_local $0
                                                         (i32.shl
                                                          (get_local $0)
                                                          (tee_local $10
                                                           (i32.and
                                                            (i32.shr_u
                                                             (i32.add
                                                              (get_local $0)
                                                              (i32.const 1048320)
                                                             )
                                                             (i32.const 16)
                                                            )
                                                            (i32.const 8)
                                                           )
                                                          )
                                                         )
                                                        )
                                                        (i32.const 520192)
                                                       )
                                                       (i32.const 16)
                                                      )
                                                      (i32.const 4)
                                                     )
                                                    )
                                                    (get_local $10)
                                                   )
                                                   (tee_local $10
                                                    (i32.and
                                                     (i32.shr_u
                                                      (i32.add
                                                       (tee_local $0
                                                        (i32.shl
                                                         (get_local $0)
                                                         (get_local $11)
                                                        )
                                                       )
                                                       (i32.const 245760)
                                                      )
                                                      (i32.const 16)
                                                     )
                                                     (i32.const 2)
                                                    )
                                                   )
                                                  )
                                                 )
                                                 (i32.shr_u
                                                  (i32.shl
                                                   (get_local $0)
                                                   (get_local $10)
                                                  )
                                                  (i32.const 15)
                                                 )
                                                )
                                               )
                                               (i32.const 7)
                                              )
                                             )
                                             (i32.const 1)
                                            )
                                            (i32.shl
                                             (get_local $0)
                                             (i32.const 1)
                                            )
                                           )
                                          )
                                         )
                                         (set_local $11
                                          (i32.sub
                                           (i32.const 0)
                                           (get_local $6)
                                          )
                                         )
                                         (br_if $label$35
                                          (i32.eqz
                                           (tee_local $10
                                            (i32.load
                                             (i32.add
                                              (i32.shl
                                               (get_local $8)
                                               (i32.const 2)
                                              )
                                              (i32.const 320)
                                             )
                                            )
                                           )
                                          )
                                         )
                                         (set_local $9
                                          (i32.shl
                                           (get_local $6)
                                           (select
                                            (i32.const 0)
                                            (i32.sub
                                             (i32.const 25)
                                             (i32.shr_u
                                              (get_local $8)
                                              (i32.const 1)
                                             )
                                            )
                                            (i32.eq
                                             (get_local $8)
                                             (i32.const 31)
                                            )
                                           )
                                          )
                                         )
                                         (set_local $0
                                          (i32.const 0)
                                         )
                                         (set_local $12
                                          (i32.const 0)
                                         )
                                         (loop $label$41
                                          (block $label$42
                                           (br_if $label$42
                                            (i32.ge_u
                                             (tee_local $7
                                              (i32.sub
                                               (i32.and
                                                (i32.load offset=4
                                                 (get_local $10)
                                                )
                                                (i32.const -8)
                                               )
                                               (get_local $6)
                                              )
                                             )
                                             (get_local $11)
                                            )
                                           )
                                           (set_local $11
                                            (get_local $7)
                                           )
                                           (set_local $12
                                            (get_local $10)
                                           )
                                           (br_if $label$32
                                            (i32.eqz
                                             (get_local $7)
                                            )
                                           )
                                          )
                                          (set_local $0
                                           (select
                                            (select
                                             (get_local $0)
                                             (tee_local $7
                                              (i32.load
                                               (i32.add
                                                (get_local $10)
                                                (i32.const 20)
                                               )
                                              )
                                             )
                                             (i32.eq
                                              (get_local $7)
                                              (tee_local $10
                                               (i32.load
                                                (i32.add
                                                 (i32.add
                                                  (get_local $10)
                                                  (i32.and
                                                   (i32.shr_u
                                                    (get_local $9)
                                                    (i32.const 29)
                                                   )
                                                   (i32.const 4)
                                                  )
                                                 )
                                                 (i32.const 16)
                                                )
                                               )
                                              )
                                             )
                                            )
                                            (get_local $0)
                                            (get_local $7)
                                           )
                                          )
                                          (set_local $9
                                           (i32.shl
                                            (get_local $9)
                                            (i32.ne
                                             (get_local $10)
                                             (i32.const 0)
                                            )
                                           )
                                          )
                                          (br_if $label$41
                                           (get_local $10)
                                          )
                                         )
                                         (br_if $label$34
                                          (i32.eqz
                                           (i32.or
                                            (get_local $0)
                                            (get_local $12)
                                           )
                                          )
                                         )
                                         (br $label$26)
                                        )
                                        (br_if $label$23
                                         (i32.le_u
                                          (get_local $6)
                                          (tee_local $3
                                           (i32.load offset=24
                                            (i32.const 0)
                                           )
                                          )
                                         )
                                        )
                                        (br_if $label$33
                                         (i32.eqz
                                          (get_local $0)
                                         )
                                        )
                                        (br_if $label$31
                                         (i32.eq
                                          (tee_local $10
                                           (i32.load offset=8
                                            (tee_local $0
                                             (i32.load
                                              (i32.add
                                               (tee_local $12
                                                (i32.shl
                                                 (tee_local $11
                                                  (i32.add
                                                   (i32.or
                                                    (i32.or
                                                     (i32.or
                                                      (i32.or
                                                       (tee_local $11
                                                        (i32.and
                                                         (i32.shr_u
                                                          (tee_local $10
                                                           (i32.shr_u
                                                            (tee_local $0
                                                             (i32.add
                                                              (i32.and
                                                               (tee_local $0
                                                                (i32.and
                                                                 (i32.shl
                                                                  (get_local $0)
                                                                  (get_local $10)
                                                                 )
                                                                 (i32.or
                                                                  (tee_local $0
                                                                   (i32.shl
                                                                    (i32.const 2)
                                                                    (get_local $10)
                                                                   )
                                                                  )
                                                                  (i32.sub
                                                                   (i32.const 0)
                                                                   (get_local $0)
                                                                  )
                                                                 )
                                                                )
                                                               )
                                                               (i32.sub
                                                                (i32.const 0)
                                                                (get_local $0)
                                                               )
                                                              )
                                                              (i32.const -1)
                                                             )
                                                            )
                                                            (tee_local $0
                                                             (i32.and
                                                              (i32.shr_u
                                                               (get_local $0)
                                                               (i32.const 12)
                                                              )
                                                              (i32.const 16)
                                                             )
                                                            )
                                                           )
                                                          )
                                                          (i32.const 5)
                                                         )
                                                         (i32.const 8)
                                                        )
                                                       )
                                                       (get_local $0)
                                                      )
                                                      (tee_local $10
                                                       (i32.and
                                                        (i32.shr_u
                                                         (tee_local $0
                                                          (i32.shr_u
                                                           (get_local $10)
                                                           (get_local $11)
                                                          )
                                                         )
                                                         (i32.const 2)
                                                        )
                                                        (i32.const 4)
                                                       )
                                                      )
                                                     )
                                                     (tee_local $10
                                                      (i32.and
                                                       (i32.shr_u
                                                        (tee_local $0
                                                         (i32.shr_u
                                                          (get_local $0)
                                                          (get_local $10)
                                                         )
                                                        )
                                                        (i32.const 1)
                                                       )
                                                       (i32.const 2)
                                                      )
                                                     )
                                                    )
                                                    (tee_local $10
                                                     (i32.and
                                                      (i32.shr_u
                                                       (tee_local $0
                                                        (i32.shr_u
                                                         (get_local $0)
                                                         (get_local $10)
                                                        )
                                                       )
                                                       (i32.const 1)
                                                      )
                                                      (i32.const 1)
                                                     )
                                                    )
                                                   )
                                                   (i32.shr_u
                                                    (get_local $0)
                                                    (get_local $10)
                                                   )
                                                  )
                                                 )
                                                 (i32.const 3)
                                                )
                                               )
                                               (i32.const 64)
                                              )
                                             )
                                            )
                                           )
                                          )
                                          (tee_local $12
                                           (i32.add
                                            (get_local $12)
                                            (i32.const 56)
                                           )
                                          )
                                         )
                                        )
                                        (br_if $label$0
                                         (i32.gt_u
                                          (i32.load offset=32
                                           (i32.const 0)
                                          )
                                          (get_local $10)
                                         )
                                        )
                                        (br_if $label$0
                                         (i32.ne
                                          (i32.load offset=12
                                           (get_local $10)
                                          )
                                          (get_local $0)
                                         )
                                        )
                                        (i32.store
                                         (i32.add
                                          (get_local $12)
                                          (i32.const 8)
                                         )
                                         (get_local $10)
                                        )
                                        (i32.store
                                         (i32.add
                                          (get_local $10)
                                          (i32.const 12)
                                         )
                                         (get_local $12)
                                        )
                                        (br $label$30)
                                       )
                                       (i32.store offset=16
                                        (i32.const 0)
                                        (i32.and
                                         (get_local $7)
                                         (i32.rotl
                                          (i32.const -2)
                                          (get_local $11)
                                         )
                                        )
                                       )
                                      )
                                      (set_local $0
                                       (i32.add
                                        (get_local $10)
                                        (i32.const 8)
                                       )
                                      )
                                      (i32.store offset=4
                                       (get_local $10)
                                       (i32.or
                                        (tee_local $11
                                         (i32.shl
                                          (get_local $11)
                                          (i32.const 3)
                                         )
                                        )
                                        (i32.const 3)
                                       )
                                      )
                                      (i32.store offset=4
                                       (tee_local $10
                                        (i32.add
                                         (get_local $10)
                                         (get_local $11)
                                        )
                                       )
                                       (i32.or
                                        (i32.load offset=4
                                         (get_local $10)
                                        )
                                        (i32.const 1)
                                       )
                                      )
                                      (br $label$1)
                                     )
                                     (set_local $0
                                      (i32.const 0)
                                     )
                                     (set_local $12
                                      (i32.const 0)
                                     )
                                     (br_if $label$26
                                      (i32.or
                                       (i32.const 0)
                                       (i32.const 0)
                                      )
                                     )
                                    )
                                    (set_local $12
                                     (i32.const 0)
                                    )
                                    (br_if $label$23
                                     (i32.eqz
                                      (tee_local $0
                                       (i32.and
                                        (get_local $3)
                                        (i32.or
                                         (tee_local $0
                                          (i32.shl
                                           (i32.const 2)
                                           (get_local $8)
                                          )
                                         )
                                         (i32.sub
                                          (i32.const 0)
                                          (get_local $0)
                                         )
                                        )
                                       )
                                      )
                                     )
                                    )
                                    (br_if $label$25
                                     (tee_local $0
                                      (i32.load
                                       (i32.add
                                        (i32.shl
                                         (i32.add
                                          (i32.or
                                           (i32.or
                                            (i32.or
                                             (i32.or
                                              (tee_local $9
                                               (i32.and
                                                (i32.shr_u
                                                 (tee_local $10
                                                  (i32.shr_u
                                                   (tee_local $0
                                                    (i32.add
                                                     (i32.and
                                                      (get_local $0)
                                                      (i32.sub
                                                       (i32.const 0)
                                                       (get_local $0)
                                                      )
                                                     )
                                                     (i32.const -1)
                                                    )
                                                   )
                                                   (tee_local $0
                                                    (i32.and
                                                     (i32.shr_u
                                                      (get_local $0)
                                                      (i32.const 12)
                                                     )
                                                     (i32.const 16)
                                                    )
                                                   )
                                                  )
                                                 )
                                                 (i32.const 5)
                                                )
                                                (i32.const 8)
                                               )
                                              )
                                              (get_local $0)
                                             )
                                             (tee_local $10
                                              (i32.and
                                               (i32.shr_u
                                                (tee_local $0
                                                 (i32.shr_u
                                                  (get_local $10)
                                                  (get_local $9)
                                                 )
                                                )
                                                (i32.const 2)
                                               )
                                               (i32.const 4)
                                              )
                                             )
                                            )
                                            (tee_local $10
                                             (i32.and
                                              (i32.shr_u
                                               (tee_local $0
                                                (i32.shr_u
                                                 (get_local $0)
                                                 (get_local $10)
                                                )
                                               )
                                               (i32.const 1)
                                              )
                                              (i32.const 2)
                                             )
                                            )
                                           )
                                           (tee_local $10
                                            (i32.and
                                             (i32.shr_u
                                              (tee_local $0
                                               (i32.shr_u
                                                (get_local $0)
                                                (get_local $10)
                                               )
                                              )
                                              (i32.const 1)
                                             )
                                             (i32.const 1)
                                            )
                                           )
                                          )
                                          (i32.shr_u
                                           (get_local $0)
                                           (get_local $10)
                                          )
                                         )
                                         (i32.const 2)
                                        )
                                        (i32.const 320)
                                       )
                                      )
                                     )
                                    )
                                    (br $label$24)
                                   )
                                   (br_if $label$23
                                    (i32.eqz
                                     (tee_local $5
                                      (i32.load offset=20
                                       (i32.const 0)
                                      )
                                     )
                                    )
                                   )
                                   (set_local $10
                                    (i32.sub
                                     (i32.and
                                      (i32.load offset=4
                                       (tee_local $11
                                        (i32.load
                                         (i32.add
                                          (i32.shl
                                           (i32.add
                                            (i32.or
                                             (i32.or
                                              (i32.or
                                               (i32.or
                                                (tee_local $11
                                                 (i32.and
                                                  (i32.shr_u
                                                   (tee_local $10
                                                    (i32.shr_u
                                                     (tee_local $0
                                                      (i32.add
                                                       (i32.and
                                                        (get_local $5)
                                                        (i32.sub
                                                         (i32.const 0)
                                                         (get_local $5)
                                                        )
                                                       )
                                                       (i32.const -1)
                                                      )
                                                     )
                                                     (tee_local $0
                                                      (i32.and
                                                       (i32.shr_u
                                                        (get_local $0)
                                                        (i32.const 12)
                                                       )
                                                       (i32.const 16)
                                                      )
                                                     )
                                                    )
                                                   )
                                                   (i32.const 5)
                                                  )
                                                  (i32.const 8)
                                                 )
                                                )
                                                (get_local $0)
                                               )
                                               (tee_local $10
                                                (i32.and
                                                 (i32.shr_u
                                                  (tee_local $0
                                                   (i32.shr_u
                                                    (get_local $10)
                                                    (get_local $11)
                                                   )
                                                  )
                                                  (i32.const 2)
                                                 )
                                                 (i32.const 4)
                                                )
                                               )
                                              )
                                              (tee_local $10
                                               (i32.and
                                                (i32.shr_u
                                                 (tee_local $0
                                                  (i32.shr_u
                                                   (get_local $0)
                                                   (get_local $10)
                                                  )
                                                 )
                                                 (i32.const 1)
                                                )
                                                (i32.const 2)
                                               )
                                              )
                                             )
                                             (tee_local $10
                                              (i32.and
                                               (i32.shr_u
                                                (tee_local $0
                                                 (i32.shr_u
                                                  (get_local $0)
                                                  (get_local $10)
                                                 )
                                                )
                                                (i32.const 1)
                                               )
                                               (i32.const 1)
                                              )
                                             )
                                            )
                                            (i32.shr_u
                                             (get_local $0)
                                             (get_local $10)
                                            )
                                           )
                                           (i32.const 2)
                                          )
                                          (i32.const 320)
                                         )
                                        )
                                       )
                                      )
                                      (i32.const -8)
                                     )
                                     (get_local $6)
                                    )
                                   )
                                   (block $label$43
                                    (br_if $label$43
                                     (i32.eqz
                                      (tee_local $0
                                       (i32.load
                                        (i32.add
                                         (i32.add
                                          (get_local $11)
                                          (i32.const 16)
                                         )
                                         (i32.shl
                                          (i32.eqz
                                           (i32.load offset=16
                                            (get_local $11)
                                           )
                                          )
                                          (i32.const 2)
                                         )
                                        )
                                       )
                                      )
                                     )
                                    )
                                    (loop $label$44
                                     (set_local $10
                                      (select
                                       (tee_local $12
                                        (i32.sub
                                         (i32.and
                                          (i32.load offset=4
                                           (get_local $0)
                                          )
                                          (i32.const -8)
                                         )
                                         (get_local $6)
                                        )
                                       )
                                       (get_local $10)
                                       (tee_local $12
                                        (i32.lt_u
                                         (get_local $12)
                                         (get_local $10)
                                        )
                                       )
                                      )
                                     )
                                     (set_local $11
                                      (select
                                       (get_local $0)
                                       (get_local $11)
                                       (get_local $12)
                                      )
                                     )
                                     (set_local $0
                                      (tee_local $12
                                       (i32.load
                                        (i32.add
                                         (i32.add
                                          (get_local $0)
                                          (i32.const 16)
                                         )
                                         (i32.shl
                                          (i32.eqz
                                           (i32.load offset=16
                                            (get_local $0)
                                           )
                                          )
                                          (i32.const 2)
                                         )
                                        )
                                       )
                                      )
                                     )
                                     (br_if $label$44
                                      (get_local $12)
                                     )
                                    )
                                   )
                                   (br_if $label$0
                                    (i32.gt_u
                                     (tee_local $1
                                      (i32.load offset=32
                                       (i32.const 0)
                                      )
                                     )
                                     (get_local $11)
                                    )
                                   )
                                   (br_if $label$0
                                    (i32.le_u
                                     (tee_local $2
                                      (i32.add
                                       (get_local $11)
                                       (get_local $6)
                                      )
                                     )
                                     (get_local $11)
                                    )
                                   )
                                   (set_local $4
                                    (i32.load offset=24
                                     (get_local $11)
                                    )
                                   )
                                   (br_if $label$29
                                    (i32.eq
                                     (tee_local $9
                                      (i32.load offset=12
                                       (get_local $11)
                                      )
                                     )
                                     (get_local $11)
                                    )
                                   )
                                   (br_if $label$0
                                    (i32.gt_u
                                     (get_local $1)
                                     (tee_local $0
                                      (i32.load offset=8
                                       (get_local $11)
                                      )
                                     )
                                    )
                                   )
                                   (br_if $label$0
                                    (i32.ne
                                     (i32.load offset=12
                                      (get_local $0)
                                     )
                                     (get_local $11)
                                    )
                                   )
                                   (br_if $label$0
                                    (i32.ne
                                     (i32.load offset=8
                                      (get_local $9)
                                     )
                                     (get_local $11)
                                    )
                                   )
                                   (i32.store
                                    (i32.add
                                     (get_local $9)
                                     (i32.const 8)
                                    )
                                    (get_local $0)
                                   )
                                   (i32.store
                                    (i32.add
                                     (get_local $0)
                                     (i32.const 12)
                                    )
                                    (get_local $9)
                                   )
                                   (br_if $label$28
                                    (get_local $4)
                                   )
                                   (br $label$27)
                                  )
                                  (set_local $11
                                   (i32.const 0)
                                  )
                                  (set_local $12
                                   (get_local $10)
                                  )
                                  (set_local $0
                                   (get_local $10)
                                  )
                                  (br $label$25)
                                 )
                                 (i32.store offset=16
                                  (i32.const 0)
                                  (tee_local $7
                                   (i32.and
                                    (get_local $7)
                                    (i32.rotl
                                     (i32.const -2)
                                     (get_local $11)
                                    )
                                   )
                                  )
                                 )
                                )
                                (i32.store offset=4
                                 (get_local $0)
                                 (i32.or
                                  (get_local $6)
                                  (i32.const 3)
                                 )
                                )
                                (i32.store offset=4
                                 (tee_local $12
                                  (i32.add
                                   (get_local $0)
                                   (get_local $6)
                                  )
                                 )
                                 (i32.or
                                  (tee_local $11
                                   (i32.sub
                                    (tee_local $10
                                     (i32.shl
                                      (get_local $11)
                                      (i32.const 3)
                                     )
                                    )
                                    (get_local $6)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                )
                                (i32.store
                                 (i32.add
                                  (get_local $0)
                                  (get_local $10)
                                 )
                                 (get_local $11)
                                )
                                (block $label$45
                                 (br_if $label$45
                                  (i32.eqz
                                   (get_local $3)
                                  )
                                 )
                                 (set_local $6
                                  (i32.add
                                   (i32.shl
                                    (tee_local $9
                                     (i32.shr_u
                                      (get_local $3)
                                      (i32.const 3)
                                     )
                                    )
                                    (i32.const 3)
                                   )
                                   (i32.const 56)
                                  )
                                 )
                                 (set_local $10
                                  (i32.load offset=36
                                   (i32.const 0)
                                  )
                                 )
                                 (block $label$46
                                  (block $label$47
                                   (br_if $label$47
                                    (i32.eqz
                                     (i32.and
                                      (get_local $7)
                                      (tee_local $9
                                       (i32.shl
                                        (i32.const 1)
                                        (get_local $9)
                                       )
                                      )
                                     )
                                    )
                                   )
                                   (br_if $label$46
                                    (i32.le_u
                                     (i32.load offset=32
                                      (i32.const 0)
                                     )
                                     (tee_local $9
                                      (i32.load offset=8
                                       (get_local $6)
                                      )
                                     )
                                    )
                                   )
                                   (br $label$0)
                                  )
                                  (i32.store offset=16
                                   (i32.const 0)
                                   (i32.or
                                    (get_local $7)
                                    (get_local $9)
                                   )
                                  )
                                  (set_local $9
                                   (get_local $6)
                                  )
                                 )
                                 (i32.store offset=12
                                  (get_local $9)
                                  (get_local $10)
                                 )
                                 (i32.store
                                  (i32.add
                                   (get_local $6)
                                   (i32.const 8)
                                  )
                                  (get_local $10)
                                 )
                                 (i32.store offset=12
                                  (get_local $10)
                                  (get_local $6)
                                 )
                                 (i32.store offset=8
                                  (get_local $10)
                                  (get_local $9)
                                 )
                                )
                                (set_local $0
                                 (i32.add
                                  (get_local $0)
                                  (i32.const 8)
                                 )
                                )
                                (i32.store offset=36
                                 (i32.const 0)
                                 (get_local $12)
                                )
                                (i32.store offset=24
                                 (i32.const 0)
                                 (get_local $11)
                                )
                                (br $label$1)
                               )
                               (block $label$48
                                (block $label$49
                                 (br_if $label$49
                                  (tee_local $0
                                   (i32.load
                                    (tee_local $12
                                     (i32.add
                                      (get_local $11)
                                      (i32.const 20)
                                     )
                                    )
                                   )
                                  )
                                 )
                                 (br_if $label$48
                                  (i32.eqz
                                   (tee_local $0
                                    (i32.load offset=16
                                     (get_local $11)
                                    )
                                   )
                                  )
                                 )
                                 (set_local $12
                                  (i32.add
                                   (get_local $11)
                                   (i32.const 16)
                                  )
                                 )
                                )
                                (loop $label$50
                                 (set_local $8
                                  (get_local $12)
                                 )
                                 (br_if $label$50
                                  (tee_local $0
                                   (i32.load
                                    (tee_local $12
                                     (i32.add
                                      (tee_local $9
                                       (get_local $0)
                                      )
                                      (i32.const 20)
                                     )
                                    )
                                   )
                                  )
                                 )
                                 (set_local $12
                                  (i32.add
                                   (get_local $9)
                                   (i32.const 16)
                                  )
                                 )
                                 (br_if $label$50
                                  (tee_local $0
                                   (i32.load offset=16
                                    (get_local $9)
                                   )
                                  )
                                 )
                                )
                                (br_if $label$0
                                 (i32.gt_u
                                  (get_local $1)
                                  (get_local $8)
                                 )
                                )
                                (i32.store
                                 (get_local $8)
                                 (i32.const 0)
                                )
                                (br_if $label$27
                                 (i32.eqz
                                  (get_local $4)
                                 )
                                )
                                (br $label$28)
                               )
                               (set_local $9
                                (i32.const 0)
                               )
                               (br_if $label$27
                                (i32.eqz
                                 (get_local $4)
                                )
                               )
                              )
                              (block $label$51
                               (block $label$52
                                (block $label$53
                                 (br_if $label$53
                                  (i32.eq
                                   (get_local $11)
                                   (i32.load
                                    (tee_local $0
                                     (i32.add
                                      (i32.shl
                                       (tee_local $12
                                        (i32.load offset=28
                                         (get_local $11)
                                        )
                                       )
                                       (i32.const 2)
                                      )
                                      (i32.const 320)
                                     )
                                    )
                                   )
                                  )
                                 )
                                 (br_if $label$0
                                  (i32.gt_u
                                   (i32.load offset=32
                                    (i32.const 0)
                                   )
                                   (get_local $4)
                                  )
                                 )
                                 (i32.store
                                  (i32.add
                                   (i32.add
                                    (get_local $4)
                                    (i32.const 16)
                                   )
                                   (i32.shl
                                    (i32.ne
                                     (i32.load offset=16
                                      (get_local $4)
                                     )
                                     (get_local $11)
                                    )
                                    (i32.const 2)
                                   )
                                  )
                                  (get_local $9)
                                 )
                                 (br_if $label$52
                                  (get_local $9)
                                 )
                                 (br $label$27)
                                )
                                (i32.store
                                 (get_local $0)
                                 (get_local $9)
                                )
                                (br_if $label$51
                                 (i32.eqz
                                  (get_local $9)
                                 )
                                )
                               )
                               (br_if $label$0
                                (i32.gt_u
                                 (tee_local $12
                                  (i32.load offset=32
                                   (i32.const 0)
                                  )
                                 )
                                 (get_local $9)
                                )
                               )
                               (i32.store offset=24
                                (get_local $9)
                                (get_local $4)
                               )
                               (block $label$54
                                (br_if $label$54
                                 (i32.eqz
                                  (tee_local $0
                                   (i32.load offset=16
                                    (get_local $11)
                                   )
                                  )
                                 )
                                )
                                (br_if $label$0
                                 (i32.gt_u
                                  (get_local $12)
                                  (get_local $0)
                                 )
                                )
                                (i32.store offset=16
                                 (get_local $9)
                                 (get_local $0)
                                )
                                (i32.store offset=24
                                 (get_local $0)
                                 (get_local $9)
                                )
                               )
                               (br_if $label$27
                                (i32.eqz
                                 (tee_local $0
                                  (i32.load
                                   (i32.add
                                    (get_local $11)
                                    (i32.const 20)
                                   )
                                  )
                                 )
                                )
                               )
                               (br_if $label$0
                                (i32.gt_u
                                 (i32.load offset=32
                                  (i32.const 0)
                                 )
                                 (get_local $0)
                                )
                               )
                               (i32.store
                                (i32.add
                                 (get_local $9)
                                 (i32.const 20)
                                )
                                (get_local $0)
                               )
                               (i32.store offset=24
                                (get_local $0)
                                (get_local $9)
                               )
                               (br $label$27)
                              )
                              (i32.store offset=20
                               (i32.const 0)
                               (i32.and
                                (get_local $5)
                                (i32.rotl
                                 (i32.const -2)
                                 (get_local $12)
                                )
                               )
                              )
                             )
                             (block $label$55
                              (block $label$56
                               (br_if $label$56
                                (i32.gt_u
                                 (get_local $10)
                                 (i32.const 15)
                                )
                               )
                               (i32.store offset=4
                                (get_local $11)
                                (i32.or
                                 (tee_local $0
                                  (i32.add
                                   (get_local $10)
                                   (get_local $6)
                                  )
                                 )
                                 (i32.const 3)
                                )
                               )
                               (i32.store offset=4
                                (tee_local $0
                                 (i32.add
                                  (get_local $11)
                                  (get_local $0)
                                 )
                                )
                                (i32.or
                                 (i32.load offset=4
                                  (get_local $0)
                                 )
                                 (i32.const 1)
                                )
                               )
                               (br $label$55)
                              )
                              (i32.store offset=4
                               (get_local $11)
                               (i32.or
                                (get_local $6)
                                (i32.const 3)
                               )
                              )
                              (i32.store offset=4
                               (get_local $2)
                               (i32.or
                                (get_local $10)
                                (i32.const 1)
                               )
                              )
                              (i32.store
                               (i32.add
                                (get_local $2)
                                (get_local $10)
                               )
                               (get_local $10)
                              )
                              (block $label$57
                               (br_if $label$57
                                (i32.eqz
                                 (get_local $3)
                                )
                               )
                               (set_local $6
                                (i32.add
                                 (i32.shl
                                  (tee_local $12
                                   (i32.shr_u
                                    (get_local $3)
                                    (i32.const 3)
                                   )
                                  )
                                  (i32.const 3)
                                 )
                                 (i32.const 56)
                                )
                               )
                               (set_local $0
                                (i32.load offset=36
                                 (i32.const 0)
                                )
                               )
                               (block $label$58
                                (block $label$59
                                 (br_if $label$59
                                  (i32.eqz
                                   (i32.and
                                    (get_local $7)
                                    (tee_local $12
                                     (i32.shl
                                      (i32.const 1)
                                      (get_local $12)
                                     )
                                    )
                                   )
                                  )
                                 )
                                 (br_if $label$58
                                  (i32.le_u
                                   (i32.load offset=32
                                    (i32.const 0)
                                   )
                                   (tee_local $12
                                    (i32.load offset=8
                                     (get_local $6)
                                    )
                                   )
                                  )
                                 )
                                 (br $label$0)
                                )
                                (i32.store offset=16
                                 (i32.const 0)
                                 (i32.or
                                  (get_local $7)
                                  (get_local $12)
                                 )
                                )
                                (set_local $12
                                 (get_local $6)
                                )
                               )
                               (i32.store offset=12
                                (get_local $12)
                                (get_local $0)
                               )
                               (i32.store
                                (i32.add
                                 (get_local $6)
                                 (i32.const 8)
                                )
                                (get_local $0)
                               )
                               (i32.store offset=12
                                (get_local $0)
                                (get_local $6)
                               )
                               (i32.store offset=8
                                (get_local $0)
                                (get_local $12)
                               )
                              )
                              (i32.store offset=36
                               (i32.const 0)
                               (get_local $2)
                              )
                              (i32.store offset=24
                               (i32.const 0)
                               (get_local $10)
                              )
                             )
                             (set_local $0
                              (i32.add
                               (get_local $11)
                               (i32.const 8)
                              )
                             )
                             (br $label$1)
                            )
                            (br_if $label$24
                             (i32.eqz
                              (get_local $0)
                             )
                            )
                           )
                           (loop $label$60
                            (set_local $11
                             (select
                              (tee_local $10
                               (i32.sub
                                (i32.and
                                 (i32.load offset=4
                                  (get_local $0)
                                 )
                                 (i32.const -8)
                                )
                                (get_local $6)
                               )
                              )
                              (get_local $11)
                              (tee_local $10
                               (i32.lt_u
                                (get_local $10)
                                (get_local $11)
                               )
                              )
                             )
                            )
                            (set_local $12
                             (select
                              (get_local $0)
                              (get_local $12)
                              (get_local $10)
                             )
                            )
                            (set_local $0
                             (tee_local $10
                              (i32.load
                               (i32.add
                                (i32.add
                                 (get_local $0)
                                 (i32.const 16)
                                )
                                (i32.shl
                                 (i32.eqz
                                  (i32.load offset=16
                                   (get_local $0)
                                  )
                                 )
                                 (i32.const 2)
                                )
                               )
                              )
                             )
                            )
                            (br_if $label$60
                             (get_local $10)
                            )
                           )
                          )
                          (br_if $label$23
                           (i32.eqz
                            (get_local $12)
                           )
                          )
                          (br_if $label$23
                           (i32.ge_u
                            (get_local $11)
                            (i32.sub
                             (i32.load offset=24
                              (i32.const 0)
                             )
                             (get_local $6)
                            )
                           )
                          )
                          (br_if $label$0
                           (i32.gt_u
                            (tee_local $4
                             (i32.load offset=32
                              (i32.const 0)
                             )
                            )
                            (get_local $12)
                           )
                          )
                          (br_if $label$0
                           (i32.le_u
                            (tee_local $8
                             (i32.add
                              (get_local $12)
                              (get_local $6)
                             )
                            )
                            (get_local $12)
                           )
                          )
                          (set_local $5
                           (i32.load offset=24
                            (get_local $12)
                           )
                          )
                          (br_if $label$22
                           (i32.eq
                            (tee_local $9
                             (i32.load offset=12
                              (get_local $12)
                             )
                            )
                            (get_local $12)
                           )
                          )
                          (br_if $label$0
                           (i32.gt_u
                            (get_local $4)
                            (tee_local $0
                             (i32.load offset=8
                              (get_local $12)
                             )
                            )
                           )
                          )
                          (br_if $label$0
                           (i32.ne
                            (i32.load offset=12
                             (get_local $0)
                            )
                            (get_local $12)
                           )
                          )
                          (br_if $label$0
                           (i32.ne
                            (i32.load offset=8
                             (get_local $9)
                            )
                            (get_local $12)
                           )
                          )
                          (i32.store
                           (i32.add
                            (get_local $9)
                            (i32.const 8)
                           )
                           (get_local $0)
                          )
                          (i32.store
                           (i32.add
                            (get_local $0)
                            (i32.const 12)
                           )
                           (get_local $9)
                          )
                          (br_if $label$3
                           (get_local $5)
                          )
                          (br $label$2)
                         )
                         (block $label$61
                          (block $label$62
                           (block $label$63
                            (block $label$64
                             (block $label$65
                              (block $label$66
                               (br_if $label$66
                                (i32.ge_u
                                 (tee_local $0
                                  (i32.load offset=24
                                   (i32.const 0)
                                  )
                                 )
                                 (get_local $6)
                                )
                               )
                               (br_if $label$65
                                (i32.le_u
                                 (tee_local $12
                                  (i32.load offset=28
                                   (i32.const 0)
                                  )
                                 )
                                 (get_local $6)
                                )
                               )
                               (i32.store offset=4
                                (tee_local $10
                                 (i32.add
                                  (tee_local $0
                                   (i32.load offset=40
                                    (i32.const 0)
                                   )
                                  )
                                  (get_local $6)
                                 )
                                )
                                (i32.or
                                 (tee_local $11
                                  (i32.sub
                                   (get_local $12)
                                   (get_local $6)
                                  )
                                 )
                                 (i32.const 1)
                                )
                               )
                               (i32.store offset=28
                                (i32.const 0)
                                (get_local $11)
                               )
                               (i32.store offset=40
                                (i32.const 0)
                                (get_local $10)
                               )
                               (i32.store offset=4
                                (get_local $0)
                                (i32.or
                                 (get_local $6)
                                 (i32.const 3)
                                )
                               )
                               (set_local $0
                                (i32.add
                                 (get_local $0)
                                 (i32.const 8)
                                )
                               )
                               (br $label$1)
                              )
                              (set_local $10
                               (i32.load offset=36
                                (i32.const 0)
                               )
                              )
                              (br_if $label$64
                               (i32.lt_u
                                (tee_local $11
                                 (i32.sub
                                  (get_local $0)
                                  (get_local $6)
                                 )
                                )
                                (i32.const 16)
                               )
                              )
                              (i32.store offset=4
                               (tee_local $12
                                (i32.add
                                 (get_local $10)
                                 (get_local $6)
                                )
                               )
                               (i32.or
                                (get_local $11)
                                (i32.const 1)
                               )
                              )
                              (i32.store
                               (i32.add
                                (get_local $10)
                                (get_local $0)
                               )
                               (get_local $11)
                              )
                              (i32.store offset=24
                               (i32.const 0)
                               (get_local $11)
                              )
                              (i32.store offset=36
                               (i32.const 0)
                               (get_local $12)
                              )
                              (i32.store offset=4
                               (get_local $10)
                               (i32.or
                                (get_local $6)
                                (i32.const 3)
                               )
                              )
                              (br $label$63)
                             )
                             (br_if $label$62
                              (i32.eqz
                               (i32.load offset=488
                                (i32.const 0)
                               )
                              )
                             )
                             (set_local $10
                              (i32.load offset=496
                               (i32.const 0)
                              )
                             )
                             (br $label$61)
                            )
                            (i32.store offset=4
                             (get_local $10)
                             (i32.or
                              (get_local $0)
                              (i32.const 3)
                             )
                            )
                            (i32.store offset=4
                             (tee_local $0
                              (i32.add
                               (get_local $10)
                               (get_local $0)
                              )
                             )
                             (i32.or
                              (i32.load offset=4
                               (get_local $0)
                              )
                              (i32.const 1)
                             )
                            )
                            (i32.store offset=36
                             (i32.const 0)
                             (i32.const 0)
                            )
                            (i32.store offset=24
                             (i32.const 0)
                             (i32.const 0)
                            )
                           )
                           (set_local $0
                            (i32.add
                             (get_local $10)
                             (i32.const 8)
                            )
                           )
                           (br $label$1)
                          )
                          (i64.store offset=492 align=4
                           (i32.const 0)
                           (i64.const 281474976776192)
                          )
                          (i64.store offset=500 align=4
                           (i32.const 0)
                           (i64.const 9007203549708287)
                          )
                          (i32.store offset=488
                           (i32.const 0)
                           (i32.xor
                            (i32.and
                             (i32.add
                              (get_local $13)
                              (i32.const 12)
                             )
                             (i32.const -16)
                            )
                            (i32.const 1431655768)
                           )
                          )
                          (i32.store offset=508
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (i32.store offset=460
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (set_local $10
                           (i32.const 65536)
                          )
                         )
                         (set_local $0
                          (i32.const 0)
                         )
                         (br_if $label$1
                          (i32.le_u
                           (tee_local $9
                            (i32.and
                             (tee_local $7
                              (i32.add
                               (get_local $10)
                               (tee_local $3
                                (i32.add
                                 (get_local $6)
                                 (i32.const 47)
                                )
                               )
                              )
                             )
                             (tee_local $8
                              (i32.sub
                               (i32.const 0)
                               (get_local $10)
                              )
                             )
                            )
                           )
                           (get_local $6)
                          )
                         )
                         (set_local $0
                          (i32.const 0)
                         )
                         (block $label$67
                          (br_if $label$67
                           (i32.eqz
                            (tee_local $10
                             (i32.load offset=456
                              (i32.const 0)
                             )
                            )
                           )
                          )
                          (br_if $label$1
                           (i32.le_u
                            (tee_local $5
                             (i32.add
                              (tee_local $11
                               (i32.load offset=448
                                (i32.const 0)
                               )
                              )
                              (get_local $9)
                             )
                            )
                            (get_local $11)
                           )
                          )
                          (br_if $label$1
                           (i32.gt_u
                            (get_local $5)
                            (get_local $10)
                           )
                          )
                         )
                         (br_if $label$14
                          (i32.and
                           (i32.load8_u offset=460
                            (i32.const 0)
                           )
                           (i32.const 4)
                          )
                         )
                         (block $label$68
                          (br_if $label$68
                           (i32.eqz
                            (tee_local $10
                             (i32.load offset=40
                              (i32.const 0)
                             )
                            )
                           )
                          )
                          (set_local $0
                           (i32.const 464)
                          )
                          (loop $label$69
                           (block $label$70
                            (br_if $label$70
                             (i32.gt_u
                              (tee_local $11
                               (i32.load
                                (get_local $0)
                               )
                              )
                              (get_local $10)
                             )
                            )
                            (br_if $label$21
                             (i32.gt_u
                              (i32.add
                               (get_local $11)
                               (i32.load offset=4
                                (get_local $0)
                               )
                              )
                              (get_local $10)
                             )
                            )
                           )
                           (br_if $label$69
                            (tee_local $0
                             (i32.load offset=8
                              (get_local $0)
                             )
                            )
                           )
                          )
                         )
                         (br_if $label$15
                          (i32.eq
                           (tee_local $12
                            (call $sbrk
                             (i32.const 0)
                            )
                           )
                           (i32.const -1)
                          )
                         )
                         (set_local $7
                          (get_local $9)
                         )
                         (block $label$71
                          (br_if $label$71
                           (i32.eqz
                            (i32.and
                             (tee_local $10
                              (i32.add
                               (tee_local $0
                                (i32.load offset=492
                                 (i32.const 0)
                                )
                               )
                               (i32.const -1)
                              )
                             )
                             (get_local $12)
                            )
                           )
                          )
                          (set_local $7
                           (i32.add
                            (i32.sub
                             (get_local $9)
                             (get_local $12)
                            )
                            (i32.and
                             (i32.add
                              (get_local $10)
                              (get_local $12)
                             )
                             (i32.sub
                              (i32.const 0)
                              (get_local $0)
                             )
                            )
                           )
                          )
                         )
                         (br_if $label$15
                          (i32.le_u
                           (get_local $7)
                           (get_local $6)
                          )
                         )
                         (br_if $label$15
                          (i32.gt_u
                           (get_local $7)
                           (i32.const 2147483646)
                          )
                         )
                         (block $label$72
                          (br_if $label$72
                           (i32.eqz
                            (tee_local $0
                             (i32.load offset=456
                              (i32.const 0)
                             )
                            )
                           )
                          )
                          (br_if $label$15
                           (i32.le_u
                            (tee_local $11
                             (i32.add
                              (tee_local $10
                               (i32.load offset=448
                                (i32.const 0)
                               )
                              )
                              (get_local $7)
                             )
                            )
                            (get_local $10)
                           )
                          )
                          (br_if $label$15
                           (i32.gt_u
                            (get_local $11)
                            (get_local $0)
                           )
                          )
                         )
                         (br_if $label$20
                          (i32.ne
                           (tee_local $0
                            (call $sbrk
                             (get_local $7)
                            )
                           )
                           (get_local $12)
                          )
                         )
                         (br $label$13)
                        )
                        (block $label$73
                         (br_if $label$73
                          (tee_local $0
                           (i32.load
                            (tee_local $10
                             (i32.add
                              (get_local $12)
                              (i32.const 20)
                             )
                            )
                           )
                          )
                         )
                         (br_if $label$19
                          (i32.eqz
                           (tee_local $0
                            (i32.load offset=16
                             (get_local $12)
                            )
                           )
                          )
                         )
                         (set_local $10
                          (i32.add
                           (get_local $12)
                           (i32.const 16)
                          )
                         )
                        )
                        (loop $label$74
                         (set_local $7
                          (get_local $10)
                         )
                         (br_if $label$74
                          (tee_local $0
                           (i32.load
                            (tee_local $10
                             (i32.add
                              (tee_local $9
                               (get_local $0)
                              )
                              (i32.const 20)
                             )
                            )
                           )
                          )
                         )
                         (set_local $10
                          (i32.add
                           (get_local $9)
                           (i32.const 16)
                          )
                         )
                         (br_if $label$74
                          (tee_local $0
                           (i32.load offset=16
                            (get_local $9)
                           )
                          )
                         )
                        )
                        (br_if $label$0
                         (i32.gt_u
                          (get_local $4)
                          (get_local $7)
                         )
                        )
                        (i32.store
                         (get_local $7)
                         (i32.const 0)
                        )
                        (br_if $label$2
                         (i32.eqz
                          (get_local $5)
                         )
                        )
                        (br $label$3)
                       )
                       (br_if $label$15
                        (i32.gt_u
                         (tee_local $7
                          (i32.and
                           (i32.sub
                            (get_local $7)
                            (get_local $12)
                           )
                           (get_local $8)
                          )
                         )
                         (i32.const 2147483646)
                        )
                       )
                       (br_if $label$17
                        (i32.eq
                         (tee_local $12
                          (call $sbrk
                           (get_local $7)
                          )
                         )
                         (i32.add
                          (i32.load
                           (get_local $0)
                          )
                          (i32.load
                           (i32.add
                            (get_local $0)
                            (i32.const 4)
                           )
                          )
                         )
                        )
                       )
                       (set_local $0
                        (get_local $12)
                       )
                      )
                      (set_local $12
                       (get_local $0)
                      )
                      (br_if $label$18
                       (i32.le_u
                        (i32.add
                         (get_local $6)
                         (i32.const 48)
                        )
                        (get_local $7)
                       )
                      )
                      (br_if $label$18
                       (i32.gt_u
                        (get_local $7)
                        (i32.const 2147483646)
                       )
                      )
                      (br_if $label$18
                       (i32.eq
                        (get_local $12)
                        (i32.const -1)
                       )
                      )
                      (br_if $label$13
                       (i32.gt_u
                        (tee_local $0
                         (i32.and
                          (i32.add
                           (i32.sub
                            (get_local $3)
                            (get_local $7)
                           )
                           (tee_local $0
                            (i32.load offset=496
                             (i32.const 0)
                            )
                           )
                          )
                          (i32.sub
                           (i32.const 0)
                           (get_local $0)
                          )
                         )
                        )
                        (i32.const 2147483646)
                       )
                      )
                      (br_if $label$16
                       (i32.eq
                        (call $sbrk
                         (get_local $0)
                        )
                        (i32.const -1)
                       )
                      )
                      (set_local $7
                       (i32.add
                        (get_local $0)
                        (get_local $7)
                       )
                      )
                      (br $label$13)
                     )
                     (set_local $9
                      (i32.const 0)
                     )
                     (br_if $label$3
                      (get_local $5)
                     )
                     (br $label$2)
                    )
                    (br_if $label$13
                     (i32.ne
                      (get_local $12)
                      (i32.const -1)
                     )
                    )
                    (br $label$15)
                   )
                   (br_if $label$13
                    (i32.ne
                     (get_local $12)
                     (i32.const -1)
                    )
                   )
                   (br $label$15)
                  )
                  (drop
                   (call $sbrk
                    (i32.sub
                     (i32.const 0)
                     (get_local $7)
                    )
                   )
                  )
                 )
                 (i32.store offset=460
                  (i32.const 0)
                  (i32.or
                   (i32.load offset=460
                    (i32.const 0)
                   )
                   (i32.const 4)
                  )
                 )
                )
                (br_if $label$12
                 (i32.gt_u
                  (get_local $9)
                  (i32.const 2147483646)
                 )
                )
                (br_if $label$12
                 (i32.ge_u
                  (tee_local $12
                   (call $sbrk
                    (get_local $9)
                   )
                  )
                  (tee_local $0
                   (call $sbrk
                    (i32.const 0)
                   )
                  )
                 )
                )
                (br_if $label$12
                 (i32.eq
                  (get_local $12)
                  (i32.const -1)
                 )
                )
                (br_if $label$12
                 (i32.eq
                  (get_local $0)
                  (i32.const -1)
                 )
                )
                (br_if $label$12
                 (i32.le_u
                  (tee_local $7
                   (i32.sub
                    (get_local $0)
                    (get_local $12)
                   )
                  )
                  (i32.add
                   (get_local $6)
                   (i32.const 40)
                  )
                 )
                )
               )
               (i32.store offset=448
                (i32.const 0)
                (tee_local $0
                 (i32.add
                  (i32.load offset=448
                   (i32.const 0)
                  )
                  (get_local $7)
                 )
                )
               )
               (block $label$75
                (br_if $label$75
                 (i32.le_u
                  (get_local $0)
                  (i32.load offset=452
                   (i32.const 0)
                  )
                 )
                )
                (i32.store offset=452
                 (i32.const 0)
                 (get_local $0)
                )
               )
               (block $label$76
                (block $label$77
                 (block $label$78
                  (block $label$79
                   (br_if $label$79
                    (i32.eqz
                     (tee_local $10
                      (i32.load offset=40
                       (i32.const 0)
                      )
                     )
                    )
                   )
                   (set_local $0
                    (i32.const 464)
                   )
                   (loop $label$80
                    (br_if $label$78
                     (i32.eq
                      (get_local $12)
                      (i32.add
                       (tee_local $11
                        (i32.load
                         (get_local $0)
                        )
                       )
                       (tee_local $9
                        (i32.load offset=4
                         (get_local $0)
                        )
                       )
                      )
                     )
                    )
                    (br_if $label$80
                     (tee_local $0
                      (i32.load offset=8
                       (get_local $0)
                      )
                     )
                    )
                    (br $label$77)
                   )
                  )
                  (block $label$81
                   (block $label$82
                    (br_if $label$82
                     (i32.eqz
                      (tee_local $0
                       (i32.load offset=32
                        (i32.const 0)
                       )
                      )
                     )
                    )
                    (br_if $label$81
                     (i32.ge_u
                      (get_local $12)
                      (get_local $0)
                     )
                    )
                   )
                   (i32.store offset=32
                    (i32.const 0)
                    (get_local $12)
                   )
                  )
                  (i32.store offset=468
                   (i32.const 0)
                   (get_local $7)
                  )
                  (i32.store offset=464
                   (i32.const 0)
                   (get_local $12)
                  )
                  (i32.store offset=48
                   (i32.const 0)
                   (i32.const -1)
                  )
                  (i32.store offset=68
                   (i32.const 0)
                   (i32.const 56)
                  )
                  (i32.store offset=64
                   (i32.const 0)
                   (i32.const 56)
                  )
                  (i32.store offset=76
                   (i32.const 0)
                   (i32.const 64)
                  )
                  (i32.store offset=72
                   (i32.const 0)
                   (i32.const 64)
                  )
                  (i32.store offset=84
                   (i32.const 0)
                   (i32.const 72)
                  )
                  (i32.store offset=80
                   (i32.const 0)
                   (i32.const 72)
                  )
                  (i32.store offset=92
                   (i32.const 0)
                   (i32.const 80)
                  )
                  (i32.store offset=88
                   (i32.const 0)
                   (i32.const 80)
                  )
                  (i32.store offset=100
                   (i32.const 0)
                   (i32.const 88)
                  )
                  (i32.store offset=96
                   (i32.const 0)
                   (i32.const 88)
                  )
                  (i32.store offset=108
                   (i32.const 0)
                   (i32.const 96)
                  )
                  (i32.store offset=104
                   (i32.const 0)
                   (i32.const 96)
                  )
                  (i32.store offset=116
                   (i32.const 0)
                   (i32.const 104)
                  )
                  (i32.store offset=52
                   (i32.const 0)
                   (i32.load offset=488
                    (i32.const 0)
                   )
                  )
                  (i32.store offset=476
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (i32.store offset=124
                   (i32.const 0)
                   (i32.const 112)
                  )
                  (i32.store offset=112
                   (i32.const 0)
                   (i32.const 104)
                  )
                  (i32.store offset=120
                   (i32.const 0)
                   (i32.const 112)
                  )
                  (i32.store offset=132
                   (i32.const 0)
                   (i32.const 120)
                  )
                  (i32.store offset=128
                   (i32.const 0)
                   (i32.const 120)
                  )
                  (i32.store offset=140
                   (i32.const 0)
                   (i32.const 128)
                  )
                  (i32.store offset=136
                   (i32.const 0)
                   (i32.const 128)
                  )
                  (i32.store offset=148
                   (i32.const 0)
                   (i32.const 136)
                  )
                  (i32.store offset=144
                   (i32.const 0)
                   (i32.const 136)
                  )
                  (i32.store offset=156
                   (i32.const 0)
                   (i32.const 144)
                  )
                  (i32.store offset=152
                   (i32.const 0)
                   (i32.const 144)
                  )
                  (i32.store offset=164
                   (i32.const 0)
                   (i32.const 152)
                  )
                  (i32.store offset=160
                   (i32.const 0)
                   (i32.const 152)
                  )
                  (i32.store offset=172
                   (i32.const 0)
                   (i32.const 160)
                  )
                  (i32.store offset=168
                   (i32.const 0)
                   (i32.const 160)
                  )
                  (i32.store offset=180
                   (i32.const 0)
                   (i32.const 168)
                  )
                  (i32.store offset=176
                   (i32.const 0)
                   (i32.const 168)
                  )
                  (i32.store offset=188
                   (i32.const 0)
                   (i32.const 176)
                  )
                  (i32.store offset=184
                   (i32.const 0)
                   (i32.const 176)
                  )
                  (i32.store offset=192
                   (i32.const 0)
                   (i32.const 184)
                  )
                  (i32.store offset=196
                   (i32.const 0)
                   (i32.const 184)
                  )
                  (i32.store offset=204
                   (i32.const 0)
                   (i32.const 192)
                  )
                  (i32.store offset=200
                   (i32.const 0)
                   (i32.const 192)
                  )
                  (i32.store offset=212
                   (i32.const 0)
                   (i32.const 200)
                  )
                  (i32.store offset=208
                   (i32.const 0)
                   (i32.const 200)
                  )
                  (i32.store offset=220
                   (i32.const 0)
                   (i32.const 208)
                  )
                  (i32.store offset=216
                   (i32.const 0)
                   (i32.const 208)
                  )
                  (i32.store offset=228
                   (i32.const 0)
                   (i32.const 216)
                  )
                  (i32.store offset=224
                   (i32.const 0)
                   (i32.const 216)
                  )
                  (i32.store offset=236
                   (i32.const 0)
                   (i32.const 224)
                  )
                  (i32.store offset=232
                   (i32.const 0)
                   (i32.const 224)
                  )
                  (i32.store offset=244
                   (i32.const 0)
                   (i32.const 232)
                  )
                  (i32.store offset=240
                   (i32.const 0)
                   (i32.const 232)
                  )
                  (i32.store offset=252
                   (i32.const 0)
                   (i32.const 240)
                  )
                  (i32.store offset=248
                   (i32.const 0)
                   (i32.const 240)
                  )
                  (i32.store offset=260
                   (i32.const 0)
                   (i32.const 248)
                  )
                  (i32.store offset=256
                   (i32.const 0)
                   (i32.const 248)
                  )
                  (i32.store offset=268
                   (i32.const 0)
                   (i32.const 256)
                  )
                  (i32.store offset=4
                   (tee_local $10
                    (i32.add
                     (get_local $12)
                     (tee_local $0
                      (select
                       (i32.and
                        (i32.sub
                         (i32.const -8)
                         (get_local $12)
                        )
                        (i32.const 7)
                       )
                       (i32.const 0)
                       (i32.and
                        (i32.add
                         (get_local $12)
                         (i32.const 8)
                        )
                        (i32.const 7)
                       )
                      )
                     )
                    )
                   )
                   (i32.or
                    (tee_local $0
                     (i32.sub
                      (tee_local $11
                       (i32.add
                        (get_local $7)
                        (i32.const -40)
                       )
                      )
                      (get_local $0)
                     )
                    )
                    (i32.const 1)
                   )
                  )
                  (i32.store offset=276
                   (i32.const 0)
                   (i32.const 264)
                  )
                  (i32.store offset=264
                   (i32.const 0)
                   (i32.const 256)
                  )
                  (i32.store offset=272
                   (i32.const 0)
                   (i32.const 264)
                  )
                  (i32.store offset=284
                   (i32.const 0)
                   (i32.const 272)
                  )
                  (i32.store offset=280
                   (i32.const 0)
                   (i32.const 272)
                  )
                  (i32.store offset=292
                   (i32.const 0)
                   (i32.const 280)
                  )
                  (i32.store offset=288
                   (i32.const 0)
                   (i32.const 280)
                  )
                  (i32.store offset=300
                   (i32.const 0)
                   (i32.const 288)
                  )
                  (i32.store offset=296
                   (i32.const 0)
                   (i32.const 288)
                  )
                  (i32.store offset=308
                   (i32.const 0)
                   (i32.const 296)
                  )
                  (i32.store offset=304
                   (i32.const 0)
                   (i32.const 296)
                  )
                  (i32.store offset=316
                   (i32.const 0)
                   (i32.const 304)
                  )
                  (i32.store offset=312
                   (i32.const 0)
                   (i32.const 304)
                  )
                  (i32.store offset=40
                   (i32.const 0)
                   (get_local $10)
                  )
                  (i32.store offset=28
                   (i32.const 0)
                   (get_local $0)
                  )
                  (i32.store offset=4
                   (i32.add
                    (get_local $12)
                    (get_local $11)
                   )
                   (i32.const 40)
                  )
                  (i32.store offset=44
                   (i32.const 0)
                   (i32.load offset=504
                    (i32.const 0)
                   )
                  )
                  (br $label$76)
                 )
                 (br_if $label$77
                  (i32.and
                   (i32.load8_u offset=12
                    (get_local $0)
                   )
                   (i32.const 8)
                  )
                 )
                 (br_if $label$77
                  (i32.le_u
                   (get_local $12)
                   (get_local $10)
                  )
                 )
                 (br_if $label$77
                  (i32.gt_u
                   (get_local $11)
                   (get_local $10)
                  )
                 )
                 (i32.store offset=4
                  (tee_local $12
                   (i32.add
                    (get_local $10)
                    (tee_local $11
                     (select
                      (i32.and
                       (i32.sub
                        (i32.const -8)
                        (get_local $10)
                       )
                       (i32.const 7)
                      )
                      (i32.const 0)
                      (i32.and
                       (i32.add
                        (get_local $10)
                        (i32.const 8)
                       )
                       (i32.const 7)
                      )
                     )
                    )
                   )
                  )
                  (i32.or
                   (tee_local $11
                    (i32.sub
                     (tee_local $8
                      (i32.add
                       (i32.load offset=28
                        (i32.const 0)
                       )
                       (get_local $7)
                      )
                     )
                     (get_local $11)
                    )
                   )
                   (i32.const 1)
                  )
                 )
                 (i32.store
                  (i32.add
                   (get_local $0)
                   (i32.const 4)
                  )
                  (i32.add
                   (get_local $9)
                   (get_local $7)
                  )
                 )
                 (i32.store offset=44
                  (i32.const 0)
                  (i32.load offset=504
                   (i32.const 0)
                  )
                 )
                 (i32.store offset=28
                  (i32.const 0)
                  (get_local $11)
                 )
                 (i32.store offset=40
                  (i32.const 0)
                  (get_local $12)
                 )
                 (i32.store offset=4
                  (i32.add
                   (get_local $10)
                   (get_local $8)
                  )
                  (i32.const 40)
                 )
                 (br $label$76)
                )
                (block $label$83
                 (br_if $label$83
                  (i32.ge_u
                   (get_local $12)
                   (tee_local $9
                    (i32.load offset=32
                     (i32.const 0)
                    )
                   )
                  )
                 )
                 (i32.store offset=32
                  (i32.const 0)
                  (get_local $12)
                 )
                 (set_local $9
                  (get_local $12)
                 )
                )
                (set_local $11
                 (i32.add
                  (get_local $12)
                  (get_local $7)
                 )
                )
                (set_local $0
                 (i32.const 464)
                )
                (block $label$84
                 (block $label$85
                  (block $label$86
                   (block $label$87
                    (block $label$88
                     (block $label$89
                      (block $label$90
                       (loop $label$91
                        (br_if $label$90
                         (i32.eq
                          (i32.load
                           (get_local $0)
                          )
                          (get_local $11)
                         )
                        )
                        (br_if $label$91
                         (tee_local $0
                          (i32.load offset=8
                           (get_local $0)
                          )
                         )
                        )
                        (br $label$89)
                       )
                      )
                      (br_if $label$89
                       (i32.and
                        (i32.load8_u offset=12
                         (get_local $0)
                        )
                        (i32.const 8)
                       )
                      )
                      (i32.store
                       (get_local $0)
                       (get_local $12)
                      )
                      (i32.store offset=4
                       (get_local $0)
                       (i32.add
                        (i32.load offset=4
                         (get_local $0)
                        )
                        (get_local $7)
                       )
                      )
                      (i32.store offset=4
                       (tee_local $8
                        (i32.add
                         (get_local $12)
                         (select
                          (i32.and
                           (i32.sub
                            (i32.const -8)
                            (get_local $12)
                           )
                           (i32.const 7)
                          )
                          (i32.const 0)
                          (i32.and
                           (i32.add
                            (get_local $12)
                            (i32.const 8)
                           )
                           (i32.const 7)
                          )
                         )
                        )
                       )
                       (i32.or
                        (get_local $6)
                        (i32.const 3)
                       )
                      )
                      (set_local $0
                       (i32.sub
                        (i32.sub
                         (tee_local $12
                          (i32.add
                           (get_local $11)
                           (select
                            (i32.and
                             (i32.sub
                              (i32.const -8)
                              (get_local $11)
                             )
                             (i32.const 7)
                            )
                            (i32.const 0)
                            (i32.and
                             (i32.add
                              (get_local $11)
                              (i32.const 8)
                             )
                             (i32.const 7)
                            )
                           )
                          )
                         )
                         (get_local $8)
                        )
                        (get_local $6)
                       )
                      )
                      (set_local $11
                       (i32.add
                        (get_local $8)
                        (get_local $6)
                       )
                      )
                      (br_if $label$88
                       (i32.eq
                        (get_local $10)
                        (get_local $12)
                       )
                      )
                      (br_if $label$11
                       (i32.eq
                        (i32.load offset=36
                         (i32.const 0)
                        )
                        (get_local $12)
                       )
                      )
                      (br_if $label$5
                       (i32.ne
                        (i32.and
                         (tee_local $5
                          (i32.load offset=4
                           (get_local $12)
                          )
                         )
                         (i32.const 3)
                        )
                        (i32.const 1)
                       )
                      )
                      (br_if $label$10
                       (i32.gt_u
                        (get_local $5)
                        (i32.const 255)
                       )
                      )
                      (set_local $10
                       (i32.load offset=12
                        (get_local $12)
                       )
                      )
                      (block $label$92
                       (br_if $label$92
                        (i32.eq
                         (tee_local $6
                          (i32.load offset=8
                           (get_local $12)
                          )
                         )
                         (tee_local $7
                          (i32.add
                           (i32.shl
                            (tee_local $3
                             (i32.shr_u
                              (get_local $5)
                              (i32.const 3)
                             )
                            )
                            (i32.const 3)
                           )
                           (i32.const 56)
                          )
                         )
                        )
                       )
                       (br_if $label$0
                        (i32.gt_u
                         (get_local $9)
                         (get_local $6)
                        )
                       )
                       (br_if $label$0
                        (i32.ne
                         (i32.load offset=12
                          (get_local $6)
                         )
                         (get_local $12)
                        )
                       )
                      )
                      (br_if $label$9
                       (i32.eq
                        (get_local $10)
                        (get_local $6)
                       )
                      )
                      (block $label$93
                       (br_if $label$93
                        (i32.eq
                         (get_local $10)
                         (get_local $7)
                        )
                       )
                       (br_if $label$0
                        (i32.gt_u
                         (get_local $9)
                         (get_local $10)
                        )
                       )
                       (br_if $label$0
                        (i32.ne
                         (i32.load offset=8
                          (get_local $10)
                         )
                         (get_local $12)
                        )
                       )
                      )
                      (i32.store offset=12
                       (get_local $6)
                       (get_local $10)
                      )
                      (i32.store
                       (i32.add
                        (get_local $10)
                        (i32.const 8)
                       )
                       (get_local $6)
                      )
                      (br $label$6)
                     )
                     (set_local $0
                      (i32.const 464)
                     )
                     (block $label$94
                      (loop $label$95
                       (block $label$96
                        (br_if $label$96
                         (i32.gt_u
                          (tee_local $11
                           (i32.load
                            (get_local $0)
                           )
                          )
                          (get_local $10)
                         )
                        )
                        (br_if $label$94
                         (i32.gt_u
                          (tee_local $11
                           (i32.add
                            (get_local $11)
                            (i32.load offset=4
                             (get_local $0)
                            )
                           )
                          )
                          (get_local $10)
                         )
                        )
                       )
                       (set_local $0
                        (i32.load offset=8
                         (get_local $0)
                        )
                       )
                       (br $label$95)
                      )
                     )
                     (i32.store offset=4
                      (tee_local $8
                       (i32.add
                        (get_local $12)
                        (tee_local $0
                         (select
                          (i32.and
                           (i32.sub
                            (i32.const -8)
                            (get_local $12)
                           )
                           (i32.const 7)
                          )
                          (i32.const 0)
                          (i32.and
                           (i32.add
                            (get_local $12)
                            (i32.const 8)
                           )
                           (i32.const 7)
                          )
                         )
                        )
                       )
                      )
                      (i32.or
                       (tee_local $0
                        (i32.sub
                         (tee_local $9
                          (i32.add
                           (get_local $7)
                           (i32.const -40)
                          )
                         )
                         (get_local $0)
                        )
                       )
                       (i32.const 1)
                      )
                     )
                     (i32.store offset=4
                      (i32.add
                       (get_local $12)
                       (get_local $9)
                      )
                      (i32.const 40)
                     )
                     (i32.store offset=4
                      (tee_local $9
                       (select
                        (get_local $10)
                        (tee_local $9
                         (i32.add
                          (i32.add
                           (get_local $11)
                           (select
                            (i32.and
                             (i32.sub
                              (i32.const 39)
                              (get_local $11)
                             )
                             (i32.const 7)
                            )
                            (i32.const 0)
                            (i32.and
                             (i32.add
                              (get_local $11)
                              (i32.const -39)
                             )
                             (i32.const 7)
                            )
                           )
                          )
                          (i32.const -47)
                         )
                        )
                        (i32.lt_u
                         (get_local $9)
                         (i32.add
                          (get_local $10)
                          (i32.const 16)
                         )
                        )
                       )
                      )
                      (i32.const 27)
                     )
                     (i32.store offset=44
                      (i32.const 0)
                      (i32.load offset=504
                       (i32.const 0)
                      )
                     )
                     (i32.store offset=28
                      (i32.const 0)
                      (get_local $0)
                     )
                     (i32.store offset=40
                      (i32.const 0)
                      (get_local $8)
                     )
                     (i32.store
                      (i32.add
                       (get_local $9)
                       (i32.const 16)
                      )
                      (i32.load offset=472
                       (i32.const 0)
                      )
                     )
                     (i32.store
                      (i32.add
                       (get_local $9)
                       (i32.const 12)
                      )
                      (i32.load offset=468
                       (i32.const 0)
                      )
                     )
                     (i32.store offset=8
                      (get_local $9)
                      (i32.load offset=464
                       (i32.const 0)
                      )
                     )
                     (i32.store
                      (i32.add
                       (get_local $9)
                       (i32.const 20)
                      )
                      (i32.load offset=476
                       (i32.const 0)
                      )
                     )
                     (i32.store offset=464
                      (i32.const 0)
                      (get_local $12)
                     )
                     (i32.store offset=468
                      (i32.const 0)
                      (get_local $7)
                     )
                     (i32.store offset=472
                      (i32.const 0)
                      (i32.add
                       (get_local $9)
                       (i32.const 8)
                      )
                     )
                     (i32.store offset=476
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (set_local $0
                      (i32.add
                       (get_local $9)
                       (i32.const 28)
                      )
                     )
                     (loop $label$97
                      (i32.store
                       (get_local $0)
                       (i32.const 7)
                      )
                      (br_if $label$97
                       (i32.lt_u
                        (tee_local $0
                         (i32.add
                          (get_local $0)
                          (i32.const 4)
                         )
                        )
                        (get_local $11)
                       )
                      )
                     )
                     (br_if $label$76
                      (i32.eq
                       (get_local $9)
                       (get_local $10)
                      )
                     )
                     (i32.store
                      (tee_local $0
                       (i32.add
                        (get_local $9)
                        (i32.const 4)
                       )
                      )
                      (i32.and
                       (i32.load
                        (get_local $0)
                       )
                       (i32.const -2)
                      )
                     )
                     (i32.store
                      (get_local $9)
                      (tee_local $7
                       (i32.sub
                        (get_local $9)
                        (get_local $10)
                       )
                      )
                     )
                     (i32.store offset=4
                      (get_local $10)
                      (i32.or
                       (get_local $7)
                       (i32.const 1)
                      )
                     )
                     (block $label$98
                      (br_if $label$98
                       (i32.gt_u
                        (get_local $7)
                        (i32.const 255)
                       )
                      )
                      (set_local $0
                       (i32.add
                        (i32.shl
                         (tee_local $11
                          (i32.shr_u
                           (get_local $7)
                           (i32.const 3)
                          )
                         )
                         (i32.const 3)
                        )
                        (i32.const 56)
                       )
                      )
                      (br_if $label$87
                       (i32.eqz
                        (i32.and
                         (tee_local $12
                          (i32.load offset=16
                           (i32.const 0)
                          )
                         )
                         (tee_local $11
                          (i32.shl
                           (i32.const 1)
                           (get_local $11)
                          )
                         )
                        )
                       )
                      )
                      (br_if $label$86
                       (i32.le_u
                        (i32.load offset=32
                         (i32.const 0)
                        )
                        (tee_local $11
                         (i32.load offset=8
                          (get_local $0)
                         )
                        )
                       )
                      )
                      (br $label$0)
                     )
                     (set_local $0
                      (i32.const 0)
                     )
                     (block $label$99
                      (br_if $label$99
                       (i32.eqz
                        (tee_local $11
                         (i32.shr_u
                          (get_local $7)
                          (i32.const 8)
                         )
                        )
                       )
                      )
                      (set_local $0
                       (i32.const 31)
                      )
                      (br_if $label$99
                       (i32.gt_u
                        (get_local $7)
                        (i32.const 16777215)
                       )
                      )
                      (set_local $0
                       (i32.or
                        (i32.and
                         (i32.shr_u
                          (get_local $7)
                          (i32.add
                           (tee_local $0
                            (i32.add
                             (i32.sub
                              (i32.const 14)
                              (i32.or
                               (i32.or
                                (tee_local $12
                                 (i32.and
                                  (i32.shr_u
                                   (i32.add
                                    (tee_local $11
                                     (i32.shl
                                      (get_local $11)
                                      (tee_local $0
                                       (i32.and
                                        (i32.shr_u
                                         (i32.add
                                          (get_local $11)
                                          (i32.const 1048320)
                                         )
                                         (i32.const 16)
                                        )
                                        (i32.const 8)
                                       )
                                      )
                                     )
                                    )
                                    (i32.const 520192)
                                   )
                                   (i32.const 16)
                                  )
                                  (i32.const 4)
                                 )
                                )
                                (get_local $0)
                               )
                               (tee_local $11
                                (i32.and
                                 (i32.shr_u
                                  (i32.add
                                   (tee_local $0
                                    (i32.shl
                                     (get_local $11)
                                     (get_local $12)
                                    )
                                   )
                                   (i32.const 245760)
                                  )
                                  (i32.const 16)
                                 )
                                 (i32.const 2)
                                )
                               )
                              )
                             )
                             (i32.shr_u
                              (i32.shl
                               (get_local $0)
                               (get_local $11)
                              )
                              (i32.const 15)
                             )
                            )
                           )
                           (i32.const 7)
                          )
                         )
                         (i32.const 1)
                        )
                        (i32.shl
                         (get_local $0)
                         (i32.const 1)
                        )
                       )
                      )
                     )
                     (i64.store offset=16 align=4
                      (get_local $10)
                      (i64.const 0)
                     )
                     (i32.store
                      (i32.add
                       (get_local $10)
                       (i32.const 28)
                      )
                      (get_local $0)
                     )
                     (set_local $11
                      (i32.add
                       (i32.shl
                        (get_local $0)
                        (i32.const 2)
                       )
                       (i32.const 320)
                      )
                     )
                     (br_if $label$85
                      (i32.eqz
                       (i32.and
                        (tee_local $12
                         (i32.load offset=20
                          (i32.const 0)
                         )
                        )
                        (tee_local $9
                         (i32.shl
                          (i32.const 1)
                          (get_local $0)
                         )
                        )
                       )
                      )
                     )
                     (set_local $0
                      (i32.shl
                       (get_local $7)
                       (select
                        (i32.const 0)
                        (i32.sub
                         (i32.const 25)
                         (i32.shr_u
                          (get_local $0)
                          (i32.const 1)
                         )
                        )
                        (i32.eq
                         (get_local $0)
                         (i32.const 31)
                        )
                       )
                      )
                     )
                     (set_local $12
                      (i32.load
                       (get_local $11)
                      )
                     )
                     (loop $label$100
                      (br_if $label$84
                       (i32.eq
                        (i32.and
                         (i32.load offset=4
                          (tee_local $11
                           (get_local $12)
                          )
                         )
                         (i32.const -8)
                        )
                        (get_local $7)
                       )
                      )
                      (set_local $12
                       (i32.shr_u
                        (get_local $0)
                        (i32.const 29)
                       )
                      )
                      (set_local $0
                       (i32.shl
                        (get_local $0)
                        (i32.const 1)
                       )
                      )
                      (br_if $label$100
                       (tee_local $12
                        (i32.load
                         (tee_local $9
                          (i32.add
                           (i32.add
                            (get_local $11)
                            (i32.and
                             (get_local $12)
                             (i32.const 4)
                            )
                           )
                           (i32.const 16)
                          )
                         )
                        )
                       )
                      )
                     )
                     (br_if $label$0
                      (i32.gt_u
                       (i32.load offset=32
                        (i32.const 0)
                       )
                       (get_local $9)
                      )
                     )
                     (i32.store
                      (get_local $9)
                      (get_local $10)
                     )
                     (i32.store
                      (i32.add
                       (get_local $10)
                       (i32.const 24)
                      )
                      (get_local $11)
                     )
                     (i32.store offset=12
                      (get_local $10)
                      (get_local $10)
                     )
                     (i32.store offset=8
                      (get_local $10)
                      (get_local $10)
                     )
                     (br $label$76)
                    )
                    (i32.store offset=40
                     (i32.const 0)
                     (get_local $11)
                    )
                    (i32.store offset=28
                     (i32.const 0)
                     (tee_local $0
                      (i32.add
                       (i32.load offset=28
                        (i32.const 0)
                       )
                       (get_local $0)
                      )
                     )
                    )
                    (i32.store offset=4
                     (get_local $11)
                     (i32.or
                      (get_local $0)
                      (i32.const 1)
                     )
                    )
                    (br $label$4)
                   )
                   (i32.store offset=16
                    (i32.const 0)
                    (i32.or
                     (get_local $12)
                     (get_local $11)
                    )
                   )
                   (set_local $11
                    (get_local $0)
                   )
                  )
                  (i32.store offset=12
                   (get_local $11)
                   (get_local $10)
                  )
                  (i32.store
                   (i32.add
                    (get_local $0)
                    (i32.const 8)
                   )
                   (get_local $10)
                  )
                  (i32.store offset=12
                   (get_local $10)
                   (get_local $0)
                  )
                  (i32.store offset=8
                   (get_local $10)
                   (get_local $11)
                  )
                  (br $label$76)
                 )
                 (i32.store
                  (get_local $11)
                  (get_local $10)
                 )
                 (i32.store offset=20
                  (i32.const 0)
                  (i32.or
                   (get_local $12)
                   (get_local $9)
                  )
                 )
                 (i32.store
                  (i32.add
                   (get_local $10)
                   (i32.const 24)
                  )
                  (get_local $11)
                 )
                 (i32.store offset=8
                  (get_local $10)
                  (get_local $10)
                 )
                 (i32.store offset=12
                  (get_local $10)
                  (get_local $10)
                 )
                 (br $label$76)
                )
                (br_if $label$0
                 (i32.gt_u
                  (tee_local $12
                   (i32.load offset=32
                    (i32.const 0)
                   )
                  )
                  (tee_local $0
                   (i32.load offset=8
                    (get_local $11)
                   )
                  )
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $12)
                  (get_local $11)
                 )
                )
                (i32.store offset=12
                 (get_local $0)
                 (get_local $10)
                )
                (i32.store
                 (i32.add
                  (get_local $11)
                  (i32.const 8)
                 )
                 (get_local $10)
                )
                (i32.store offset=12
                 (get_local $10)
                 (get_local $11)
                )
                (i32.store
                 (i32.add
                  (get_local $10)
                  (i32.const 24)
                 )
                 (i32.const 0)
                )
                (i32.store offset=8
                 (get_local $10)
                 (get_local $0)
                )
               )
               (br_if $label$12
                (i32.le_u
                 (tee_local $0
                  (i32.load offset=28
                   (i32.const 0)
                  )
                 )
                 (get_local $6)
                )
               )
               (i32.store offset=4
                (tee_local $11
                 (i32.add
                  (tee_local $10
                   (i32.load offset=40
                    (i32.const 0)
                   )
                  )
                  (get_local $6)
                 )
                )
                (i32.or
                 (tee_local $0
                  (i32.sub
                   (get_local $0)
                   (get_local $6)
                  )
                 )
                 (i32.const 1)
                )
               )
               (i32.store offset=28
                (i32.const 0)
                (get_local $0)
               )
               (i32.store offset=40
                (i32.const 0)
                (get_local $11)
               )
               (i32.store offset=4
                (get_local $10)
                (i32.or
                 (get_local $6)
                 (i32.const 3)
                )
               )
               (set_local $0
                (i32.add
                 (get_local $10)
                 (i32.const 8)
                )
               )
               (br $label$1)
              )
              (i32.store
               (call $__errno_location)
               (i32.const 12)
              )
              (set_local $0
               (i32.const 0)
              )
              (br $label$1)
             )
             (i32.store offset=4
              (get_local $11)
              (i32.or
               (tee_local $0
                (i32.add
                 (i32.load offset=24
                  (i32.const 0)
                 )
                 (get_local $0)
                )
               )
               (i32.const 1)
              )
             )
             (i32.store offset=36
              (i32.const 0)
              (get_local $11)
             )
             (i32.store offset=24
              (i32.const 0)
              (get_local $0)
             )
             (i32.store
              (i32.add
               (get_local $11)
               (get_local $0)
              )
              (get_local $0)
             )
             (br $label$4)
            )
            (set_local $4
             (i32.load offset=24
              (get_local $12)
             )
            )
            (br_if $label$8
             (i32.eq
              (tee_local $7
               (i32.load offset=12
                (get_local $12)
               )
              )
              (get_local $12)
             )
            )
            (br_if $label$0
             (i32.gt_u
              (get_local $9)
              (tee_local $10
               (i32.load offset=8
                (get_local $12)
               )
              )
             )
            )
            (br_if $label$0
             (i32.ne
              (i32.load offset=12
               (get_local $10)
              )
              (get_local $12)
             )
            )
            (br_if $label$0
             (i32.ne
              (i32.load offset=8
               (get_local $7)
              )
              (get_local $12)
             )
            )
            (i32.store
             (i32.add
              (get_local $7)
              (i32.const 8)
             )
             (get_local $10)
            )
            (i32.store
             (i32.add
              (get_local $10)
              (i32.const 12)
             )
             (get_local $7)
            )
            (br_if $label$7
             (get_local $4)
            )
            (br $label$6)
           )
           (i32.store offset=16
            (i32.const 0)
            (i32.and
             (i32.load offset=16
              (i32.const 0)
             )
             (i32.rotl
              (i32.const -2)
              (get_local $3)
             )
            )
           )
           (br $label$6)
          )
          (block $label$101
           (block $label$102
            (br_if $label$102
             (tee_local $10
              (i32.load
               (tee_local $6
                (i32.add
                 (get_local $12)
                 (i32.const 20)
                )
               )
              )
             )
            )
            (br_if $label$101
             (i32.eqz
              (tee_local $10
               (i32.load
                (tee_local $6
                 (i32.add
                  (get_local $12)
                  (i32.const 16)
                 )
                )
               )
              )
             )
            )
           )
           (loop $label$103
            (set_local $3
             (get_local $6)
            )
            (br_if $label$103
             (tee_local $10
              (i32.load
               (tee_local $6
                (i32.add
                 (tee_local $7
                  (get_local $10)
                 )
                 (i32.const 20)
                )
               )
              )
             )
            )
            (set_local $6
             (i32.add
              (get_local $7)
              (i32.const 16)
             )
            )
            (br_if $label$103
             (tee_local $10
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$0
            (i32.gt_u
             (get_local $9)
             (get_local $3)
            )
           )
           (i32.store
            (get_local $3)
            (i32.const 0)
           )
           (br_if $label$6
            (i32.eqz
             (get_local $4)
            )
           )
           (br $label$7)
          )
          (set_local $7
           (i32.const 0)
          )
          (br_if $label$6
           (i32.eqz
            (get_local $4)
           )
          )
         )
         (block $label$104
          (block $label$105
           (block $label$106
            (br_if $label$106
             (i32.eq
              (i32.load
               (tee_local $10
                (i32.add
                 (i32.shl
                  (tee_local $6
                   (i32.load offset=28
                    (get_local $12)
                   )
                  )
                  (i32.const 2)
                 )
                 (i32.const 320)
                )
               )
              )
              (get_local $12)
             )
            )
            (br_if $label$0
             (i32.gt_u
              (i32.load offset=32
               (i32.const 0)
              )
              (get_local $4)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $4)
               (i32.const 16)
              )
              (i32.shl
               (i32.ne
                (i32.load offset=16
                 (get_local $4)
                )
                (get_local $12)
               )
               (i32.const 2)
              )
             )
             (get_local $7)
            )
            (br_if $label$105
             (get_local $7)
            )
            (br $label$6)
           )
           (i32.store
            (get_local $10)
            (get_local $7)
           )
           (br_if $label$104
            (i32.eqz
             (get_local $7)
            )
           )
          )
          (br_if $label$0
           (i32.gt_u
            (tee_local $6
             (i32.load offset=32
              (i32.const 0)
             )
            )
            (get_local $7)
           )
          )
          (i32.store offset=24
           (get_local $7)
           (get_local $4)
          )
          (block $label$107
           (br_if $label$107
            (i32.eqz
             (tee_local $10
              (i32.load offset=16
               (get_local $12)
              )
             )
            )
           )
           (br_if $label$0
            (i32.gt_u
             (get_local $6)
             (get_local $10)
            )
           )
           (i32.store offset=16
            (get_local $7)
            (get_local $10)
           )
           (i32.store offset=24
            (get_local $10)
            (get_local $7)
           )
          )
          (br_if $label$6
           (i32.eqz
            (tee_local $10
             (i32.load
              (i32.add
               (get_local $12)
               (i32.const 20)
              )
             )
            )
           )
          )
          (br_if $label$0
           (i32.gt_u
            (i32.load offset=32
             (i32.const 0)
            )
            (get_local $10)
           )
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 20)
           )
           (get_local $10)
          )
          (i32.store offset=24
           (get_local $10)
           (get_local $7)
          )
          (br $label$6)
         )
         (i32.store offset=20
          (i32.const 0)
          (i32.and
           (i32.load offset=20
            (i32.const 0)
           )
           (i32.rotl
            (i32.const -2)
            (get_local $6)
           )
          )
         )
        )
        (set_local $0
         (i32.add
          (tee_local $10
           (i32.and
            (get_local $5)
            (i32.const -8)
           )
          )
          (get_local $0)
         )
        )
        (set_local $12
         (i32.add
          (get_local $12)
          (get_local $10)
         )
        )
       )
       (i32.store offset=4
        (get_local $12)
        (i32.and
         (i32.load offset=4
          (get_local $12)
         )
         (i32.const -2)
        )
       )
       (i32.store offset=4
        (get_local $11)
        (i32.or
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (get_local $11)
         (get_local $0)
        )
        (get_local $0)
       )
       (block $label$108
        (block $label$109
         (block $label$110
          (block $label$111
           (block $label$112
            (br_if $label$112
             (i32.gt_u
              (get_local $0)
              (i32.const 255)
             )
            )
            (set_local $0
             (i32.add
              (i32.shl
               (tee_local $10
                (i32.shr_u
                 (get_local $0)
                 (i32.const 3)
                )
               )
               (i32.const 3)
              )
              (i32.const 56)
             )
            )
            (br_if $label$111
             (i32.eqz
              (i32.and
               (tee_local $6
                (i32.load offset=16
                 (i32.const 0)
                )
               )
               (tee_local $10
                (i32.shl
                 (i32.const 1)
                 (get_local $10)
                )
               )
              )
             )
            )
            (br_if $label$0
             (i32.gt_u
              (i32.load offset=32
               (i32.const 0)
              )
              (tee_local $10
               (i32.load offset=8
                (get_local $0)
               )
              )
             )
            )
            (set_local $6
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
            )
            (br $label$110)
           )
           (set_local $10
            (i32.const 0)
           )
           (block $label$113
            (br_if $label$113
             (i32.eqz
              (tee_local $6
               (i32.shr_u
                (get_local $0)
                (i32.const 8)
               )
              )
             )
            )
            (set_local $10
             (i32.const 31)
            )
            (br_if $label$113
             (i32.gt_u
              (get_local $0)
              (i32.const 16777215)
             )
            )
            (set_local $10
             (i32.or
              (i32.and
               (i32.shr_u
                (get_local $0)
                (i32.add
                 (tee_local $10
                  (i32.add
                   (i32.sub
                    (i32.const 14)
                    (i32.or
                     (i32.or
                      (tee_local $12
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (tee_local $6
                           (i32.shl
                            (get_local $6)
                            (tee_local $10
                             (i32.and
                              (i32.shr_u
                               (i32.add
                                (get_local $6)
                                (i32.const 1048320)
                               )
                               (i32.const 16)
                              )
                              (i32.const 8)
                             )
                            )
                           )
                          )
                          (i32.const 520192)
                         )
                         (i32.const 16)
                        )
                        (i32.const 4)
                       )
                      )
                      (get_local $10)
                     )
                     (tee_local $6
                      (i32.and
                       (i32.shr_u
                        (i32.add
                         (tee_local $10
                          (i32.shl
                           (get_local $6)
                           (get_local $12)
                          )
                         )
                         (i32.const 245760)
                        )
                        (i32.const 16)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                   (i32.shr_u
                    (i32.shl
                     (get_local $10)
                     (get_local $6)
                    )
                    (i32.const 15)
                   )
                  )
                 )
                 (i32.const 7)
                )
               )
               (i32.const 1)
              )
              (i32.shl
               (get_local $10)
               (i32.const 1)
              )
             )
            )
           )
           (i32.store offset=28
            (get_local $11)
            (get_local $10)
           )
           (i64.store offset=16 align=4
            (get_local $11)
            (i64.const 0)
           )
           (set_local $6
            (i32.add
             (i32.shl
              (get_local $10)
              (i32.const 2)
             )
             (i32.const 320)
            )
           )
           (br_if $label$109
            (i32.eqz
             (i32.and
              (tee_local $12
               (i32.load offset=20
                (i32.const 0)
               )
              )
              (tee_local $9
               (i32.shl
                (i32.const 1)
                (get_local $10)
               )
              )
             )
            )
           )
           (set_local $10
            (i32.shl
             (get_local $0)
             (select
              (i32.const 0)
              (i32.sub
               (i32.const 25)
               (i32.shr_u
                (get_local $10)
                (i32.const 1)
               )
              )
              (i32.eq
               (get_local $10)
               (i32.const 31)
              )
             )
            )
           )
           (set_local $12
            (i32.load
             (get_local $6)
            )
           )
           (loop $label$114
            (br_if $label$108
             (i32.eq
              (i32.and
               (i32.load offset=4
                (tee_local $6
                 (get_local $12)
                )
               )
               (i32.const -8)
              )
              (get_local $0)
             )
            )
            (set_local $12
             (i32.shr_u
              (get_local $10)
              (i32.const 29)
             )
            )
            (set_local $10
             (i32.shl
              (get_local $10)
              (i32.const 1)
             )
            )
            (br_if $label$114
             (tee_local $12
              (i32.load
               (tee_local $9
                (i32.add
                 (i32.add
                  (get_local $6)
                  (i32.and
                   (get_local $12)
                   (i32.const 4)
                  )
                 )
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
           (br_if $label$0
            (i32.gt_u
             (i32.load offset=32
              (i32.const 0)
             )
             (get_local $9)
            )
           )
           (i32.store
            (get_local $9)
            (get_local $11)
           )
           (i32.store offset=24
            (get_local $11)
            (get_local $6)
           )
           (i32.store offset=12
            (get_local $11)
            (get_local $11)
           )
           (i32.store offset=8
            (get_local $11)
            (get_local $11)
           )
           (br $label$4)
          )
          (i32.store offset=16
           (i32.const 0)
           (i32.or
            (get_local $6)
            (get_local $10)
           )
          )
          (set_local $6
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
          )
          (set_local $10
           (get_local $0)
          )
         )
         (i32.store offset=12
          (get_local $10)
          (get_local $11)
         )
         (i32.store
          (get_local $6)
          (get_local $11)
         )
         (i32.store offset=12
          (get_local $11)
          (get_local $0)
         )
         (i32.store offset=8
          (get_local $11)
          (get_local $10)
         )
         (br $label$4)
        )
        (i32.store
         (get_local $6)
         (get_local $11)
        )
        (i32.store offset=20
         (i32.const 0)
         (i32.or
          (get_local $12)
          (get_local $9)
         )
        )
        (i32.store offset=24
         (get_local $11)
         (get_local $6)
        )
        (i32.store offset=8
         (get_local $11)
         (get_local $11)
        )
        (i32.store offset=12
         (get_local $11)
         (get_local $11)
        )
        (br $label$4)
       )
       (br_if $label$0
        (i32.gt_u
         (tee_local $10
          (i32.load offset=32
           (i32.const 0)
          )
         )
         (tee_local $0
          (i32.load offset=8
           (get_local $6)
          )
         )
        )
       )
       (br_if $label$0
        (i32.gt_u
         (get_local $10)
         (get_local $6)
        )
       )
       (i32.store offset=12
        (get_local $0)
        (get_local $11)
       )
       (i32.store
        (i32.add
         (get_local $6)
         (i32.const 8)
        )
        (get_local $11)
       )
       (i32.store offset=24
        (get_local $11)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $11)
        (get_local $6)
       )
       (i32.store offset=8
        (get_local $11)
        (get_local $0)
       )
      )
      (set_local $0
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
      )
      (br $label$1)
     )
     (block $label$115
      (block $label$116
       (block $label$117
        (br_if $label$117
         (i32.eq
          (get_local $12)
          (i32.load
           (tee_local $0
            (i32.add
             (i32.shl
              (tee_local $10
               (i32.load offset=28
                (get_local $12)
               )
              )
              (i32.const 2)
             )
             (i32.const 320)
            )
           )
          )
         )
        )
        (br_if $label$0
         (i32.gt_u
          (i32.load offset=32
           (i32.const 0)
          )
          (get_local $5)
         )
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (i32.ne
            (i32.load offset=16
             (get_local $5)
            )
            (get_local $12)
           )
           (i32.const 2)
          )
         )
         (get_local $9)
        )
        (br_if $label$116
         (get_local $9)
        )
        (br $label$2)
       )
       (i32.store
        (get_local $0)
        (get_local $9)
       )
       (br_if $label$115
        (i32.eqz
         (get_local $9)
        )
       )
      )
      (br_if $label$0
       (i32.gt_u
        (tee_local $10
         (i32.load offset=32
          (i32.const 0)
         )
        )
        (get_local $9)
       )
      )
      (i32.store offset=24
       (get_local $9)
       (get_local $5)
      )
      (block $label$118
       (br_if $label$118
        (i32.eqz
         (tee_local $0
          (i32.load offset=16
           (get_local $12)
          )
         )
        )
       )
       (br_if $label$0
        (i32.gt_u
         (get_local $10)
         (get_local $0)
        )
       )
       (i32.store offset=16
        (get_local $9)
        (get_local $0)
       )
       (i32.store offset=24
        (get_local $0)
        (get_local $9)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $0
         (i32.load
          (i32.add
           (get_local $12)
           (i32.const 20)
          )
         )
        )
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.load offset=32
         (i32.const 0)
        )
        (get_local $0)
       )
      )
      (i32.store
       (i32.add
        (get_local $9)
        (i32.const 20)
       )
       (get_local $0)
      )
      (i32.store offset=24
       (get_local $0)
       (get_local $9)
      )
      (br $label$2)
     )
     (i32.store offset=20
      (i32.const 0)
      (tee_local $3
       (i32.and
        (get_local $3)
        (i32.rotl
         (i32.const -2)
         (get_local $10)
        )
       )
      )
     )
    )
    (block $label$119
     (block $label$120
      (br_if $label$120
       (i32.gt_u
        (get_local $11)
        (i32.const 15)
       )
      )
      (i32.store offset=4
       (get_local $12)
       (i32.or
        (tee_local $0
         (i32.add
          (get_local $11)
          (get_local $6)
         )
        )
        (i32.const 3)
       )
      )
      (i32.store offset=4
       (tee_local $0
        (i32.add
         (get_local $12)
         (get_local $0)
        )
       )
       (i32.or
        (i32.load offset=4
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (br $label$119)
     )
     (i32.store offset=4
      (get_local $12)
      (i32.or
       (get_local $6)
       (i32.const 3)
      )
     )
     (i32.store offset=4
      (get_local $8)
      (i32.or
       (get_local $11)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (get_local $8)
       (get_local $11)
      )
      (get_local $11)
     )
     (block $label$121
      (block $label$122
       (block $label$123
        (block $label$124
         (block $label$125
          (br_if $label$125
           (i32.gt_u
            (get_local $11)
            (i32.const 255)
           )
          )
          (set_local $0
           (i32.add
            (i32.shl
             (tee_local $10
              (i32.shr_u
               (get_local $11)
               (i32.const 3)
              )
             )
             (i32.const 3)
            )
            (i32.const 56)
           )
          )
          (br_if $label$124
           (i32.eqz
            (i32.and
             (tee_local $11
              (i32.load offset=16
               (i32.const 0)
              )
             )
             (tee_local $10
              (i32.shl
               (i32.const 1)
               (get_local $10)
              )
             )
            )
           )
          )
          (br_if $label$0
           (i32.gt_u
            (i32.load offset=32
             (i32.const 0)
            )
            (tee_local $10
             (i32.load offset=8
              (get_local $0)
             )
            )
           )
          )
          (set_local $11
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
          )
          (br $label$123)
         )
         (br_if $label$122
          (i32.eqz
           (tee_local $10
            (i32.shr_u
             (get_local $11)
             (i32.const 8)
            )
           )
          )
         )
         (set_local $0
          (i32.const 31)
         )
         (br_if $label$121
          (i32.gt_u
           (get_local $11)
           (i32.const 16777215)
          )
         )
         (set_local $0
          (i32.or
           (i32.and
            (i32.shr_u
             (get_local $11)
             (i32.add
              (tee_local $0
               (i32.add
                (i32.sub
                 (i32.const 14)
                 (i32.or
                  (i32.or
                   (tee_local $6
                    (i32.and
                     (i32.shr_u
                      (i32.add
                       (tee_local $10
                        (i32.shl
                         (get_local $10)
                         (tee_local $0
                          (i32.and
                           (i32.shr_u
                            (i32.add
                             (get_local $10)
                             (i32.const 1048320)
                            )
                            (i32.const 16)
                           )
                           (i32.const 8)
                          )
                         )
                        )
                       )
                       (i32.const 520192)
                      )
                      (i32.const 16)
                     )
                     (i32.const 4)
                    )
                   )
                   (get_local $0)
                  )
                  (tee_local $10
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (tee_local $0
                       (i32.shl
                        (get_local $10)
                        (get_local $6)
                       )
                      )
                      (i32.const 245760)
                     )
                     (i32.const 16)
                    )
                    (i32.const 2)
                   )
                  )
                 )
                )
                (i32.shr_u
                 (i32.shl
                  (get_local $0)
                  (get_local $10)
                 )
                 (i32.const 15)
                )
               )
              )
              (i32.const 7)
             )
            )
            (i32.const 1)
           )
           (i32.shl
            (get_local $0)
            (i32.const 1)
           )
          )
         )
         (br $label$121)
        )
        (i32.store offset=16
         (i32.const 0)
         (i32.or
          (get_local $11)
          (get_local $10)
         )
        )
        (set_local $11
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
        (set_local $10
         (get_local $0)
        )
       )
       (i32.store offset=12
        (get_local $10)
        (get_local $8)
       )
       (i32.store
        (get_local $11)
        (get_local $8)
       )
       (i32.store offset=12
        (get_local $8)
        (get_local $0)
       )
       (i32.store offset=8
        (get_local $8)
        (get_local $10)
       )
       (br $label$119)
      )
      (set_local $0
       (i32.const 0)
      )
     )
     (i32.store offset=28
      (get_local $8)
      (get_local $0)
     )
     (i64.store offset=16 align=4
      (get_local $8)
      (i64.const 0)
     )
     (set_local $10
      (i32.add
       (i32.shl
        (get_local $0)
        (i32.const 2)
       )
       (i32.const 320)
      )
     )
     (block $label$126
      (block $label$127
       (br_if $label$127
        (i32.eqz
         (i32.and
          (get_local $3)
          (tee_local $6
           (i32.shl
            (i32.const 1)
            (get_local $0)
           )
          )
         )
        )
       )
       (set_local $0
        (i32.shl
         (get_local $11)
         (select
          (i32.const 0)
          (i32.sub
           (i32.const 25)
           (i32.shr_u
            (get_local $0)
            (i32.const 1)
           )
          )
          (i32.eq
           (get_local $0)
           (i32.const 31)
          )
         )
        )
       )
       (set_local $6
        (i32.load
         (get_local $10)
        )
       )
       (loop $label$128
        (br_if $label$126
         (i32.eq
          (i32.and
           (i32.load offset=4
            (tee_local $10
             (get_local $6)
            )
           )
           (i32.const -8)
          )
          (get_local $11)
         )
        )
        (set_local $6
         (i32.shr_u
          (get_local $0)
          (i32.const 29)
         )
        )
        (set_local $0
         (i32.shl
          (get_local $0)
          (i32.const 1)
         )
        )
        (br_if $label$128
         (tee_local $6
          (i32.load
           (tee_local $9
            (i32.add
             (i32.add
              (get_local $10)
              (i32.and
               (get_local $6)
               (i32.const 4)
              )
             )
             (i32.const 16)
            )
           )
          )
         )
        )
       )
       (br_if $label$0
        (i32.gt_u
         (i32.load offset=32
          (i32.const 0)
         )
         (get_local $9)
        )
       )
       (i32.store
        (get_local $9)
        (get_local $8)
       )
       (i32.store offset=24
        (get_local $8)
        (get_local $10)
       )
       (i32.store offset=12
        (get_local $8)
        (get_local $8)
       )
       (i32.store offset=8
        (get_local $8)
        (get_local $8)
       )
       (br $label$119)
      )
      (i32.store
       (get_local $10)
       (get_local $8)
      )
      (i32.store offset=20
       (i32.const 0)
       (i32.or
        (get_local $3)
        (get_local $6)
       )
      )
      (i32.store offset=24
       (get_local $8)
       (get_local $10)
      )
      (i32.store offset=8
       (get_local $8)
       (get_local $8)
      )
      (i32.store offset=12
       (get_local $8)
       (get_local $8)
      )
      (br $label$119)
     )
     (br_if $label$0
      (i32.gt_u
       (tee_local $11
        (i32.load offset=32
         (i32.const 0)
        )
       )
       (tee_local $0
        (i32.load offset=8
         (get_local $10)
        )
       )
      )
     )
     (br_if $label$0
      (i32.gt_u
       (get_local $11)
       (get_local $10)
      )
     )
     (i32.store offset=12
      (get_local $0)
      (get_local $8)
     )
     (i32.store
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (get_local $8)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store offset=12
      (get_local $8)
      (get_local $10)
     )
     (i32.store offset=8
      (get_local $8)
      (get_local $0)
     )
    )
    (set_local $0
     (i32.add
      (get_local $12)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $13)
     (i32.const 16)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $0)
      )
     )
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (br_if $label$6
          (i32.lt_u
           (tee_local $3
            (i32.add
             (get_local $0)
             (i32.const -8)
            )
           )
           (tee_local $5
            (i32.load offset=32
             (i32.const 0)
            )
           )
          )
         )
         (br_if $label$6
          (i32.eq
           (tee_local $6
            (i32.and
             (tee_local $8
              (i32.load
               (i32.add
                (get_local $0)
                (i32.const -4)
               )
              )
             )
             (i32.const 3)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (get_local $3)
           (tee_local $0
            (i32.and
             (get_local $8)
             (i32.const -8)
            )
           )
          )
         )
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.and
             (get_local $8)
             (i32.const 1)
            )
           )
           (br_if $label$2
            (i32.eqz
             (get_local $6)
            )
           )
           (br_if $label$6
            (i32.lt_u
             (tee_local $3
              (i32.sub
               (get_local $3)
               (tee_local $8
                (i32.load
                 (get_local $3)
                )
               )
              )
             )
             (get_local $5)
            )
           )
           (set_local $0
            (i32.add
             (get_local $8)
             (get_local $0)
            )
           )
           (block $label$9
            (block $label$10
             (block $label$11
              (block $label$12
               (block $label$13
                (br_if $label$13
                 (i32.eq
                  (i32.load offset=36
                   (i32.const 0)
                  )
                  (get_local $3)
                 )
                )
                (br_if $label$12
                 (i32.gt_u
                  (get_local $8)
                  (i32.const 255)
                 )
                )
                (set_local $6
                 (i32.load offset=12
                  (get_local $3)
                 )
                )
                (block $label$14
                 (br_if $label$14
                  (i32.eq
                   (tee_local $7
                    (i32.load offset=8
                     (get_local $3)
                    )
                   )
                   (tee_local $8
                    (i32.add
                     (i32.shl
                      (tee_local $4
                       (i32.shr_u
                        (get_local $8)
                        (i32.const 3)
                       )
                      )
                      (i32.const 3)
                     )
                     (i32.const 56)
                    )
                   )
                  )
                 )
                 (br_if $label$0
                  (i32.gt_u
                   (get_local $5)
                   (get_local $7)
                  )
                 )
                 (br_if $label$0
                  (i32.ne
                   (i32.load offset=12
                    (get_local $7)
                   )
                   (get_local $3)
                  )
                 )
                )
                (br_if $label$11
                 (i32.eq
                  (get_local $6)
                  (get_local $7)
                 )
                )
                (block $label$15
                 (br_if $label$15
                  (i32.eq
                   (get_local $6)
                   (get_local $8)
                  )
                 )
                 (br_if $label$0
                  (i32.gt_u
                   (get_local $5)
                   (get_local $6)
                  )
                 )
                 (br_if $label$0
                  (i32.ne
                   (i32.load offset=8
                    (get_local $6)
                   )
                   (get_local $3)
                  )
                 )
                )
                (i32.store offset=12
                 (get_local $7)
                 (get_local $6)
                )
                (i32.store
                 (i32.add
                  (get_local $6)
                  (i32.const 8)
                 )
                 (get_local $7)
                )
                (br_if $label$7
                 (i32.lt_u
                  (get_local $3)
                  (get_local $1)
                 )
                )
                (br $label$6)
               )
               (br_if $label$8
                (i32.ne
                 (i32.and
                  (tee_local $8
                   (i32.load offset=4
                    (get_local $1)
                   )
                  )
                  (i32.const 3)
                 )
                 (i32.const 3)
                )
               )
               (i32.store
                (i32.add
                 (get_local $1)
                 (i32.const 4)
                )
                (i32.and
                 (get_local $8)
                 (i32.const -2)
                )
               )
               (i32.store offset=4
                (get_local $3)
                (i32.or
                 (get_local $0)
                 (i32.const 1)
                )
               )
               (i32.store offset=24
                (i32.const 0)
                (get_local $0)
               )
               (i32.store
                (i32.add
                 (get_local $3)
                 (get_local $0)
                )
                (get_local $0)
               )
               (return)
              )
              (set_local $2
               (i32.load offset=24
                (get_local $3)
               )
              )
              (br_if $label$10
               (i32.eq
                (tee_local $7
                 (i32.load offset=12
                  (get_local $3)
                 )
                )
                (get_local $3)
               )
              )
              (br_if $label$0
               (i32.gt_u
                (get_local $5)
                (tee_local $8
                 (i32.load offset=8
                  (get_local $3)
                 )
                )
               )
              )
              (br_if $label$0
               (i32.ne
                (i32.load offset=12
                 (get_local $8)
                )
                (get_local $3)
               )
              )
              (br_if $label$0
               (i32.ne
                (i32.load offset=8
                 (get_local $7)
                )
                (get_local $3)
               )
              )
              (i32.store
               (i32.add
                (get_local $7)
                (i32.const 8)
               )
               (get_local $8)
              )
              (i32.store
               (i32.add
                (get_local $8)
                (i32.const 12)
               )
               (get_local $7)
              )
              (br_if $label$9
               (get_local $2)
              )
              (br $label$8)
             )
             (i32.store offset=16
              (i32.const 0)
              (i32.and
               (i32.load offset=16
                (i32.const 0)
               )
               (i32.rotl
                (i32.const -2)
                (get_local $4)
               )
              )
             )
             (br_if $label$7
              (i32.lt_u
               (get_local $3)
               (get_local $1)
              )
             )
             (br $label$6)
            )
            (block $label$16
             (block $label$17
              (br_if $label$17
               (tee_local $6
                (i32.load
                 (tee_local $8
                  (i32.add
                   (get_local $3)
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (br_if $label$16
               (i32.eqz
                (tee_local $6
                 (i32.load
                  (tee_local $8
                   (i32.add
                    (get_local $3)
                    (i32.const 16)
                   )
                  )
                 )
                )
               )
              )
             )
             (loop $label$18
              (set_local $4
               (get_local $8)
              )
              (br_if $label$18
               (tee_local $6
                (i32.load
                 (tee_local $8
                  (i32.add
                   (tee_local $7
                    (get_local $6)
                   )
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (set_local $8
               (i32.add
                (get_local $7)
                (i32.const 16)
               )
              )
              (br_if $label$18
               (tee_local $6
                (i32.load offset=16
                 (get_local $7)
                )
               )
              )
             )
             (br_if $label$0
              (i32.gt_u
               (get_local $5)
               (get_local $4)
              )
             )
             (i32.store
              (get_local $4)
              (i32.const 0)
             )
             (br_if $label$8
              (i32.eqz
               (get_local $2)
              )
             )
             (br $label$9)
            )
            (set_local $7
             (i32.const 0)
            )
            (br_if $label$8
             (i32.eqz
              (get_local $2)
             )
            )
           )
           (block $label$19
            (block $label$20
             (block $label$21
              (br_if $label$21
               (i32.eq
                (i32.load
                 (tee_local $8
                  (i32.add
                   (i32.shl
                    (tee_local $6
                     (i32.load offset=28
                      (get_local $3)
                     )
                    )
                    (i32.const 2)
                   )
                   (i32.const 320)
                  )
                 )
                )
                (get_local $3)
               )
              )
              (br_if $label$0
               (i32.gt_u
                (i32.load offset=32
                 (i32.const 0)
                )
                (get_local $2)
               )
              )
              (i32.store
               (i32.add
                (i32.add
                 (get_local $2)
                 (i32.const 16)
                )
                (i32.shl
                 (i32.ne
                  (i32.load offset=16
                   (get_local $2)
                  )
                  (get_local $3)
                 )
                 (i32.const 2)
                )
               )
               (get_local $7)
              )
              (br_if $label$20
               (get_local $7)
              )
              (br $label$8)
             )
             (i32.store
              (get_local $8)
              (get_local $7)
             )
             (br_if $label$19
              (i32.eqz
               (get_local $7)
              )
             )
            )
            (br_if $label$0
             (i32.gt_u
              (tee_local $6
               (i32.load offset=32
                (i32.const 0)
               )
              )
              (get_local $7)
             )
            )
            (i32.store offset=24
             (get_local $7)
             (get_local $2)
            )
            (block $label$22
             (br_if $label$22
              (i32.eqz
               (tee_local $8
                (i32.load offset=16
                 (get_local $3)
                )
               )
              )
             )
             (br_if $label$0
              (i32.gt_u
               (get_local $6)
               (get_local $8)
              )
             )
             (i32.store offset=16
              (get_local $7)
              (get_local $8)
             )
             (i32.store offset=24
              (get_local $8)
              (get_local $7)
             )
            )
            (br_if $label$8
             (i32.eqz
              (tee_local $8
               (i32.load
                (i32.add
                 (get_local $3)
                 (i32.const 20)
                )
               )
              )
             )
            )
            (br_if $label$0
             (i32.gt_u
              (i32.load offset=32
               (i32.const 0)
              )
              (get_local $8)
             )
            )
            (i32.store
             (i32.add
              (get_local $7)
              (i32.const 20)
             )
             (get_local $8)
            )
            (i32.store offset=24
             (get_local $8)
             (get_local $7)
            )
            (br_if $label$7
             (i32.lt_u
              (get_local $3)
              (get_local $1)
             )
            )
            (br $label$6)
           )
           (i32.store offset=20
            (i32.const 0)
            (i32.and
             (i32.load offset=20
              (i32.const 0)
             )
             (i32.rotl
              (i32.const -2)
              (get_local $6)
             )
            )
           )
          )
          (br_if $label$6
           (i32.ge_u
            (get_local $3)
            (get_local $1)
           )
          )
         )
         (br_if $label$6
          (i32.eqz
           (i32.and
            (tee_local $4
             (i32.load offset=4
              (get_local $1)
             )
            )
            (i32.const 1)
           )
          )
         )
         (block $label$23
          (block $label$24
           (block $label$25
            (block $label$26
             (block $label$27
              (block $label$28
               (br_if $label$28
                (i32.and
                 (get_local $4)
                 (i32.const 2)
                )
               )
               (br_if $label$27
                (i32.eq
                 (i32.load offset=40
                  (i32.const 0)
                 )
                 (get_local $1)
                )
               )
               (br_if $label$26
                (i32.eq
                 (i32.load offset=36
                  (i32.const 0)
                 )
                 (get_local $1)
                )
               )
               (br_if $label$25
                (i32.gt_u
                 (get_local $4)
                 (i32.const 255)
                )
               )
               (set_local $8
                (i32.load offset=12
                 (get_local $1)
                )
               )
               (block $label$29
                (br_if $label$29
                 (i32.eq
                  (tee_local $6
                   (i32.load offset=8
                    (get_local $1)
                   )
                  )
                  (tee_local $7
                   (i32.add
                    (i32.shl
                     (tee_local $5
                      (i32.shr_u
                       (get_local $4)
                       (i32.const 3)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 56)
                   )
                  )
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (i32.load offset=32
                   (i32.const 0)
                  )
                  (get_local $6)
                 )
                )
                (br_if $label$0
                 (i32.ne
                  (i32.load offset=12
                   (get_local $6)
                  )
                  (get_local $1)
                 )
                )
               )
               (br_if $label$24
                (i32.eq
                 (get_local $8)
                 (get_local $6)
                )
               )
               (block $label$30
                (br_if $label$30
                 (i32.eq
                  (get_local $8)
                  (get_local $7)
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (i32.load offset=32
                   (i32.const 0)
                  )
                  (get_local $8)
                 )
                )
                (br_if $label$0
                 (i32.ne
                  (i32.load offset=8
                   (get_local $8)
                  )
                  (get_local $1)
                 )
                )
               )
               (i32.store offset=12
                (get_local $6)
                (get_local $8)
               )
               (i32.store
                (i32.add
                 (get_local $8)
                 (i32.const 8)
                )
                (get_local $6)
               )
               (br $label$4)
              )
              (i32.store
               (i32.add
                (get_local $1)
                (i32.const 4)
               )
               (i32.and
                (get_local $4)
                (i32.const -2)
               )
              )
              (i32.store
               (i32.add
                (get_local $3)
                (get_local $0)
               )
               (get_local $0)
              )
              (i32.store offset=4
               (get_local $3)
               (i32.or
                (get_local $0)
                (i32.const 1)
               )
              )
              (br $label$3)
             )
             (i32.store offset=40
              (i32.const 0)
              (get_local $3)
             )
             (i32.store offset=28
              (i32.const 0)
              (tee_local $0
               (i32.add
                (i32.load offset=28
                 (i32.const 0)
                )
                (get_local $0)
               )
              )
             )
             (i32.store offset=4
              (get_local $3)
              (i32.or
               (get_local $0)
               (i32.const 1)
              )
             )
             (block $label$31
              (br_if $label$31
               (i32.ne
                (get_local $3)
                (i32.load offset=36
                 (i32.const 0)
                )
               )
              )
              (i32.store offset=24
               (i32.const 0)
               (i32.const 0)
              )
              (i32.store offset=36
               (i32.const 0)
               (i32.const 0)
              )
             )
             (br_if $label$2
              (i32.le_u
               (get_local $0)
               (i32.load offset=44
                (i32.const 0)
               )
              )
             )
             (drop
              (call $sys_trim
               (i32.const 0)
              )
             )
             (return)
            )
            (i32.store offset=36
             (i32.const 0)
             (get_local $3)
            )
            (i32.store offset=24
             (i32.const 0)
             (tee_local $0
              (i32.add
               (i32.load offset=24
                (i32.const 0)
               )
               (get_local $0)
              )
             )
            )
            (i32.store offset=4
             (get_local $3)
             (i32.or
              (get_local $0)
              (i32.const 1)
             )
            )
            (i32.store
             (i32.add
              (get_local $3)
              (get_local $0)
             )
             (get_local $0)
            )
            (return)
           )
           (set_local $2
            (i32.load offset=24
             (get_local $1)
            )
           )
           (br_if $label$23
            (i32.eq
             (tee_local $7
              (i32.load offset=12
               (get_local $1)
              )
             )
             (get_local $1)
            )
           )
           (br_if $label$0
            (i32.gt_u
             (i32.load offset=32
              (i32.const 0)
             )
             (tee_local $8
              (i32.load offset=8
               (get_local $1)
              )
             )
            )
           )
           (br_if $label$0
            (i32.ne
             (i32.load offset=12
              (get_local $8)
             )
             (get_local $1)
            )
           )
           (br_if $label$0
            (i32.ne
             (i32.load offset=8
              (get_local $7)
             )
             (get_local $1)
            )
           )
           (i32.store
            (i32.add
             (get_local $7)
             (i32.const 8)
            )
            (get_local $8)
           )
           (i32.store
            (i32.add
             (get_local $8)
             (i32.const 12)
            )
            (get_local $7)
           )
           (br_if $label$5
            (get_local $2)
           )
           (br $label$4)
          )
          (i32.store offset=16
           (i32.const 0)
           (i32.and
            (i32.load offset=16
             (i32.const 0)
            )
            (i32.rotl
             (i32.const -2)
             (get_local $5)
            )
           )
          )
          (br $label$4)
         )
         (block $label$32
          (block $label$33
           (br_if $label$33
            (tee_local $8
             (i32.load
              (tee_local $6
               (i32.add
                (get_local $1)
                (i32.const 20)
               )
              )
             )
            )
           )
           (br_if $label$32
            (i32.eqz
             (tee_local $8
              (i32.load
               (tee_local $6
                (i32.add
                 (get_local $1)
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
          )
          (loop $label$34
           (set_local $5
            (get_local $6)
           )
           (br_if $label$34
            (tee_local $8
             (i32.load
              (tee_local $6
               (i32.add
                (tee_local $7
                 (get_local $8)
                )
                (i32.const 20)
               )
              )
             )
            )
           )
           (set_local $6
            (i32.add
             (get_local $7)
             (i32.const 16)
            )
           )
           (br_if $label$34
            (tee_local $8
             (i32.load offset=16
              (get_local $7)
             )
            )
           )
          )
          (br_if $label$0
           (i32.gt_u
            (i32.load offset=32
             (i32.const 0)
            )
            (get_local $5)
           )
          )
          (i32.store
           (get_local $5)
           (i32.const 0)
          )
          (br_if $label$4
           (i32.eqz
            (get_local $2)
           )
          )
          (br $label$5)
         )
         (set_local $7
          (i32.const 0)
         )
         (br_if $label$5
          (get_local $2)
         )
         (br $label$4)
        )
        (drop
         (call $__errno_location)
        )
        (i32.store
         (call $__errno_location)
         (i32.const 14)
        )
        (call $abort)
        (unreachable)
       )
       (block $label$35
        (block $label$36
         (block $label$37
          (br_if $label$37
           (i32.eq
            (i32.load
             (tee_local $8
              (i32.add
               (i32.shl
                (tee_local $6
                 (i32.load offset=28
                  (get_local $1)
                 )
                )
                (i32.const 2)
               )
               (i32.const 320)
              )
             )
            )
            (get_local $1)
           )
          )
          (br_if $label$0
           (i32.gt_u
            (i32.load offset=32
             (i32.const 0)
            )
            (get_local $2)
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $2)
             (i32.const 16)
            )
            (i32.shl
             (i32.ne
              (i32.load offset=16
               (get_local $2)
              )
              (get_local $1)
             )
             (i32.const 2)
            )
           )
           (get_local $7)
          )
          (br_if $label$36
           (get_local $7)
          )
          (br $label$4)
         )
         (i32.store
          (get_local $8)
          (get_local $7)
         )
         (br_if $label$35
          (i32.eqz
           (get_local $7)
          )
         )
        )
        (br_if $label$0
         (i32.gt_u
          (tee_local $6
           (i32.load offset=32
            (i32.const 0)
           )
          )
          (get_local $7)
         )
        )
        (i32.store offset=24
         (get_local $7)
         (get_local $2)
        )
        (block $label$38
         (br_if $label$38
          (i32.eqz
           (tee_local $8
            (i32.load offset=16
             (get_local $1)
            )
           )
          )
         )
         (br_if $label$0
          (i32.gt_u
           (get_local $6)
           (get_local $8)
          )
         )
         (i32.store offset=16
          (get_local $7)
          (get_local $8)
         )
         (i32.store offset=24
          (get_local $8)
          (get_local $7)
         )
        )
        (br_if $label$4
         (i32.eqz
          (tee_local $8
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 20)
            )
           )
          )
         )
        )
        (br_if $label$0
         (i32.gt_u
          (i32.load offset=32
           (i32.const 0)
          )
          (get_local $8)
         )
        )
        (i32.store
         (i32.add
          (get_local $7)
          (i32.const 20)
         )
         (get_local $8)
        )
        (i32.store offset=24
         (get_local $8)
         (get_local $7)
        )
        (br $label$4)
       )
       (i32.store offset=20
        (i32.const 0)
        (i32.and
         (i32.load offset=20
          (i32.const 0)
         )
         (i32.rotl
          (i32.const -2)
          (get_local $6)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $3)
        (tee_local $0
         (i32.add
          (i32.and
           (get_local $4)
           (i32.const -8)
          )
          (get_local $0)
         )
        )
       )
       (get_local $0)
      )
      (i32.store offset=4
       (get_local $3)
       (i32.or
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (i32.load offset=36
         (i32.const 0)
        )
       )
      )
      (i32.store offset=24
       (i32.const 0)
       (get_local $0)
      )
      (return)
     )
     (block $label$39
      (block $label$40
       (block $label$41
        (block $label$42
         (block $label$43
          (block $label$44
           (br_if $label$44
            (i32.gt_u
             (get_local $0)
             (i32.const 255)
            )
           )
           (set_local $0
            (i32.add
             (i32.shl
              (tee_local $8
               (i32.shr_u
                (get_local $0)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 56)
            )
           )
           (br_if $label$43
            (i32.eqz
             (i32.and
              (tee_local $6
               (i32.load offset=16
                (i32.const 0)
               )
              )
              (tee_local $8
               (i32.shl
                (i32.const 1)
                (get_local $8)
               )
              )
             )
            )
           )
           (br_if $label$42
            (i32.le_u
             (i32.load offset=32
              (i32.const 0)
             )
             (tee_local $8
              (i32.load offset=8
               (get_local $0)
              )
             )
            )
           )
           (br $label$0)
          )
          (set_local $8
           (i32.const 0)
          )
          (block $label$45
           (br_if $label$45
            (i32.eqz
             (tee_local $6
              (i32.shr_u
               (get_local $0)
               (i32.const 8)
              )
             )
            )
           )
           (set_local $8
            (i32.const 31)
           )
           (br_if $label$45
            (i32.gt_u
             (get_local $0)
             (i32.const 16777215)
            )
           )
           (set_local $8
            (i32.or
             (i32.and
              (i32.shr_u
               (get_local $0)
               (i32.add
                (tee_local $8
                 (i32.add
                  (i32.sub
                   (i32.const 14)
                   (i32.or
                    (i32.or
                     (tee_local $7
                      (i32.and
                       (i32.shr_u
                        (i32.add
                         (tee_local $6
                          (i32.shl
                           (get_local $6)
                           (tee_local $8
                            (i32.and
                             (i32.shr_u
                              (i32.add
                               (get_local $6)
                               (i32.const 1048320)
                              )
                              (i32.const 16)
                             )
                             (i32.const 8)
                            )
                           )
                          )
                         )
                         (i32.const 520192)
                        )
                        (i32.const 16)
                       )
                       (i32.const 4)
                      )
                     )
                     (get_local $8)
                    )
                    (tee_local $6
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (tee_local $8
                         (i32.shl
                          (get_local $6)
                          (get_local $7)
                         )
                        )
                        (i32.const 245760)
                       )
                       (i32.const 16)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                  )
                  (i32.shr_u
                   (i32.shl
                    (get_local $8)
                    (get_local $6)
                   )
                   (i32.const 15)
                  )
                 )
                )
                (i32.const 7)
               )
              )
              (i32.const 1)
             )
             (i32.shl
              (get_local $8)
              (i32.const 1)
             )
            )
           )
          )
          (i64.store offset=16 align=4
           (get_local $3)
           (i64.const 0)
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 28)
           )
           (get_local $8)
          )
          (set_local $6
           (i32.add
            (i32.shl
             (get_local $8)
             (i32.const 2)
            )
            (i32.const 320)
           )
          )
          (br_if $label$41
           (i32.eqz
            (i32.and
             (tee_local $7
              (i32.load offset=20
               (i32.const 0)
              )
             )
             (tee_local $1
              (i32.shl
               (i32.const 1)
               (get_local $8)
              )
             )
            )
           )
          )
          (set_local $8
           (i32.shl
            (get_local $0)
            (select
             (i32.const 0)
             (i32.sub
              (i32.const 25)
              (i32.shr_u
               (get_local $8)
               (i32.const 1)
              )
             )
             (i32.eq
              (get_local $8)
              (i32.const 31)
             )
            )
           )
          )
          (set_local $7
           (i32.load
            (get_local $6)
           )
          )
          (loop $label$46
           (br_if $label$40
            (i32.eq
             (i32.and
              (i32.load offset=4
               (tee_local $6
                (get_local $7)
               )
              )
              (i32.const -8)
             )
             (get_local $0)
            )
           )
           (set_local $7
            (i32.shr_u
             (get_local $8)
             (i32.const 29)
            )
           )
           (set_local $8
            (i32.shl
             (get_local $8)
             (i32.const 1)
            )
           )
           (br_if $label$46
            (tee_local $7
             (i32.load
              (tee_local $1
               (i32.add
                (i32.add
                 (get_local $6)
                 (i32.and
                  (get_local $7)
                  (i32.const 4)
                 )
                )
                (i32.const 16)
               )
              )
             )
            )
           )
          )
          (br_if $label$0
           (i32.gt_u
            (i32.load offset=32
             (i32.const 0)
            )
            (get_local $1)
           )
          )
          (i32.store
           (get_local $1)
           (get_local $3)
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 24)
           )
           (get_local $6)
          )
          (i32.store offset=12
           (get_local $3)
           (get_local $3)
          )
          (i32.store offset=8
           (get_local $3)
           (get_local $3)
          )
          (br $label$39)
         )
         (i32.store offset=16
          (i32.const 0)
          (i32.or
           (get_local $6)
           (get_local $8)
          )
         )
         (set_local $8
          (get_local $0)
         )
        )
        (i32.store offset=12
         (get_local $8)
         (get_local $3)
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
         (get_local $3)
        )
        (i32.store offset=12
         (get_local $3)
         (get_local $0)
        )
        (i32.store offset=8
         (get_local $3)
         (get_local $8)
        )
        (return)
       )
       (i32.store
        (get_local $6)
        (get_local $3)
       )
       (i32.store offset=20
        (i32.const 0)
        (i32.or
         (get_local $7)
         (get_local $1)
        )
       )
       (i32.store
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
        (get_local $6)
       )
       (i32.store offset=8
        (get_local $3)
        (get_local $3)
       )
       (i32.store offset=12
        (get_local $3)
        (get_local $3)
       )
       (br $label$39)
      )
      (br_if $label$0
       (i32.gt_u
        (tee_local $8
         (i32.load offset=32
          (i32.const 0)
         )
        )
        (tee_local $0
         (i32.load offset=8
          (get_local $6)
         )
        )
       )
      )
      (br_if $label$0
       (i32.gt_u
        (get_local $8)
        (get_local $6)
       )
      )
      (i32.store offset=12
       (get_local $0)
       (get_local $3)
      )
      (i32.store
       (i32.add
        (get_local $6)
        (i32.const 8)
       )
       (get_local $3)
      )
      (i32.store offset=12
       (get_local $3)
       (get_local $6)
      )
      (i32.store
       (i32.add
        (get_local $3)
        (i32.const 24)
       )
       (i32.const 0)
      )
      (i32.store offset=8
       (get_local $3)
       (get_local $0)
      )
     )
     (i32.store offset=48
      (i32.const 0)
      (tee_local $3
       (i32.add
        (i32.load offset=48
         (i32.const 0)
        )
        (i32.const -1)
       )
      )
     )
     (br_if $label$1
      (i32.eqz
       (get_local $3)
      )
     )
    )
    (return)
   )
   (set_local $3
    (i32.const 472)
   )
   (loop $label$47
    (set_local $3
     (i32.add
      (tee_local $0
       (i32.load
        (get_local $3)
       )
      )
      (i32.const 8)
     )
    )
    (br_if $label$47
     (get_local $0)
    )
   )
   (i32.store offset=48
    (i32.const 0)
    (i32.const -1)
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $sys_trim (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.load offset=488
     (i32.const 0)
    )
   )
   (i64.store offset=492 align=4
    (i32.const 0)
    (i64.const 281474976776192)
   )
   (i64.store offset=500 align=4
    (i32.const 0)
    (i64.const 9007203549708287)
   )
   (i32.store offset=488
    (i32.const 0)
    (i32.xor
     (i32.and
      (i32.add
       (get_local $7)
       (i32.const 12)
      )
      (i32.const -16)
     )
     (i32.const 1431655768)
    )
   )
   (i32.store offset=508
    (i32.const 0)
    (i32.const 0)
   )
   (i32.store offset=460
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.gt_u
     (get_local $0)
     (i32.const -65)
    )
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$1
    (i32.eqz
     (tee_local $1
      (i32.load offset=40
       (i32.const 0)
      )
     )
    )
   )
   (set_local $6
    (i32.const 0)
   )
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $4
       (i32.load offset=28
        (i32.const 0)
       )
      )
      (i32.add
       (get_local $0)
       (i32.const 40)
      )
     )
    )
    (set_local $3
     (i32.add
      (i32.div_u
       (i32.add
        (i32.add
         (i32.add
          (i32.sub
           (i32.const -40)
           (get_local $0)
          )
          (get_local $4)
         )
         (tee_local $2
          (i32.load offset=496
           (i32.const 0)
          )
         )
        )
        (i32.const -1)
       )
       (get_local $2)
      )
      (i32.const -1)
     )
    )
    (set_local $0
     (i32.const 464)
    )
    (block $label$3
     (loop $label$4
      (block $label$5
       (br_if $label$5
        (i32.gt_u
         (tee_local $4
          (i32.load
           (get_local $0)
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$3
        (i32.gt_u
         (i32.add
          (get_local $4)
          (i32.load offset=4
           (get_local $0)
          )
         )
         (get_local $1)
        )
       )
      )
      (set_local $0
       (i32.load offset=8
        (get_local $0)
       )
      )
      (br $label$4)
     )
    )
    (br_if $label$2
     (i32.and
      (i32.load8_u offset=12
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $1
       (call $sbrk
        (i32.const 0)
       )
      )
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
     )
    )
    (set_local $2
     (call $sbrk
      (i32.sub
       (i32.const 0)
       (select
        (i32.sub
         (i32.const -2147483648)
         (get_local $2)
        )
        (tee_local $4
         (i32.mul
          (get_local $3)
          (get_local $2)
         )
        )
        (i32.gt_u
         (get_local $4)
         (i32.const 2147483646)
        )
       )
      )
     )
    )
    (set_local $4
     (call $sbrk
      (i32.const 0)
     )
    )
    (br_if $label$2
     (i32.eq
      (get_local $2)
      (i32.const -1)
     )
    )
    (br_if $label$2
     (i32.ge_u
      (get_local $4)
      (get_local $1)
     )
    )
    (br_if $label$2
     (i32.eqz
      (tee_local $1
       (i32.sub
        (get_local $1)
        (get_local $4)
       )
      )
     )
    )
    (set_local $6
     (i32.const 1)
    )
    (i32.store offset=4
     (tee_local $3
      (i32.add
       (tee_local $4
        (i32.load offset=40
         (i32.const 0)
        )
       )
       (tee_local $2
        (select
         (i32.and
          (i32.sub
           (i32.const -8)
           (get_local $4)
          )
          (i32.const 7)
         )
         (i32.const 0)
         (i32.and
          (i32.add
           (get_local $4)
           (i32.const 8)
          )
          (i32.const 7)
         )
        )
       )
      )
     )
     (i32.or
      (tee_local $2
       (i32.sub
        (tee_local $5
         (i32.sub
          (i32.load offset=28
           (i32.const 0)
          )
          (get_local $1)
         )
        )
        (get_local $2)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store offset=44
     (i32.const 0)
     (i32.load offset=504
      (i32.const 0)
     )
    )
    (i32.store offset=448
     (i32.const 0)
     (i32.sub
      (i32.load offset=448
       (i32.const 0)
      )
      (get_local $1)
     )
    )
    (i32.store
     (tee_local $0
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
     (i32.sub
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (i32.store offset=28
     (i32.const 0)
     (get_local $2)
    )
    (i32.store offset=40
     (i32.const 0)
     (get_local $3)
    )
    (i32.store offset=4
     (i32.add
      (get_local $4)
      (get_local $5)
     )
     (i32.const 40)
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.le_u
     (i32.load offset=28
      (i32.const 0)
     )
     (i32.load offset=44
      (i32.const 0)
     )
    )
   )
   (set_local $6
    (i32.const 0)
   )
   (i32.store offset=44
    (i32.const 0)
    (i32.const -1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (get_local $6)
 )
 (func $calloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $0)
      )
     )
     (set_local $2
      (i32.mul
       (get_local $1)
       (get_local $0)
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.lt_u
        (i32.or
         (get_local $1)
         (get_local $0)
        )
        (i32.const 65536)
       )
      )
      (set_local $2
       (select
        (get_local $2)
        (i32.const -1)
        (i32.eq
         (i32.div_u
          (get_local $2)
          (get_local $0)
         )
         (get_local $1)
        )
       )
      )
     )
     (br_if $label$1
      (tee_local $0
       (call $malloc
        (get_local $2)
       )
      )
     )
     (br $label$0)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $0
       (call $malloc
        (i32.const 0)
       )
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $0)
        (i32.const -4)
       )
      )
      (i32.const 3)
     )
    )
   )
   (drop
    (call $memset
     (get_local $0)
     (i32.const 0)
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$0
     (i32.lt_u
      (get_local $1)
      (i32.const -64)
     )
    )
    (i32.store
     (call $__errno_location)
     (i32.const 12)
    )
    (return
     (i32.const 0)
    )
   )
   (return
    (call $malloc
     (get_local $1)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $2
      (call $try_realloc_chunk
       (i32.add
        (get_local $0)
        (i32.const -8)
       )
       (select
        (i32.const 16)
        (i32.and
         (i32.add
          (get_local $1)
          (i32.const 11)
         )
         (i32.const -8)
        )
        (i32.lt_u
         (get_local $1)
         (i32.const 11)
        )
       )
      )
     )
    )
   )
   (return
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $2
      (call $malloc
       (get_local $1)
      )
     )
    )
   )
   (set_local $1
    (call $memcpy
     (get_local $2)
     (get_local $0)
     (select
      (tee_local $3
       (i32.sub
        (i32.and
         (tee_local $3
          (i32.load
           (i32.add
            (get_local $0)
            (i32.const -4)
           )
          )
         )
         (i32.const -8)
        )
        (select
         (i32.const 4)
         (i32.const 8)
         (i32.and
          (get_local $3)
          (i32.const 3)
         )
        )
       )
      )
      (get_local $1)
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
   )
   (call $free
    (get_local $0)
   )
   (return
    (get_local $1)
   )
  )
  (i32.const 0)
 )
 (func $try_realloc_chunk (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (tee_local $6
         (i32.and
          (tee_local $2
           (i32.load offset=4
            (get_local $0)
           )
          )
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
      )
      (br_if $label$3
       (i32.gt_u
        (tee_local $5
         (i32.load offset=32
          (i32.const 0)
         )
        )
        (get_local $0)
       )
      )
      (br_if $label$3
       (i32.le_u
        (tee_local $4
         (i32.add
          (get_local $0)
          (tee_local $3
           (i32.and
            (get_local $2)
            (i32.const -8)
           )
          )
         )
        )
        (get_local $0)
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.and
         (tee_local $7
          (i32.load offset=4
           (get_local $4)
          )
         )
         (i32.const 1)
        )
       )
      )
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (block $label$10
             (block $label$11
              (block $label$12
               (br_if $label$12
                (i32.eqz
                 (get_local $6)
                )
               )
               (br_if $label$11
                (i32.ge_u
                 (get_local $3)
                 (get_local $1)
                )
               )
               (set_local $6
                (i32.const 0)
               )
               (br_if $label$10
                (i32.eq
                 (i32.load offset=40
                  (i32.const 0)
                 )
                 (get_local $4)
                )
               )
               (br_if $label$9
                (i32.eq
                 (i32.load offset=36
                  (i32.const 0)
                 )
                 (get_local $4)
                )
               )
               (set_local $6
                (i32.const 0)
               )
               (br_if $label$8
                (i32.and
                 (get_local $7)
                 (i32.const 2)
                )
               )
               (br_if $label$8
                (i32.lt_u
                 (tee_local $8
                  (i32.add
                   (i32.and
                    (get_local $7)
                    (i32.const -8)
                   )
                   (get_local $3)
                  )
                 )
                 (get_local $1)
                )
               )
               (br_if $label$6
                (i32.gt_u
                 (get_local $7)
                 (i32.const 255)
                )
               )
               (set_local $3
                (i32.load offset=12
                 (get_local $4)
                )
               )
               (block $label$13
                (br_if $label$13
                 (i32.eq
                  (tee_local $6
                   (i32.load offset=8
                    (get_local $4)
                   )
                  )
                  (tee_local $7
                   (i32.add
                    (i32.shl
                     (tee_local $10
                      (i32.shr_u
                       (get_local $7)
                       (i32.const 3)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 56)
                   )
                  )
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $5)
                  (get_local $6)
                 )
                )
                (br_if $label$0
                 (i32.ne
                  (i32.load offset=12
                   (get_local $6)
                  )
                  (get_local $4)
                 )
                )
               )
               (br_if $label$5
                (i32.eq
                 (get_local $3)
                 (get_local $6)
                )
               )
               (block $label$14
                (br_if $label$14
                 (i32.eq
                  (get_local $3)
                  (get_local $7)
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $5)
                  (get_local $3)
                 )
                )
                (br_if $label$0
                 (i32.ne
                  (i32.load offset=8
                   (get_local $3)
                  )
                  (get_local $4)
                 )
                )
               )
               (i32.store offset=12
                (get_local $6)
                (get_local $3)
               )
               (i32.store
                (i32.add
                 (get_local $3)
                 (i32.const 8)
                )
                (get_local $6)
               )
               (br $label$1)
              )
              (set_local $6
               (i32.const 0)
              )
              (br_if $label$8
               (i32.lt_u
                (get_local $1)
                (i32.const 256)
               )
              )
              (block $label$15
               (br_if $label$15
                (i32.lt_u
                 (get_local $3)
                 (i32.add
                  (get_local $1)
                  (i32.const 4)
                 )
                )
               )
               (set_local $6
                (get_local $0)
               )
               (br_if $label$8
                (i32.le_u
                 (i32.sub
                  (get_local $3)
                  (get_local $1)
                 )
                 (i32.shl
                  (i32.load offset=496
                   (i32.const 0)
                  )
                  (i32.const 1)
                 )
                )
               )
              )
              (return
               (i32.const 0)
              )
             )
             (block $label$16
              (br_if $label$16
               (i32.lt_u
                (tee_local $3
                 (i32.sub
                  (get_local $3)
                  (get_local $1)
                 )
                )
                (i32.const 16)
               )
              )
              (i32.store
               (i32.add
                (get_local $0)
                (i32.const 4)
               )
               (i32.or
                (i32.or
                 (i32.and
                  (get_local $2)
                  (i32.const 1)
                 )
                 (get_local $1)
                )
                (i32.const 2)
               )
              )
              (i32.store offset=4
               (tee_local $1
                (i32.add
                 (get_local $0)
                 (get_local $1)
                )
               )
               (i32.or
                (get_local $3)
                (i32.const 3)
               )
              )
              (i32.store
               (tee_local $4
                (i32.add
                 (get_local $4)
                 (i32.const 4)
                )
               )
               (i32.or
                (i32.load
                 (get_local $4)
                )
                (i32.const 1)
               )
              )
              (call $dispose_chunk
               (get_local $1)
               (get_local $3)
              )
             )
             (return
              (get_local $0)
             )
            )
            (br_if $label$8
             (i32.le_u
              (tee_local $4
               (i32.add
                (i32.load offset=28
                 (i32.const 0)
                )
                (get_local $3)
               )
              )
              (get_local $1)
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.or
               (i32.and
                (get_local $2)
                (i32.const 1)
               )
               (get_local $1)
              )
              (i32.const 2)
             )
            )
            (i32.store offset=40
             (i32.const 0)
             (tee_local $3
              (i32.add
               (get_local $0)
               (get_local $1)
              )
             )
            )
            (i32.store offset=28
             (i32.const 0)
             (tee_local $1
              (i32.sub
               (get_local $4)
               (get_local $1)
              )
             )
            )
            (i32.store offset=4
             (get_local $3)
             (i32.or
              (get_local $1)
              (i32.const 1)
             )
            )
            (return
             (get_local $0)
            )
           )
           (set_local $6
            (i32.const 0)
           )
           (br_if $label$7
            (i32.ge_u
             (tee_local $4
              (i32.add
               (i32.load offset=24
                (i32.const 0)
               )
               (get_local $3)
              )
             )
             (get_local $1)
            )
           )
          )
          (return
           (get_local $6)
          )
         )
         (block $label$17
          (block $label$18
           (br_if $label$18
            (i32.lt_u
             (tee_local $3
              (i32.sub
               (get_local $4)
               (get_local $1)
              )
             )
             (i32.const 16)
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.or
              (i32.and
               (get_local $2)
               (i32.const 1)
              )
              (get_local $1)
             )
             (i32.const 2)
            )
           )
           (i32.store offset=4
            (tee_local $1
             (i32.add
              (get_local $0)
              (get_local $1)
             )
            )
            (i32.or
             (get_local $3)
             (i32.const 1)
            )
           )
           (i32.store
            (tee_local $4
             (i32.add
              (get_local $0)
              (get_local $4)
             )
            )
            (get_local $3)
           )
           (i32.store offset=4
            (get_local $4)
            (i32.and
             (i32.load offset=4
              (get_local $4)
             )
             (i32.const -2)
            )
           )
           (br $label$17)
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.or
             (i32.and
              (get_local $2)
              (i32.const 1)
             )
             (get_local $4)
            )
            (i32.const 2)
           )
          )
          (i32.store offset=4
           (tee_local $1
            (i32.add
             (get_local $0)
             (get_local $4)
            )
           )
           (i32.or
            (i32.load offset=4
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (set_local $3
           (i32.const 0)
          )
          (set_local $1
           (i32.const 0)
          )
         )
         (i32.store offset=36
          (i32.const 0)
          (get_local $1)
         )
         (i32.store offset=24
          (i32.const 0)
          (get_local $3)
         )
         (return
          (get_local $0)
         )
        )
        (set_local $9
         (i32.load offset=24
          (get_local $4)
         )
        )
        (br_if $label$4
         (i32.eq
          (tee_local $7
           (i32.load offset=12
            (get_local $4)
           )
          )
          (get_local $4)
         )
        )
        (br_if $label$0
         (i32.gt_u
          (get_local $5)
          (tee_local $3
           (i32.load offset=8
            (get_local $4)
           )
          )
         )
        )
        (br_if $label$0
         (i32.ne
          (i32.load offset=12
           (get_local $3)
          )
          (get_local $4)
         )
        )
        (br_if $label$0
         (i32.ne
          (i32.load offset=8
           (get_local $7)
          )
          (get_local $4)
         )
        )
        (i32.store
         (i32.add
          (get_local $7)
          (i32.const 8)
         )
         (get_local $3)
        )
        (i32.store
         (i32.add
          (get_local $3)
          (i32.const 12)
         )
         (get_local $7)
        )
        (br_if $label$2
         (get_local $9)
        )
        (br $label$1)
       )
       (i32.store offset=16
        (i32.const 0)
        (i32.and
         (i32.load offset=16
          (i32.const 0)
         )
         (i32.rotl
          (i32.const -2)
          (get_local $10)
         )
        )
       )
       (br $label$1)
      )
      (block $label$19
       (block $label$20
        (br_if $label$20
         (tee_local $6
          (i32.load
           (tee_local $3
            (i32.add
             (get_local $4)
             (i32.const 20)
            )
           )
          )
         )
        )
        (br_if $label$19
         (i32.eqz
          (tee_local $6
           (i32.load
            (tee_local $3
             (i32.add
              (get_local $4)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (loop $label$21
        (set_local $10
         (get_local $3)
        )
        (br_if $label$21
         (tee_local $6
          (i32.load
           (tee_local $3
            (i32.add
             (tee_local $7
              (get_local $6)
             )
             (i32.const 20)
            )
           )
          )
         )
        )
        (set_local $3
         (i32.add
          (get_local $7)
          (i32.const 16)
         )
        )
        (br_if $label$21
         (tee_local $6
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
       )
       (br_if $label$0
        (i32.gt_u
         (get_local $5)
         (get_local $10)
        )
       )
       (i32.store
        (get_local $10)
        (i32.const 0)
       )
       (br_if $label$1
        (i32.eqz
         (get_local $9)
        )
       )
       (br $label$2)
      )
      (set_local $7
       (i32.const 0)
      )
      (br_if $label$2
       (get_local $9)
      )
      (br $label$1)
     )
     (drop
      (call $__errno_location)
     )
     (i32.store
      (call $__errno_location)
      (i32.const 14)
     )
     (br $label$0)
    )
    (block $label$22
     (block $label$23
      (block $label$24
       (br_if $label$24
        (i32.eq
         (i32.load
          (tee_local $3
           (i32.add
            (i32.shl
             (tee_local $6
              (i32.load offset=28
               (get_local $4)
              )
             )
             (i32.const 2)
            )
            (i32.const 320)
           )
          )
         )
         (get_local $4)
        )
       )
       (br_if $label$0
        (i32.gt_u
         (i32.load offset=32
          (i32.const 0)
         )
         (get_local $9)
        )
       )
       (i32.store
        (i32.add
         (i32.add
          (get_local $9)
          (i32.const 16)
         )
         (i32.shl
          (i32.ne
           (i32.load offset=16
            (get_local $9)
           )
           (get_local $4)
          )
          (i32.const 2)
         )
        )
        (get_local $7)
       )
       (br_if $label$23
        (get_local $7)
       )
       (br $label$1)
      )
      (i32.store
       (get_local $3)
       (get_local $7)
      )
      (br_if $label$22
       (i32.eqz
        (get_local $7)
       )
      )
     )
     (br_if $label$0
      (i32.gt_u
       (tee_local $6
        (i32.load offset=32
         (i32.const 0)
        )
       )
       (get_local $7)
      )
     )
     (i32.store offset=24
      (get_local $7)
      (get_local $9)
     )
     (block $label$25
      (br_if $label$25
       (i32.eqz
        (tee_local $3
         (i32.load offset=16
          (get_local $4)
         )
        )
       )
      )
      (br_if $label$0
       (i32.gt_u
        (get_local $6)
        (get_local $3)
       )
      )
      (i32.store offset=16
       (get_local $7)
       (get_local $3)
      )
      (i32.store offset=24
       (get_local $3)
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load
         (i32.add
          (get_local $4)
          (i32.const 20)
         )
        )
       )
      )
     )
     (br_if $label$0
      (i32.gt_u
       (i32.load offset=32
        (i32.const 0)
       )
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 20)
      )
      (get_local $4)
     )
     (i32.store offset=24
      (get_local $4)
      (get_local $7)
     )
     (br $label$1)
    )
    (i32.store offset=20
     (i32.const 0)
     (i32.and
      (i32.load offset=20
       (i32.const 0)
      )
      (i32.rotl
       (i32.const -2)
       (get_local $6)
      )
     )
    )
   )
   (block $label$26
    (br_if $label$26
     (i32.gt_u
      (tee_local $4
       (i32.sub
        (get_local $8)
        (get_local $1)
       )
      )
      (i32.const 15)
     )
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.or
      (i32.or
       (get_local $8)
       (i32.and
        (get_local $2)
        (i32.const 1)
       )
      )
      (i32.const 2)
     )
    )
    (i32.store offset=4
     (tee_local $1
      (i32.add
       (get_local $0)
       (get_local $8)
      )
     )
     (i32.or
      (i32.load offset=4
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (return
     (get_local $0)
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.or
     (i32.or
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
      (get_local $1)
     )
     (i32.const 2)
    )
   )
   (i32.store offset=4
    (tee_local $1
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.or
     (get_local $4)
     (i32.const 3)
    )
   )
   (i32.store offset=4
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $8)
     )
    )
    (i32.or
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 1)
    )
   )
   (call $dispose_chunk
    (get_local $1)
    (get_local $4)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $dispose_chunk (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $2
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (block $label$10
             (block $label$11
              (br_if $label$11
               (i32.and
                (tee_local $9
                 (i32.load offset=4
                  (get_local $0)
                 )
                )
                (i32.const 1)
               )
              )
              (br_if $label$10
               (i32.eqz
                (i32.and
                 (get_local $9)
                 (i32.const 3)
                )
               )
              )
              (br_if $label$0
               (i32.lt_u
                (tee_local $0
                 (i32.sub
                  (get_local $0)
                  (tee_local $9
                   (i32.load
                    (get_local $0)
                   )
                  )
                 )
                )
                (tee_local $5
                 (i32.load offset=32
                  (i32.const 0)
                 )
                )
               )
              )
              (set_local $1
               (i32.add
                (get_local $9)
                (get_local $1)
               )
              )
              (block $label$12
               (block $label$13
                (block $label$14
                 (block $label$15
                  (block $label$16
                   (br_if $label$16
                    (i32.eq
                     (i32.load offset=36
                      (i32.const 0)
                     )
                     (get_local $0)
                    )
                   )
                   (br_if $label$15
                    (i32.gt_u
                     (get_local $9)
                     (i32.const 255)
                    )
                   )
                   (set_local $7
                    (i32.load offset=12
                     (get_local $0)
                    )
                   )
                   (block $label$17
                    (br_if $label$17
                     (i32.eq
                      (tee_local $8
                       (i32.load offset=8
                        (get_local $0)
                       )
                      )
                      (tee_local $9
                       (i32.add
                        (i32.shl
                         (tee_local $3
                          (i32.shr_u
                           (get_local $9)
                           (i32.const 3)
                          )
                         )
                         (i32.const 3)
                        )
                        (i32.const 56)
                       )
                      )
                     )
                    )
                    (br_if $label$0
                     (i32.gt_u
                      (get_local $5)
                      (get_local $8)
                     )
                    )
                    (br_if $label$0
                     (i32.ne
                      (i32.load offset=12
                       (get_local $8)
                      )
                      (get_local $0)
                     )
                    )
                   )
                   (br_if $label$14
                    (i32.eq
                     (get_local $7)
                     (get_local $8)
                    )
                   )
                   (block $label$18
                    (br_if $label$18
                     (i32.eq
                      (get_local $7)
                      (get_local $9)
                     )
                    )
                    (br_if $label$0
                     (i32.gt_u
                      (get_local $5)
                      (get_local $7)
                     )
                    )
                    (br_if $label$0
                     (i32.ne
                      (i32.load offset=8
                       (get_local $7)
                      )
                      (get_local $0)
                     )
                    )
                   )
                   (i32.store offset=12
                    (get_local $8)
                    (get_local $7)
                   )
                   (i32.store
                    (i32.add
                     (get_local $7)
                     (i32.const 8)
                    )
                    (get_local $8)
                   )
                   (br $label$11)
                  )
                  (br_if $label$11
                   (i32.ne
                    (i32.and
                     (tee_local $9
                      (i32.load offset=4
                       (get_local $2)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 3)
                   )
                  )
                  (i32.store
                   (i32.add
                    (get_local $2)
                    (i32.const 4)
                   )
                   (i32.and
                    (get_local $9)
                    (i32.const -2)
                   )
                  )
                  (i32.store offset=4
                   (get_local $0)
                   (i32.or
                    (get_local $1)
                    (i32.const 1)
                   )
                  )
                  (i32.store offset=24
                   (i32.const 0)
                   (get_local $1)
                  )
                  (i32.store
                   (get_local $2)
                   (get_local $1)
                  )
                  (return)
                 )
                 (set_local $4
                  (i32.load offset=24
                   (get_local $0)
                  )
                 )
                 (br_if $label$13
                  (i32.eq
                   (tee_local $8
                    (i32.load offset=12
                     (get_local $0)
                    )
                   )
                   (get_local $0)
                  )
                 )
                 (br_if $label$0
                  (i32.gt_u
                   (get_local $5)
                   (tee_local $9
                    (i32.load offset=8
                     (get_local $0)
                    )
                   )
                  )
                 )
                 (br_if $label$0
                  (i32.ne
                   (i32.load offset=12
                    (get_local $9)
                   )
                   (get_local $0)
                  )
                 )
                 (br_if $label$0
                  (i32.ne
                   (i32.load offset=8
                    (get_local $8)
                   )
                   (get_local $0)
                  )
                 )
                 (i32.store
                  (i32.add
                   (get_local $8)
                   (i32.const 8)
                  )
                  (get_local $9)
                 )
                 (i32.store
                  (i32.add
                   (get_local $9)
                   (i32.const 12)
                  )
                  (get_local $8)
                 )
                 (br_if $label$12
                  (get_local $4)
                 )
                 (br $label$11)
                )
                (i32.store offset=16
                 (i32.const 0)
                 (i32.and
                  (i32.load offset=16
                   (i32.const 0)
                  )
                  (i32.rotl
                   (i32.const -2)
                   (get_local $3)
                  )
                 )
                )
                (br $label$11)
               )
               (block $label$19
                (block $label$20
                 (br_if $label$20
                  (tee_local $7
                   (i32.load
                    (tee_local $9
                     (i32.add
                      (get_local $0)
                      (i32.const 20)
                     )
                    )
                   )
                  )
                 )
                 (br_if $label$19
                  (i32.eqz
                   (tee_local $7
                    (i32.load
                     (tee_local $9
                      (i32.add
                       (get_local $0)
                       (i32.const 16)
                      )
                     )
                    )
                   )
                  )
                 )
                )
                (loop $label$21
                 (set_local $3
                  (get_local $9)
                 )
                 (br_if $label$21
                  (tee_local $7
                   (i32.load
                    (tee_local $9
                     (i32.add
                      (tee_local $8
                       (get_local $7)
                      )
                      (i32.const 20)
                     )
                    )
                   )
                  )
                 )
                 (set_local $9
                  (i32.add
                   (get_local $8)
                   (i32.const 16)
                  )
                 )
                 (br_if $label$21
                  (tee_local $7
                   (i32.load offset=16
                    (get_local $8)
                   )
                  )
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $5)
                  (get_local $3)
                 )
                )
                (i32.store
                 (get_local $3)
                 (i32.const 0)
                )
                (br_if $label$11
                 (i32.eqz
                  (get_local $4)
                 )
                )
                (br $label$12)
               )
               (set_local $8
                (i32.const 0)
               )
               (br_if $label$11
                (i32.eqz
                 (get_local $4)
                )
               )
              )
              (block $label$22
               (block $label$23
                (block $label$24
                 (br_if $label$24
                  (i32.eq
                   (i32.load
                    (tee_local $9
                     (i32.add
                      (i32.shl
                       (tee_local $7
                        (i32.load offset=28
                         (get_local $0)
                        )
                       )
                       (i32.const 2)
                      )
                      (i32.const 320)
                     )
                    )
                   )
                   (get_local $0)
                  )
                 )
                 (br_if $label$0
                  (i32.gt_u
                   (i32.load offset=32
                    (i32.const 0)
                   )
                   (get_local $4)
                  )
                 )
                 (i32.store
                  (i32.add
                   (i32.add
                    (get_local $4)
                    (i32.const 16)
                   )
                   (i32.shl
                    (i32.ne
                     (i32.load offset=16
                      (get_local $4)
                     )
                     (get_local $0)
                    )
                    (i32.const 2)
                   )
                  )
                  (get_local $8)
                 )
                 (br_if $label$23
                  (get_local $8)
                 )
                 (br $label$11)
                )
                (i32.store
                 (get_local $9)
                 (get_local $8)
                )
                (br_if $label$22
                 (i32.eqz
                  (get_local $8)
                 )
                )
               )
               (br_if $label$0
                (i32.gt_u
                 (tee_local $7
                  (i32.load offset=32
                   (i32.const 0)
                  )
                 )
                 (get_local $8)
                )
               )
               (i32.store offset=24
                (get_local $8)
                (get_local $4)
               )
               (block $label$25
                (br_if $label$25
                 (i32.eqz
                  (tee_local $9
                   (i32.load offset=16
                    (get_local $0)
                   )
                  )
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $7)
                  (get_local $9)
                 )
                )
                (i32.store offset=16
                 (get_local $8)
                 (get_local $9)
                )
                (i32.store offset=24
                 (get_local $9)
                 (get_local $8)
                )
               )
               (br_if $label$11
                (i32.eqz
                 (tee_local $9
                  (i32.load
                   (i32.add
                    (get_local $0)
                    (i32.const 20)
                   )
                  )
                 )
                )
               )
               (br_if $label$0
                (i32.gt_u
                 (i32.load offset=32
                  (i32.const 0)
                 )
                 (get_local $9)
                )
               )
               (i32.store
                (i32.add
                 (get_local $8)
                 (i32.const 20)
                )
                (get_local $9)
               )
               (i32.store offset=24
                (get_local $9)
                (get_local $8)
               )
               (br $label$11)
              )
              (i32.store offset=20
               (i32.const 0)
               (i32.and
                (i32.load offset=20
                 (i32.const 0)
                )
                (i32.rotl
                 (i32.const -2)
                 (get_local $7)
                )
               )
              )
             )
             (br_if $label$0
              (i32.lt_u
               (get_local $2)
               (tee_local $4
                (i32.load offset=32
                 (i32.const 0)
                )
               )
              )
             )
             (block $label$26
              (block $label$27
               (br_if $label$27
                (i32.and
                 (tee_local $5
                  (i32.load offset=4
                   (get_local $2)
                  )
                 )
                 (i32.const 2)
                )
               )
               (br_if $label$26
                (i32.eq
                 (i32.load offset=40
                  (i32.const 0)
                 )
                 (get_local $2)
                )
               )
               (br_if $label$9
                (i32.eq
                 (i32.load offset=36
                  (i32.const 0)
                 )
                 (get_local $2)
                )
               )
               (br_if $label$8
                (i32.gt_u
                 (get_local $5)
                 (i32.const 255)
                )
               )
               (set_local $9
                (i32.load offset=12
                 (get_local $2)
                )
               )
               (block $label$28
                (br_if $label$28
                 (i32.eq
                  (tee_local $7
                   (i32.load offset=8
                    (get_local $2)
                   )
                  )
                  (tee_local $8
                   (i32.add
                    (i32.shl
                     (tee_local $3
                      (i32.shr_u
                       (get_local $5)
                       (i32.const 3)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 56)
                   )
                  )
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $4)
                  (get_local $7)
                 )
                )
                (br_if $label$0
                 (i32.ne
                  (i32.load offset=12
                   (get_local $7)
                  )
                  (get_local $2)
                 )
                )
               )
               (br_if $label$5
                (i32.eq
                 (get_local $9)
                 (get_local $7)
                )
               )
               (block $label$29
                (br_if $label$29
                 (i32.eq
                  (get_local $9)
                  (get_local $8)
                 )
                )
                (br_if $label$0
                 (i32.gt_u
                  (get_local $4)
                  (get_local $9)
                 )
                )
                (br_if $label$0
                 (i32.ne
                  (i32.load offset=8
                   (get_local $9)
                  )
                  (get_local $2)
                 )
                )
               )
               (i32.store offset=12
                (get_local $7)
                (get_local $9)
               )
               (i32.store
                (i32.add
                 (get_local $9)
                 (i32.const 8)
                )
                (get_local $7)
               )
               (br $label$2)
              )
              (i32.store
               (i32.add
                (get_local $2)
                (i32.const 4)
               )
               (i32.and
                (get_local $5)
                (i32.const -2)
               )
              )
              (i32.store offset=4
               (get_local $0)
               (i32.or
                (get_local $1)
                (i32.const 1)
               )
              )
              (i32.store
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (get_local $1)
              )
              (br $label$1)
             )
             (i32.store offset=40
              (i32.const 0)
              (get_local $0)
             )
             (i32.store offset=28
              (i32.const 0)
              (tee_local $1
               (i32.add
                (i32.load offset=28
                 (i32.const 0)
                )
                (get_local $1)
               )
              )
             )
             (i32.store offset=4
              (get_local $0)
              (i32.or
               (get_local $1)
               (i32.const 1)
              )
             )
             (br_if $label$7
              (i32.eq
               (get_local $0)
               (i32.load offset=36
                (i32.const 0)
               )
              )
             )
            )
            (return)
           )
           (i32.store offset=4
            (get_local $0)
            (i32.or
             (tee_local $1
              (i32.add
               (i32.load offset=24
                (i32.const 0)
               )
               (get_local $1)
              )
             )
             (i32.const 1)
            )
           )
           (i32.store offset=36
            (i32.const 0)
            (get_local $0)
           )
           (i32.store offset=24
            (i32.const 0)
            (get_local $1)
           )
           (i32.store
            (i32.add
             (get_local $0)
             (get_local $1)
            )
            (get_local $1)
           )
           (return)
          )
          (set_local $6
           (i32.load offset=24
            (get_local $2)
           )
          )
          (br_if $label$6
           (i32.eq
            (tee_local $8
             (i32.load offset=12
              (get_local $2)
             )
            )
            (get_local $2)
           )
          )
          (br_if $label$0
           (i32.gt_u
            (get_local $4)
            (tee_local $9
             (i32.load offset=8
              (get_local $2)
             )
            )
           )
          )
          (br_if $label$0
           (i32.ne
            (i32.load offset=12
             (get_local $9)
            )
            (get_local $2)
           )
          )
          (br_if $label$0
           (i32.ne
            (i32.load offset=8
             (get_local $8)
            )
            (get_local $2)
           )
          )
          (i32.store
           (i32.add
            (get_local $8)
            (i32.const 8)
           )
           (get_local $9)
          )
          (i32.store
           (i32.add
            (get_local $9)
            (i32.const 12)
           )
           (get_local $8)
          )
          (br_if $label$3
           (get_local $6)
          )
          (br $label$2)
         )
         (i32.store offset=24
          (i32.const 0)
          (i32.const 0)
         )
         (i32.store offset=36
          (i32.const 0)
          (i32.const 0)
         )
         (return)
        )
        (block $label$30
         (br_if $label$30
          (tee_local $7
           (i32.load
            (tee_local $9
             (i32.add
              (get_local $2)
              (i32.const 20)
             )
            )
           )
          )
         )
         (br_if $label$4
          (i32.eqz
           (tee_local $7
            (i32.load
             (tee_local $9
              (i32.add
               (get_local $2)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (loop $label$31
         (set_local $3
          (get_local $9)
         )
         (br_if $label$31
          (tee_local $7
           (i32.load
            (tee_local $9
             (i32.add
              (tee_local $8
               (get_local $7)
              )
              (i32.const 20)
             )
            )
           )
          )
         )
         (set_local $9
          (i32.add
           (get_local $8)
           (i32.const 16)
          )
         )
         (br_if $label$31
          (tee_local $7
           (i32.load offset=16
            (get_local $8)
           )
          )
         )
        )
        (br_if $label$0
         (i32.gt_u
          (get_local $4)
          (get_local $3)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (br_if $label$2
         (i32.eqz
          (get_local $6)
         )
        )
        (br $label$3)
       )
       (i32.store offset=16
        (i32.const 0)
        (i32.and
         (i32.load offset=16
          (i32.const 0)
         )
         (i32.rotl
          (i32.const -2)
          (get_local $3)
         )
        )
       )
       (br $label$2)
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$2
       (i32.eqz
        (get_local $6)
       )
      )
     )
     (block $label$32
      (block $label$33
       (block $label$34
        (br_if $label$34
         (i32.eq
          (i32.load
           (tee_local $9
            (i32.add
             (i32.shl
              (tee_local $7
               (i32.load offset=28
                (get_local $2)
               )
              )
              (i32.const 2)
             )
             (i32.const 320)
            )
           )
          )
          (get_local $2)
         )
        )
        (br_if $label$0
         (i32.gt_u
          (i32.load offset=32
           (i32.const 0)
          )
          (get_local $6)
         )
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $6)
           (i32.const 16)
          )
          (i32.shl
           (i32.ne
            (i32.load offset=16
             (get_local $6)
            )
            (get_local $2)
           )
           (i32.const 2)
          )
         )
         (get_local $8)
        )
        (br_if $label$33
         (get_local $8)
        )
        (br $label$2)
       )
       (i32.store
        (get_local $9)
        (get_local $8)
       )
       (br_if $label$32
        (i32.eqz
         (get_local $8)
        )
       )
      )
      (br_if $label$0
       (i32.gt_u
        (tee_local $7
         (i32.load offset=32
          (i32.const 0)
         )
        )
        (get_local $8)
       )
      )
      (i32.store offset=24
       (get_local $8)
       (get_local $6)
      )
      (block $label$35
       (br_if $label$35
        (i32.eqz
         (tee_local $9
          (i32.load offset=16
           (get_local $2)
          )
         )
        )
       )
       (br_if $label$0
        (i32.gt_u
         (get_local $7)
         (get_local $9)
        )
       )
       (i32.store offset=16
        (get_local $8)
        (get_local $9)
       )
       (i32.store offset=24
        (get_local $9)
        (get_local $8)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $9
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 20)
          )
         )
        )
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.load offset=32
         (i32.const 0)
        )
        (get_local $9)
       )
      )
      (i32.store
       (i32.add
        (get_local $8)
        (i32.const 20)
       )
       (get_local $9)
      )
      (i32.store offset=24
       (get_local $9)
       (get_local $8)
      )
      (br $label$2)
     )
     (i32.store offset=20
      (i32.const 0)
      (i32.and
       (i32.load offset=20
        (i32.const 0)
       )
       (i32.rotl
        (i32.const -2)
        (get_local $7)
       )
      )
     )
    )
    (i32.store offset=4
     (get_local $0)
     (i32.or
      (tee_local $1
       (i32.add
        (i32.and
         (get_local $5)
         (i32.const -8)
        )
        (get_local $1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
    (br_if $label$1
     (i32.ne
      (get_local $0)
      (i32.load offset=36
       (i32.const 0)
      )
     )
    )
    (i32.store offset=24
     (i32.const 0)
     (get_local $1)
    )
    (return)
   )
   (block $label$36
    (block $label$37
     (block $label$38
      (block $label$39
       (block $label$40
        (br_if $label$40
         (i32.gt_u
          (get_local $1)
          (i32.const 255)
         )
        )
        (set_local $1
         (i32.add
          (i32.shl
           (tee_local $9
            (i32.shr_u
             (get_local $1)
             (i32.const 3)
            )
           )
           (i32.const 3)
          )
          (i32.const 56)
         )
        )
        (br_if $label$39
         (i32.eqz
          (i32.and
           (tee_local $7
            (i32.load offset=16
             (i32.const 0)
            )
           )
           (tee_local $9
            (i32.shl
             (i32.const 1)
             (get_local $9)
            )
           )
          )
         )
        )
        (br_if $label$38
         (i32.le_u
          (i32.load offset=32
           (i32.const 0)
          )
          (tee_local $9
           (i32.load offset=8
            (get_local $1)
           )
          )
         )
        )
        (br $label$0)
       )
       (set_local $9
        (i32.const 0)
       )
       (block $label$41
        (br_if $label$41
         (i32.eqz
          (tee_local $7
           (i32.shr_u
            (get_local $1)
            (i32.const 8)
           )
          )
         )
        )
        (set_local $9
         (i32.const 31)
        )
        (br_if $label$41
         (i32.gt_u
          (get_local $1)
          (i32.const 16777215)
         )
        )
        (set_local $9
         (i32.or
          (i32.and
           (i32.shr_u
            (get_local $1)
            (i32.add
             (tee_local $9
              (i32.add
               (i32.sub
                (i32.const 14)
                (i32.or
                 (i32.or
                  (tee_local $8
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (tee_local $7
                       (i32.shl
                        (get_local $7)
                        (tee_local $9
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (get_local $7)
                            (i32.const 1048320)
                           )
                           (i32.const 16)
                          )
                          (i32.const 8)
                         )
                        )
                       )
                      )
                      (i32.const 520192)
                     )
                     (i32.const 16)
                    )
                    (i32.const 4)
                   )
                  )
                  (get_local $9)
                 )
                 (tee_local $7
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (tee_local $9
                      (i32.shl
                       (get_local $7)
                       (get_local $8)
                      )
                     )
                     (i32.const 245760)
                    )
                    (i32.const 16)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
               (i32.shr_u
                (i32.shl
                 (get_local $9)
                 (get_local $7)
                )
                (i32.const 15)
               )
              )
             )
             (i32.const 7)
            )
           )
           (i32.const 1)
          )
          (i32.shl
           (get_local $9)
           (i32.const 1)
          )
         )
        )
       )
       (i64.store offset=16 align=4
        (get_local $0)
        (i64.const 0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
        (get_local $9)
       )
       (set_local $7
        (i32.add
         (i32.shl
          (get_local $9)
          (i32.const 2)
         )
         (i32.const 320)
        )
       )
       (br_if $label$37
        (i32.eqz
         (i32.and
          (tee_local $8
           (i32.load offset=20
            (i32.const 0)
           )
          )
          (tee_local $2
           (i32.shl
            (i32.const 1)
            (get_local $9)
           )
          )
         )
        )
       )
       (set_local $9
        (i32.shl
         (get_local $1)
         (select
          (i32.const 0)
          (i32.sub
           (i32.const 25)
           (i32.shr_u
            (get_local $9)
            (i32.const 1)
           )
          )
          (i32.eq
           (get_local $9)
           (i32.const 31)
          )
         )
        )
       )
       (set_local $8
        (i32.load
         (get_local $7)
        )
       )
       (loop $label$42
        (br_if $label$36
         (i32.eq
          (i32.and
           (i32.load offset=4
            (tee_local $7
             (get_local $8)
            )
           )
           (i32.const -8)
          )
          (get_local $1)
         )
        )
        (set_local $8
         (i32.shr_u
          (get_local $9)
          (i32.const 29)
         )
        )
        (set_local $9
         (i32.shl
          (get_local $9)
          (i32.const 1)
         )
        )
        (br_if $label$42
         (tee_local $8
          (i32.load
           (tee_local $2
            (i32.add
             (i32.add
              (get_local $7)
              (i32.and
               (get_local $8)
               (i32.const 4)
              )
             )
             (i32.const 16)
            )
           )
          )
         )
        )
       )
       (br_if $label$0
        (i32.gt_u
         (i32.load offset=32
          (i32.const 0)
         )
         (get_local $2)
        )
       )
       (i32.store
        (get_local $2)
        (get_local $0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $7)
       )
       (i32.store offset=12
        (get_local $0)
        (get_local $0)
       )
       (i32.store offset=8
        (get_local $0)
        (get_local $0)
       )
       (return)
      )
      (i32.store offset=16
       (i32.const 0)
       (i32.or
        (get_local $7)
        (get_local $9)
       )
      )
      (set_local $9
       (get_local $1)
      )
     )
     (i32.store offset=12
      (get_local $9)
      (get_local $0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (get_local $0)
     )
     (i32.store offset=12
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $9)
     )
     (return)
    )
    (i32.store
     (get_local $7)
     (get_local $0)
    )
    (i32.store offset=20
     (i32.const 0)
     (i32.or
      (get_local $8)
      (get_local $2)
     )
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (get_local $7)
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $0)
    )
    (i32.store offset=12
     (get_local $0)
     (get_local $0)
    )
    (return)
   )
   (br_if $label$0
    (i32.gt_u
     (tee_local $9
      (i32.load offset=32
       (i32.const 0)
      )
     )
     (tee_local $1
      (i32.load offset=8
       (get_local $7)
      )
     )
    )
   )
   (br_if $label$0
    (i32.gt_u
     (get_local $9)
     (get_local $7)
    )
   )
   (i32.store offset=12
    (get_local $1)
    (get_local $0)
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (get_local $0)
   )
   (i32.store offset=12
    (get_local $0)
    (get_local $7)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $realloc_in_place (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (get_local $1)
      (i32.const -64)
     )
    )
    (i32.store
     (call $__errno_location)
     (i32.const 12)
    )
    (return
     (i32.const 0)
    )
   )
   (set_local $2
    (select
     (get_local $0)
     (i32.const 0)
     (i32.eq
      (call $try_realloc_chunk
       (tee_local $2
        (i32.add
         (get_local $0)
         (i32.const -8)
        )
       )
       (select
        (i32.const 16)
        (i32.and
         (i32.add
          (get_local $1)
          (i32.const 11)
         )
         (i32.const -8)
        )
        (i32.lt_u
         (get_local $1)
         (i32.const 11)
        )
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $memalign (param $0 i32) (param $1 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (get_local $0)
     (i32.const 8)
    )
   )
   (return
    (call $malloc
     (get_local $1)
    )
   )
  )
  (call $internal_memalign
   (get_local $0)
   (get_local $1)
  )
 )
 (func $internal_memalign (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (i32.const 16)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (i32.add
        (tee_local $2
         (select
          (get_local $0)
          (i32.const 16)
          (i32.gt_u
           (get_local $0)
           (i32.const 16)
          )
         )
        )
        (i32.const -1)
       )
       (get_local $2)
      )
     )
    )
    (loop $label$2
     (set_local $6
      (i32.shl
       (tee_local $0
        (get_local $6)
       )
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.lt_u
       (get_local $0)
       (get_local $2)
      )
     )
     (br $label$0)
    )
   )
   (set_local $0
    (get_local $2)
   )
  )
  (block $label$3
   (block $label$4
    (block $label$5
     (block $label$6
      (block $label$7
       (br_if $label$7
        (i32.le_u
         (i32.sub
          (i32.const -64)
          (get_local $0)
         )
         (get_local $1)
        )
       )
       (br_if $label$6
        (i32.eqz
         (tee_local $6
          (call $malloc
           (i32.add
            (i32.add
             (tee_local $1
              (select
               (i32.const 16)
               (i32.and
                (i32.add
                 (get_local $1)
                 (i32.const 11)
                )
                (i32.const -8)
               )
               (i32.lt_u
                (get_local $1)
                (i32.const 11)
               )
              )
             )
             (get_local $0)
            )
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.add
         (get_local $6)
         (i32.const -8)
        )
       )
       (br_if $label$5
        (i32.eqz
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -1)
          )
          (get_local $6)
         )
        )
       )
       (set_local $4
        (i32.sub
         (i32.and
          (tee_local $5
           (i32.load
            (tee_local $3
             (i32.add
              (get_local $6)
              (i32.const -4)
             )
            )
           )
          )
          (i32.const -8)
         )
         (tee_local $6
          (i32.sub
           (tee_local $0
            (select
             (tee_local $6
              (i32.add
               (i32.and
                (i32.add
                 (i32.add
                  (get_local $6)
                  (get_local $0)
                 )
                 (i32.const -1)
                )
                (i32.sub
                 (i32.const 0)
                 (get_local $0)
                )
               )
               (i32.const -8)
              )
             )
             (i32.add
              (get_local $6)
              (get_local $0)
             )
             (i32.gt_u
              (i32.sub
               (get_local $6)
               (get_local $2)
              )
              (i32.const 15)
             )
            )
           )
           (get_local $2)
          )
         )
        )
       )
       (br_if $label$4
        (i32.eqz
         (i32.and
          (get_local $5)
          (i32.const 3)
         )
        )
       )
       (i32.store offset=4
        (get_local $0)
        (i32.or
         (i32.or
          (get_local $4)
          (i32.and
           (i32.load offset=4
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (i32.const 2)
        )
       )
       (i32.store offset=4
        (tee_local $4
         (i32.add
          (get_local $0)
          (get_local $4)
         )
        )
        (i32.or
         (i32.load offset=4
          (get_local $4)
         )
         (i32.const 1)
        )
       )
       (i32.store
        (get_local $3)
        (i32.or
         (i32.or
          (get_local $6)
          (i32.and
           (i32.load
            (get_local $3)
           )
           (i32.const 1)
          )
         )
         (i32.const 2)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (i32.or
         (i32.load offset=4
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (call $dispose_chunk
        (get_local $2)
        (get_local $6)
       )
       (br $label$3)
      )
      (i32.store
       (call $__errno_location)
       (i32.const 12)
      )
      (return
       (i32.const 0)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $0
     (get_local $2)
    )
    (br $label$3)
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $4)
   )
   (i32.store
    (get_local $0)
    (i32.add
     (i32.load
      (get_local $2)
     )
     (get_local $6)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (i32.and
      (tee_local $6
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 3)
     )
    )
   )
   (br_if $label$8
    (i32.le_u
     (tee_local $2
      (i32.and
       (get_local $6)
       (i32.const -8)
      )
     )
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.or
     (i32.or
      (get_local $1)
      (i32.and
       (get_local $6)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
   )
   (i32.store offset=4
    (tee_local $6
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.or
     (tee_local $1
      (i32.sub
       (get_local $2)
       (get_local $1)
      )
     )
     (i32.const 3)
    )
   )
   (i32.store offset=4
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.or
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (call $dispose_chunk
    (get_local $6)
    (get_local $1)
   )
  )
  (i32.add
   (get_local $0)
   (i32.const 8)
  )
 )
 (func $posix_memalign (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ne
       (get_local $1)
       (i32.const 8)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $1
        (call $malloc
         (get_local $2)
        )
       )
      )
     )
     (br $label$0)
    )
    (set_local $4
     (i32.const 22)
    )
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.and
        (get_local $1)
        (i32.const 3)
       )
      )
      (br_if $label$4
       (i32.eqz
        (tee_local $3
         (i32.shr_u
          (get_local $1)
          (i32.const 2)
         )
        )
       )
      )
      (br_if $label$4
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 1073741823)
        )
        (get_local $3)
       )
      )
      (set_local $4
       (i32.const 12)
      )
      (br_if $label$3
       (i32.ge_u
        (i32.sub
         (i32.const -64)
         (get_local $1)
        )
        (get_local $2)
       )
      )
     )
     (return
      (get_local $4)
     )
    )
    (br_if $label$0
     (tee_local $1
      (call $internal_memalign
       (select
        (get_local $1)
        (i32.const 16)
        (i32.gt_u
         (get_local $1)
         (i32.const 16)
        )
       )
       (get_local $2)
      )
     )
    )
   )
   (return
    (i32.const 12)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.const 0)
 )
 (func $valloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (i32.load offset=488
        (i32.const 0)
       )
      )
     )
     (br_if $label$1
      (i32.gt_u
       (tee_local $1
        (i32.load offset=492
         (i32.const 0)
        )
       )
       (i32.const 8)
      )
     )
     (set_local $0
      (call $malloc
       (get_local $0)
      )
     )
     (br $label$0)
    )
    (i64.store offset=492 align=4
     (i32.const 0)
     (i64.const 281474976776192)
    )
    (i64.store offset=500 align=4
     (i32.const 0)
     (i64.const 9007203549708287)
    )
    (i32.store offset=488
     (i32.const 0)
     (i32.xor
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
       (i32.const -16)
      )
      (i32.const 1431655768)
     )
    )
    (i32.store offset=508
     (i32.const 0)
     (i32.const 0)
    )
    (i32.store offset=460
     (i32.const 0)
     (i32.const 0)
    )
    (set_local $1
     (i32.const 65536)
    )
   )
   (set_local $0
    (call $internal_memalign
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $pvalloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (i32.load offset=488
        (i32.const 0)
       )
      )
     )
     (set_local $0
      (i32.and
       (i32.add
        (i32.add
         (get_local $0)
         (tee_local $1
          (i32.load offset=492
           (i32.const 0)
          )
         )
        )
        (i32.const -1)
       )
       (i32.sub
        (i32.const 0)
        (get_local $1)
       )
      )
     )
     (br_if $label$1
      (i32.gt_u
       (get_local $1)
       (i32.const 8)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $0)
      )
     )
     (br $label$0)
    )
    (i64.store offset=492 align=4
     (i32.const 0)
     (i64.const 281474976776192)
    )
    (i64.store offset=500 align=4
     (i32.const 0)
     (i64.const 9007203549708287)
    )
    (i32.store offset=488
     (i32.const 0)
     (i32.xor
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
       (i32.const -16)
      )
      (i32.const 1431655768)
     )
    )
    (i32.store offset=508
     (i32.const 0)
     (i32.const 0)
    )
    (i32.store offset=460
     (i32.const 0)
     (i32.const 0)
    )
    (set_local $0
     (i32.and
      (i32.add
       (get_local $0)
       (i32.const 65535)
      )
      (i32.const -65536)
     )
    )
    (set_local $1
     (i32.const 65536)
    )
   )
   (set_local $1
    (call $internal_memalign
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $1)
 )
 (func $independent_calloc (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=12
   (get_local $3)
   (get_local $1)
  )
  (set_local $0
   (call $ialloc
    (get_local $0)
    (i32.add
     (get_local $3)
     (i32.const 12)
    )
    (i32.const 3)
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $ialloc (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (i32.load offset=488
          (i32.const 0)
         )
        )
       )
       (br_if $label$3
        (i32.eqz
         (get_local $3)
        )
       )
       (br $label$2)
      )
      (i64.store offset=492 align=4
       (i32.const 0)
       (i64.const 281474976776192)
      )
      (i64.store offset=500 align=4
       (i32.const 0)
       (i64.const 9007203549708287)
      )
      (i32.store offset=488
       (i32.const 0)
       (i32.xor
        (i32.and
         (i32.add
          (get_local $11)
          (i32.const 12)
         )
         (i32.const -16)
        )
        (i32.const 1431655768)
       )
      )
      (i32.store offset=508
       (i32.const 0)
       (i32.const 0)
      )
      (i32.store offset=460
       (i32.const 0)
       (i32.const 0)
      )
      (br_if $label$2
       (get_local $3)
      )
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $0)
       )
      )
      (set_local $8
       (select
        (i32.const 16)
        (i32.and
         (i32.add
          (tee_local $10
           (i32.shl
            (get_local $0)
            (i32.const 2)
           )
          )
          (i32.const 11)
         )
         (i32.const -8)
        )
        (i32.lt_u
         (get_local $10)
         (i32.const 11)
        )
       )
      )
      (set_local $3
       (i32.const 0)
      )
      (br $label$1)
     )
     (set_local $3
      (call $malloc
       (i32.const 0)
      )
     )
     (br $label$0)
    )
    (set_local $8
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $7
      (i32.const 0)
     )
     (set_local $9
      (get_local $0)
     )
     (set_local $10
      (get_local $1)
     )
     (set_local $5
      (i32.const 0)
     )
     (loop $label$8
      (set_local $5
       (i32.add
        (select
         (i32.const 16)
         (i32.and
          (i32.add
           (tee_local $6
            (i32.load
             (get_local $10)
            )
           )
           (i32.const 11)
          )
          (i32.const -8)
         )
         (i32.lt_u
          (get_local $6)
          (i32.const 11)
         )
        )
        (get_local $5)
       )
      )
      (set_local $10
       (i32.add
        (get_local $10)
        (i32.const 4)
       )
      )
      (br_if $label$8
       (tee_local $9
        (i32.add
         (get_local $9)
         (i32.const -1)
        )
       )
      )
      (br $label$6)
     )
    )
    (set_local $5
     (i32.mul
      (tee_local $7
       (select
        (i32.const 16)
        (i32.and
         (i32.add
          (tee_local $10
           (i32.load
            (get_local $1)
           )
          )
          (i32.const 11)
         )
         (i32.const -8)
        )
        (i32.lt_u
         (get_local $10)
         (i32.const 11)
        )
       )
      )
      (get_local $0)
     )
    )
   )
   (block $label$9
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (tee_local $4
         (call $malloc
          (i32.add
           (i32.add
            (get_local $8)
            (get_local $5)
           )
           (i32.const -4)
          )
         )
        )
       )
      )
      (set_local $10
       (i32.and
        (i32.load
         (i32.add
          (get_local $4)
          (i32.const -4)
         )
        )
        (i32.const -8)
       )
      )
      (block $label$12
       (br_if $label$12
        (i32.eqz
         (i32.and
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (drop
        (call $memset
         (get_local $4)
         (i32.const 0)
         (i32.add
          (i32.sub
           (i32.const -4)
           (get_local $8)
          )
          (get_local $10)
         )
        )
       )
      )
      (set_local $9
       (i32.add
        (get_local $4)
        (i32.const -8)
       )
      )
      (br_if $label$10
       (i32.eqz
        (get_local $3)
       )
      )
      (set_local $5
       (get_local $10)
      )
      (br $label$9)
     )
     (set_local $3
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (tee_local $6
      (i32.add
       (get_local $9)
       (get_local $5)
      )
     )
     (i32.or
      (i32.sub
       (get_local $10)
       (get_local $5)
      )
      (i32.const 3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
   )
   (i32.store
    (get_local $3)
    (get_local $4)
   )
   (block $label$13
    (br_if $label$13
     (i32.eqz
      (tee_local $10
       (i32.add
        (get_local $0)
        (i32.const -1)
       )
      )
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (set_local $9
      (i32.add
       (get_local $3)
       (i32.const 4)
      )
     )
     (set_local $2
      (i32.or
       (get_local $7)
       (i32.const 3)
      )
     )
     (set_local $8
      (i32.add
       (i32.mul
        (get_local $7)
        (get_local $10)
       )
       (i32.const -8)
      )
     )
     (set_local $0
      (i32.mul
       (get_local $7)
       (i32.sub
        (i32.const 1)
        (get_local $0)
       )
      )
     )
     (set_local $6
      (get_local $4)
     )
     (loop $label$15
      (i32.store
       (get_local $9)
       (tee_local $1
        (i32.add
         (get_local $6)
         (get_local $7)
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $6)
        (i32.const -4)
       )
       (get_local $2)
      )
      (set_local $9
       (i32.add
        (get_local $9)
        (i32.const 4)
       )
      )
      (set_local $6
       (get_local $1)
      )
      (br_if $label$15
       (tee_local $10
        (i32.add
         (get_local $10)
         (i32.const -1)
        )
       )
      )
     )
     (set_local $9
      (i32.add
       (get_local $4)
       (get_local $8)
      )
     )
     (set_local $5
      (i32.add
       (get_local $5)
       (get_local $0)
      )
     )
     (br $label$13)
    )
    (set_local $6
     (i32.add
      (get_local $3)
      (i32.const 4)
     )
    )
    (loop $label$16
     (i32.store offset=4
      (get_local $9)
      (i32.or
       (tee_local $7
        (select
         (i32.const 16)
         (i32.and
          (i32.add
           (tee_local $7
            (i32.load
             (get_local $1)
            )
           )
           (i32.const 11)
          )
          (i32.const -8)
         )
         (i32.lt_u
          (get_local $7)
          (i32.const 11)
         )
        )
       )
       (i32.const 3)
      )
     )
     (i32.store
      (get_local $6)
      (i32.add
       (tee_local $9
        (i32.add
         (get_local $9)
         (get_local $7)
        )
       )
       (i32.const 8)
      )
     )
     (set_local $5
      (i32.sub
       (get_local $5)
       (get_local $7)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
     (set_local $6
      (i32.add
       (get_local $6)
       (i32.const 4)
      )
     )
     (br_if $label$16
      (tee_local $10
       (i32.add
        (get_local $10)
        (i32.const -1)
       )
      )
     )
    )
   )
   (i32.store offset=4
    (get_local $9)
    (i32.or
     (get_local $5)
     (i32.const 3)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 16)
   )
  )
  (get_local $3)
 )
 (func $independent_comalloc (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $ialloc
   (get_local $0)
   (get_local $1)
   (i32.const 0)
   (get_local $2)
  )
 )
 (func $bulk_free (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (loop $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (tee_local $1
          (i32.load
           (get_local $0)
          )
         )
        )
       )
       (i32.store
        (get_local $0)
        (i32.const 0)
       )
       (br_if $label$0
        (i32.eq
         (i32.and
          (tee_local $5
           (i32.load
            (tee_local $4
             (i32.add
              (get_local $1)
              (i32.const -4)
             )
            )
           )
          )
          (i32.const 3)
         )
         (i32.const 1)
        )
       )
       (br_if $label$0
        (i32.lt_u
         (tee_local $3
          (i32.add
           (get_local $1)
           (i32.const -8)
          )
         )
         (i32.load offset=32
          (i32.const 0)
         )
        )
       )
       (set_local $6
        (i32.and
         (get_local $5)
         (i32.const -8)
        )
       )
       (block $label$5
        (br_if $label$5
         (i32.eq
          (tee_local $0
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
          )
          (get_local $2)
         )
        )
        (br_if $label$3
         (i32.eq
          (i32.load
           (get_local $0)
          )
          (i32.add
           (tee_local $7
            (i32.add
             (get_local $3)
             (get_local $6)
            )
           )
           (i32.const 8)
          )
         )
        )
       )
       (call $dispose_chunk
        (get_local $3)
        (get_local $6)
       )
       (br_if $label$2
        (i32.ne
         (get_local $0)
         (get_local $2)
        )
       )
       (br $label$1)
      )
      (br_if $label$2
       (i32.ne
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
        (get_local $2)
       )
      )
      (br $label$1)
     )
     (i32.store
      (get_local $4)
      (i32.or
       (i32.or
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
        (tee_local $6
         (i32.add
          (i32.and
           (i32.load offset=4
            (get_local $7)
           )
           (i32.const -8)
          )
          (get_local $6)
         )
        )
       )
       (i32.const 2)
      )
     )
     (i32.store
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (tee_local $1
       (i32.add
        (get_local $3)
        (get_local $6)
       )
      )
      (i32.or
       (i32.load offset=4
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.ne
       (get_local $0)
       (get_local $2)
      )
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.le_u
      (i32.load offset=28
       (i32.const 0)
      )
      (i32.load offset=44
       (i32.const 0)
      )
     )
    )
    (drop
     (call $sys_trim
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $malloc_trim (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.load offset=488
     (i32.const 0)
    )
   )
   (i64.store offset=492 align=4
    (i32.const 0)
    (i64.const 281474976776192)
   )
   (i64.store offset=500 align=4
    (i32.const 0)
    (i64.const 9007203549708287)
   )
   (i32.store offset=488
    (i32.const 0)
    (i32.xor
     (i32.and
      (i32.add
       (get_local $1)
       (i32.const 12)
      )
      (i32.const -16)
     )
     (i32.const 1431655768)
    )
   )
   (i32.store offset=508
    (i32.const 0)
    (i32.const 0)
   )
   (i32.store offset=460
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $0
   (call $sys_trim
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $malloc_footprint (result i32)
  (i32.load offset=448
   (i32.const 0)
  )
 )
 (func $malloc_max_footprint (result i32)
  (i32.load offset=452
   (i32.const 0)
  )
 )
 (func $malloc_footprint_limit (result i32)
  (local $0 i32)
  (select
   (tee_local $0
    (i32.load offset=456
     (i32.const 0)
    )
   )
   (i32.const -1)
   (get_local $0)
  )
 )
 (func $malloc_set_footprint_limit (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (get_local $0)
     (i32.const -1)
    )
   )
   (set_local $1
    (i32.and
     (i32.add
      (i32.add
       (get_local $0)
       (tee_local $1
        (i32.load offset=496
         (i32.const 0)
        )
       )
      )
      (i32.const -1)
     )
     (i32.sub
      (i32.const 0)
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=456
   (i32.const 0)
   (get_local $1)
  )
  (get_local $1)
 )
 (func $mallinfo (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (set_local $8
   (i32.sub
    (i32.load offset=4
     (i32.const 0)
    )
    (i32.const 16)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.load offset=488
     (i32.const 0)
    )
   )
   (i64.store offset=492 align=4
    (i32.const 0)
    (i64.const 281474976776192)
   )
   (i64.store offset=500 align=4
    (i32.const 0)
    (i64.const 9007203549708287)
   )
   (i32.store offset=488
    (i32.const 0)
    (i32.xor
     (i32.and
      (i32.add
       (get_local $8)
       (i32.const 12)
      )
      (i32.const -16)
     )
     (i32.const 1431655768)
    )
   )
   (i32.store offset=508
    (i32.const 0)
    (i32.const 0)
   )
   (i32.store offset=460
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $8
   (i32.const 0)
  )
  (set_local $9
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (set_local $11
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $1
      (i32.load offset=40
       (i32.const 0)
      )
     )
    )
   )
   (set_local $10
    (i32.const 464)
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (tee_local $11
       (i32.load offset=28
        (i32.const 0)
       )
      )
      (i32.const 40)
     )
    )
   )
   (set_local $7
    (i32.const 1)
   )
   (loop $label$2
    (set_local $4
     (i32.add
      (tee_local $2
       (i32.load
        (get_local $10)
       )
      )
      (select
       (i32.and
        (i32.sub
         (i32.const -8)
         (get_local $2)
        )
        (i32.const 7)
       )
       (i32.const 0)
       (i32.and
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
        (i32.const 7)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $2)
      (i32.load offset=4
       (get_local $10)
      )
     )
    )
    (block $label$3
     (loop $label$4
      (br_if $label$3
       (i32.ge_u
        (get_local $4)
        (get_local $3)
       )
      )
      (br_if $label$3
       (i32.eq
        (get_local $1)
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.eq
        (tee_local $8
         (i32.load offset=4
          (get_local $4)
         )
        )
        (i32.const 7)
       )
      )
      (set_local $6
       (i32.add
        (select
         (tee_local $9
          (i32.and
           (get_local $8)
           (i32.const -8)
          )
         )
         (i32.const 0)
         (tee_local $8
          (i32.eq
           (i32.and
            (get_local $8)
            (i32.const 3)
           )
           (i32.const 1)
          )
         )
        )
        (get_local $6)
       )
      )
      (set_local $5
       (i32.add
        (get_local $9)
        (get_local $5)
       )
      )
      (set_local $7
       (i32.add
        (get_local $7)
        (get_local $8)
       )
      )
      (br_if $label$4
       (i32.ge_u
        (tee_local $4
         (i32.add
          (get_local $4)
          (get_local $9)
         )
        )
        (get_local $2)
       )
      )
     )
    )
    (br_if $label$2
     (tee_local $10
      (i32.load offset=8
       (get_local $10)
      )
     )
    )
   )
   (set_local $4
    (i32.sub
     (tee_local $8
      (i32.load offset=448
       (i32.const 0)
      )
     )
     (get_local $6)
    )
   )
   (set_local $9
    (i32.sub
     (get_local $8)
     (get_local $5)
    )
   )
   (set_local $8
    (i32.load offset=452
     (i32.const 0)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $7)
  )
  (i32.store
   (get_local $0)
   (get_local $5)
  )
  (i64.store offset=8 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (get_local $9)
  )
  (i32.store offset=20
   (get_local $0)
   (get_local $8)
  )
  (i32.store offset=24
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=28
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $0)
   (get_local $6)
  )
  (i32.store offset=36
   (get_local $0)
   (get_local $11)
  )
 )
 (func $mallopt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.sub
    (i32.load offset=4
     (i32.const 0)
    )
    (i32.const 16)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.load offset=488
     (i32.const 0)
    )
   )
   (i64.store offset=492 align=4
    (i32.const 0)
    (i64.const 281474976776192)
   )
   (i64.store offset=500 align=4
    (i32.const 0)
    (i64.const 9007203549708287)
   )
   (i32.store offset=488
    (i32.const 0)
    (i32.xor
     (i32.and
      (i32.add
       (get_local $3)
       (i32.const 12)
      )
      (i32.const -16)
     )
     (i32.const 1431655768)
    )
   )
   (i32.store offset=508
    (i32.const 0)
    (i32.const 0)
   )
   (i32.store offset=460
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eq
        (get_local $0)
        (i32.const -3)
       )
      )
      (br_if $label$3
       (i32.eq
        (get_local $0)
        (i32.const -2)
       )
      )
      (br_if $label$1
       (i32.ne
        (get_local $0)
        (i32.const -1)
       )
      )
      (i32.store offset=504
       (i32.const 0)
       (get_local $1)
      )
      (br $label$2)
     )
     (i32.store offset=500
      (i32.const 0)
      (get_local $1)
     )
     (br $label$2)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$1
     (i32.gt_u
      (i32.load offset=492
       (i32.const 0)
      )
      (get_local $1)
     )
    )
    (br_if $label$1
     (i32.and
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
      (get_local $1)
     )
    )
    (i32.store offset=496
     (i32.const 0)
     (get_local $1)
    )
   )
   (set_local $2
    (i32.const 1)
   )
  )
  (get_local $2)
 )
 (func $malloc_usable_size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (br_if $label$0
    (i32.eq
     (tee_local $1
      (i32.and
       (tee_local $0
        (i32.load
         (i32.add
          (get_local $0)
          (i32.const -4)
         )
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 1)
    )
   )
   (set_local $2
    (i32.sub
     (i32.and
      (get_local $0)
      (i32.const -8)
     )
     (select
      (i32.const 4)
      (i32.const 8)
      (get_local $1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $memcpy (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (get_local $2)
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.and
         (get_local $1)
         (i32.const 3)
        )
       )
      )
      (set_local $4
       (get_local $0)
      )
      (block $label$4
       (loop $label$5
        (i32.store8
         (get_local $4)
         (i32.load8_u
          (get_local $1)
         )
        )
        (set_local $3
         (i32.add
          (get_local $2)
          (i32.const -1)
         )
        )
        (set_local $4
         (i32.add
          (get_local $4)
          (i32.const 1)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (br_if $label$4
         (i32.eq
          (get_local $2)
          (i32.const 1)
         )
        )
        (set_local $2
         (get_local $3)
        )
        (br_if $label$5
         (i32.and
          (get_local $1)
          (i32.const 3)
         )
        )
       )
      )
      (br_if $label$2
       (i32.eqz
        (i32.and
         (get_local $4)
         (i32.const 3)
        )
       )
      )
      (br $label$1)
     )
     (set_local $3
      (get_local $2)
     )
     (br_if $label$1
      (i32.and
       (tee_local $4
        (get_local $0)
       )
       (i32.const 3)
      )
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.lt_u
        (get_local $3)
        (i32.const 16)
       )
      )
      (set_local $10
       (i32.add
        (get_local $4)
        (tee_local $5
         (i32.add
          (tee_local $9
           (i32.and
            (tee_local $8
             (i32.add
              (get_local $3)
              (i32.const -16)
             )
            )
            (i32.const -16)
           )
          )
          (i32.const 16)
         )
        )
       )
      )
      (set_local $2
       (get_local $1)
      )
      (loop $label$8
       (i32.store
        (get_local $4)
        (i32.load
         (get_local $2)
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 4)
        )
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 12)
        )
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 16)
        )
       )
       (br_if $label$8
        (i32.gt_u
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const -16)
          )
         )
         (i32.const 15)
        )
       )
      )
      (set_local $3
       (i32.sub
        (get_local $8)
        (get_local $9)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (get_local $5)
       )
      )
      (br $label$6)
     )
     (set_local $10
      (get_local $4)
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (i32.and
        (get_local $3)
        (i32.const 8)
       )
      )
     )
     (i32.store
      (get_local $10)
      (i32.load
       (get_local $1)
      )
     )
     (i32.store offset=4
      (get_local $10)
      (i32.load offset=4
       (get_local $1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
     (set_local $10
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (i32.and
        (get_local $3)
        (i32.const 4)
       )
      )
     )
     (i32.store
      (get_local $10)
      (i32.load
       (get_local $1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
     (set_local $10
      (i32.add
       (get_local $10)
       (i32.const 4)
      )
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (i32.and
        (get_local $3)
        (i32.const 2)
       )
      )
     )
     (i32.store8
      (get_local $10)
      (i32.load8_u
       (get_local $1)
      )
     )
     (i32.store8 offset=1
      (get_local $10)
      (i32.load8_u offset=1
       (get_local $1)
      )
     )
     (set_local $10
      (i32.add
       (get_local $10)
       (i32.const 2)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (br_if $label$0
     (i32.eqz
      (i32.and
       (get_local $3)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $10)
     (i32.load8_u
      (get_local $1)
     )
    )
    (return
     (get_local $0)
    )
   )
   (block $label$12
    (block $label$13
     (block $label$14
      (block $label$15
       (block $label$16
        (block $label$17
         (block $label$18
          (br_if $label$18
           (i32.lt_u
            (get_local $3)
            (i32.const 32)
           )
          )
          (br_if $label$17
           (i32.eq
            (tee_local $2
             (i32.and
              (get_local $4)
              (i32.const 3)
             )
            )
            (i32.const 3)
           )
          )
          (br_if $label$16
           (i32.eq
            (get_local $2)
            (i32.const 2)
           )
          )
          (br_if $label$18
           (i32.ne
            (get_local $2)
            (i32.const 1)
           )
          )
          (i32.store8 offset=1
           (get_local $4)
           (i32.load8_u offset=1
            (get_local $1)
           )
          )
          (i32.store8
           (get_local $4)
           (tee_local $9
            (i32.load
             (get_local $1)
            )
           )
          )
          (i32.store8 offset=2
           (get_local $4)
           (i32.load8_u offset=2
            (get_local $1)
           )
          )
          (set_local $2
           (i32.add
            (get_local $4)
            (i32.const 3)
           )
          )
          (br_if $label$15
           (i32.lt_u
            (tee_local $10
             (i32.add
              (get_local $3)
              (i32.const -3)
             )
            )
            (i32.const 17)
           )
          )
          (set_local $8
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $5
           (i32.add
            (get_local $3)
            (i32.const -19)
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (tee_local $7
             (i32.add
              (tee_local $6
               (i32.and
                (i32.add
                 (get_local $3)
                 (i32.const -20)
                )
                (i32.const -16)
               )
              )
              (i32.const 19)
             )
            )
           )
          )
          (loop $label$19
           (i32.store
            (get_local $2)
            (i32.or
             (i32.shl
              (tee_local $3
               (i32.load
                (i32.add
                 (get_local $8)
                 (i32.const -12)
                )
               )
              )
              (i32.const 8)
             )
             (i32.shr_u
              (get_local $9)
              (i32.const 24)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
            (i32.or
             (i32.shl
              (tee_local $9
               (i32.load
                (i32.add
                 (get_local $8)
                 (i32.const -8)
                )
               )
              )
              (i32.const 8)
             )
             (i32.shr_u
              (get_local $3)
              (i32.const 24)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $2)
             (i32.const 8)
            )
            (i32.or
             (i32.shl
              (tee_local $3
               (i32.load
                (i32.add
                 (get_local $8)
                 (i32.const -4)
                )
               )
              )
              (i32.const 8)
             )
             (i32.shr_u
              (get_local $9)
              (i32.const 24)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $2)
             (i32.const 12)
            )
            (i32.or
             (i32.shl
              (tee_local $9
               (i32.load
                (get_local $8)
               )
              )
              (i32.const 8)
             )
             (i32.shr_u
              (get_local $3)
              (i32.const 24)
             )
            )
           )
           (set_local $2
            (i32.add
             (get_local $2)
             (i32.const 16)
            )
           )
           (set_local $8
            (i32.add
             (get_local $8)
             (i32.const 16)
            )
           )
           (br_if $label$19
            (i32.gt_u
             (tee_local $10
              (i32.add
               (get_local $10)
               (i32.const -16)
              )
             )
             (i32.const 16)
            )
           )
          )
          (set_local $10
           (i32.sub
            (get_local $5)
            (get_local $6)
           )
          )
          (set_local $2
           (i32.add
            (get_local $4)
            (get_local $7)
           )
          )
          (br $label$12)
         )
         (set_local $10
          (get_local $3)
         )
         (set_local $2
          (get_local $4)
         )
         (br $label$12)
        )
        (i32.store8
         (get_local $4)
         (tee_local $9
          (i32.load
           (get_local $1)
          )
         )
        )
        (set_local $2
         (i32.add
          (get_local $4)
          (i32.const 1)
         )
        )
        (br_if $label$14
         (i32.lt_u
          (tee_local $10
           (i32.add
            (get_local $3)
            (i32.const -1)
           )
          )
          (i32.const 19)
         )
        )
        (set_local $8
         (i32.add
          (get_local $1)
          (i32.const 16)
         )
        )
        (set_local $5
         (i32.add
          (get_local $3)
          (i32.const -17)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (tee_local $7
           (i32.add
            (tee_local $6
             (i32.and
              (i32.add
               (get_local $3)
               (i32.const -20)
              )
              (i32.const -16)
             )
            )
            (i32.const 17)
           )
          )
         )
        )
        (loop $label$20
         (i32.store
          (get_local $2)
          (i32.or
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $8)
               (i32.const -12)
              )
             )
            )
            (i32.const 24)
           )
           (i32.shr_u
            (get_local $9)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $2)
           (i32.const 4)
          )
          (i32.or
           (i32.shl
            (tee_local $9
             (i32.load
              (i32.add
               (get_local $8)
               (i32.const -8)
              )
             )
            )
            (i32.const 24)
           )
           (i32.shr_u
            (get_local $3)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $2)
           (i32.const 8)
          )
          (i32.or
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $8)
               (i32.const -4)
              )
             )
            )
            (i32.const 24)
           )
           (i32.shr_u
            (get_local $9)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $2)
           (i32.const 12)
          )
          (i32.or
           (i32.shl
            (tee_local $9
             (i32.load
              (get_local $8)
             )
            )
            (i32.const 24)
           )
           (i32.shr_u
            (get_local $3)
            (i32.const 8)
           )
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 16)
          )
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (i32.const 16)
          )
         )
         (br_if $label$20
          (i32.gt_u
           (tee_local $10
            (i32.add
             (get_local $10)
             (i32.const -16)
            )
           )
           (i32.const 18)
          )
         )
        )
        (set_local $10
         (i32.sub
          (get_local $5)
          (get_local $6)
         )
        )
        (set_local $2
         (i32.add
          (get_local $4)
          (get_local $7)
         )
        )
        (br $label$12)
       )
       (i32.store8
        (get_local $4)
        (tee_local $9
         (i32.load
          (get_local $1)
         )
        )
       )
       (i32.store8 offset=1
        (get_local $4)
        (i32.load8_u offset=1
         (get_local $1)
        )
       )
       (set_local $2
        (i32.add
         (get_local $4)
         (i32.const 2)
        )
       )
       (br_if $label$13
        (i32.lt_u
         (tee_local $10
          (i32.add
           (get_local $3)
           (i32.const -2)
          )
         )
         (i32.const 18)
        )
       )
       (set_local $8
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $5
        (i32.add
         (get_local $3)
         (i32.const -18)
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (tee_local $7
          (i32.add
           (tee_local $6
            (i32.and
             (i32.add
              (get_local $3)
              (i32.const -20)
             )
             (i32.const -16)
            )
           )
           (i32.const 18)
          )
         )
        )
       )
       (loop $label$21
        (i32.store
         (get_local $2)
         (i32.or
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $8)
              (i32.const -12)
             )
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (get_local $9)
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 4)
         )
         (i32.or
          (i32.shl
           (tee_local $9
            (i32.load
             (i32.add
              (get_local $8)
              (i32.const -8)
             )
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
         (i32.or
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $8)
              (i32.const -4)
             )
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (get_local $9)
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 12)
         )
         (i32.or
          (i32.shl
           (tee_local $9
            (i32.load
             (get_local $8)
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 16)
         )
        )
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 16)
         )
        )
        (br_if $label$21
         (i32.gt_u
          (tee_local $10
           (i32.add
            (get_local $10)
            (i32.const -16)
           )
          )
          (i32.const 17)
         )
        )
       )
       (set_local $10
        (i32.sub
         (get_local $5)
         (get_local $6)
        )
       )
       (set_local $2
        (i32.add
         (get_local $4)
         (get_local $7)
        )
       )
       (br $label$12)
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 3)
       )
      )
      (br $label$12)
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $label$12)
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (block $label$22
    (br_if $label$22
     (i32.eqz
      (i32.and
       (get_local $10)
       (i32.const 16)
      )
     )
    )
    (i32.store8 offset=1
     (get_local $2)
     (i32.load8_u offset=1
      (get_local $1)
     )
    )
    (i32.store8 offset=2
     (get_local $2)
     (i32.load8_u offset=2
      (get_local $1)
     )
    )
    (i32.store8 offset=3
     (get_local $2)
     (i32.load8_u offset=3
      (get_local $1)
     )
    )
    (i32.store8 offset=4
     (get_local $2)
     (i32.load8_u offset=4
      (get_local $1)
     )
    )
    (i32.store8 offset=5
     (get_local $2)
     (i32.load8_u offset=5
      (get_local $1)
     )
    )
    (i32.store8 offset=6
     (get_local $2)
     (i32.load8_u offset=6
      (get_local $1)
     )
    )
    (i32.store8 offset=7
     (get_local $2)
     (i32.load8_u offset=7
      (get_local $1)
     )
    )
    (i32.store8 offset=8
     (get_local $2)
     (i32.load8_u offset=8
      (get_local $1)
     )
    )
    (i32.store8 offset=9
     (get_local $2)
     (i32.load8_u offset=9
      (get_local $1)
     )
    )
    (i32.store8 offset=10
     (get_local $2)
     (i32.load8_u offset=10
      (get_local $1)
     )
    )
    (i32.store8 offset=11
     (get_local $2)
     (i32.load8_u offset=11
      (get_local $1)
     )
    )
    (i32.store8 offset=12
     (get_local $2)
     (i32.load8_u offset=12
      (get_local $1)
     )
    )
    (i32.store8 offset=13
     (get_local $2)
     (i32.load8_u offset=13
      (get_local $1)
     )
    )
    (i32.store8 offset=14
     (get_local $2)
     (i32.load8_u offset=14
      (get_local $1)
     )
    )
    (i32.store8
     (get_local $2)
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.store8 offset=15
     (get_local $2)
     (i32.load8_u offset=15
      (get_local $1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 16)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
   )
   (block $label$23
    (br_if $label$23
     (i32.eqz
      (i32.and
       (get_local $10)
       (i32.const 8)
      )
     )
    )
    (i32.store8
     (get_local $2)
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.store8 offset=1
     (get_local $2)
     (i32.load8_u offset=1
      (get_local $1)
     )
    )
    (i32.store8 offset=2
     (get_local $2)
     (i32.load8_u offset=2
      (get_local $1)
     )
    )
    (i32.store8 offset=3
     (get_local $2)
     (i32.load8_u offset=3
      (get_local $1)
     )
    )
    (i32.store8 offset=4
     (get_local $2)
     (i32.load8_u offset=4
      (get_local $1)
     )
    )
    (i32.store8 offset=5
     (get_local $2)
     (i32.load8_u offset=5
      (get_local $1)
     )
    )
    (i32.store8 offset=6
     (get_local $2)
     (i32.load8_u offset=6
      (get_local $1)
     )
    )
    (i32.store8 offset=7
     (get_local $2)
     (i32.load8_u offset=7
      (get_local $1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (block $label$24
    (br_if $label$24
     (i32.eqz
      (i32.and
       (get_local $10)
       (i32.const 4)
      )
     )
    )
    (i32.store8
     (get_local $2)
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.store8 offset=1
     (get_local $2)
     (i32.load8_u offset=1
      (get_local $1)
     )
    )
    (i32.store8 offset=2
     (get_local $2)
     (i32.load8_u offset=2
      (get_local $1)
     )
    )
    (i32.store8 offset=3
     (get_local $2)
     (i32.load8_u offset=3
      (get_local $1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 4)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
    )
   )
   (block $label$25
    (br_if $label$25
     (i32.eqz
      (i32.and
       (get_local $10)
       (i32.const 2)
      )
     )
    )
    (i32.store8
     (get_local $2)
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.store8 offset=1
     (get_local $2)
     (i32.load8_u offset=1
      (get_local $1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 2)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $10)
      (i32.const 1)
     )
    )
   )
   (i32.store8
    (get_local $2)
    (i32.load8_u
     (get_local $1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $memset (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (i32.store8
    (get_local $0)
    (get_local $1)
   )
   (i32.store8
    (i32.add
     (tee_local $6
      (i32.add
       (get_local $0)
       (get_local $2)
      )
     )
     (i32.const -1)
    )
    (get_local $1)
   )
   (br_if $label$0
    (i32.lt_u
     (get_local $2)
     (i32.const 3)
    )
   )
   (i32.store8 offset=2
    (get_local $0)
    (get_local $1)
   )
   (i32.store8 offset=1
    (get_local $0)
    (get_local $1)
   )
   (i32.store8
    (i32.add
     (get_local $6)
     (i32.const -3)
    )
    (get_local $1)
   )
   (i32.store8
    (i32.add
     (get_local $6)
     (i32.const -2)
    )
    (get_local $1)
   )
   (br_if $label$0
    (i32.lt_u
     (get_local $2)
     (i32.const 7)
    )
   )
   (i32.store8 offset=3
    (get_local $0)
    (get_local $1)
   )
   (i32.store8
    (i32.add
     (get_local $6)
     (i32.const -4)
    )
    (get_local $1)
   )
   (br_if $label$0
    (i32.lt_u
     (get_local $2)
     (i32.const 9)
    )
   )
   (i32.store
    (tee_local $6
     (i32.add
      (get_local $0)
      (tee_local $3
       (i32.and
        (i32.sub
         (i32.const 0)
         (get_local $0)
        )
        (i32.const 3)
       )
      )
     )
    )
    (tee_local $1
     (i32.mul
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
      (i32.const 16843009)
     )
    )
   )
   (i32.store
    (i32.add
     (tee_local $2
      (i32.add
       (get_local $6)
       (tee_local $3
        (i32.and
         (i32.sub
          (get_local $2)
          (get_local $3)
         )
         (i32.const -4)
        )
       )
      )
     )
     (i32.const -4)
    )
    (get_local $1)
   )
   (br_if $label$0
    (i32.lt_u
     (get_local $3)
     (i32.const 9)
    )
   )
   (i32.store offset=8
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=4
    (get_local $6)
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const -8)
    )
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const -12)
    )
    (get_local $1)
   )
   (br_if $label$0
    (i32.lt_u
     (get_local $3)
     (i32.const 25)
    )
   )
   (i32.store offset=16
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=12
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=20
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $6)
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const -24)
    )
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const -28)
    )
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const -20)
    )
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const -16)
    )
    (get_local $1)
   )
   (br_if $label$0
    (i32.lt_u
     (tee_local $2
      (i32.sub
       (get_local $3)
       (tee_local $4
        (i32.or
         (i32.and
          (get_local $6)
          (i32.const 4)
         )
         (i32.const 24)
        )
       )
      )
     )
     (i32.const 32)
    )
   )
   (set_local $5
    (i64.or
     (i64.shl
      (tee_local $5
       (i64.extend_u/i32
        (get_local $1)
       )
      )
      (i64.const 32)
     )
     (get_local $5)
    )
   )
   (set_local $1
    (i32.add
     (get_local $6)
     (get_local $4)
    )
   )
   (loop $label$1
    (i64.store
     (get_local $1)
     (get_local $5)
    )
    (i64.store
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
     (get_local $5)
    )
    (i64.store
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
     (get_local $5)
    )
    (i64.store
     (i32.add
      (get_local $1)
      (i32.const 24)
     )
     (get_local $5)
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 32)
     )
    )
    (br_if $label$1
     (i32.gt_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -32)
       )
      )
      (i32.const 31)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $sbrk (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.lt_s
        (get_local $0)
        (i32.const 0)
       )
      )
      (set_local $1
       (i32.shl
        (current_memory)
        (i32.const 16)
       )
      )
      (br_if $label$2
       (i32.ge_u
        (tee_local $2
         (i32.load offset=512
          (i32.const 0)
         )
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.eqz
        (grow_memory
         (i32.add
          (i32.shr_u
           (i32.sub
            (i32.add
             (get_local $0)
             (i32.const -1)
            )
            (get_local $2)
           )
           (i32.const 16)
          )
          (i32.const 1)
         )
        )
       )
      )
      (call $_grow)
      (i32.store offset=512
       (i32.const 0)
       (tee_local $2
        (i32.add
         (i32.sub
          (tee_local $3
           (i32.shl
            (current_memory)
            (i32.const 16)
           )
          )
          (get_local $1)
         )
         (i32.load offset=512
          (i32.const 0)
         )
        )
       )
      )
      (br $label$1)
     )
     (return
      (i32.const -1)
     )
    )
    (set_local $3
     (get_local $1)
    )
   )
   (i32.store offset=512
    (i32.const 0)
    (i32.sub
     (get_local $2)
     (get_local $0)
    )
   )
   (return
    (i32.sub
     (get_local $3)
     (get_local $2)
    )
   )
  )
  (i32.store
   (call $__errno_location)
   (i32.const 12)
  )
  (call $abort)
  (unreachable)
 )
)
