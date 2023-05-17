(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i64 i32) (result i64)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i32 i64 i64 i32)))
  (type (;11;) (func (param i32)))
  (type (;12;) (func (param i32 i32 i64 i32 i64 i32) (result i32)))
  (type (;13;) (func (param i32 i64 i64 i64 i64)))
  (type (;14;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;15;) (func (param i32 i64 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32 i64)))
  (type (;17;) (func (param i32 i32 i64 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i64)))
  (type (;19;) (func (param i32 i32 i64)))
  (type (;20;) (func (param i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i64 i64 i64)))
  (type (;22;) (func (param i32 i64 i64)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func (;0;) (type 15)))
  (import "wasi_snapshot_preview1" "fd_close" (func (;1;) (type 5)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func (;2;) (type 6)))
  (import "wasi_snapshot_preview1" "fd_seek" (func (;3;) (type 7)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;4;) (type 8)))
  (import "wasi_snapshot_preview1" "poll_oneoff" (func (;5;) (type 8)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;6;) (type 11)))
  (import "wasi_snapshot_preview1" "random_get" (func (;7;) (type 6)))
  (func (;8;) (type 1)
    nop)
  (func (;9;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    unreachable
    block  ;; label = @1
      i32.const 1051520
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 1051520
        i32.const 1
        i32.store
        global.get 0
        i32.const 32
        i32.sub
        local.tee 4
        global.set 0
        i32.const 99
        local.set 7
        global.get 0
        i32.const 16
        i32.sub
        local.tee 3
        global.set 0
        local.get 3
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        i32.const 1052104
        i32.load
        i32.const 1
        local.set 2
        i32.const 1052104
        i32.const 1
        i32.store
        local.get 3
        i64.const 0
        i64.store
        if  ;; label = @3
          loop  ;; label = @4
            i64.const 0
            local.set 16
            global.get 0
            i32.const 112
            i32.sub
            local.tee 1
            global.set 0
            block (result i32)  ;; label = @5
              local.get 1
              i32.const 104
              i32.add
              local.tee 0
              i64.const 0
              i64.store
              local.get 1
              i32.const 80
              i32.add
              local.tee 5
              i64.const 0
              i64.store
              local.get 1
              i32.const 96
              i32.add
              i64.const 0
              i64.store
              local.get 1
              i32.const 88
              i32.add
              i64.const 0
              i64.store
              local.get 1
              i32.const 72
              i32.add
              i64.const 0
              i64.store
              local.get 0
              i32.const 0
              i32.store16
              local.get 5
              i32.const 1048576
              i32.load
              i32.store
              local.get 1
              i64.const 0
              i64.store offset=64
              i32.const 28
              local.get 3
              i32.load offset=8
              local.tee 5
              i32.const 999999999
              i32.gt_u
              br_if 0 (;@5;)
              drop
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i64.load
                  local.tee 14
                  i64.const 0
                  i64.lt_s
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 0
                  i32.store offset=20
                  global.get 0
                  i32.const 96
                  i32.sub
                  local.tee 0
                  global.set 0
                  local.get 1
                  i32.const 20
                  i32.add
                  local.tee 6
                  i32.const 0
                  i32.store
                  local.get 0
                  i32.const 32
                  i32.add
                  local.tee 9
                  local.get 14
                  i64.const 1000000000
                  call 55
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 10
                  i64.const 0
                  i64.const 1000000000
                  call 55
                  local.get 0
                  i32.const 48
                  i32.add
                  local.tee 11
                  local.get 14
                  i64.const 0
                  call 55
                  local.get 0
                  i32.const -64
                  i32.sub
                  local.tee 12
                  i64.const 0
                  i64.const 0
                  call 55
                  local.get 0
                  i64.const 1000000000
                  i64.const 0
                  call 55
                  local.get 0
                  i32.const 80
                  i32.add
                  local.tee 13
                  i64.const 0
                  local.get 14
                  call 55
                  local.get 0
                  i64.load offset=48
                  local.tee 14
                  local.get 0
                  i64.load offset=16
                  local.tee 15
                  local.get 9
                  i32.const 8
                  i32.add
                  i64.load
                  i64.add
                  local.tee 17
                  i64.add
                  local.set 16
                  local.get 0
                  i64.load offset=32
                  local.set 18
                  local.get 0
                  i64.load offset=80
                  local.tee 19
                  local.get 0
                  i64.load
                  i64.add
                  local.tee 20
                  local.get 0
                  i64.load offset=64
                  local.tee 21
                  local.get 10
                  i32.const 8
                  i32.add
                  i64.load
                  local.get 15
                  local.get 17
                  i64.gt_u
                  i64.extend_i32_u
                  i64.add
                  local.tee 15
                  local.get 11
                  i32.const 8
                  i32.add
                  i64.load
                  local.get 14
                  local.get 16
                  i64.gt_u
                  i64.extend_i32_u
                  i64.add
                  i64.add
                  local.tee 17
                  i64.add
                  local.tee 14
                  i64.add
                  local.tee 22
                  local.get 16
                  i64.const 63
                  i64.shr_s
                  local.tee 23
                  i64.xor
                  local.get 14
                  local.get 22
                  i64.gt_u
                  i64.extend_i32_u
                  local.get 14
                  local.get 21
                  i64.lt_u
                  i64.extend_i32_u
                  local.get 12
                  i32.const 8
                  i32.add
                  i64.load
                  local.get 15
                  local.get 17
                  i64.gt_u
                  i64.extend_i32_u
                  i64.add
                  i64.add
                  local.get 19
                  local.get 20
                  i64.gt_u
                  i64.extend_i32_u
                  local.get 0
                  i32.const 8
                  i32.add
                  i64.load
                  local.get 13
                  i32.const 8
                  i32.add
                  i64.load
                  i64.add
                  i64.add
                  i64.add
                  i64.add
                  local.get 23
                  i64.xor
                  i64.or
                  i64.eqz
                  i32.eqz
                  if  ;; label = @8
                    local.get 6
                    i32.const 1
                    i32.store
                  end
                  local.get 1
                  local.get 18
                  i64.store
                  local.get 1
                  local.get 16
                  i64.store offset=8
                  local.get 0
                  i32.const 96
                  i32.add
                  global.set 0
                  i64.const -1
                  local.set 16
                  local.get 1
                  i32.const 8
                  i32.add
                  i64.load
                  local.tee 17
                  i64.const 1
                  i64.and
                  local.set 14
                  local.get 1
                  i32.load offset=20
                  i64.const 0
                  local.get 14
                  i64.sub
                  local.get 17
                  i64.xor
                  i64.const 0
                  i64.ne
                  i32.or
                  br_if 0 (;@7;)
                  local.get 1
                  i64.load
                  local.tee 15
                  i64.const -512
                  i64.and
                  local.get 15
                  i64.xor
                  local.get 14
                  i64.or
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  i64.const 0
                  local.get 15
                  local.get 15
                  local.get 5
                  i64.extend_i32_u
                  i64.add
                  local.tee 14
                  i64.gt_u
                  i64.extend_i32_u
                  local.get 17
                  i64.const 1
                  i64.and
                  i64.sub
                  local.tee 17
                  i64.const 1
                  i64.and
                  i64.sub
                  local.set 15
                  local.get 15
                  local.get 17
                  i64.xor
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 15
                  i64.const 0
                  i64.ge_s
                  br_if 1 (;@6;)
                end
                local.get 16
                local.set 14
              end
              local.get 1
              local.get 14
              i64.store offset=88
              i32.const 58
              i32.const 0
              local.get 1
              i32.const -64
              i32.sub
              local.get 1
              i32.const 24
              i32.add
              i32.const 1
              local.get 1
              i32.const 60
              i32.add
              call 5
              i32.const 65535
              i32.and
              local.get 1
              i32.load16_u offset=32
              i32.or
              select
            end
            local.set 0
            local.get 1
            i32.const 112
            i32.add
            global.set 0
            local.get 0
            if  ;; label = @5
              i32.const 1051524
              local.get 0
              i32.store
            end
            i32.const 1052104
            i32.load
            i32.const 1052104
            i32.const 1
            i32.store
            br_if 0 (;@4;)
          end
        end
        i32.const 1052100
        i32.load
        i32.eqz
        if  ;; label = @3
          call 24
          i32.const 1052096
          i32.load
          i32.load offset=8
          local.tee 0
          if  ;; label = @4
            local.get 0
            call_indirect (type 1)
          end
          call 24
          i32.const 1052080
          i32.const 16
          i32.const 1052096
          i32.load
          i32.load offset=16
          call_indirect (type 2)
          i32.const 1052100
          i32.const 1
          i32.store
          i32.const 0
          local.set 2
        end
        i32.const 1052104
        i32.const 0
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set 0
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.eqz
            if  ;; label = @5
              i32.const 1052096
              i32.const 1051272
              i32.store
              local.get 4
              i32.const 16
              i32.add
              call 26
              br_if 1 (;@4;)
              local.get 4
              i64.load offset=24
              local.set 16
              local.get 4
              i64.load offset=16
              local.set 14
              i32.const 200
              local.set 7
              loop  ;; label = @6
                i32.const 0
                local.set 2
                global.get 0
                i32.const 240
                i32.sub
                local.tee 1
                global.set 0
                global.get 0
                i32.const 96
                i32.sub
                local.tee 0
                global.set 0
                local.get 1
                call 32
                local.get 0
                i32.const 88
                i32.add
                local.tee 6
                i64.const 3906369333256140342
                i64.store
                local.get 0
                i32.const 80
                i32.add
                local.tee 9
                i64.const 3906369333256140342
                i64.store
                local.get 0
                i32.const 72
                i32.add
                local.tee 10
                i64.const 3906369333256140342
                i64.store
                local.get 0
                i32.const -64
                i32.sub
                local.tee 11
                i64.const 3906369333256140342
                i64.store
                local.get 0
                i32.const 56
                i32.add
                local.tee 12
                i64.const 3906369333256140342
                i64.store
                local.get 0
                i32.const 48
                i32.add
                local.tee 13
                i64.const 3906369333256140342
                i64.store
                local.get 0
                i64.const 3906369333256140342
                i64.store offset=40
                local.get 0
                i64.const 3906369333256140342
                i64.store offset=32
                loop  ;; label = @7
                  local.get 0
                  i32.const 32
                  i32.add
                  local.get 2
                  i32.add
                  local.tee 3
                  local.get 3
                  i32.load8_u
                  local.get 2
                  i32.const 1051488
                  i32.add
                  local.tee 5
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 8
                  local.get 8
                  i32.load8_u
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 3
                  i32.const 2
                  i32.add
                  local.tee 8
                  local.get 8
                  i32.load8_u
                  local.get 5
                  i32.const 2
                  i32.add
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 3
                  i32.const 3
                  i32.add
                  local.tee 3
                  local.get 3
                  i32.load8_u
                  local.get 5
                  i32.const 3
                  i32.add
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 2
                  i32.const 4
                  i32.add
                  local.tee 2
                  i32.const 32
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 1
                local.get 0
                i32.const 32
                i32.add
                i64.const 64
                call 33
                local.get 1
                i32.const 104
                i32.add
                local.tee 8
                call 32
                local.get 6
                i64.const 6655295901103053916
                i64.store
                local.get 9
                i64.const 6655295901103053916
                i64.store
                local.get 10
                i64.const 6655295901103053916
                i64.store
                local.get 11
                i64.const 6655295901103053916
                i64.store
                local.get 12
                i64.const 6655295901103053916
                i64.store
                local.get 13
                i64.const 6655295901103053916
                i64.store
                local.get 0
                i64.const 6655295901103053916
                i64.store offset=40
                local.get 0
                i64.const 6655295901103053916
                i64.store offset=32
                i32.const 0
                local.set 2
                loop  ;; label = @7
                  local.get 0
                  i32.const 32
                  i32.add
                  local.get 2
                  i32.add
                  local.tee 3
                  local.get 3
                  i32.load8_u
                  local.get 2
                  i32.const 1051488
                  i32.add
                  local.tee 5
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 6
                  local.get 6
                  i32.load8_u
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 3
                  i32.const 2
                  i32.add
                  local.tee 6
                  local.get 6
                  i32.load8_u
                  local.get 5
                  i32.const 2
                  i32.add
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 3
                  i32.const 3
                  i32.add
                  local.tee 3
                  local.get 3
                  i32.load8_u
                  local.get 5
                  i32.const 3
                  i32.add
                  i32.load8_u
                  i32.xor
                  i32.store8
                  local.get 2
                  i32.const 4
                  i32.add
                  local.tee 2
                  i32.const 32
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 8
                local.get 0
                i32.const 32
                i32.add
                local.tee 2
                i64.const 64
                call 33
                local.get 2
                i32.const 64
                call 17
                local.get 0
                i32.const 32
                call 17
                local.get 0
                i32.const 96
                i32.add
                global.set 0
                local.get 1
                i32.const 1051424
                i64.const 50
                call 33
                local.get 1
                local.get 1
                i32.const 208
                i32.add
                local.tee 0
                call 35
                local.get 1
                i32.const 104
                i32.add
                local.tee 2
                local.get 0
                i64.const 32
                call 33
                local.get 2
                i32.const 1053760
                call 35
                local.get 0
                i32.const 32
                call 17
                local.get 1
                i32.const 240
                i32.add
                global.set 0
                local.get 7
                i32.const 1
                i32.sub
                local.tee 7
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 7
              local.get 4
              i32.const 16
              i32.add
              call 26
              br_if 1 (;@4;)
              local.get 4
              local.get 4
              i64.load offset=24
              local.get 16
              i64.sub
              local.get 4
              i64.load offset=16
              local.get 14
              i64.sub
              i64.const 1000000
              i64.mul
              i64.add
              i64.const 1000000
              i64.mul
              i64.const 200
              i64.div_u
              i64.store
              global.get 0
              i32.const 16
              i32.sub
              local.tee 1
              global.set 0
              local.get 1
              local.get 4
              i32.store offset=12
              global.get 0
              i32.const 288
              i32.sub
              local.tee 0
              global.set 0
              local.get 0
              local.get 4
              i32.store offset=284
              local.get 0
              i32.const 240
              i32.add
              local.tee 2
              i32.const 32
              i32.add
              i64.const 0
              i64.store
              local.get 0
              i32.const 264
              i32.add
              i64.const 0
              i64.store
              local.get 0
              i32.const 256
              i32.add
              i64.const 0
              i64.store
              local.get 0
              i64.const 0
              i64.store offset=248
              local.get 0
              i64.const 0
              i64.store offset=240
              local.get 0
              local.get 4
              i32.store offset=280
              i32.const 0
              local.get 0
              i32.const 280
              i32.add
              local.get 0
              i32.const 80
              i32.add
              local.get 2
              call 45
              i32.const 0
              i32.ge_s
              if  ;; label = @6
                i32.const 1051296
                i32.load
                local.set 3
                i32.const 1051356
                i32.load
                i32.const 0
                i32.le_s
                if  ;; label = @7
                  i32.const 1051296
                  local.get 3
                  i32.const -33
                  i32.and
                  i32.store
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1051340
                      i32.load
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1051340
                        i32.const 80
                        i32.store
                        i32.const 1051320
                        i32.const 0
                        i32.store
                        i32.const 1051312
                        i64.const 0
                        i64.store
                        i32.const 1051336
                        i32.load
                        local.set 2
                        i32.const 1051336
                        local.get 0
                        i32.store
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.set 2
                      i32.const 1051312
                      i32.load
                      br_if 1 (;@8;)
                    end
                    i32.const 1051296
                    call 41
                    br_if 1 (;@7;)
                  end
                  i32.const 1051296
                  local.get 0
                  i32.const 280
                  i32.add
                  local.get 0
                  i32.const 80
                  i32.add
                  local.get 0
                  i32.const 240
                  i32.add
                  call 45
                  drop
                end
                local.get 3
                i32.const 32
                i32.and
                local.set 3
                local.get 2
                if  ;; label = @7
                  i32.const 1051296
                  i32.const 0
                  i32.const 0
                  i32.const 1051328
                  i32.load
                  call_indirect (type 0)
                  drop
                  i32.const 1051340
                  i32.const 0
                  i32.store
                  i32.const 1051336
                  local.get 2
                  i32.store
                  i32.const 1051320
                  i32.const 0
                  i32.store
                  i32.const 1051316
                  i32.load
                  drop
                  i32.const 1051312
                  i64.const 0
                  i64.store
                end
                i32.const 1051296
                i32.const 1051296
                i32.load
                local.get 3
                i32.or
                i32.store
              end
              local.get 0
              i32.const 288
              i32.add
              global.set 0
              local.get 1
              i32.const 16
              i32.add
              global.set 0
            end
            local.get 4
            i32.const 32
            i32.add
            global.set 0
            br 1 (;@3;)
          end
          unreachable
        end
        i32.const 1053720
        i32.load
        local.tee 0
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=24
            i32.ne
            if  ;; label = @5
              local.get 0
              i32.const 0
              i32.const 0
              local.get 0
              i32.load offset=32
              call_indirect (type 0)
              drop
            end
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 0
            i32.load offset=8
            local.tee 2
            i32.ne
            if  ;; label = @5
              local.get 0
              local.get 1
              local.get 2
              i32.sub
              i64.extend_i32_s
              i32.const 1
              local.get 0
              i32.load offset=36
              call_indirect (type 4)
              drop
            end
            local.get 0
            i32.load offset=52
            local.tee 0
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          i32.const 1053724
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.ne
          if  ;; label = @4
            local.get 0
            i32.const 0
            i32.const 0
            local.get 0
            i32.load offset=32
            call_indirect (type 0)
            drop
          end
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 4)
          drop
        end
        block  ;; label = @3
          i32.const 1051408
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.ne
          if  ;; label = @4
            local.get 0
            i32.const 0
            i32.const 0
            local.get 0
            i32.load offset=32
            call_indirect (type 0)
            drop
          end
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 4)
          drop
        end
        block  ;; label = @3
          i32.const 1053724
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.ne
          if  ;; label = @4
            local.get 0
            i32.const 0
            i32.const 0
            local.get 0
            i32.load offset=32
            call_indirect (type 0)
            drop
          end
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 4)
          drop
        end
        local.get 7
        br_if 1 (;@1;)
        return
      end
      unreachable
    end
    local.get 7
    call 6
    unreachable)
  (func (;10;) (type 3) (result i32)
    i32.const 0)
  (func (;11;) (type 6) (param i32 i32) (result i32)
    (local i32)
    i32.const 29
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 256
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call 7
      i32.const 65535
      i32.and
      local.tee 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 1051524
    local.get 2
    i32.store
    i32.const -1)
  (func (;12;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    i32.const 1051528
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 1051536
      i32.const 32
      call 11
      drop
      i32.const 1051528
      i64.const 2199023255553
      i64.store align=4
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1051532
      i32.load
      local.set 3
      local.get 2
      i32.const 48
      i32.add
      local.set 6
      local.get 2
      i32.const 16
      i32.add
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 512
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 512
          i32.ge_u
          if  ;; label = @4
            loop  ;; label = @5
              local.get 6
              i64.const 0
              i64.store
              local.get 4
              i32.const 1051536
              i64.load align=4
              i64.store align=4
              local.get 4
              i32.const 8
              i32.add
              i32.const 1051544
              i64.load align=4
              i64.store align=4
              local.get 4
              i32.const 16
              i32.add
              i32.const 1051552
              i64.load align=4
              i64.store align=4
              local.get 4
              i32.const 24
              i32.add
              i32.const 1051560
              i64.load align=4
              i64.store align=4
              local.get 6
              i32.const 8
              i32.add
              i64.const 0
              i64.store
              local.get 2
              i32.const 1048600
              i64.load
              i64.store offset=8
              local.get 2
              i32.const 1048592
              i64.load
              i64.store
              local.get 0
              local.get 5
              i32.add
              local.tee 3
              local.get 2
              call 13
              i32.const 1051560
              local.get 3
              i32.const 24
              i32.add
              i64.load align=1
              i64.store align=4
              i32.const 1051552
              local.get 3
              i32.const 16
              i32.add
              i64.load align=1
              i64.store align=4
              i32.const 1051544
              local.get 3
              i32.const 8
              i32.add
              i64.load align=1
              i64.store align=4
              i32.const 1051536
              local.get 3
              i64.load align=1
              i64.store align=4
              local.get 3
              local.get 2
              call 13
              local.get 3
              i32.const -64
              i32.sub
              local.get 2
              call 13
              local.get 3
              i32.const 128
              i32.add
              local.get 2
              call 13
              local.get 3
              i32.const 192
              i32.add
              local.get 2
              call 13
              local.get 3
              i32.const 256
              i32.add
              local.get 2
              call 13
              local.get 3
              i32.const 320
              i32.add
              local.get 2
              call 13
              local.get 3
              i32.const 384
              i32.add
              local.get 2
              call 13
              local.get 3
              i32.const 448
              i32.add
              local.get 2
              call 13
              local.get 5
              i32.const 512
              i32.add
              local.set 5
              local.get 1
              i32.const 512
              i32.sub
              local.tee 1
              i32.const 511
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 6
          i64.const 0
          i64.store
          local.get 4
          i32.const 1051536
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 8
          i32.add
          i32.const 1051544
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 16
          i32.add
          i32.const 1051552
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 24
          i32.add
          i32.const 1051560
          i64.load align=4
          i64.store align=4
          local.get 6
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 2
          i32.const 1048600
          i64.load
          i64.store offset=8
          local.get 2
          i32.const 1048592
          i64.load
          i64.store
          i32.const 1051568
          local.get 2
          call 13
          i32.const 1051560
          i32.const 1051592
          i64.load align=4
          i64.store align=4
          i32.const 1051552
          i32.const 1051584
          i64.load align=4
          i64.store align=4
          i32.const 1051544
          i32.const 1051576
          i64.load align=4
          i64.store align=4
          i32.const 1051536
          i32.const 1051568
          i64.load align=4
          i64.store align=4
          i32.const 1051568
          local.get 2
          call 13
          i32.const 1051632
          local.get 2
          call 13
          i32.const 1051696
          local.get 2
          call 13
          i32.const 1051760
          local.get 2
          call 13
          i32.const 1051824
          local.get 2
          call 13
          i32.const 1051888
          local.get 2
          call 13
          i32.const 1051952
          local.get 2
          call 13
          i32.const 1052016
          local.get 2
          call 13
          i32.const 1051532
          i32.const 0
          i32.store
          i32.const 0
          local.set 3
        end
        local.get 0
        local.get 5
        i32.add
        local.get 3
        i32.const 1051568
        i32.add
        local.get 1
        i32.const 512
        local.get 3
        i32.sub
        local.tee 3
        local.get 1
        local.get 3
        i32.lt_u
        select
        local.tee 7
        memory.copy
        i32.const 1051532
        i32.load
        i32.const 1051568
        i32.add
        i32.const 0
        local.get 7
        memory.fill
        i32.const 1051532
        i32.const 1051532
        i32.load
        local.get 7
        i32.add
        local.tee 3
        i32.store
        local.get 5
        local.get 7
        i32.add
        local.set 5
        local.get 1
        local.get 7
        i32.sub
        local.tee 1
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;13;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const -2
    local.set 22
    local.get 1
    i32.load offset=16
    local.tee 23
    local.set 5
    local.get 1
    i32.load
    local.tee 24
    local.set 6
    local.get 1
    i32.load offset=48
    local.tee 25
    local.set 7
    local.get 1
    i32.load offset=32
    local.tee 26
    local.set 8
    local.get 1
    i32.load offset=20
    local.tee 27
    local.set 2
    local.get 1
    i32.load offset=4
    local.tee 28
    local.set 9
    local.get 1
    i32.load offset=52
    local.tee 29
    local.set 10
    local.get 1
    i32.load offset=36
    local.tee 30
    local.set 14
    local.get 1
    i32.load offset=24
    local.tee 31
    local.set 3
    local.get 1
    i32.load offset=8
    local.tee 32
    local.set 15
    local.get 1
    i32.load offset=56
    local.tee 33
    local.set 16
    local.get 1
    i32.load offset=40
    local.tee 34
    local.set 11
    local.get 1
    i32.load offset=28
    local.tee 35
    local.set 4
    local.get 1
    i32.load offset=12
    local.tee 36
    local.set 17
    local.get 1
    i32.load offset=60
    local.tee 37
    local.set 12
    local.get 1
    i32.load offset=44
    local.tee 38
    local.set 13
    loop  ;; label = @1
      local.get 4
      local.get 17
      i32.add
      local.tee 17
      local.get 12
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 12
      local.get 13
      i32.add
      local.tee 13
      local.get 4
      i32.xor
      i32.const 12
      i32.rotl
      local.set 4
      local.get 3
      local.get 15
      i32.add
      local.tee 15
      local.get 16
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 16
      local.get 11
      i32.add
      local.tee 11
      local.get 3
      i32.xor
      i32.const 12
      i32.rotl
      local.set 3
      local.get 2
      local.get 9
      i32.add
      local.tee 9
      local.get 10
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 10
      local.get 14
      i32.add
      local.tee 14
      local.get 2
      i32.xor
      i32.const 12
      i32.rotl
      local.set 2
      local.get 2
      local.get 9
      i32.add
      local.tee 9
      local.get 10
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 10
      local.get 14
      i32.add
      local.tee 18
      local.get 3
      local.get 15
      i32.add
      local.tee 15
      local.get 16
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 19
      local.get 4
      local.get 17
      i32.add
      local.tee 20
      local.get 5
      local.get 5
      local.get 6
      i32.add
      local.tee 5
      local.get 7
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 6
      local.get 8
      i32.add
      local.tee 7
      i32.xor
      i32.const 12
      i32.rotl
      local.tee 8
      local.get 7
      local.get 6
      local.get 5
      local.get 8
      i32.add
      local.tee 6
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 7
      i32.add
      local.tee 8
      i32.xor
      i32.const 7
      i32.rotl
      local.tee 14
      i32.add
      local.tee 16
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 21
      i32.add
      local.set 5
      local.get 5
      local.get 21
      local.get 16
      local.get 5
      local.get 14
      i32.xor
      i32.const 12
      i32.rotl
      local.tee 39
      i32.add
      local.tee 17
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 16
      i32.add
      local.tee 14
      local.get 39
      i32.xor
      i32.const 7
      i32.rotl
      local.set 5
      local.get 8
      local.get 10
      local.get 12
      local.get 20
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 12
      local.get 13
      i32.add
      local.tee 13
      local.get 4
      i32.xor
      i32.const 7
      i32.rotl
      local.tee 8
      local.get 15
      i32.add
      local.tee 10
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 20
      i32.add
      local.set 4
      local.get 4
      local.get 20
      local.get 4
      local.get 8
      i32.xor
      i32.const 12
      i32.rotl
      local.tee 21
      local.get 10
      i32.add
      local.tee 15
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 10
      i32.add
      local.tee 8
      local.get 21
      i32.xor
      i32.const 7
      i32.rotl
      local.set 4
      local.get 13
      local.get 7
      local.get 11
      local.get 19
      i32.add
      local.tee 11
      local.get 3
      i32.xor
      i32.const 7
      i32.rotl
      local.tee 7
      local.get 9
      i32.add
      local.tee 9
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 13
      i32.add
      local.set 3
      local.get 3
      local.get 13
      local.get 3
      local.get 7
      i32.xor
      i32.const 12
      i32.rotl
      local.tee 19
      local.get 9
      i32.add
      local.tee 9
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 7
      i32.add
      local.tee 13
      local.get 19
      i32.xor
      i32.const 7
      i32.rotl
      local.set 3
      local.get 11
      local.get 6
      local.get 2
      local.get 18
      i32.xor
      i32.const 7
      i32.rotl
      local.tee 6
      i32.add
      local.tee 11
      local.get 12
      i32.xor
      i32.const 16
      i32.rotl
      local.tee 12
      i32.add
      local.set 2
      local.get 2
      local.get 12
      local.get 2
      local.get 6
      i32.xor
      i32.const 12
      i32.rotl
      local.tee 18
      local.get 11
      i32.add
      local.tee 6
      i32.xor
      i32.const 8
      i32.rotl
      local.tee 12
      i32.add
      local.tee 11
      local.get 18
      i32.xor
      i32.const 7
      i32.rotl
      local.set 2
      local.get 22
      i32.const 2
      i32.add
      local.tee 22
      i32.const 18
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 1
    local.get 7
    i32.store offset=48
    local.get 1
    local.get 6
    i32.store
    local.get 1
    local.get 5
    i32.store offset=16
    local.get 1
    local.get 8
    i32.store offset=32
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    local.get 10
    i32.store offset=52
    local.get 1
    local.get 9
    i32.store offset=4
    local.get 1
    local.get 14
    i32.store offset=36
    local.get 1
    local.get 3
    i32.store offset=24
    local.get 1
    local.get 16
    i32.store offset=56
    local.get 1
    local.get 15
    i32.store offset=8
    local.get 1
    local.get 11
    i32.store offset=40
    local.get 1
    local.get 4
    i32.store offset=28
    local.get 1
    local.get 12
    i32.store offset=60
    local.get 1
    local.get 17
    i32.store offset=12
    local.get 1
    local.get 13
    i32.store offset=44
    local.get 0
    local.get 12
    local.get 37
    i32.add
    i32.store offset=60 align=1
    local.get 0
    local.get 16
    local.get 33
    i32.add
    i32.store offset=56 align=1
    local.get 0
    local.get 10
    local.get 29
    i32.add
    i32.store offset=52 align=1
    local.get 0
    local.get 7
    local.get 25
    i32.add
    i32.store offset=48 align=1
    local.get 0
    local.get 13
    local.get 38
    i32.add
    i32.store offset=44 align=1
    local.get 0
    local.get 11
    local.get 34
    i32.add
    i32.store offset=40 align=1
    local.get 0
    local.get 14
    local.get 30
    i32.add
    i32.store offset=36 align=1
    local.get 0
    local.get 8
    local.get 26
    i32.add
    i32.store offset=32 align=1
    local.get 0
    local.get 4
    local.get 35
    i32.add
    i32.store offset=28 align=1
    local.get 0
    local.get 3
    local.get 31
    i32.add
    i32.store offset=24 align=1
    local.get 0
    local.get 2
    local.get 27
    i32.add
    i32.store offset=20 align=1
    local.get 0
    local.get 5
    local.get 23
    i32.add
    i32.store offset=16 align=1
    local.get 0
    local.get 17
    local.get 36
    i32.add
    i32.store offset=12 align=1
    local.get 0
    local.get 15
    local.get 32
    i32.add
    i32.store offset=8 align=1
    local.get 0
    local.get 9
    local.get 28
    i32.add
    i32.store offset=4 align=1
    local.get 0
    local.get 6
    local.get 24
    i32.add
    i32.store align=1
    local.get 1
    local.get 1
    i32.load offset=48
    i32.const 1
    i32.add
    i32.store offset=48)
  (func (;14;) (type 3) (result i32)
    i32.const 1048641)
  (func (;15;) (type 3) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 4
    call 12
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;16;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 12)
  (func (;17;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 3
      i32.and
      local.set 3
      i32.const 0
      local.set 0
      local.get 1
      i32.const 1
      i32.sub
      i32.const 3
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const -4
        i32.and
        local.set 1
        loop  ;; label = @3
          local.get 2
          i32.load offset=12
          local.get 0
          i32.add
          i32.const 0
          i32.store8
          local.get 2
          i32.load offset=12
          local.get 0
          i32.add
          i32.const 1
          i32.add
          i32.const 0
          i32.store8
          local.get 2
          i32.load offset=12
          local.get 0
          i32.add
          i32.const 2
          i32.add
          i32.const 0
          i32.store8
          local.get 2
          i32.load offset=12
          local.get 0
          i32.add
          i32.const 3
          i32.add
          i32.const 0
          i32.store8
          local.get 1
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.load offset=12
        local.get 0
        i32.add
        i32.const 0
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const 1
        i32.sub
        local.tee 3
        br_if 0 (;@2;)
      end
    end)
  (func (;18;) (type 7) (param i32 i64 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 4
    global.set 0
    local.get 1
    i64.eqz
    i32.eqz
    if  ;; label = @1
      local.get 4
      i64.const 7719281312240119090
      i64.store offset=8
      local.get 4
      i64.const 3684054920433006693
      i64.store
      local.get 4
      i64.const 0
      i64.store offset=48
      local.get 4
      local.get 3
      i32.load align=1
      i32.store offset=16
      local.get 4
      local.get 2
      i64.load align=1
      i64.store offset=56
      local.get 4
      local.get 3
      i32.const 4
      i32.add
      i64.load align=1
      i64.store offset=20 align=4
      local.get 4
      local.get 3
      i32.const 12
      i32.add
      i64.load align=1
      i64.store offset=28 align=4
      local.get 4
      local.get 3
      i32.const 20
      i32.add
      i64.load align=1
      i64.store offset=36 align=4
      local.get 4
      local.get 3
      i32.const 28
      i32.add
      i32.load align=1
      i32.store offset=44
      local.get 0
      i32.const 0
      local.get 1
      i32.wrap_i64
      memory.fill
      local.get 4
      local.get 0
      local.get 0
      local.get 1
      call 19
      local.get 4
      i32.const 64
      call 17
    end
    local.get 4
    i32.const -64
    i32.sub
    global.set 0
    i32.const 0)
  (func (;19;) (type 16) (param i32 i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.set 8
    local.get 0
    i32.const 60
    i32.add
    i32.load
    local.set 29
    local.get 0
    i32.const 56
    i32.add
    i32.load
    local.set 30
    local.get 0
    i32.const 52
    i32.add
    i32.load
    local.set 20
    local.get 0
    i32.const 48
    i32.add
    i32.load
    local.set 21
    local.get 0
    i32.const 44
    i32.add
    i32.load
    local.set 31
    local.get 0
    i32.const 40
    i32.add
    i32.load
    local.set 32
    local.get 0
    i32.const 36
    i32.add
    i32.load
    local.set 33
    local.get 0
    i32.const 32
    i32.add
    i32.load
    local.set 34
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 35
    local.get 0
    i32.const 24
    i32.add
    i32.load
    local.set 36
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 37
    local.get 0
    i32.const 16
    i32.add
    i32.load
    local.set 38
    local.get 0
    i32.const 12
    i32.add
    i32.load
    local.set 39
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 40
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 41
    local.get 0
    i32.load
    local.set 42
    loop  ;; label = @1
      block  ;; label = @2
        local.get 3
        i64.const 63
        i64.gt_u
        if  ;; label = @3
          local.get 2
          local.set 4
          br 1 (;@2;)
        end
        local.get 8
        i32.const 56
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i32.const 48
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i32.const 40
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i64.const 0
        i64.store offset=8
        local.get 8
        i64.const 0
        i64.store
        local.get 3
        i64.eqz
        i32.eqz
        if  ;; label = @3
          i32.const 0
          local.set 5
          loop  ;; label = @4
            local.get 5
            local.get 8
            i32.add
            local.get 1
            local.get 5
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i64.extend_i32_u
            i64.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 8
        local.tee 4
        local.set 1
        local.get 2
        local.set 43
      end
      i32.const -20
      local.set 25
      local.get 42
      local.set 11
      local.get 41
      local.set 12
      local.get 40
      local.set 13
      local.get 39
      local.set 17
      local.get 38
      local.set 5
      local.get 37
      local.set 2
      local.get 36
      local.set 9
      local.get 35
      local.set 10
      local.get 34
      local.set 14
      local.get 33
      local.set 22
      local.get 32
      local.set 6
      local.get 29
      local.set 15
      local.get 30
      local.set 23
      local.get 20
      local.set 7
      local.get 21
      local.set 18
      local.get 31
      local.set 16
      loop  ;; label = @2
        local.get 10
        local.get 17
        i32.add
        local.tee 17
        local.get 15
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 15
        local.get 16
        i32.add
        local.tee 16
        local.get 10
        i32.xor
        i32.const 12
        i32.rotl
        local.set 10
        local.get 6
        local.get 9
        local.get 13
        i32.add
        local.tee 13
        local.get 23
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 6
        i32.add
        local.tee 19
        local.get 9
        i32.xor
        i32.const 12
        i32.rotl
        local.set 9
        local.get 22
        local.get 2
        local.get 12
        i32.add
        local.tee 12
        local.get 7
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 22
        i32.add
        local.tee 23
        local.get 2
        i32.xor
        i32.const 12
        i32.rotl
        local.set 2
        local.get 5
        local.get 5
        local.get 11
        i32.add
        local.tee 5
        local.get 18
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 11
        local.get 14
        i32.add
        local.tee 14
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 7
        local.get 11
        local.get 5
        local.get 7
        i32.add
        local.tee 11
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 18
        local.get 14
        i32.add
        local.tee 14
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 7
        local.get 10
        local.get 17
        i32.add
        local.tee 24
        i32.add
        local.tee 17
        local.get 9
        local.get 13
        i32.add
        local.tee 13
        local.get 6
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 6
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 26
        local.get 2
        local.get 12
        i32.add
        local.tee 12
        local.get 22
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 27
        local.get 23
        i32.add
        local.tee 28
        i32.add
        local.set 5
        local.get 5
        local.get 26
        local.get 5
        local.get 7
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 7
        local.get 17
        i32.add
        local.tee 17
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 23
        i32.add
        local.tee 22
        local.get 7
        i32.xor
        i32.const 7
        i32.rotl
        local.set 5
        local.get 14
        local.get 13
        local.get 15
        local.get 24
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 15
        local.get 16
        i32.add
        local.tee 16
        local.get 10
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 13
        i32.add
        local.tee 14
        local.get 27
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 7
        i32.add
        local.set 10
        local.get 10
        local.get 7
        local.get 10
        local.get 13
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 24
        local.get 14
        i32.add
        local.tee 13
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 7
        i32.add
        local.tee 14
        local.get 24
        i32.xor
        i32.const 7
        i32.rotl
        local.set 10
        local.get 16
        local.get 18
        local.get 12
        local.get 6
        local.get 19
        i32.add
        local.tee 6
        local.get 9
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 12
        i32.add
        local.tee 18
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 16
        i32.add
        local.set 9
        local.get 9
        local.get 16
        local.get 9
        local.get 12
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 19
        local.get 18
        i32.add
        local.tee 12
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 18
        i32.add
        local.tee 16
        local.get 19
        i32.xor
        i32.const 7
        i32.rotl
        local.set 9
        local.get 6
        local.get 11
        local.get 2
        local.get 28
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 11
        i32.add
        local.tee 6
        local.get 15
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 15
        i32.add
        local.set 2
        local.get 2
        local.get 15
        local.get 2
        local.get 11
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 19
        local.get 6
        i32.add
        local.tee 11
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 15
        i32.add
        local.tee 6
        local.get 19
        i32.xor
        i32.const 7
        i32.rotl
        local.set 2
        local.get 25
        i32.const 2
        i32.add
        local.tee 25
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 4
      i32.add
      i32.load align=1
      local.set 25
      local.get 1
      i32.const 8
      i32.add
      i32.load align=1
      local.set 19
      local.get 1
      i32.const 12
      i32.add
      i32.load align=1
      local.set 24
      local.get 1
      i32.const 16
      i32.add
      i32.load align=1
      local.set 26
      local.get 1
      i32.const 20
      i32.add
      i32.load align=1
      local.set 27
      local.get 1
      i32.const 24
      i32.add
      i32.load align=1
      local.set 28
      local.get 1
      i32.const 28
      i32.add
      i32.load align=1
      local.set 44
      local.get 1
      i32.const 32
      i32.add
      i32.load align=1
      local.set 45
      local.get 1
      i32.const 36
      i32.add
      i32.load align=1
      local.set 46
      local.get 1
      i32.const 40
      i32.add
      i32.load align=1
      local.set 47
      local.get 1
      i32.const 44
      i32.add
      i32.load align=1
      local.set 48
      local.get 1
      i32.const 48
      i32.add
      i32.load align=1
      local.set 49
      local.get 1
      i32.const 52
      i32.add
      i32.load align=1
      local.set 50
      local.get 1
      i32.const 56
      i32.add
      i32.load align=1
      local.set 51
      local.get 1
      i32.const 60
      i32.add
      i32.load align=1
      local.set 52
      local.get 4
      local.get 1
      i32.load align=1
      local.get 11
      local.get 42
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 60
      i32.add
      local.get 52
      local.get 15
      local.get 29
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 56
      i32.add
      local.get 51
      local.get 23
      local.get 30
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 52
      i32.add
      local.get 50
      local.get 7
      local.get 20
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 48
      i32.add
      local.get 49
      local.get 18
      local.get 21
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 44
      i32.add
      local.get 48
      local.get 16
      local.get 31
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 40
      i32.add
      local.get 47
      local.get 6
      local.get 32
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 36
      i32.add
      local.get 46
      local.get 22
      local.get 33
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 32
      i32.add
      local.get 45
      local.get 14
      local.get 34
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 28
      i32.add
      local.get 44
      local.get 10
      local.get 35
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 24
      i32.add
      local.get 28
      local.get 9
      local.get 36
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 20
      i32.add
      local.get 27
      local.get 2
      local.get 37
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 16
      i32.add
      local.get 26
      local.get 5
      local.get 38
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 12
      i32.add
      local.get 24
      local.get 17
      local.get 39
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 8
      i32.add
      local.get 19
      local.get 13
      local.get 40
      i32.add
      i32.xor
      i32.store align=1
      local.get 4
      i32.const 4
      i32.add
      local.get 25
      local.get 12
      local.get 41
      i32.add
      i32.xor
      i32.store align=1
      local.get 20
      local.get 21
      i32.const 1
      i32.add
      local.tee 21
      i32.eqz
      i32.add
      local.set 20
      local.get 3
      i64.const 64
      i64.le_u
      if  ;; label = @2
        block  ;; label = @3
          local.get 3
          i64.const 63
          i64.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.wrap_i64
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          loop  ;; label = @4
            local.get 5
            local.get 43
            i32.add
            local.get 4
            local.get 5
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 52
        i32.add
        local.get 20
        i32.store
        local.get 0
        i32.const 48
        i32.add
        local.get 21
        i32.store
      else
        local.get 1
        i32.const -64
        i32.sub
        local.set 1
        local.get 4
        i32.const -64
        i32.sub
        local.set 2
        local.get 3
        i64.const -64
        i64.add
        local.set 3
        br 1 (;@1;)
      end
    end)
  (func (;20;) (type 7) (param i32 i64 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 4
    global.set 0
    local.get 1
    i64.eqz
    i32.eqz
    if  ;; label = @1
      local.get 4
      i64.const 7719281312240119090
      i64.store offset=8
      local.get 4
      i64.const 3684054920433006693
      i64.store
      local.get 4
      i32.const 0
      i32.store offset=48
      local.get 4
      local.get 3
      i32.load align=1
      i32.store offset=16
      local.get 4
      local.get 2
      i64.load align=1
      i64.store offset=52 align=4
      local.get 4
      local.get 3
      i32.const 4
      i32.add
      i64.load align=1
      i64.store offset=20 align=4
      local.get 4
      local.get 3
      i32.const 12
      i32.add
      i64.load align=1
      i64.store offset=28 align=4
      local.get 4
      local.get 3
      i32.const 20
      i32.add
      i64.load align=1
      i64.store offset=36 align=4
      local.get 4
      local.get 3
      i32.const 28
      i32.add
      i32.load align=1
      i32.store offset=44
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      i32.load align=1
      i32.store offset=60
      local.get 0
      i32.const 0
      local.get 1
      i32.wrap_i64
      memory.fill
      local.get 4
      local.get 0
      local.get 0
      local.get 1
      call 19
      local.get 4
      i32.const 64
      call 17
    end
    local.get 4
    i32.const -64
    i32.sub
    global.set 0
    i32.const 0)
  (func (;21;) (type 12) (param i32 i32 i64 i32 i64 i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 6
    global.set 0
    local.get 2
    i64.eqz
    i32.eqz
    if  ;; label = @1
      local.get 6
      i64.const 7719281312240119090
      i64.store offset=8
      local.get 6
      i64.const 3684054920433006693
      i64.store
      local.get 6
      local.get 5
      i32.load align=1
      i32.store offset=16
      local.get 6
      local.get 3
      i32.load align=1
      i32.store offset=56
      local.get 6
      local.get 5
      i32.const 4
      i32.add
      i64.load align=1
      i64.store offset=20 align=4
      local.get 6
      local.get 5
      i32.const 12
      i32.add
      i64.load align=1
      i64.store offset=28 align=4
      local.get 6
      local.get 5
      i32.const 20
      i32.add
      i64.load align=1
      i64.store offset=36 align=4
      local.get 6
      local.get 5
      i32.const 28
      i32.add
      i32.load align=1
      i32.store offset=44
      local.get 6
      local.get 4
      i64.store32 offset=48
      local.get 6
      local.get 4
      i64.const 32
      i64.shr_u
      i64.store32 offset=52
      local.get 6
      local.get 3
      i32.const 4
      i32.add
      i32.load align=1
      i32.store offset=60
      local.get 6
      local.get 1
      local.get 0
      local.get 2
      call 19
      local.get 6
      i32.const 64
      call 17
    end
    local.get 6
    i32.const -64
    i32.sub
    global.set 0
    i32.const 0)
  (func (;22;) (type 17) (param i32 i32 i64 i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 6
    global.set 0
    local.get 2
    i64.eqz
    i32.eqz
    if  ;; label = @1
      local.get 6
      i64.const 7719281312240119090
      i64.store offset=8
      local.get 6
      i64.const 3684054920433006693
      i64.store
      local.get 6
      local.get 4
      i32.store offset=48
      local.get 6
      local.get 5
      i32.load align=1
      i32.store offset=16
      local.get 6
      local.get 3
      i64.load align=1
      i64.store offset=52 align=4
      local.get 6
      local.get 5
      i32.const 4
      i32.add
      i64.load align=1
      i64.store offset=20 align=4
      local.get 6
      local.get 5
      i32.const 12
      i32.add
      i64.load align=1
      i64.store offset=28 align=4
      local.get 6
      local.get 5
      i32.const 20
      i32.add
      i64.load align=1
      i64.store offset=36 align=4
      local.get 6
      local.get 5
      i32.const 28
      i32.add
      i32.load align=1
      i32.store offset=44
      local.get 6
      local.get 3
      i32.const 8
      i32.add
      i32.load align=1
      i32.store offset=60
      local.get 6
      local.get 1
      local.get 0
      local.get 2
      call 19
      local.get 6
      i32.const 64
      call 17
    end
    local.get 6
    i32.const -64
    i32.sub
    global.set 0
    i32.const 0)
  (func (;23;) (type 18) (param i32 i64)
    local.get 1
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      call 25
      unreachable
    end
    local.get 0
    local.get 1
    i32.const 1052664
    i32.const 1052120
    i32.const 1051256
    i32.load
    call_indirect (type 7)
    drop)
  (func (;24;) (type 1)
    (local i32)
    block  ;; label = @1
      i32.const 1052096
      i32.load
      br_if 0 (;@1;)
      i32.const 1052096
      i32.const 1051232
      i32.store
      call 24
      i32.const 1052096
      i32.load
      i32.load offset=8
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call_indirect (type 1)
    end)
  (func (;25;) (type 1)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1052104
    i32.const 0
    i32.store
    i32.const 1052104
    i32.const 1
    i32.store
    local.get 0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store
    i32.const 1052108
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 0
      call_indirect (type 1)
    end
    unreachable)
  (func (;26;) (type 5) (param i32) (result i32)
    (local i32 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    if  ;; label = @1
      local.get 1
      i64.const 0
      i64.store offset=8
      i32.const 0
      i64.const 1000
      local.get 1
      i32.const 8
      i32.add
      call 0
      drop
      local.get 0
      local.get 1
      i64.load offset=8
      local.tee 2
      i64.const 1000000000
      i64.div_u
      local.tee 3
      i64.store
      local.get 0
      local.get 2
      local.get 3
      i64.const 1000000000
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 1000
      i32.div_u
      i64.extend_i32_u
      i64.store offset=8
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;27;) (type 3) (result i32)
    i32.const 1048651)
  (func (;28;) (type 3) (result i32)
    (local i32 i32)
    i32.const 1052116
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 1052112
      i32.load
      i32.eqz
      if  ;; label = @2
        call 29
      end
      i32.const 1052152
      i64.const 512
      call 23
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        i32.const 1052120
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 0
        i32.const 1052632
        i32.add
        i32.load8_u
        i32.xor
        i32.store8
        local.get 0
        i32.const 1052121
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 0
        i32.const 1052633
        i32.add
        i32.load8_u
        i32.xor
        i32.store8
        local.get 0
        i32.const 1052122
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 0
        i32.const 1052634
        i32.add
        i32.load8_u
        i32.xor
        i32.store8
        local.get 0
        i32.const 1052123
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 0
        i32.const 1052635
        i32.add
        i32.load8_u
        i32.xor
        i32.store8
        local.get 0
        i32.const 4
        i32.add
        local.tee 0
        i32.const 32
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 1052656
      i64.const 0
      i64.store
      i32.const 1052648
      i64.const 0
      i64.store
      i32.const 1052640
      i64.const 0
      i64.store
      i32.const 1052632
      i64.const 0
      i64.store
      i32.const 1052664
      i32.const 1052664
      i64.load
      i64.const 1
      i64.add
      i64.store
      i32.const 480
      local.set 0
    end
    i32.const 1052116
    local.get 0
    i32.const 4
    i32.sub
    i32.store
    local.get 0
    i32.const 1052148
    i32.add
    local.tee 0
    i32.load align=1
    local.get 0
    i32.const 0
    i32.store align=1)
  (func (;29;) (type 1)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      local.get 0
      call 26
      br_if 0 (;@1;)
      i32.const 1052664
      local.get 0
      i64.load offset=8
      local.get 0
      i64.load
      i64.const 1000000
      i64.mul
      i64.add
      i64.store
      i32.const 1052152
      i32.const 0
      i32.const 512
      memory.fill
      i32.const 1052116
      i32.const 0
      i32.store
      i32.const 1052672
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        i32.const 1051524
        i32.load
        local.set 1
        i32.const 1052676
        i32.const 0
        i32.store8
        local.get 0
        i32.const 16
        call 11
        i32.eqz
        if  ;; label = @3
          i32.const 1051524
          local.get 1
          i32.store
          i32.const 1052676
          i32.const 1
          i32.store8
        end
        i32.const 1052672
        i32.const 1
        i32.store8
      end
      i32.const 1052676
      i32.load8_u
      if  ;; label = @2
        i32.const 1052120
        i32.const 32
        call 11
        br_if 1 (;@1;)
      end
      i32.const 1052112
      i32.const 1
      i32.store
      local.get 0
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call 25
    unreachable)
  (func (;30;) (type 2) (param i32 i32)
    i32.const 1052112
    i32.load
    i32.eqz
    if  ;; label = @1
      call 29
    end
    local.get 0
    local.get 1
    i64.extend_i32_u
    call 23
    i32.const 1052120
    i32.const 1052120
    i32.load8_u
    local.get 1
    i32.xor
    i32.store8
    i32.const 1052121
    i32.const 1052121
    i32.load8_u
    local.get 1
    i32.const 8
    i32.shr_u
    i32.xor
    i32.store8
    i32.const 1052122
    i32.const 1052122
    i32.load8_u
    local.get 1
    i32.const 16
    i32.shr_u
    i32.xor
    i32.store8
    i32.const 1052123
    i32.const 1052123
    i32.load8_u
    local.get 1
    i32.const 24
    i32.shr_u
    i32.xor
    i32.store8
    i32.const 1052664
    i32.const 1052664
    i64.load
    i64.const 1
    i64.add
    i64.store
    i32.const 1052120
    i32.const 1052120
    i64.const 32
    i32.const 1052664
    i64.const 0
    i32.const 1052120
    i32.const 1051264
    i32.load
    call_indirect (type 12)
    drop)
  (func (;31;) (type 3) (result i32)
    (local i32)
    i32.const 1052676
    i32.load8_u
    i32.const 1052112
    i32.const 560
    call 17
    i32.const 1
    i32.sub)
  (func (;32;) (type 11) (param i32)
    local.get 0
    i64.const 0
    i64.store offset=32
    local.get 0
    i32.const 1048688
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 1048696
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    i32.const 1048704
    i64.load
    i64.store
    local.get 0
    i32.const 24
    i32.add
    i32.const 1048712
    i64.load
    i64.store)
  (func (;33;) (type 19) (param i32 i32 i64)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 288
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      local.get 2
      i64.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i64.load offset=32
      local.tee 8
      local.get 2
      i64.const 3
      i64.shl
      i64.add
      i64.store offset=32
      i64.const 64
      local.get 8
      i64.const 3
      i64.shr_u
      local.tee 10
      i64.const 63
      i64.and
      local.tee 12
      i64.sub
      local.tee 11
      local.get 2
      i64.le_u
      if  ;; label = @2
        local.get 11
        i64.const 3
        i64.and
        local.set 8
        local.get 12
        i64.const 63
        i64.xor
        i64.const 3
        i64.ge_u
        if  ;; label = @3
          local.get 11
          i64.const 124
          i64.and
          local.set 12
          local.get 0
          local.get 10
          i32.wrap_i64
          i32.const 63
          i32.and
          i32.add
          local.set 7
          loop  ;; label = @4
            local.get 4
            local.get 7
            i32.add
            local.tee 3
            i32.const 40
            i32.add
            local.get 1
            local.get 4
            i32.add
            local.tee 5
            i32.load8_u
            i32.store8
            local.get 3
            i32.const 41
            i32.add
            local.get 5
            i32.const 1
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const 42
            i32.add
            local.get 5
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const 43
            i32.add
            local.get 5
            i32.const 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 12
            local.get 9
            i64.const 4
            i64.add
            local.tee 9
            i64.ne
            br_if 0 (;@4;)
          end
        end
        local.get 8
        i64.eqz
        i32.eqz
        if  ;; label = @3
          local.get 9
          i32.wrap_i64
          local.tee 3
          local.get 1
          i32.add
          local.set 4
          local.get 10
          i32.wrap_i64
          i32.const 63
          i32.and
          local.get 3
          i32.add
          local.get 0
          i32.add
          i32.const 40
          i32.add
          local.set 3
          loop  ;; label = @4
            local.get 3
            local.get 4
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i64.const 1
            i64.sub
            local.tee 8
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.const 40
        i32.add
        local.get 6
        local.get 6
        i32.const 256
        i32.add
        local.tee 3
        call 34
        local.get 1
        local.get 11
        i32.wrap_i64
        i32.add
        local.set 4
        local.get 2
        local.get 11
        i64.sub
        local.tee 8
        i64.const 64
        i64.ge_u
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            local.get 6
            local.get 3
            call 34
            local.get 4
            i32.const -64
            i32.sub
            local.set 4
            local.get 8
            i64.const -64
            i64.add
            local.tee 8
            i64.const 63
            i64.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 8
          i64.eqz
          br_if 0 (;@3;)
          local.get 8
          i64.const 3
          i64.and
          local.set 9
          i64.const 0
          local.set 2
          local.get 8
          i64.const 1
          i64.sub
          i64.const 3
          i64.ge_u
          if  ;; label = @4
            local.get 8
            i64.const -4
            i64.and
            local.set 8
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 0
              local.get 3
              i32.add
              local.tee 1
              i32.const 40
              i32.add
              local.get 3
              local.get 4
              i32.add
              local.tee 5
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 41
              i32.add
              local.get 5
              i32.const 1
              i32.add
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 42
              i32.add
              local.get 5
              i32.const 2
              i32.add
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 43
              i32.add
              local.get 5
              i32.const 3
              i32.add
              i32.load8_u
              i32.store8
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 8
              local.get 2
              i64.const 4
              i64.add
              local.tee 2
              i64.ne
              br_if 0 (;@5;)
            end
          end
          local.get 9
          i64.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.wrap_i64
          local.tee 1
          local.get 4
          i32.add
          local.set 4
          local.get 0
          local.get 1
          i32.add
          i32.const 40
          i32.add
          local.set 3
          loop  ;; label = @4
            local.get 3
            local.get 4
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 9
            i64.const 1
            i64.sub
            local.tee 9
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 288
        call 17
        br 1 (;@1;)
      end
      local.get 2
      i64.const 3
      i64.and
      local.set 8
      local.get 2
      i64.const 1
      i64.sub
      i64.const 3
      i64.ge_u
      if  ;; label = @2
        local.get 2
        i64.const -4
        i64.and
        local.set 2
        local.get 0
        local.get 10
        i32.wrap_i64
        i32.const 63
        i32.and
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 4
          local.get 7
          i32.add
          local.tee 3
          i32.const 40
          i32.add
          local.get 1
          local.get 4
          i32.add
          local.tee 5
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 41
          i32.add
          local.get 5
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 42
          i32.add
          local.get 5
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 43
          i32.add
          local.get 5
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 2
          local.get 9
          i64.const 4
          i64.add
          local.tee 9
          i64.ne
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i64.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 9
      i32.wrap_i64
      local.tee 1
      i32.add
      local.set 4
      local.get 10
      i32.wrap_i64
      i32.const 63
      i32.and
      local.get 1
      i32.add
      local.get 0
      i32.add
      i32.const 40
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 8
        i64.const 1
        i64.sub
        local.tee 8
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 6
    i32.const 288
    i32.add
    global.set 0)
  (func (;34;) (type 20) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    loop  ;; label = @1
      local.get 2
      local.get 13
      i32.add
      local.get 1
      local.get 13
      i32.add
      i32.load align=1
      local.tee 5
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      local.get 5
      i32.const 24
      i32.shl
      i32.or
      local.get 5
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 5
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 13
      i32.const 4
      i32.add
      local.tee 13
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    local.get 0
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 24
    i32.add
    local.tee 20
    local.get 0
    i32.const 24
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    local.tee 21
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 8
    i32.add
    local.tee 22
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store align=4
    i32.const 0
    local.set 13
    loop  ;; label = @1
      local.get 3
      i32.const 28
      i32.add
      local.tee 15
      i32.load
      local.get 13
      i32.const 1048720
      i32.add
      i32.load
      local.get 2
      local.get 13
      i32.add
      local.tee 1
      i32.load
      local.get 21
      i32.load
      local.tee 8
      i32.const 26
      i32.rotl
      local.get 8
      i32.const 21
      i32.rotl
      i32.xor
      local.get 8
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.get 20
      i32.load
      local.tee 6
      local.get 3
      i32.const 20
      i32.add
      local.tee 19
      i32.load
      local.tee 9
      i32.xor
      local.get 8
      i32.and
      local.get 6
      i32.xor
      i32.add
      i32.add
      local.tee 7
      local.get 3
      i32.const 12
      i32.add
      local.tee 14
      i32.load
      i32.add
      local.set 5
      local.get 14
      local.get 5
      i32.store
      local.get 15
      local.get 3
      i32.load
      local.tee 4
      i32.const 30
      i32.rotl
      local.get 4
      i32.const 19
      i32.rotl
      i32.xor
      local.get 4
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      i32.add
      local.get 22
      i32.load
      local.tee 10
      local.get 3
      i32.const 4
      i32.add
      local.tee 16
      i32.load
      local.tee 11
      i32.or
      local.get 4
      i32.and
      local.get 10
      local.get 11
      i32.and
      i32.or
      i32.add
      local.tee 7
      i32.store
      local.get 22
      local.get 13
      i32.const 1048724
      i32.add
      i32.load
      local.get 1
      i32.const 4
      i32.add
      local.tee 17
      i32.load
      local.get 6
      local.get 9
      local.get 5
      local.get 8
      local.get 9
      i32.xor
      i32.and
      i32.xor
      i32.add
      local.get 5
      i32.const 26
      i32.rotl
      local.get 5
      i32.const 21
      i32.rotl
      i32.xor
      local.get 5
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      i32.add
      i32.add
      local.tee 6
      local.get 10
      i32.add
      local.tee 10
      i32.store
      local.get 20
      local.get 7
      local.get 4
      local.get 11
      i32.or
      i32.and
      local.get 4
      local.get 11
      i32.and
      i32.or
      local.get 6
      i32.add
      local.get 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      local.tee 6
      i32.store
      local.get 19
      local.get 13
      i32.const 1048728
      i32.add
      i32.load
      local.get 9
      local.get 1
      i32.const 8
      i32.add
      local.tee 18
      i32.load
      i32.add
      i32.add
      local.get 8
      local.get 10
      local.get 5
      local.get 8
      i32.xor
      i32.and
      i32.xor
      i32.add
      local.get 10
      i32.const 26
      i32.rotl
      local.get 10
      i32.const 21
      i32.rotl
      i32.xor
      local.get 10
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 6
      local.get 4
      local.get 7
      i32.or
      i32.and
      local.get 4
      local.get 7
      i32.and
      i32.or
      local.get 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 9
      i32.store
      local.get 16
      local.get 11
      local.get 12
      i32.add
      local.tee 11
      i32.store
      local.get 21
      local.get 13
      i32.const 1048732
      i32.add
      i32.load
      local.get 8
      local.get 1
      i32.const 12
      i32.add
      local.tee 23
      i32.load
      i32.add
      i32.add
      local.get 11
      local.get 5
      local.get 10
      i32.xor
      i32.and
      local.get 5
      i32.xor
      i32.add
      local.get 11
      i32.const 26
      i32.rotl
      local.get 11
      i32.const 21
      i32.rotl
      i32.xor
      local.get 11
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 9
      local.get 6
      local.get 7
      i32.or
      i32.and
      local.get 6
      local.get 7
      i32.and
      i32.or
      local.get 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 8
      i32.store
      local.get 3
      local.get 4
      local.get 12
      i32.add
      local.tee 4
      i32.store
      local.get 14
      local.get 13
      i32.const 1048736
      i32.add
      i32.load
      local.get 1
      i32.const 16
      i32.add
      local.tee 24
      i32.load
      local.get 5
      i32.add
      i32.add
      local.get 4
      local.get 10
      local.get 11
      i32.xor
      i32.and
      local.get 10
      i32.xor
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 8
      local.get 6
      local.get 9
      i32.or
      i32.and
      local.get 6
      local.get 9
      i32.and
      i32.or
      local.get 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 5
      i32.store
      local.get 15
      local.get 7
      local.get 12
      i32.add
      local.tee 12
      i32.store
      local.get 22
      local.get 13
      i32.const 1048740
      i32.add
      i32.load
      local.get 1
      i32.const 20
      i32.add
      local.tee 25
      i32.load
      local.get 10
      i32.add
      i32.add
      local.get 12
      local.get 4
      local.get 11
      i32.xor
      i32.and
      local.get 11
      i32.xor
      i32.add
      local.get 12
      i32.const 26
      i32.rotl
      local.get 12
      i32.const 21
      i32.rotl
      i32.xor
      local.get 12
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      local.get 5
      local.get 8
      local.get 9
      i32.or
      i32.and
      local.get 8
      local.get 9
      i32.and
      i32.or
      local.get 5
      i32.const 30
      i32.rotl
      local.get 5
      i32.const 19
      i32.rotl
      i32.xor
      local.get 5
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 7
      i32.store
      local.get 20
      local.get 6
      local.get 10
      i32.add
      local.tee 10
      i32.store
      local.get 16
      local.get 13
      i32.const 1048744
      i32.add
      i32.load
      local.get 1
      i32.const 24
      i32.add
      local.tee 26
      i32.load
      local.get 11
      i32.add
      i32.add
      local.get 10
      local.get 4
      local.get 12
      i32.xor
      i32.and
      local.get 4
      i32.xor
      i32.add
      local.get 10
      i32.const 26
      i32.rotl
      local.get 10
      i32.const 21
      i32.rotl
      i32.xor
      local.get 10
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 11
      local.get 7
      local.get 5
      local.get 8
      i32.or
      i32.and
      local.get 5
      local.get 8
      i32.and
      i32.or
      local.get 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 6
      i32.store
      local.get 19
      local.get 9
      local.get 11
      i32.add
      local.tee 11
      i32.store
      local.get 3
      local.get 13
      i32.const 1048748
      i32.add
      i32.load
      local.get 1
      i32.const 28
      i32.add
      local.tee 27
      i32.load
      local.get 4
      i32.add
      i32.add
      local.get 11
      local.get 10
      local.get 12
      i32.xor
      i32.and
      local.get 12
      i32.xor
      i32.add
      local.get 11
      i32.const 26
      i32.rotl
      local.get 11
      i32.const 21
      i32.rotl
      i32.xor
      local.get 11
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 4
      local.get 6
      local.get 5
      local.get 7
      i32.or
      i32.and
      local.get 5
      local.get 7
      i32.and
      i32.or
      local.get 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 9
      i32.store
      local.get 21
      local.get 4
      local.get 8
      i32.add
      local.tee 4
      i32.store
      local.get 15
      local.get 13
      i32.const 1048752
      i32.add
      i32.load
      local.get 1
      i32.const 32
      i32.add
      local.tee 28
      i32.load
      local.get 12
      i32.add
      i32.add
      local.get 4
      local.get 10
      local.get 11
      i32.xor
      i32.and
      local.get 10
      i32.xor
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 9
      local.get 6
      local.get 7
      i32.or
      i32.and
      local.get 6
      local.get 7
      i32.and
      i32.or
      local.get 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 8
      i32.store
      local.get 14
      local.get 5
      local.get 12
      i32.add
      local.tee 12
      i32.store
      local.get 20
      local.get 13
      i32.const 1048756
      i32.add
      i32.load
      local.get 1
      i32.const 36
      i32.add
      local.tee 29
      i32.load
      local.get 10
      i32.add
      i32.add
      local.get 12
      local.get 4
      local.get 11
      i32.xor
      i32.and
      local.get 11
      i32.xor
      i32.add
      local.get 12
      i32.const 26
      i32.rotl
      local.get 12
      i32.const 21
      i32.rotl
      i32.xor
      local.get 12
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      local.get 8
      local.get 6
      local.get 9
      i32.or
      i32.and
      local.get 6
      local.get 9
      i32.and
      i32.or
      local.get 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 5
      i32.store
      local.get 22
      local.get 7
      local.get 10
      i32.add
      local.tee 10
      i32.store
      local.get 19
      local.get 13
      i32.const 1048760
      i32.add
      i32.load
      local.get 11
      local.get 1
      i32.const 40
      i32.add
      local.tee 30
      i32.load
      i32.add
      i32.add
      local.get 10
      local.get 4
      local.get 12
      i32.xor
      i32.and
      local.get 4
      i32.xor
      i32.add
      local.get 10
      i32.const 26
      i32.rotl
      local.get 10
      i32.const 21
      i32.rotl
      i32.xor
      local.get 10
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 11
      local.get 5
      local.get 8
      local.get 9
      i32.or
      i32.and
      local.get 8
      local.get 9
      i32.and
      i32.or
      local.get 5
      i32.const 30
      i32.rotl
      local.get 5
      i32.const 19
      i32.rotl
      i32.xor
      local.get 5
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 7
      i32.store
      local.get 16
      local.get 6
      local.get 11
      i32.add
      local.tee 11
      i32.store
      local.get 21
      local.get 13
      i32.const 1048764
      i32.add
      i32.load
      local.get 1
      i32.const 44
      i32.add
      local.tee 31
      i32.load
      i32.add
      local.get 4
      i32.add
      local.get 11
      local.get 10
      local.get 12
      i32.xor
      i32.and
      local.get 12
      i32.xor
      i32.add
      local.get 11
      i32.const 26
      i32.rotl
      local.get 11
      i32.const 21
      i32.rotl
      i32.xor
      local.get 11
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 4
      local.get 7
      local.get 5
      local.get 8
      i32.or
      i32.and
      local.get 5
      local.get 8
      i32.and
      i32.or
      local.get 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 6
      i32.store
      local.get 3
      local.get 4
      local.get 9
      i32.add
      local.tee 9
      i32.store
      local.get 14
      local.get 13
      i32.const 1048768
      i32.add
      i32.load
      local.get 1
      i32.const 48
      i32.add
      local.tee 14
      i32.load
      i32.add
      local.get 12
      i32.add
      local.get 9
      local.get 10
      local.get 11
      i32.xor
      i32.and
      local.get 10
      i32.xor
      i32.add
      local.get 9
      i32.const 26
      i32.rotl
      local.get 9
      i32.const 21
      i32.rotl
      i32.xor
      local.get 9
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 6
      local.get 5
      local.get 7
      i32.or
      i32.and
      local.get 5
      local.get 7
      i32.and
      i32.or
      local.get 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 4
      i32.store
      local.get 15
      local.get 8
      local.get 12
      i32.add
      local.tee 8
      i32.store
      local.get 22
      local.get 13
      i32.const 1048772
      i32.add
      i32.load
      local.get 1
      i32.const 52
      i32.add
      local.tee 32
      i32.load
      i32.add
      local.get 10
      i32.add
      local.get 8
      local.get 9
      local.get 11
      i32.xor
      i32.and
      local.get 11
      i32.xor
      i32.add
      local.get 8
      i32.const 26
      i32.rotl
      local.get 8
      i32.const 21
      i32.rotl
      i32.xor
      local.get 8
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 4
      local.get 6
      local.get 7
      i32.or
      i32.and
      local.get 6
      local.get 7
      i32.and
      i32.or
      local.get 4
      i32.const 30
      i32.rotl
      local.get 4
      i32.const 19
      i32.rotl
      i32.xor
      local.get 4
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 10
      i32.store
      local.get 20
      local.get 5
      local.get 12
      i32.add
      local.tee 5
      i32.store
      local.get 16
      local.get 13
      i32.const 1048776
      i32.add
      i32.load
      local.get 1
      i32.const 56
      i32.add
      local.tee 15
      i32.load
      i32.add
      local.get 11
      i32.add
      local.get 5
      local.get 8
      local.get 9
      i32.xor
      i32.and
      local.get 9
      i32.xor
      i32.add
      local.get 5
      i32.const 26
      i32.rotl
      local.get 5
      i32.const 21
      i32.rotl
      i32.xor
      local.get 5
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 10
      local.get 4
      local.get 6
      i32.or
      i32.and
      local.get 4
      local.get 6
      i32.and
      i32.or
      local.get 10
      i32.const 30
      i32.rotl
      local.get 10
      i32.const 19
      i32.rotl
      i32.xor
      local.get 10
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.tee 11
      i32.store
      local.get 19
      local.get 7
      local.get 12
      i32.add
      local.tee 7
      i32.store
      local.get 3
      local.get 11
      local.get 4
      local.get 10
      i32.or
      i32.and
      local.get 4
      local.get 10
      i32.and
      i32.or
      local.get 11
      i32.const 30
      i32.rotl
      local.get 11
      i32.const 19
      i32.rotl
      i32.xor
      local.get 11
      i32.const 10
      i32.rotl
      i32.xor
      i32.add
      local.get 13
      i32.const 1048780
      i32.add
      i32.load
      local.get 1
      i32.const 60
      i32.add
      local.tee 4
      i32.load
      i32.add
      local.get 9
      i32.add
      local.get 7
      local.get 5
      local.get 8
      i32.xor
      i32.and
      local.get 8
      i32.xor
      i32.add
      local.get 7
      i32.const 26
      i32.rotl
      local.get 7
      i32.const 21
      i32.rotl
      i32.xor
      local.get 7
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 5
      i32.add
      local.tee 7
      i32.store
      local.get 21
      local.get 5
      local.get 6
      i32.add
      i32.store
      local.get 13
      i32.const 192
      i32.ne
      if  ;; label = @2
        local.get 1
        i32.const 68
        i32.add
        local.get 30
        i32.load
        local.tee 9
        local.get 17
        i32.load
        local.tee 6
        i32.add
        local.get 4
        i32.load
        local.tee 5
        i32.const 15
        i32.rotl
        local.get 5
        i32.const 13
        i32.rotl
        i32.xor
        local.get 5
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.get 18
        i32.load
        local.tee 12
        i32.const 25
        i32.rotl
        local.get 12
        i32.const 14
        i32.rotl
        i32.xor
        local.get 12
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.tee 8
        i32.store
        local.get 1
        i32.const -64
        i32.sub
        local.get 1
        i32.load
        local.get 29
        i32.load
        local.tee 4
        local.get 15
        i32.load
        local.tee 7
        i32.const 15
        i32.rotl
        local.get 7
        i32.const 13
        i32.rotl
        i32.xor
        local.get 7
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        i32.add
        local.get 6
        i32.const 25
        i32.rotl
        local.get 6
        i32.const 14
        i32.rotl
        i32.xor
        local.get 6
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.tee 6
        i32.store
        local.get 1
        i32.const 76
        i32.add
        local.get 14
        i32.load
        local.tee 10
        local.get 23
        i32.load
        local.tee 14
        i32.add
        local.get 8
        i32.const 15
        i32.rotl
        local.get 8
        i32.const 13
        i32.rotl
        i32.xor
        local.get 8
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.get 24
        i32.load
        local.tee 15
        i32.const 25
        i32.rotl
        local.get 15
        i32.const 14
        i32.rotl
        i32.xor
        local.get 15
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.tee 11
        i32.store
        local.get 1
        i32.const 72
        i32.add
        local.get 12
        local.get 31
        i32.load
        local.tee 12
        i32.add
        local.get 6
        i32.const 15
        i32.rotl
        local.get 6
        i32.const 13
        i32.rotl
        i32.xor
        local.get 6
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.get 14
        i32.const 25
        i32.rotl
        local.get 14
        i32.const 14
        i32.rotl
        i32.xor
        local.get 14
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.tee 14
        i32.store
        local.get 1
        i32.const 80
        i32.add
        local.get 15
        local.get 32
        i32.load
        local.tee 15
        i32.add
        local.get 14
        i32.const 15
        i32.rotl
        local.get 14
        i32.const 13
        i32.rotl
        i32.xor
        local.get 14
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.get 25
        i32.load
        local.tee 16
        i32.const 25
        i32.rotl
        local.get 16
        i32.const 14
        i32.rotl
        i32.xor
        local.get 16
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.tee 19
        i32.store
        local.get 1
        i32.const 84
        i32.add
        local.get 7
        local.get 16
        i32.add
        local.get 11
        i32.const 15
        i32.rotl
        local.get 11
        i32.const 13
        i32.rotl
        i32.xor
        local.get 11
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.get 26
        i32.load
        local.tee 17
        i32.const 25
        i32.rotl
        local.get 17
        i32.const 14
        i32.rotl
        i32.xor
        local.get 17
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.tee 16
        i32.store
        local.get 1
        i32.const 88
        i32.add
        local.get 5
        local.get 17
        i32.add
        local.get 27
        i32.load
        local.tee 18
        i32.const 25
        i32.rotl
        local.get 18
        i32.const 14
        i32.rotl
        i32.xor
        local.get 18
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 19
        i32.const 15
        i32.rotl
        local.get 19
        i32.const 13
        i32.rotl
        i32.xor
        local.get 19
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 17
        i32.store
        local.get 1
        i32.const 92
        i32.add
        local.get 6
        local.get 18
        i32.add
        local.get 28
        i32.load
        local.tee 23
        i32.const 25
        i32.rotl
        local.get 23
        i32.const 14
        i32.rotl
        i32.xor
        local.get 23
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 16
        i32.const 15
        i32.rotl
        local.get 16
        i32.const 13
        i32.rotl
        i32.xor
        local.get 16
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 18
        i32.store
        local.get 1
        i32.const 96
        i32.add
        local.get 23
        local.get 8
        local.get 4
        i32.const 25
        i32.rotl
        local.get 4
        i32.const 14
        i32.rotl
        i32.xor
        local.get 4
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        i32.add
        local.get 17
        i32.const 15
        i32.rotl
        local.get 17
        i32.const 13
        i32.rotl
        i32.xor
        local.get 17
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 8
        i32.store
        local.get 1
        i32.const 100
        i32.add
        local.get 4
        local.get 9
        i32.const 25
        i32.rotl
        local.get 9
        i32.const 14
        i32.rotl
        i32.xor
        local.get 9
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 14
        i32.add
        local.get 18
        i32.const 15
        i32.rotl
        local.get 18
        i32.const 13
        i32.rotl
        i32.xor
        local.get 18
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 4
        i32.store
        local.get 1
        i32.const 104
        i32.add
        local.get 9
        local.get 12
        i32.const 25
        i32.rotl
        local.get 12
        i32.const 14
        i32.rotl
        i32.xor
        local.get 12
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 11
        i32.add
        local.get 8
        i32.const 15
        i32.rotl
        local.get 8
        i32.const 13
        i32.rotl
        i32.xor
        local.get 8
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 9
        i32.store
        local.get 1
        i32.const 108
        i32.add
        local.get 12
        local.get 10
        i32.const 25
        i32.rotl
        local.get 10
        i32.const 14
        i32.rotl
        i32.xor
        local.get 10
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 19
        i32.add
        local.get 4
        i32.const 15
        i32.rotl
        local.get 4
        i32.const 13
        i32.rotl
        i32.xor
        local.get 4
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 4
        i32.store
        local.get 1
        i32.const 112
        i32.add
        local.get 10
        local.get 15
        i32.const 25
        i32.rotl
        local.get 15
        i32.const 14
        i32.rotl
        i32.xor
        local.get 15
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 16
        i32.add
        local.get 9
        i32.const 15
        i32.rotl
        local.get 9
        i32.const 13
        i32.rotl
        i32.xor
        local.get 9
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 9
        i32.store
        local.get 1
        i32.const 116
        i32.add
        local.get 15
        local.get 7
        i32.const 25
        i32.rotl
        local.get 7
        i32.const 14
        i32.rotl
        i32.xor
        local.get 7
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 17
        i32.add
        local.get 4
        i32.const 15
        i32.rotl
        local.get 4
        i32.const 13
        i32.rotl
        i32.xor
        local.get 4
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        local.tee 4
        i32.store
        local.get 1
        i32.const 120
        i32.add
        local.get 7
        local.get 5
        i32.const 25
        i32.rotl
        local.get 5
        i32.const 14
        i32.rotl
        i32.xor
        local.get 5
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 18
        i32.add
        local.get 9
        i32.const 15
        i32.rotl
        local.get 9
        i32.const 13
        i32.rotl
        i32.xor
        local.get 9
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        i32.store
        local.get 1
        i32.const 124
        i32.add
        local.get 5
        local.get 6
        i32.const 25
        i32.rotl
        local.get 6
        i32.const 14
        i32.rotl
        i32.xor
        local.get 6
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 8
        i32.add
        local.get 4
        i32.const 15
        i32.rotl
        local.get 4
        i32.const 13
        i32.rotl
        i32.xor
        local.get 4
        i32.const 10
        i32.shr_u
        i32.xor
        i32.add
        i32.store
        local.get 13
        i32.const -64
        i32.sub
        local.set 13
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 0
    i32.load
    local.get 7
    i32.add
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.get 3
    i32.const 4
    i32.add
    i32.load
    i32.add
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.add
    i32.store
    local.get 0
    i32.const 12
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.get 3
    i32.const 12
    i32.add
    i32.load
    i32.add
    i32.store
    local.get 0
    i32.const 16
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.get 3
    i32.const 16
    i32.add
    i32.load
    i32.add
    i32.store
    local.get 0
    i32.const 20
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.get 3
    i32.const 20
    i32.add
    i32.load
    i32.add
    i32.store
    local.get 0
    i32.const 24
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.get 3
    i32.const 24
    i32.add
    i32.load
    i32.add
    i32.store
    local.get 0
    i32.const 28
    i32.add
    local.tee 0
    local.get 0
    i32.load
    local.get 3
    i32.const 28
    i32.add
    i32.load
    i32.add
    i32.store)
  (func (;35;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 288
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=32
      i32.const 3
      i32.shr_u
      i32.const 63
      i32.and
      local.tee 2
      i32.const 55
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.add
        i32.const 40
        i32.add
        i32.const 1048976
        i32.const 56
        local.get 2
        i32.sub
        memory.copy
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 40
      i32.add
      local.tee 4
      i32.add
      i32.const 1048976
      i32.const 64
      local.get 2
      i32.sub
      memory.copy
      local.get 0
      local.get 4
      local.get 3
      local.get 3
      i32.const 256
      i32.add
      call 34
      local.get 0
      i32.const 88
      i32.add
      i64.const 0
      i64.store
      local.get 0
      i32.const 80
      i32.add
      i64.const 0
      i64.store
      local.get 0
      i32.const 72
      i32.add
      i64.const 0
      i64.store
      local.get 0
      i32.const -64
      i32.sub
      i64.const 0
      i64.store
      local.get 0
      i32.const 56
      i32.add
      i64.const 0
      i64.store
      local.get 0
      i32.const 48
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i64.const 0
      i64.store
    end
    local.get 0
    i32.const 96
    i32.add
    local.get 0
    i64.load offset=32
    local.tee 5
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 5
    i64.const 56
    i64.shl
    i64.or
    local.get 5
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 5
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 5
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 5
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 5
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 5
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store align=1
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    local.get 3
    local.get 3
    i32.const 256
    i32.add
    call 34
    local.get 1
    local.get 0
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 4
    i32.add
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    i32.const 12
    i32.add
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 20
    i32.add
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.const 24
    i32.add
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 1
    i32.const 28
    i32.add
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.tee 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store align=1
    local.get 3
    i32.const 288
    call 17
    local.get 0
    i32.const 104
    call 17
    local.get 3
    i32.const 288
    i32.add
    global.set 0)
  (func (;36;) (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=56
    call 1
    i32.const 65535
    i32.and
    local.tee 0
    if (result i32)  ;; label = @1
      i32.const 1051524
      local.get 0
      i32.store
      i32.const -1
    else
      i32.const 0
    end)
  (func (;37;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const -1
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 1051524
        i32.const 28
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      call 4
      i32.const 65535
      i32.and
      local.tee 0
      if  ;; label = @2
        i32.const 1051524
        local.get 0
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func (;38;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 4
    local.get 0
    i32.load offset=20
    local.get 1
    i32.sub
    local.tee 3
    i32.store offset=4
    i32.const 2
    local.set 5
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=56
      local.get 4
      i32.const 2
      call 37
      local.tee 1
      local.get 2
      local.get 3
      i32.add
      local.tee 6
      i32.ne
      if  ;; label = @2
        local.get 4
        local.set 3
        loop  ;; label = @3
          local.get 1
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            i64.const 0
            i64.store offset=16
            local.get 0
            local.get 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            i32.const 0
            local.get 5
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            drop
            local.get 2
            local.get 3
            i32.load offset=4
            i32.sub
            br 3 (;@1;)
          end
          local.get 3
          local.get 3
          i32.load offset=4
          local.tee 7
          local.get 1
          i32.lt_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.add
          local.tee 9
          local.get 1
          local.get 7
          i32.const 0
          local.get 8
          select
          i32.sub
          local.tee 7
          local.get 9
          i32.load
          i32.add
          i32.store
          local.get 3
          i32.const 12
          i32.const 4
          local.get 8
          select
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.get 7
          i32.sub
          i32.store
          local.get 6
          local.get 1
          i32.sub
          local.set 6
          local.get 6
          local.get 0
          i32.load offset=56
          local.get 9
          local.tee 3
          local.get 5
          local.get 8
          i32.sub
          local.tee 5
          call 37
          local.tee 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 1
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get 2
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;39;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 15
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=56
      local.set 3
      global.get 0
      i32.const 32
      i32.sub
      local.tee 4
      global.set 0
      block (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 4
          i32.const 8
          i32.add
          call 2
          i32.const 65535
          i32.and
          local.tee 3
          br_if 0 (;@3;)
          i32.const 59
          local.set 3
          local.get 4
          i32.load8_u offset=8
          i32.const 2
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          i32.load8_u offset=16
          i32.const 36
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          br 1 (;@2;)
        end
        i32.const 1051524
        local.get 3
        i32.store
        i32.const 0
      end
      local.get 4
      i32.const 32
      i32.add
      global.set 0
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store offset=64
    end
    local.get 0
    local.get 1
    local.get 2
    call 38)
  (func (;40;) (type 4) (param i32 i64 i32) (result i64)
    (local i32)
    local.get 0
    i32.load offset=56
    local.set 3
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block (result i64)  ;; label = @1
      local.get 3
      local.get 1
      local.get 2
      i32.const 255
      i32.and
      local.get 0
      i32.const 8
      i32.add
      call 3
      i32.const 65535
      i32.and
      local.tee 2
      if  ;; label = @2
        i32.const 1051524
        i32.const 70
        local.get 2
        local.get 2
        i32.const 76
        i32.eq
        select
        i32.store
        i64.const -1
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=8
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;41;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store offset=60
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;42;) (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call 41
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 5
      i32.sub
      i32.gt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        drop
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 1
          local.get 4
          i32.eq
          br_if 1 (;@2;)
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.sub
          local.tee 3
          local.get 1
          i32.add
          local.tee 6
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 4
        i32.sub
        i32.const 1
        i32.add
        local.tee 0
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        local.get 0
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        i32.const 1
        i32.sub
        local.set 1
        local.get 6
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 1
      memory.copy
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
    end)
  (func (;43;) (type 6) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    if (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 1
        i32.const 127
        i32.le_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store8
          i32.const 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 1053728
          i32.load
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            i32.store8
            i32.const 1
            br 2 (;@2;)
          end
          local.get 1
          i32.const 2047
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            br 2 (;@2;)
          end
          local.get 1
          i32.const -8192
          i32.and
          i32.const 57344
          i32.ne
          local.get 1
          i32.const 55296
          i32.ge_u
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            br 2 (;@2;)
          end
          local.get 1
          i32.const 65536
          i32.sub
          i32.const 1048575
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            br 2 (;@2;)
          end
        end
        i32.const 1051524
        i32.const 25
        i32.store
        i32.const -1
      end
    else
      i32.const 1
    end)
  (func (;44;) (type 10) (param i32 i64 i64 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 2
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee 6
      i32.const 32767
      i32.and
      local.tee 5
      i32.const 32767
      i32.eq
      br_if 0 (;@1;)
      local.get 5
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 2
        i64.const 0
        i64.const 0
        call 54
        i32.eqz
        if  ;; label = @3
          local.get 3
          i32.const 0
          i32.store
          br 2 (;@1;)
        end
        local.get 4
        local.get 1
        local.get 2
        i64.const 4645181540655955968
        call 52
        local.get 4
        i32.const 16
        i32.add
        local.get 4
        i64.load
        local.get 4
        i32.const 8
        i32.add
        i64.load
        local.get 3
        call 44
        local.get 4
        i64.load offset=24
        local.set 2
        local.get 4
        i64.load offset=16
        local.set 1
        local.get 3
        local.get 3
        i32.load
        i32.const 120
        i32.sub
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      local.get 5
      i32.const 16382
      i32.sub
      i32.store
      local.get 2
      i64.const 281474976710655
      i64.and
      local.get 6
      i32.const 32768
      i32.and
      i32.const 16382
      i32.or
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;45;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    i32.const 1048681
    local.set 12
    global.get 0
    i32.const 8160
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    i32.const 468
    i32.add
    local.tee 4
    i32.const 12
    i32.add
    local.set 24
    i32.const -528
    local.get 7
    i32.sub
    local.set 32
    local.get 7
    i32.const 65012
    i32.sub
    local.set 33
    local.get 7
    i32.const 438
    i32.add
    local.set 34
    local.get 7
    i32.const 480
    i32.add
    local.tee 6
    i32.const -2
    i32.xor
    local.set 35
    local.get 4
    i32.const 11
    i32.add
    local.set 36
    local.get 6
    i32.const 8
    i32.or
    local.set 31
    local.get 6
    i32.const 9
    i32.or
    local.set 29
    i32.const -10
    local.get 4
    i32.sub
    local.set 37
    local.get 4
    i32.const 10
    i32.add
    local.set 38
    local.get 7
    i32.const 439
    i32.add
    local.set 22
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 12
            local.set 6
            local.get 4
            local.get 18
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if 0 (;@4;)
            local.get 4
            local.get 18
            i32.add
            local.set 18
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.load8_u
                            local.tee 4
                            if  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.const 255
                                    i32.and
                                    local.tee 4
                                    if  ;; label = @17
                                      local.get 4
                                      i32.const 37
                                      i32.ne
                                      br_if 2 (;@15;)
                                      local.get 12
                                      local.tee 5
                                      local.set 4
                                      loop  ;; label = @18
                                        local.get 4
                                        i32.load8_u offset=1
                                        i32.const 37
                                        i32.ne
                                        if  ;; label = @19
                                          local.get 4
                                          local.set 12
                                          br 3 (;@16;)
                                        end
                                        local.get 5
                                        i32.const 1
                                        i32.add
                                        local.set 5
                                        local.get 4
                                        i32.load8_u offset=2
                                        local.get 4
                                        i32.const 2
                                        i32.add
                                        local.tee 12
                                        local.set 4
                                        i32.const 37
                                        i32.eq
                                        br_if 0 (;@18;)
                                      end
                                      br 1 (;@16;)
                                    end
                                    local.get 12
                                    local.set 5
                                  end
                                  local.get 5
                                  local.get 6
                                  i32.sub
                                  local.tee 4
                                  local.get 18
                                  i32.const 2147483647
                                  i32.xor
                                  local.tee 21
                                  i32.gt_s
                                  br_if 11 (;@4;)
                                  block  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 6
                                    local.get 4
                                    local.get 0
                                    call 42
                                  end
                                  local.get 4
                                  br_if 12 (;@3;)
                                  local.get 12
                                  i32.const 1
                                  i32.add
                                  local.set 4
                                  i32.const -1
                                  local.set 16
                                  block  ;; label = @16
                                    local.get 12
                                    i32.load8_s offset=1
                                    local.tee 9
                                    i32.const 48
                                    i32.sub
                                    local.tee 5
                                    i32.const 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 12
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 12
                                    i32.const 3
                                    i32.add
                                    local.set 4
                                    local.get 12
                                    i32.load8_s offset=3
                                    local.set 9
                                    i32.const 1
                                    local.set 25
                                    local.get 5
                                    local.set 16
                                  end
                                  i32.const 0
                                  local.set 11
                                  block  ;; label = @16
                                    local.get 9
                                    i32.const 32
                                    i32.sub
                                    local.tee 5
                                    i32.const 31
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    i32.const 1
                                    local.get 5
                                    i32.shl
                                    local.tee 12
                                    i32.const 75913
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 4
                                    i32.const 1
                                    i32.add
                                    local.set 8
                                    loop  ;; label = @17
                                      local.get 11
                                      local.get 12
                                      i32.or
                                      local.set 11
                                      local.get 8
                                      local.tee 4
                                      i32.load8_s
                                      local.tee 9
                                      i32.const 32
                                      i32.sub
                                      local.tee 5
                                      i32.const 32
                                      i32.ge_u
                                      br_if 1 (;@16;)
                                      local.get 4
                                      i32.const 1
                                      i32.add
                                      local.set 8
                                      i32.const 1
                                      local.get 5
                                      i32.shl
                                      local.tee 12
                                      i32.const 75913
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 9
                                  i32.const 42
                                  i32.eq
                                  if  ;; label = @16
                                    block (result i32)  ;; label = @17
                                      block  ;; label = @18
                                        local.get 4
                                        i32.load8_s offset=1
                                        i32.const 48
                                        i32.sub
                                        local.tee 5
                                        i32.const 9
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 4
                                        i32.load8_u offset=2
                                        i32.const 36
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 3
                                        local.get 5
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.const 10
                                        i32.store
                                        local.get 4
                                        i32.const 3
                                        i32.add
                                        local.set 8
                                        i32.const 1
                                        local.set 25
                                        local.get 4
                                        i32.load8_s offset=1
                                        i32.const 4
                                        i32.shl
                                        local.get 2
                                        i32.add
                                        i32.const 768
                                        i32.sub
                                        i32.load
                                        br 1 (;@17;)
                                      end
                                      local.get 25
                                      br_if 6 (;@11;)
                                      local.get 4
                                      i32.const 1
                                      i32.add
                                      local.set 8
                                      local.get 0
                                      i32.eqz
                                      if  ;; label = @18
                                        i32.const 0
                                        local.set 25
                                        i32.const 0
                                        local.set 13
                                        br 6 (;@12;)
                                      end
                                      local.get 1
                                      local.get 1
                                      i32.load
                                      local.tee 4
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      i32.const 0
                                      local.set 25
                                      local.get 4
                                      i32.load
                                    end
                                    local.tee 13
                                    i32.const 0
                                    i32.ge_s
                                    br_if 4 (;@12;)
                                    i32.const 0
                                    local.get 13
                                    i32.sub
                                    local.set 13
                                    local.get 11
                                    i32.const 8192
                                    i32.or
                                    local.set 11
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 13
                                  local.get 9
                                  i32.const 48
                                  i32.sub
                                  local.tee 12
                                  i32.const 9
                                  i32.gt_u
                                  if  ;; label = @16
                                    local.get 4
                                    local.set 8
                                    br 4 (;@12;)
                                  end
                                  loop  ;; label = @16
                                    local.get 13
                                    i32.const 214748364
                                    i32.le_u
                                    if  ;; label = @17
                                      i32.const -1
                                      local.get 13
                                      i32.const 10
                                      i32.mul
                                      local.tee 5
                                      local.get 12
                                      i32.add
                                      local.get 12
                                      local.get 5
                                      i32.const 2147483647
                                      i32.xor
                                      i32.gt_u
                                      select
                                      local.set 13
                                      local.get 4
                                      i32.load8_s offset=1
                                      local.get 4
                                      i32.const 1
                                      i32.add
                                      local.tee 8
                                      local.set 4
                                      i32.const 48
                                      i32.sub
                                      local.tee 12
                                      i32.const 10
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      local.get 13
                                      i32.const 0
                                      i32.lt_s
                                      br_if 13 (;@4;)
                                      br 5 (;@12;)
                                    end
                                    local.get 4
                                    i32.load8_s offset=1
                                    i32.const -1
                                    local.set 13
                                    local.get 4
                                    i32.const 1
                                    i32.add
                                    local.set 4
                                    i32.const 48
                                    i32.sub
                                    local.tee 12
                                    i32.const 10
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                  end
                                  br 11 (;@4;)
                                end
                                local.get 12
                                i32.load8_u offset=1
                                local.set 4
                                local.get 12
                                i32.const 1
                                i32.add
                                local.set 12
                                br 0 (;@14;)
                              end
                              unreachable
                            end
                            local.get 0
                            br_if 11 (;@1;)
                            local.get 25
                            i32.eqz
                            if  ;; label = @13
                              i32.const 0
                              local.set 18
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              local.get 3
                              i32.load offset=4
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 1
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 16
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=8
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 2
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 32
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=12
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 3
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 48
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 4
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const -64
                              i32.sub
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=20
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 5
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 80
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=24
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 6
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 96
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=28
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 7
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 112
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=32
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 8
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 128
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              local.get 3
                              i32.load offset=36
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                i32.const 9
                                local.set 12
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 144
                              i32.add
                              local.get 0
                              local.get 1
                              call 46
                              i32.const 1
                              local.set 18
                              br 12 (;@1;)
                            end
                            local.get 12
                            i32.const 2
                            i32.shl
                            local.set 12
                            loop  ;; label = @13
                              local.get 3
                              local.get 12
                              i32.add
                              i32.load
                              br_if 2 (;@11;)
                              local.get 12
                              i32.const 4
                              i32.add
                              local.tee 12
                              i32.const 40
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            i32.const 1
                            local.set 18
                            br 11 (;@1;)
                          end
                          i32.const 0
                          local.set 4
                          i32.const -1
                          local.set 9
                          block  ;; label = @12
                            local.get 8
                            i32.load8_u
                            i32.const 46
                            i32.ne
                            if  ;; label = @13
                              local.get 8
                              local.set 12
                              i32.const 0
                              local.set 10
                              br 1 (;@12;)
                            end
                            local.get 8
                            i32.load8_s offset=1
                            local.tee 5
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 8
                                  i32.load8_s offset=2
                                  i32.const 48
                                  i32.sub
                                  local.tee 5
                                  i32.const 9
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 3
                                  local.get 5
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  i32.const 10
                                  i32.store
                                  local.get 8
                                  i32.const 4
                                  i32.add
                                  local.set 12
                                  local.get 8
                                  i32.load8_s offset=2
                                  i32.const 4
                                  i32.shl
                                  local.get 2
                                  i32.add
                                  i32.const 768
                                  i32.sub
                                  i32.load
                                  br 1 (;@14;)
                                end
                                local.get 25
                                br_if 3 (;@11;)
                                local.get 8
                                i32.const 2
                                i32.add
                                local.set 12
                                i32.const 0
                                local.get 0
                                i32.eqz
                                br_if 0 (;@14;)
                                drop
                                local.get 1
                                local.get 1
                                i32.load
                                local.tee 5
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 5
                                i32.load
                              end
                              local.tee 9
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              local.set 10
                              br 1 (;@12;)
                            end
                            local.get 8
                            i32.const 1
                            i32.add
                            local.set 12
                            local.get 5
                            i32.const 48
                            i32.sub
                            local.tee 14
                            i32.const 9
                            i32.gt_u
                            if  ;; label = @13
                              i32.const 1
                              local.set 10
                              i32.const 0
                              local.set 9
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 15
                            local.get 12
                            local.set 8
                            loop  ;; label = @13
                              i32.const -1
                              local.set 9
                              local.get 15
                              i32.const 214748364
                              i32.le_u
                              if  ;; label = @14
                                i32.const -1
                                local.get 15
                                i32.const 10
                                i32.mul
                                local.tee 5
                                local.get 14
                                i32.add
                                local.get 14
                                local.get 5
                                i32.const 2147483647
                                i32.xor
                                i32.gt_u
                                select
                                local.set 9
                              end
                              i32.const 1
                              local.set 10
                              local.get 8
                              i32.load8_s offset=1
                              local.get 8
                              i32.const 1
                              i32.add
                              local.tee 12
                              local.set 8
                              local.get 9
                              local.set 15
                              i32.const 48
                              i32.sub
                              local.tee 14
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.set 5
                            local.get 12
                            i32.load8_s
                            local.tee 4
                            i32.const 123
                            i32.sub
                            i32.const -58
                            i32.lt_u
                            br_if 1 (;@11;)
                            local.get 12
                            i32.const 1
                            i32.add
                            local.set 12
                            local.get 4
                            local.get 5
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 1050687
                            i32.add
                            i32.load8_u
                            local.tee 4
                            i32.const 1
                            i32.sub
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 4
                              i32.const 27
                              i32.ne
                              if  ;; label = @14
                                local.get 4
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 16
                                i32.const 0
                                i32.ge_s
                                if  ;; label = @15
                                  local.get 3
                                  local.get 16
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 4
                                  i32.store
                                  local.get 7
                                  local.get 2
                                  local.get 16
                                  i32.const 4
                                  i32.shl
                                  i32.add
                                  local.tee 4
                                  i64.load
                                  i64.store offset=448
                                  local.get 7
                                  local.get 4
                                  i32.const 8
                                  i32.add
                                  i64.load
                                  i64.store offset=456
                                  br 2 (;@13;)
                                end
                                local.get 0
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 18
                                  br 14 (;@1;)
                                end
                                local.get 7
                                i32.const 448
                                i32.add
                                local.get 4
                                local.get 1
                                call 46
                                br 2 (;@12;)
                              end
                              local.get 16
                              i32.const 0
                              i32.ge_s
                              br_if 2 (;@11;)
                            end
                            i32.const 0
                            local.set 4
                            local.get 0
                            i32.eqz
                            br_if 9 (;@3;)
                          end
                          local.get 11
                          i32.const -65537
                          i32.and
                          local.tee 15
                          local.get 11
                          local.get 11
                          i32.const 8192
                          i32.and
                          select
                          local.set 17
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block (result i32)  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block (result i32)  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 12
                                                            i32.const 1
                                                            i32.sub
                                                            i32.load8_s
                                                            local.tee 4
                                                            i32.const -33
                                                            i32.and
                                                            local.get 4
                                                            local.get 4
                                                            i32.const 15
                                                            i32.and
                                                            i32.const 3
                                                            i32.eq
                                                            select
                                                            local.get 4
                                                            local.get 5
                                                            select
                                                            local.tee 19
                                                            i32.const 65
                                                            i32.sub
                                                            br_table 16 (;@12;) 18 (;@10;) 13 (;@15;) 18 (;@10;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 12 (;@16;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 16 (;@12;) 18 (;@10;) 8 (;@20;) 5 (;@23;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 5 (;@23;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 9 (;@19;) 1 (;@27;) 4 (;@24;) 2 (;@26;) 18 (;@10;) 18 (;@10;) 10 (;@18;) 18 (;@10;) 0 (;@28;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;)
                                                          end
                                                          i32.const 0
                                                          local.set 14
                                                          local.get 7
                                                          i64.load offset=448
                                                          local.set 40
                                                          i32.const 1048608
                                                          br 5 (;@22;)
                                                        end
                                                        i32.const 0
                                                        local.set 4
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      local.get 5
                                                                      i32.const 255
                                                                      i32.and
                                                                      br_table 0 (;@33;) 1 (;@32;) 2 (;@31;) 3 (;@30;) 4 (;@29;) 30 (;@3;) 5 (;@28;) 6 (;@27;) 30 (;@3;)
                                                                    end
                                                                    local.get 7
                                                                    i32.load offset=448
                                                                    local.get 18
                                                                    i32.store
                                                                    br 29 (;@3;)
                                                                  end
                                                                  local.get 7
                                                                  i32.load offset=448
                                                                  local.get 18
                                                                  i32.store
                                                                  br 28 (;@3;)
                                                                end
                                                                local.get 7
                                                                i32.load offset=448
                                                                local.get 18
                                                                i64.extend_i32_s
                                                                i64.store
                                                                br 27 (;@3;)
                                                              end
                                                              local.get 7
                                                              i32.load offset=448
                                                              local.get 18
                                                              i32.store16
                                                              br 26 (;@3;)
                                                            end
                                                            local.get 7
                                                            i32.load offset=448
                                                            local.get 18
                                                            i32.store8
                                                            br 25 (;@3;)
                                                          end
                                                          local.get 7
                                                          i32.load offset=448
                                                          local.get 18
                                                          i32.store
                                                          br 24 (;@3;)
                                                        end
                                                        local.get 7
                                                        i32.load offset=448
                                                        local.get 18
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br 23 (;@3;)
                                                      end
                                                      local.get 9
                                                      i32.const 8
                                                      local.get 9
                                                      i32.const 8
                                                      i32.gt_u
                                                      select
                                                      local.set 9
                                                      local.get 17
                                                      i32.const 8
                                                      i32.or
                                                      local.set 17
                                                      i32.const 120
                                                      local.set 19
                                                    end
                                                    i32.const 0
                                                    local.set 14
                                                    i32.const 1048608
                                                    local.set 16
                                                    local.get 7
                                                    i64.load offset=448
                                                    local.tee 40
                                                    i64.eqz
                                                    if  ;; label = @25
                                                      local.get 22
                                                      local.set 6
                                                      br 4 (;@21;)
                                                    end
                                                    local.get 19
                                                    i32.const 32
                                                    i32.and
                                                    local.set 4
                                                    local.get 22
                                                    local.set 6
                                                    loop  ;; label = @25
                                                      local.get 6
                                                      i32.const 1
                                                      i32.sub
                                                      local.tee 6
                                                      local.get 40
                                                      i32.wrap_i64
                                                      i32.const 15
                                                      i32.and
                                                      i32.const 1051216
                                                      i32.add
                                                      i32.load8_u
                                                      local.get 4
                                                      i32.or
                                                      i32.store8
                                                      local.get 40
                                                      i64.const 15
                                                      i64.gt_u
                                                      local.get 40
                                                      i64.const 4
                                                      i64.shr_u
                                                      local.set 40
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 17
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 19
                                                    i32.const 4
                                                    i32.shr_s
                                                    i32.const 1048608
                                                    i32.add
                                                    local.set 16
                                                    i32.const 2
                                                    local.set 14
                                                    br 3 (;@21;)
                                                  end
                                                  local.get 22
                                                  local.set 6
                                                  local.get 7
                                                  i64.load offset=448
                                                  local.tee 40
                                                  i64.eqz
                                                  i32.eqz
                                                  if  ;; label = @24
                                                    loop  ;; label = @25
                                                      local.get 6
                                                      i32.const 1
                                                      i32.sub
                                                      local.tee 6
                                                      local.get 40
                                                      i32.wrap_i64
                                                      i32.const 7
                                                      i32.and
                                                      i32.const 48
                                                      i32.or
                                                      i32.store8
                                                      local.get 40
                                                      i64.const 7
                                                      i64.gt_u
                                                      local.get 40
                                                      i64.const 3
                                                      i64.shr_u
                                                      local.set 40
                                                      br_if 0 (;@25;)
                                                    end
                                                  end
                                                  i32.const 0
                                                  local.set 14
                                                  i32.const 1048608
                                                  local.set 16
                                                  local.get 17
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if 2 (;@21;)
                                                  local.get 9
                                                  local.get 22
                                                  local.get 6
                                                  i32.sub
                                                  local.tee 4
                                                  i32.const 1
                                                  i32.add
                                                  local.get 4
                                                  local.get 9
                                                  i32.lt_s
                                                  select
                                                  local.set 9
                                                  br 2 (;@21;)
                                                end
                                                local.get 7
                                                i64.load offset=448
                                                local.tee 40
                                                i64.const 0
                                                i64.lt_s
                                                if  ;; label = @23
                                                  local.get 7
                                                  i64.const 0
                                                  local.get 40
                                                  i64.sub
                                                  local.tee 40
                                                  i64.store offset=448
                                                  i32.const 1
                                                  local.set 14
                                                  i32.const 1048608
                                                  br 1 (;@22;)
                                                end
                                                local.get 17
                                                i32.const 2048
                                                i32.and
                                                if  ;; label = @23
                                                  i32.const 1
                                                  local.set 14
                                                  i32.const 1048609
                                                  br 1 (;@22;)
                                                end
                                                i32.const 1048610
                                                i32.const 1048608
                                                local.get 17
                                                i32.const 1
                                                i32.and
                                                local.tee 14
                                                select
                                              end
                                              local.set 16
                                              block  ;; label = @22
                                                local.get 40
                                                i64.const 4294967296
                                                i64.lt_u
                                                if  ;; label = @23
                                                  local.get 40
                                                  local.set 41
                                                  local.get 22
                                                  local.set 6
                                                  br 1 (;@22;)
                                                end
                                                local.get 22
                                                local.set 6
                                                loop  ;; label = @23
                                                  local.get 6
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 6
                                                  local.get 40
                                                  local.get 40
                                                  i64.const 10
                                                  i64.div_u
                                                  local.tee 41
                                                  i64.const 10
                                                  i64.mul
                                                  i64.sub
                                                  i32.wrap_i64
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 40
                                                  i64.const 42949672959
                                                  i64.gt_u
                                                  local.get 41
                                                  local.set 40
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 41
                                              i32.wrap_i64
                                              local.tee 4
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 6
                                                i32.const 1
                                                i32.sub
                                                local.tee 6
                                                local.get 4
                                                local.get 4
                                                i32.const 10
                                                i32.div_u
                                                local.tee 5
                                                i32.const 10
                                                i32.mul
                                                i32.sub
                                                i32.const 48
                                                i32.or
                                                i32.store8
                                                local.get 4
                                                i32.const 9
                                                i32.gt_u
                                                local.get 5
                                                local.set 4
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 10
                                            i32.eqz
                                            i32.eqz
                                            local.get 9
                                            i32.const 0
                                            i32.lt_s
                                            i32.and
                                            br_if 16 (;@4;)
                                            local.get 17
                                            i32.const -65537
                                            i32.and
                                            local.get 17
                                            local.get 10
                                            select
                                            local.set 15
                                            block  ;; label = @21
                                              local.get 7
                                              i64.load offset=448
                                              local.tee 40
                                              i64.const 0
                                              i64.ne
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.set 11
                                              local.get 9
                                              br_if 0 (;@21;)
                                              local.get 22
                                              local.tee 6
                                              local.set 4
                                              br 12 (;@9;)
                                            end
                                            local.get 9
                                            local.get 40
                                            i64.eqz
                                            local.get 22
                                            local.get 6
                                            i32.sub
                                            i32.add
                                            local.tee 4
                                            local.get 4
                                            local.get 9
                                            i32.lt_s
                                            select
                                            local.set 11
                                            local.get 22
                                            local.set 4
                                            br 11 (;@9;)
                                          end
                                          local.get 7
                                          local.get 7
                                          i64.load offset=448
                                          i64.store8 offset=438
                                          i32.const 0
                                          local.set 14
                                          i32.const 1048608
                                          local.set 16
                                          i32.const 1
                                          local.set 11
                                          local.get 34
                                          local.set 6
                                          local.get 22
                                          local.set 4
                                          br 10 (;@9;)
                                        end
                                        i32.const 1051524
                                        i32.load
                                        local.set 6
                                        i32.const 1053752
                                        i32.load
                                        local.tee 4
                                        i32.eqz
                                        if  ;; label = @19
                                          i32.const 1053752
                                          i32.const 1053728
                                          i32.store
                                          i32.const 1053728
                                          local.set 4
                                        end
                                        local.get 4
                                        i32.load offset=20
                                        drop
                                        i32.const 0
                                        local.get 6
                                        local.get 6
                                        i32.const 76
                                        i32.gt_u
                                        select
                                        i32.const 1
                                        i32.shl
                                        i32.const 1050592
                                        i32.add
                                        i32.load16_u
                                        i32.const 1049040
                                        i32.add
                                        br 1 (;@17;)
                                      end
                                      local.get 7
                                      i32.load offset=448
                                      local.tee 4
                                      i32.const 1048674
                                      local.get 4
                                      select
                                    end
                                    local.set 6
                                    local.get 9
                                    i32.const 2147483647
                                    local.get 9
                                    i32.const 2147483647
                                    i32.lt_u
                                    select
                                    local.tee 4
                                    i32.const 0
                                    i32.ne
                                    local.set 10
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 6
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 4
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 6
                                              i32.load8_u
                                              i32.eqz
                                              if  ;; label = @22
                                                local.get 6
                                                local.set 8
                                                local.get 4
                                                local.set 5
                                                br 3 (;@19;)
                                              end
                                              local.get 4
                                              i32.const 1
                                              i32.sub
                                              local.tee 5
                                              i32.const 0
                                              i32.ne
                                              local.set 10
                                              local.get 6
                                              i32.const 1
                                              i32.add
                                              local.tee 8
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 5
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 8
                                              i32.load8_u
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 4
                                              i32.const 2
                                              i32.sub
                                              local.tee 5
                                              i32.const 0
                                              i32.ne
                                              local.set 10
                                              local.get 6
                                              i32.const 2
                                              i32.add
                                              local.tee 8
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 5
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 8
                                              i32.load8_u
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 4
                                              i32.const 3
                                              i32.sub
                                              local.tee 5
                                              i32.const 0
                                              i32.ne
                                              local.set 10
                                              local.get 6
                                              i32.const 3
                                              i32.add
                                              local.tee 8
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 5
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 8
                                              i32.load8_u
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 6
                                              i32.const 4
                                              i32.add
                                              local.set 8
                                              local.get 4
                                              i32.const 4
                                              i32.sub
                                              local.tee 5
                                              i32.const 0
                                              i32.ne
                                              local.set 10
                                              br 1 (;@20;)
                                            end
                                            local.get 4
                                            local.set 5
                                            local.get 6
                                            local.set 8
                                          end
                                          local.get 10
                                          i32.eqz
                                          br_if 1 (;@18;)
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 8
                                            i32.load8_u
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 4
                                            i32.lt_u
                                            br_if 0 (;@20;)
                                            loop  ;; label = @21
                                              local.get 8
                                              i32.load
                                              local.tee 10
                                              i32.const 16843009
                                              i32.sub
                                              local.get 10
                                              i32.const -1
                                              i32.xor
                                              i32.and
                                              i32.const -2139062144
                                              i32.and
                                              br_if 2 (;@19;)
                                              local.get 8
                                              i32.const 4
                                              i32.add
                                              local.set 8
                                              local.get 5
                                              i32.const 4
                                              i32.sub
                                              local.tee 5
                                              i32.const 3
                                              i32.gt_u
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 5
                                          i32.eqz
                                          br_if 1 (;@18;)
                                        end
                                        loop  ;; label = @19
                                          local.get 8
                                          i32.load8_u
                                          i32.eqz
                                          br_if 2 (;@17;)
                                          local.get 8
                                          i32.const 1
                                          i32.add
                                          local.set 8
                                          local.get 5
                                          i32.const 1
                                          i32.sub
                                          local.tee 5
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      i32.const 0
                                      local.set 8
                                    end
                                    local.get 8
                                    local.get 6
                                    i32.sub
                                    local.get 4
                                    local.get 8
                                    select
                                    local.tee 11
                                    local.get 6
                                    i32.add
                                    local.set 4
                                    i32.const 0
                                    local.set 14
                                    i32.const 1048608
                                    local.set 16
                                    local.get 9
                                    i32.const 0
                                    i32.ge_s
                                    br_if 7 (;@9;)
                                    local.get 4
                                    i32.load8_u
                                    i32.eqz
                                    br_if 7 (;@9;)
                                    br 12 (;@4;)
                                  end
                                  local.get 7
                                  i32.load offset=448
                                  local.set 6
                                  local.get 9
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.set 4
                                  br 2 (;@13;)
                                end
                                local.get 7
                                i32.const 0
                                i32.store offset=380
                                local.get 7
                                local.get 7
                                i64.load offset=448
                                i64.store32 offset=376
                                local.get 7
                                local.get 7
                                i32.const 376
                                i32.add
                                local.tee 6
                                i32.store offset=448
                                i32.const -1
                                local.set 9
                              end
                              i32.const 0
                              local.set 4
                              local.get 6
                              local.set 5
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 5
                                  i32.load
                                  local.tee 8
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  block  ;; label = @16
                                    local.get 7
                                    i32.const 372
                                    i32.add
                                    local.get 8
                                    call 43
                                    local.tee 8
                                    i32.const 0
                                    i32.lt_s
                                    local.tee 10
                                    br_if 0 (;@16;)
                                    local.get 8
                                    local.get 9
                                    local.get 4
                                    i32.sub
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 4
                                    i32.add
                                    local.set 5
                                    local.get 9
                                    local.get 4
                                    local.get 8
                                    i32.add
                                    local.tee 4
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                local.get 10
                                br_if 12 (;@2;)
                              end
                              local.get 4
                              i32.const 0
                              i32.lt_s
                              br_if 9 (;@4;)
                            end
                            block  ;; label = @13
                              local.get 17
                              i32.const 73728
                              i32.and
                              local.tee 9
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 13
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 13
                              local.get 4
                              i32.sub
                              local.tee 5
                              i32.const 256
                              i32.lt_u
                              local.set 8
                              local.get 7
                              i32.const 528
                              i32.add
                              i32.const 32
                              local.get 5
                              i32.const 256
                              local.get 8
                              select
                              memory.fill
                              local.get 8
                              i32.eqz
                              if  ;; label = @14
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 7
                                    i32.const 528
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call 42
                                  end
                                  local.get 5
                                  i32.const 256
                                  i32.sub
                                  local.tee 5
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 528
                              i32.add
                              local.get 5
                              local.get 0
                              call 42
                            end
                            block  ;; label = @13
                              local.get 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 5
                              loop  ;; label = @14
                                local.get 6
                                i32.load
                                local.tee 8
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 7
                                i32.const 372
                                i32.add
                                local.get 8
                                call 43
                                local.tee 8
                                local.get 5
                                i32.add
                                local.tee 5
                                local.get 4
                                i32.gt_u
                                br_if 1 (;@13;)
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  local.get 7
                                  i32.const 372
                                  i32.add
                                  local.get 8
                                  local.get 0
                                  call 42
                                end
                                local.get 6
                                i32.const 4
                                i32.add
                                local.set 6
                                local.get 4
                                local.get 5
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 9
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 13
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 13
                              local.get 4
                              i32.sub
                              local.tee 5
                              i32.const 256
                              i32.lt_u
                              local.set 6
                              local.get 7
                              i32.const 528
                              i32.add
                              i32.const 32
                              local.get 5
                              i32.const 256
                              local.get 6
                              select
                              memory.fill
                              local.get 6
                              i32.eqz
                              if  ;; label = @14
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 7
                                    i32.const 528
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call 42
                                  end
                                  local.get 5
                                  i32.const 256
                                  i32.sub
                                  local.tee 5
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 528
                              i32.add
                              local.get 5
                              local.get 0
                              call 42
                            end
                            local.get 13
                            local.get 4
                            local.get 4
                            local.get 13
                            i32.lt_s
                            select
                            local.set 4
                            br 9 (;@3;)
                          end
                          local.get 10
                          i32.eqz
                          i32.eqz
                          local.get 9
                          i32.const 0
                          i32.lt_s
                          i32.and
                          br_if 7 (;@4;)
                          local.get 7
                          i64.load offset=448
                          local.set 41
                          local.get 7
                          i64.load offset=456
                          local.set 40
                          local.get 7
                          i32.const 0
                          i32.store offset=524
                          block (result i32)  ;; label = @12
                            local.get 40
                            i64.const 0
                            i64.lt_s
                            if  ;; label = @13
                              local.get 40
                              i64.const -9223372036854775808
                              i64.xor
                              local.set 40
                              i32.const 1
                              local.set 21
                              i32.const 1048618
                              local.set 26
                              i32.const 0
                              br 1 (;@12;)
                            end
                            local.get 17
                            i32.const 2048
                            i32.and
                            if  ;; label = @13
                              i32.const 1
                              local.set 21
                              i32.const 1048621
                              local.set 26
                              i32.const 0
                              br 1 (;@12;)
                            end
                            i32.const 1048624
                            i32.const 1048619
                            local.get 17
                            i32.const 1
                            i32.and
                            local.tee 21
                            select
                            local.set 26
                            local.get 21
                            i32.eqz
                          end
                          local.set 14
                          local.get 41
                          local.get 40
                          i64.const 9223372036854775807
                          i64.and
                          local.tee 42
                          i64.const 0
                          i64.const 9223090561878065152
                          call 54
                          local.set 4
                          local.get 41
                          local.get 42
                          i64.const 0
                          i64.const 9223090561878065152
                          call 53
                          i32.eqz
                          local.get 4
                          i32.const 0
                          i32.ne
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            local.get 41
                            local.get 40
                            local.get 41
                            local.get 40
                            call 53
                            local.set 8
                            local.get 21
                            i32.const 3
                            i32.add
                            local.set 6
                            block  ;; label = @13
                              local.get 17
                              i32.const 8192
                              i32.and
                              br_if 0 (;@13;)
                              local.get 6
                              local.get 13
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 13
                              local.get 6
                              i32.sub
                              local.tee 4
                              i32.const 256
                              i32.lt_u
                              local.set 5
                              local.get 7
                              i32.const 7904
                              i32.add
                              i32.const 32
                              local.get 4
                              i32.const 256
                              local.get 5
                              select
                              memory.fill
                              local.get 5
                              i32.eqz
                              if  ;; label = @14
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 7
                                    i32.const 7904
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call 42
                                  end
                                  local.get 4
                                  i32.const 256
                                  i32.sub
                                  local.tee 4
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 7904
                              i32.add
                              local.get 4
                              local.get 0
                              call 42
                            end
                            local.get 0
                            i32.load
                            local.tee 4
                            i32.const 32
                            i32.and
                            if (result i32)  ;; label = @13
                              local.get 4
                            else
                              local.get 26
                              local.get 21
                              local.get 0
                              call 42
                              local.get 0
                              i32.load
                            end
                            i32.const 32
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1048637
                              i32.const 1048664
                              local.get 19
                              i32.const 32
                              i32.and
                              local.tee 4
                              select
                              i32.const 1048660
                              i32.const 1048668
                              local.get 4
                              select
                              local.get 8
                              select
                              i32.const 3
                              local.get 0
                              call 42
                            end
                            block  ;; label = @13
                              local.get 17
                              i32.const 73728
                              i32.and
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 6
                              local.get 13
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 13
                              local.get 6
                              i32.sub
                              local.tee 4
                              i32.const 256
                              i32.lt_u
                              local.set 5
                              local.get 7
                              i32.const 7904
                              i32.add
                              i32.const 32
                              local.get 4
                              i32.const 256
                              local.get 5
                              select
                              memory.fill
                              local.get 5
                              i32.eqz
                              if  ;; label = @14
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 7
                                    i32.const 7904
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call 42
                                  end
                                  local.get 4
                                  i32.const 256
                                  i32.sub
                                  local.tee 4
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 7904
                              i32.add
                              local.get 4
                              local.get 0
                              call 42
                            end
                            local.get 6
                            local.get 13
                            local.get 6
                            local.get 13
                            i32.gt_s
                            select
                            local.set 4
                            br 9 (;@3;)
                          end
                          local.get 7
                          i32.const 352
                          i32.add
                          local.get 41
                          local.get 40
                          local.get 7
                          i32.const 524
                          i32.add
                          call 44
                          local.get 7
                          i32.const 336
                          i32.add
                          local.tee 4
                          local.get 7
                          i64.load offset=352
                          local.tee 40
                          local.get 7
                          i64.load offset=360
                          local.tee 41
                          local.get 40
                          local.get 41
                          call 48
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              i64.load offset=336
                              local.tee 40
                              local.get 4
                              i32.const 8
                              i32.add
                              i64.load
                              local.tee 41
                              i64.const 0
                              i64.const 0
                              call 54
                              if  ;; label = @14
                                local.get 7
                                local.get 7
                                i32.load offset=524
                                local.tee 4
                                i32.const 1
                                i32.sub
                                i32.store offset=524
                                local.get 19
                                i32.const 32
                                i32.or
                                local.tee 15
                                i32.const 97
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 19
                              i32.const 32
                              i32.or
                              local.tee 15
                              i32.const 97
                              i32.eq
                              br_if 7 (;@6;)
                              local.get 7
                              i32.load offset=524
                              local.set 6
                              i32.const 6
                              local.get 9
                              local.get 9
                              i32.const 0
                              i32.lt_s
                              select
                              br 1 (;@12;)
                            end
                            local.get 7
                            i32.const 320
                            i32.add
                            local.tee 5
                            local.get 40
                            local.get 41
                            i64.const 4619285842798575616
                            call 52
                            local.get 7
                            local.get 4
                            i32.const 29
                            i32.sub
                            local.tee 6
                            i32.store offset=524
                            local.get 5
                            i32.const 8
                            i32.add
                            i64.load
                            local.set 41
                            local.get 7
                            i64.load offset=320
                            local.set 40
                            i32.const 6
                            local.get 9
                            local.get 9
                            i32.const 0
                            i32.lt_s
                            select
                          end
                          local.set 10
                          i32.const 0
                          i32.const 1728
                          local.get 6
                          i32.const 0
                          i32.lt_s
                          local.tee 20
                          select
                          i32.const 2
                          i32.shl
                          local.tee 23
                          local.get 7
                          i32.const 528
                          i32.add
                          i32.add
                          local.tee 16
                          local.set 5
                          loop  ;; label = @12
                            i32.const 0
                            local.set 4
                            global.get 0
                            i32.const 16
                            i32.sub
                            local.tee 8
                            global.set 0
                            block  ;; label = @13
                              local.get 41
                              i64.const 48
                              i64.shr_u
                              i32.wrap_i64
                              local.tee 9
                              i32.const 32767
                              i32.and
                              local.tee 11
                              i32.const 16383
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 41
                              i64.const 0
                              i64.lt_s
                              br_if 0 (;@13;)
                              i32.const -1
                              local.set 4
                              local.get 11
                              i32.const 16415
                              i32.sub
                              i32.const -32
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 40
                              local.get 41
                              i64.const 281474976710655
                              i64.and
                              i64.const 281474976710656
                              i64.or
                              i32.const 111
                              local.get 9
                              i32.sub
                              i32.const 127
                              i32.and
                              call 50
                              local.get 8
                              i32.load
                              local.set 4
                            end
                            local.get 8
                            i32.const 16
                            i32.add
                            global.set 0
                            local.get 5
                            local.get 4
                            i32.store
                            i64.const 0
                            local.set 42
                            global.get 0
                            i32.const 16
                            i32.sub
                            local.tee 8
                            global.set 0
                            local.get 7
                            i32.const 304
                            i32.add
                            local.tee 9
                            local.get 4
                            if (result i64)  ;; label = @13
                              local.get 8
                              local.get 4
                              i64.extend_i32_u
                              i64.const 0
                              i32.const 112
                              local.get 4
                              i32.clz
                              i32.const 31
                              i32.xor
                              local.tee 4
                              i32.sub
                              call 49
                              local.get 8
                              i32.const 8
                              i32.add
                              i64.load
                              i64.const 281474976710656
                              i64.xor
                              local.get 4
                              i64.extend_i32_u
                              i64.const 48
                              i64.shl
                              i64.add
                              i64.const 4611404543450677248
                              i64.add
                              local.set 42
                              local.get 8
                              i64.load
                            else
                              i64.const 0
                            end
                            i64.store
                            local.get 9
                            local.get 42
                            i64.store offset=8
                            local.get 8
                            i32.const 16
                            i32.add
                            global.set 0
                            local.get 7
                            i32.const 288
                            i32.add
                            local.tee 4
                            local.get 40
                            local.get 41
                            local.get 7
                            i64.load offset=304
                            local.get 9
                            i32.const 8
                            i32.add
                            i64.load
                            call 51
                            local.get 7
                            i32.const 272
                            i32.add
                            local.tee 8
                            local.get 7
                            i64.load offset=288
                            local.get 4
                            i32.const 8
                            i32.add
                            i64.load
                            i64.const 4619810130798575616
                            call 52
                            local.get 5
                            i32.const 4
                            i32.add
                            local.set 5
                            local.get 7
                            i64.load offset=272
                            local.tee 40
                            local.get 8
                            i32.const 8
                            i32.add
                            i64.load
                            local.tee 41
                            i64.const 0
                            i64.const 0
                            call 54
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            local.get 6
                            i32.const 0
                            i32.le_s
                            if  ;; label = @13
                              local.get 5
                              local.set 4
                              local.get 16
                              local.set 8
                              br 1 (;@12;)
                            end
                            local.get 16
                            local.set 8
                            loop  ;; label = @13
                              local.get 6
                              i32.const 29
                              local.get 6
                              i32.const 29
                              i32.lt_s
                              select
                              local.set 6
                              block  ;; label = @14
                                local.get 8
                                local.get 5
                                i32.const 4
                                i32.sub
                                local.tee 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 6
                                i64.extend_i32_u
                                local.set 41
                                i64.const 0
                                local.set 40
                                loop  ;; label = @15
                                  local.get 40
                                  i64.const 4294967295
                                  i64.and
                                  local.get 4
                                  i64.load32_u
                                  local.get 41
                                  i64.shl
                                  i64.add
                                  local.tee 42
                                  i64.const 1000000000
                                  i64.div_u
                                  local.set 40
                                  local.get 4
                                  local.get 42
                                  local.get 40
                                  i64.const 1000000000
                                  i64.mul
                                  i64.sub
                                  i64.store32
                                  local.get 8
                                  local.get 4
                                  i32.const 4
                                  i32.sub
                                  local.tee 4
                                  i32.le_u
                                  br_if 0 (;@15;)
                                end
                                local.get 40
                                i32.wrap_i64
                                local.tee 4
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 8
                                i32.const 4
                                i32.sub
                                local.tee 8
                                local.get 4
                                i32.store
                              end
                              loop  ;; label = @14
                                local.get 8
                                local.get 5
                                local.tee 4
                                i32.lt_u
                                if  ;; label = @15
                                  local.get 4
                                  i32.const 4
                                  i32.sub
                                  local.tee 5
                                  i32.load
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                              end
                              local.get 7
                              local.get 7
                              i32.load offset=524
                              local.get 6
                              i32.sub
                              local.tee 6
                              i32.store offset=524
                              local.get 4
                              local.set 5
                              local.get 6
                              i32.const 0
                              i32.gt_s
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 6
                          i32.const 0
                          i32.lt_s
                          if  ;; label = @12
                            local.get 10
                            i32.const 45
                            i32.add
                            i32.const 9
                            i32.div_u
                            i32.const 1
                            i32.add
                            local.set 11
                            loop  ;; label = @13
                              i32.const 0
                              local.get 6
                              i32.sub
                              local.tee 6
                              i32.const 9
                              local.get 6
                              i32.const 9
                              i32.lt_s
                              select
                              local.set 9
                              block  ;; label = @14
                                local.get 4
                                local.get 8
                                i32.le_u
                                if  ;; label = @15
                                  local.get 8
                                  i32.load
                                  local.set 5
                                  br 1 (;@14;)
                                end
                                i32.const 1000000000
                                local.get 9
                                i32.shr_u
                                local.set 27
                                i32.const -1
                                local.get 9
                                i32.shl
                                i32.const -1
                                i32.xor
                                local.set 28
                                i32.const 0
                                local.set 6
                                local.get 8
                                local.set 5
                                loop  ;; label = @15
                                  local.get 5
                                  local.get 6
                                  local.get 5
                                  i32.load
                                  local.tee 30
                                  local.get 9
                                  i32.shr_u
                                  i32.add
                                  i32.store
                                  local.get 28
                                  local.get 30
                                  i32.and
                                  local.get 27
                                  i32.mul
                                  local.set 6
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.tee 5
                                  local.get 4
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 8
                                i32.load
                                local.set 5
                                local.get 6
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 6
                                i32.store
                                local.get 4
                                i32.const 4
                                i32.add
                                local.set 4
                              end
                              local.get 7
                              local.get 7
                              i32.load offset=524
                              local.get 9
                              i32.add
                              local.tee 6
                              i32.store offset=524
                              local.get 16
                              local.get 8
                              local.get 5
                              i32.eqz
                              i32.const 2
                              i32.shl
                              i32.add
                              local.tee 8
                              local.get 15
                              i32.const 102
                              i32.eq
                              select
                              local.tee 5
                              local.get 11
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 4
                              local.get 4
                              local.get 5
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              local.get 11
                              i32.gt_s
                              select
                              local.set 4
                              local.get 6
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                            end
                          end
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 4
                            local.get 8
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 16
                            local.get 8
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set 11
                            local.get 8
                            i32.load
                            local.tee 6
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 10
                            local.set 5
                            loop  ;; label = @13
                              local.get 11
                              i32.const 1
                              i32.add
                              local.set 11
                              local.get 6
                              local.get 5
                              i32.const 10
                              i32.mul
                              local.tee 5
                              i32.ge_u
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 10
                          i32.const 0
                          local.get 11
                          local.get 15
                          i32.const 102
                          i32.eq
                          select
                          i32.sub
                          local.get 15
                          i32.const 103
                          i32.eq
                          local.tee 27
                          local.get 10
                          i32.const 0
                          i32.ne
                          i32.and
                          i32.sub
                          local.tee 6
                          local.get 4
                          local.get 16
                          i32.sub
                          i32.const 2
                          i32.shr_s
                          i32.const 9
                          i32.mul
                          i32.const 9
                          i32.sub
                          i32.lt_s
                          if  ;; label = @12
                            local.get 6
                            i32.const 147456
                            i32.add
                            local.tee 6
                            i32.const 9
                            i32.div_s
                            local.tee 9
                            i32.const 2
                            i32.shl
                            local.tee 30
                            i32.const 1
                            i32.const 1729
                            local.get 20
                            select
                            i32.const 2
                            i32.shl
                            local.tee 28
                            local.get 7
                            i32.add
                            i32.add
                            i32.const 65008
                            i32.sub
                            local.set 15
                            i32.const 10
                            local.set 5
                            block  ;; label = @13
                              local.get 6
                              local.get 9
                              i32.const 9
                              i32.mul
                              i32.sub
                              local.tee 9
                              i32.const 7
                              i32.gt_s
                              br_if 0 (;@13;)
                              i32.const 8
                              local.get 9
                              i32.sub
                              local.tee 20
                              i32.const 7
                              i32.and
                              local.set 6
                              local.get 9
                              i32.const 1
                              i32.sub
                              i32.const 7
                              i32.ge_u
                              if  ;; label = @14
                                local.get 20
                                i32.const -8
                                i32.and
                                local.set 9
                                loop  ;; label = @15
                                  local.get 5
                                  i32.const 100000000
                                  i32.mul
                                  local.set 5
                                  local.get 9
                                  i32.const 8
                                  i32.sub
                                  local.tee 9
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 6
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 5
                                i32.const 10
                                i32.mul
                                local.set 5
                                local.get 6
                                i32.const 1
                                i32.sub
                                local.tee 6
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 15
                            i32.load
                            local.tee 9
                            local.get 5
                            i32.div_u
                            local.set 20
                            block  ;; label = @13
                              local.get 9
                              local.get 5
                              local.get 20
                              i32.mul
                              i32.sub
                              local.tee 6
                              i32.eqz
                              local.get 15
                              i32.const 4
                              i32.add
                              local.tee 39
                              local.get 4
                              i32.eq
                              i32.and
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 20
                                i32.const 1
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  i64.const 4643211215818981376
                                  local.set 40
                                  i64.const 0
                                  local.set 41
                                  local.get 5
                                  i32.const 1000000000
                                  i32.ne
                                  br_if 1 (;@14;)
                                  local.get 8
                                  local.get 15
                                  i32.ge_u
                                  br_if 1 (;@14;)
                                  local.get 15
                                  i32.const 4
                                  i32.sub
                                  i32.load8_u
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                i64.const 4643211215818981376
                                local.set 40
                                i64.const 1
                                local.set 41
                              end
                              i64.const 4611123068473966592
                              i64.const 4611404543450677248
                              i64.const 4611545280939032576
                              local.get 4
                              local.get 39
                              i32.eq
                              select
                              i64.const 4611545280939032576
                              local.get 5
                              i32.const 1
                              i32.shr_u
                              local.tee 20
                              local.get 6
                              i32.eq
                              select
                              local.get 6
                              local.get 20
                              i32.lt_u
                              select
                              local.set 42
                              block  ;; label = @14
                                local.get 14
                                br_if 0 (;@14;)
                                local.get 26
                                i32.load8_u
                                i32.const 45
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 42
                                i64.const -9223372036854775808
                                i64.or
                                local.set 42
                                i64.const -4580160821035794432
                                local.set 40
                              end
                              local.get 15
                              local.get 9
                              local.get 6
                              i32.sub
                              local.tee 6
                              i32.store
                              local.get 7
                              i32.const 256
                              i32.add
                              local.tee 9
                              local.get 41
                              local.get 40
                              i64.const 0
                              local.get 42
                              call 48
                              local.get 7
                              i64.load offset=256
                              local.get 9
                              i32.const 8
                              i32.add
                              i64.load
                              local.get 41
                              local.get 40
                              call 54
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 15
                              local.get 5
                              local.get 6
                              i32.add
                              local.tee 6
                              i32.store
                              local.get 6
                              i32.const 1000000000
                              i32.ge_u
                              if  ;; label = @14
                                local.get 33
                                local.get 28
                                local.get 30
                                i32.add
                                i32.add
                                local.set 5
                                loop  ;; label = @15
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  i32.const 0
                                  i32.store
                                  local.get 5
                                  local.get 8
                                  i32.lt_u
                                  if  ;; label = @16
                                    local.get 8
                                    i32.const 4
                                    i32.sub
                                    local.tee 8
                                    i32.const 0
                                    i32.store
                                  end
                                  local.get 5
                                  local.get 5
                                  i32.load
                                  i32.const 1
                                  i32.add
                                  local.tee 6
                                  i32.store
                                  local.get 5
                                  i32.const 4
                                  i32.sub
                                  local.set 5
                                  local.get 6
                                  i32.const 999999999
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 5
                                i32.const 4
                                i32.add
                                local.set 15
                              end
                              local.get 16
                              local.get 8
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              i32.const 9
                              i32.mul
                              local.set 11
                              local.get 8
                              i32.load
                              local.tee 6
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 5
                              loop  ;; label = @14
                                local.get 11
                                i32.const 1
                                i32.add
                                local.set 11
                                local.get 6
                                local.get 5
                                i32.const 10
                                i32.mul
                                local.tee 5
                                i32.ge_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 15
                            i32.const 4
                            i32.add
                            local.tee 6
                            local.get 4
                            local.get 4
                            local.get 6
                            i32.gt_u
                            select
                            local.set 4
                          end
                          local.get 4
                          local.get 32
                          i32.add
                          local.get 23
                          i32.sub
                          local.set 5
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              local.set 6
                              local.get 8
                              local.get 4
                              local.tee 15
                              i32.ge_u
                              local.tee 9
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 4
                              i32.sub
                              local.set 5
                              local.get 15
                              i32.const 4
                              i32.sub
                              local.tee 4
                              i32.load
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                          end
                          block  ;; label = @12
                            local.get 27
                            i32.eqz
                            if  ;; label = @13
                              local.get 17
                              i32.const 8
                              i32.and
                              local.set 20
                              br 1 (;@12;)
                            end
                            local.get 10
                            i32.const 1
                            local.get 10
                            select
                            local.tee 5
                            local.get 11
                            i32.gt_s
                            local.get 11
                            i32.const -5
                            i32.gt_s
                            i32.and
                            local.set 4
                            local.get 11
                            i32.const -1
                            i32.xor
                            i32.const -1
                            local.get 4
                            select
                            local.get 5
                            i32.add
                            local.set 10
                            i32.const -1
                            i32.const -2
                            local.get 4
                            select
                            local.get 19
                            i32.add
                            local.set 19
                            local.get 17
                            i32.const 8
                            i32.and
                            local.tee 20
                            br_if 0 (;@12;)
                            i32.const -9
                            local.set 4
                            block  ;; label = @13
                              local.get 9
                              br_if 0 (;@13;)
                              local.get 15
                              i32.const 4
                              i32.sub
                              i32.load
                              local.tee 9
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 4
                              local.get 9
                              i32.const 10
                              i32.rem_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 5
                              loop  ;; label = @14
                                local.get 4
                                i32.const 1
                                i32.sub
                                local.set 4
                                local.get 9
                                local.get 5
                                i32.const 10
                                i32.mul
                                local.tee 5
                                i32.rem_u
                                i32.eqz
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 6
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const 9
                            i32.sub
                            local.set 6
                            local.get 19
                            i32.const -33
                            i32.and
                            i32.const 70
                            i32.eq
                            if  ;; label = @13
                              i32.const 0
                              local.set 20
                              local.get 10
                              local.get 4
                              local.get 6
                              i32.add
                              local.tee 4
                              i32.const 0
                              local.get 4
                              i32.const 0
                              i32.gt_s
                              select
                              local.tee 4
                              local.get 4
                              local.get 10
                              i32.gt_s
                              select
                              local.set 10
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 20
                            local.get 10
                            local.get 6
                            local.get 11
                            i32.add
                            local.get 4
                            i32.add
                            local.tee 4
                            i32.const 0
                            local.get 4
                            i32.const 0
                            i32.gt_s
                            select
                            local.tee 4
                            local.get 4
                            local.get 10
                            i32.gt_s
                            select
                            local.set 10
                          end
                          local.get 10
                          i32.const 2147483645
                          i32.const 2147483646
                          local.get 10
                          local.get 20
                          i32.or
                          local.tee 27
                          select
                          i32.gt_s
                          br_if 7 (;@4;)
                          local.get 10
                          local.get 27
                          i32.const 0
                          i32.ne
                          i32.add
                          i32.const 1
                          i32.add
                          local.set 14
                          block  ;; label = @12
                            local.get 19
                            i32.const -33
                            i32.and
                            i32.const 70
                            i32.ne
                            local.tee 28
                            i32.eqz
                            if  ;; label = @13
                              local.get 11
                              local.get 14
                              i32.const 2147483647
                              i32.xor
                              i32.gt_s
                              br_if 9 (;@4;)
                              local.get 11
                              i32.const 0
                              local.get 11
                              i32.const 0
                              i32.gt_s
                              select
                              local.set 4
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 11
                              i32.eqz
                              if  ;; label = @14
                                local.get 24
                                local.tee 6
                                local.set 5
                                br 1 (;@13;)
                              end
                              local.get 11
                              i32.const 31
                              i32.shr_s
                              local.tee 4
                              local.get 11
                              i32.xor
                              local.get 4
                              i32.sub
                              local.set 4
                              local.get 24
                              local.tee 6
                              local.set 5
                              loop  ;; label = @14
                                local.get 5
                                i32.const 1
                                i32.sub
                                local.tee 5
                                local.get 4
                                local.get 4
                                i32.const 10
                                i32.div_u
                                local.tee 9
                                i32.const 10
                                i32.mul
                                i32.sub
                                i32.const 48
                                i32.or
                                i32.store8
                                local.get 6
                                i32.const 1
                                i32.sub
                                local.set 6
                                local.get 4
                                i32.const 9
                                i32.gt_u
                                local.get 9
                                local.set 4
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 24
                            local.get 6
                            i32.sub
                            i32.const 1
                            i32.le_s
                            if  ;; label = @13
                              local.get 5
                              local.get 38
                              local.get 6
                              i32.sub
                              i32.add
                              local.tee 5
                              i32.const 48
                              local.get 6
                              local.get 37
                              i32.add
                              memory.fill
                            end
                            local.get 5
                            i32.const 2
                            i32.sub
                            local.tee 23
                            local.get 19
                            i32.store8
                            local.get 5
                            i32.const 1
                            i32.sub
                            i32.const 45
                            i32.const 43
                            local.get 11
                            i32.const 0
                            i32.lt_s
                            select
                            i32.store8
                            local.get 24
                            local.get 23
                            i32.sub
                            local.tee 4
                            local.get 14
                            i32.const 2147483647
                            i32.xor
                            i32.gt_s
                            br_if 8 (;@4;)
                          end
                          local.get 4
                          local.get 14
                          i32.add
                          local.tee 4
                          local.get 21
                          i32.const 2147483647
                          i32.xor
                          i32.gt_s
                          br_if 7 (;@4;)
                          local.get 4
                          local.get 21
                          i32.add
                          local.set 14
                          block  ;; label = @12
                            local.get 17
                            i32.const 73728
                            i32.and
                            local.tee 11
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 14
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 14
                            i32.sub
                            local.tee 4
                            i32.const 256
                            i32.lt_u
                            local.set 6
                            local.get 7
                            i32.const 7904
                            i32.add
                            i32.const 32
                            local.get 4
                            i32.const 256
                            local.get 6
                            select
                            memory.fill
                            local.get 6
                            i32.eqz
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  local.get 7
                                  i32.const 7904
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call 42
                                end
                                local.get 4
                                i32.const 256
                                i32.sub
                                local.tee 4
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 7
                            i32.const 7904
                            i32.add
                            local.get 4
                            local.get 0
                            call 42
                          end
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            local.get 26
                            local.get 21
                            local.get 0
                            call 42
                          end
                          block  ;; label = @12
                            local.get 11
                            i32.const 65536
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 14
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 14
                            i32.sub
                            local.tee 4
                            i32.const 256
                            i32.lt_u
                            local.set 6
                            local.get 7
                            i32.const 7904
                            i32.add
                            i32.const 48
                            local.get 4
                            i32.const 256
                            local.get 6
                            select
                            memory.fill
                            local.get 6
                            i32.eqz
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  local.get 7
                                  i32.const 7904
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call 42
                                end
                                local.get 4
                                i32.const 256
                                i32.sub
                                local.tee 4
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 7
                            i32.const 7904
                            i32.add
                            local.get 4
                            local.get 0
                            call 42
                          end
                          local.get 28
                          br_if 3 (;@8;)
                          local.get 16
                          local.get 8
                          local.get 8
                          local.get 16
                          i32.gt_u
                          select
                          local.tee 17
                          local.set 9
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 9
                                  i32.load
                                  local.tee 4
                                  if  ;; label = @16
                                    i32.const 8
                                    local.set 5
                                    loop  ;; label = @17
                                      local.get 7
                                      i32.const 480
                                      i32.add
                                      local.get 5
                                      i32.add
                                      local.get 4
                                      local.get 4
                                      i32.const 10
                                      i32.div_u
                                      local.tee 6
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get 5
                                      i32.const 1
                                      i32.sub
                                      local.set 5
                                      local.get 4
                                      i32.const 9
                                      i32.gt_u
                                      local.get 6
                                      local.set 4
                                      br_if 0 (;@17;)
                                    end
                                    local.get 5
                                    i32.const 1
                                    i32.add
                                    local.tee 8
                                    local.get 7
                                    i32.const 480
                                    i32.add
                                    i32.add
                                    local.set 4
                                    local.get 9
                                    local.get 17
                                    i32.ne
                                    if  ;; label = @17
                                      local.get 5
                                      i32.const 2
                                      i32.add
                                      i32.const 2
                                      i32.lt_s
                                      br_if 4 (;@13;)
                                      br 3 (;@14;)
                                    end
                                    local.get 5
                                    i32.const 8
                                    i32.ne
                                    br_if 3 (;@13;)
                                    br 1 (;@15;)
                                  end
                                  i32.const 9
                                  local.set 8
                                  local.get 9
                                  local.get 17
                                  i32.ne
                                  br_if 1 (;@14;)
                                end
                                local.get 7
                                i32.const 48
                                i32.store8 offset=488
                                local.get 31
                                local.set 4
                                br 1 (;@13;)
                              end
                              local.get 7
                              i32.const 480
                              i32.add
                              local.tee 4
                              local.get 8
                              i32.add
                              local.tee 5
                              i32.const 1
                              i32.sub
                              local.set 6
                              local.get 4
                              local.get 6
                              local.get 4
                              local.get 6
                              i32.lt_u
                              select
                              local.tee 4
                              i32.const 48
                              local.get 5
                              local.get 4
                              i32.sub
                              memory.fill
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 4
                              local.get 29
                              local.get 4
                              i32.sub
                              local.get 0
                              call 42
                            end
                            local.get 16
                            local.get 9
                            i32.const 4
                            i32.add
                            local.tee 9
                            i32.ge_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            local.get 27
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 1048672
                            i32.const 1
                            local.get 0
                            call 42
                          end
                          block  ;; label = @12
                            local.get 9
                            local.get 15
                            i32.ge_u
                            if  ;; label = @13
                              local.get 10
                              local.set 4
                              br 1 (;@12;)
                            end
                            local.get 10
                            i32.const 0
                            i32.le_s
                            if  ;; label = @13
                              local.get 10
                              local.set 4
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 9
                                  i32.load
                                  local.tee 4
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 29
                                    local.tee 5
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 29
                                  local.tee 8
                                  local.set 5
                                  loop  ;; label = @16
                                    local.get 5
                                    i32.const 1
                                    i32.sub
                                    local.tee 5
                                    local.get 4
                                    local.get 4
                                    i32.const 10
                                    i32.div_u
                                    local.tee 6
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get 8
                                    i32.const 1
                                    i32.sub
                                    local.set 8
                                    local.get 4
                                    i32.const 9
                                    i32.gt_u
                                    local.get 6
                                    local.set 4
                                    br_if 0 (;@16;)
                                  end
                                  local.get 5
                                  local.get 7
                                  i32.const 480
                                  i32.add
                                  i32.le_u
                                  br_if 1 (;@14;)
                                end
                                local.get 7
                                i32.const 480
                                i32.add
                                local.tee 4
                                local.get 5
                                i32.add
                                local.get 8
                                i32.sub
                                local.tee 5
                                i32.const 48
                                local.get 8
                                local.get 4
                                i32.sub
                                memory.fill
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                local.get 5
                                local.get 10
                                i32.const 9
                                local.get 10
                                i32.const 9
                                i32.lt_s
                                select
                                local.get 0
                                call 42
                              end
                              local.get 10
                              i32.const 9
                              i32.sub
                              local.set 4
                              local.get 15
                              local.get 9
                              i32.const 4
                              i32.add
                              local.tee 9
                              i32.le_u
                              br_if 1 (;@12;)
                              local.get 10
                              i32.const 9
                              i32.gt_s
                              local.get 4
                              local.set 10
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 0
                          local.get 4
                          i32.const 9
                          i32.add
                          i32.const 9
                          call 47
                          br 4 (;@7;)
                        end
                        i32.const 1051524
                        i32.const 28
                        i32.store
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 14
                      i32.const 1048608
                      local.set 16
                      local.get 22
                      local.set 4
                      local.get 17
                      local.set 15
                      local.get 9
                      local.set 11
                    end
                    local.get 11
                    local.get 4
                    local.get 6
                    i32.sub
                    local.tee 9
                    local.get 9
                    local.get 11
                    i32.lt_s
                    select
                    local.tee 10
                    local.get 14
                    i32.const 2147483647
                    i32.xor
                    i32.gt_s
                    br_if 4 (;@4;)
                    local.get 21
                    local.get 13
                    local.get 10
                    local.get 14
                    i32.add
                    local.tee 8
                    local.get 8
                    local.get 13
                    i32.lt_s
                    select
                    local.tee 4
                    i32.lt_s
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 15
                      i32.const 73728
                      i32.and
                      local.tee 15
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 13
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 8
                      i32.sub
                      local.tee 5
                      i32.const 256
                      i32.lt_u
                      local.set 17
                      local.get 7
                      i32.const 528
                      i32.add
                      i32.const 32
                      local.get 5
                      i32.const 256
                      local.get 17
                      select
                      memory.fill
                      local.get 17
                      i32.eqz
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            local.get 7
                            i32.const 528
                            i32.add
                            i32.const 256
                            local.get 0
                            call 42
                          end
                          local.get 5
                          i32.const 256
                          i32.sub
                          local.tee 5
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 528
                      i32.add
                      local.get 5
                      local.get 0
                      call 42
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 16
                      local.get 14
                      local.get 0
                      call 42
                    end
                    block  ;; label = @9
                      local.get 15
                      i32.const 65536
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 13
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 8
                      i32.sub
                      local.tee 5
                      i32.const 256
                      i32.lt_u
                      local.set 16
                      local.get 7
                      i32.const 528
                      i32.add
                      i32.const 48
                      local.get 5
                      i32.const 256
                      local.get 16
                      select
                      memory.fill
                      local.get 16
                      i32.eqz
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            local.get 7
                            i32.const 528
                            i32.add
                            i32.const 256
                            local.get 0
                            call 42
                          end
                          local.get 5
                          i32.const 256
                          i32.sub
                          local.tee 5
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 528
                      i32.add
                      local.get 5
                      local.get 0
                      call 42
                    end
                    block  ;; label = @9
                      local.get 9
                      local.get 11
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 10
                      local.get 9
                      i32.sub
                      local.tee 5
                      i32.const 256
                      i32.lt_u
                      local.set 10
                      local.get 7
                      i32.const 528
                      i32.add
                      i32.const 48
                      local.get 5
                      i32.const 256
                      local.get 10
                      select
                      memory.fill
                      local.get 10
                      i32.eqz
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            local.get 7
                            i32.const 528
                            i32.add
                            i32.const 256
                            local.get 0
                            call 42
                          end
                          local.get 5
                          i32.const 256
                          i32.sub
                          local.tee 5
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 528
                      i32.add
                      local.get 5
                      local.get 0
                      call 42
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      local.get 9
                      local.get 0
                      call 42
                    end
                    local.get 15
                    i32.const 8192
                    i32.ne
                    br_if 5 (;@3;)
                    local.get 8
                    local.get 13
                    i32.ge_s
                    br_if 5 (;@3;)
                    local.get 4
                    local.get 8
                    i32.sub
                    local.tee 5
                    i32.const 256
                    i32.lt_u
                    local.set 6
                    local.get 7
                    i32.const 528
                    i32.add
                    i32.const 32
                    local.get 5
                    i32.const 256
                    local.get 6
                    select
                    memory.fill
                    local.get 6
                    i32.eqz
                    if  ;; label = @9
                      loop  ;; label = @10
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          local.get 7
                          i32.const 528
                          i32.add
                          i32.const 256
                          local.get 0
                          call 42
                        end
                        local.get 5
                        i32.const 256
                        i32.sub
                        local.tee 5
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if 5 (;@3;)
                    local.get 7
                    i32.const 528
                    i32.add
                    local.get 5
                    local.get 0
                    call 42
                    br 5 (;@3;)
                  end
                  block  ;; label = @8
                    local.get 10
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 15
                    local.get 8
                    i32.const 4
                    i32.add
                    local.get 8
                    local.get 15
                    i32.lt_u
                    select
                    local.set 15
                    local.get 8
                    local.set 9
                    loop  ;; label = @9
                      block (result i32)  ;; label = @10
                        block  ;; label = @11
                          local.get 9
                          i32.load
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 5
                          loop  ;; label = @12
                            local.get 5
                            local.get 7
                            i32.add
                            i32.const 488
                            i32.add
                            local.get 4
                            local.get 4
                            i32.const 10
                            i32.div_u
                            local.tee 6
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get 5
                            i32.const 1
                            i32.sub
                            local.set 5
                            local.get 4
                            i32.const 9
                            i32.gt_u
                            local.get 6
                            local.set 4
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 7
                          i32.add
                          i32.const 489
                          i32.add
                          br 1 (;@10;)
                        end
                        local.get 7
                        i32.const 48
                        i32.store8 offset=488
                        local.get 31
                      end
                      local.set 4
                      block  ;; label = @10
                        local.get 8
                        local.get 9
                        i32.ne
                        if  ;; label = @11
                          local.get 4
                          local.get 7
                          i32.const 480
                          i32.add
                          i32.le_u
                          br_if 1 (;@10;)
                          local.get 7
                          i32.const 480
                          i32.add
                          local.tee 6
                          i32.const 48
                          local.get 4
                          local.get 6
                          i32.sub
                          memory.fill
                          local.get 6
                          local.set 4
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          local.get 4
                          i32.const 1
                          local.get 0
                          call 42
                        end
                        local.get 4
                        i32.const 1
                        i32.add
                        local.set 4
                        local.get 20
                        i32.eqz
                        local.get 10
                        i32.const 0
                        i32.le_s
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 1048672
                        i32.const 1
                        local.get 0
                        call 42
                      end
                      local.get 29
                      local.get 4
                      i32.sub
                      local.set 6
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        local.get 4
                        local.get 10
                        local.get 6
                        local.get 6
                        local.get 10
                        i32.gt_s
                        select
                        local.get 0
                        call 42
                      end
                      local.get 10
                      local.get 6
                      i32.sub
                      local.set 10
                      local.get 15
                      local.get 9
                      i32.const 4
                      i32.add
                      local.tee 9
                      i32.le_u
                      br_if 1 (;@8;)
                      local.get 10
                      i32.const 0
                      i32.ge_s
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 10
                  i32.const 18
                  i32.add
                  i32.const 18
                  call 47
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if 0 (;@7;)
                  local.get 23
                  local.get 24
                  local.get 23
                  i32.sub
                  local.get 0
                  call 42
                end
                local.get 11
                i32.const 8192
                i32.ne
                br_if 1 (;@5;)
                local.get 13
                local.get 14
                i32.le_s
                br_if 1 (;@5;)
                local.get 13
                local.get 14
                i32.sub
                local.tee 4
                i32.const 256
                i32.lt_u
                local.set 6
                local.get 7
                i32.const 7904
                i32.add
                i32.const 32
                local.get 4
                i32.const 256
                local.get 6
                select
                memory.fill
                local.get 6
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      i32.const 7904
                      i32.add
                      i32.const 256
                      local.get 0
                      call 42
                    end
                    local.get 4
                    i32.const 256
                    i32.sub
                    local.tee 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 1 (;@5;)
                local.get 7
                i32.const 7904
                i32.add
                local.get 4
                local.get 0
                call 42
                br 1 (;@5;)
              end
              local.get 26
              local.get 19
              i32.const 26
              i32.shl
              i32.const 31
              i32.shr_s
              i32.const 9
              i32.and
              i32.add
              local.set 10
              block  ;; label = @6
                local.get 9
                i32.const 26
                i32.gt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 27
                  local.get 9
                  i32.sub
                  local.tee 4
                  i32.const 7
                  i32.and
                  local.tee 5
                  i32.eqz
                  if  ;; label = @8
                    i64.const 4612530443357519872
                    local.set 42
                    i64.const 0
                    local.set 43
                    br 1 (;@7;)
                  end
                  local.get 9
                  i32.const 27
                  i32.sub
                  local.set 4
                  i64.const 4612530443357519872
                  local.set 42
                  i64.const 0
                  local.set 43
                  loop  ;; label = @8
                    local.get 7
                    i32.const 240
                    i32.add
                    local.tee 6
                    local.get 43
                    local.get 42
                    i64.const 4612530443357519872
                    call 52
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 4
                    local.get 6
                    i32.const 8
                    i32.add
                    i64.load
                    local.set 42
                    local.get 7
                    i64.load offset=240
                    local.set 43
                    local.get 5
                    i32.const 1
                    i32.sub
                    local.tee 5
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 4
                  i32.sub
                  local.set 4
                end
                local.get 9
                i32.const 20
                i32.sub
                i32.const 7
                i32.ge_u
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 7
                    i32.const 224
                    i32.add
                    local.tee 6
                    local.get 43
                    local.get 42
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 208
                    i32.add
                    local.tee 5
                    local.get 7
                    i64.load offset=224
                    local.get 6
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 192
                    i32.add
                    local.tee 6
                    local.get 7
                    i64.load offset=208
                    local.get 5
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 176
                    i32.add
                    local.tee 5
                    local.get 7
                    i64.load offset=192
                    local.get 6
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 160
                    i32.add
                    local.tee 6
                    local.get 7
                    i64.load offset=176
                    local.get 5
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 144
                    i32.add
                    local.tee 5
                    local.get 7
                    i64.load offset=160
                    local.get 6
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 128
                    i32.add
                    local.tee 6
                    local.get 7
                    i64.load offset=144
                    local.get 5
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 7
                    i32.const 112
                    i32.add
                    local.tee 5
                    local.get 7
                    i64.load offset=128
                    local.get 6
                    i32.const 8
                    i32.add
                    i64.load
                    i64.const 4612530443357519872
                    call 52
                    local.get 5
                    i32.const 8
                    i32.add
                    i64.load
                    local.set 42
                    local.get 7
                    i64.load offset=112
                    local.set 43
                    local.get 4
                    i32.const 8
                    i32.sub
                    local.tee 4
                    br_if 0 (;@8;)
                  end
                end
                local.get 10
                i32.load8_u
                i32.const 45
                i32.eq
                if  ;; label = @7
                  local.get 7
                  i32.const -64
                  i32.sub
                  local.tee 4
                  local.get 40
                  local.get 41
                  i64.const -9223372036854775808
                  i64.xor
                  local.get 43
                  local.get 42
                  call 51
                  local.get 7
                  i32.const 48
                  i32.add
                  local.tee 6
                  local.get 43
                  local.get 42
                  local.get 7
                  i64.load offset=64
                  local.get 4
                  i32.const 8
                  i32.add
                  i64.load
                  call 48
                  local.get 6
                  i32.const 8
                  i32.add
                  i64.load
                  i64.const -9223372036854775808
                  i64.xor
                  local.set 41
                  local.get 7
                  i64.load offset=48
                  local.set 40
                  br 1 (;@6;)
                end
                local.get 7
                i32.const 96
                i32.add
                local.tee 4
                local.get 40
                local.get 41
                local.get 43
                local.get 42
                call 48
                local.get 7
                i32.const 80
                i32.add
                local.tee 6
                local.get 7
                i64.load offset=96
                local.get 4
                i32.const 8
                i32.add
                i64.load
                local.get 43
                local.get 42
                call 51
                local.get 6
                i32.const 8
                i32.add
                i64.load
                local.set 41
                local.get 7
                i64.load offset=80
                local.set 40
              end
              local.get 21
              i32.const 2
              i32.or
              local.set 15
              local.get 19
              i32.const 32
              i32.and
              local.set 14
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.load offset=524
                  local.tee 8
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  i32.const 31
                  i32.shr_s
                  local.tee 4
                  local.get 8
                  i32.xor
                  local.get 4
                  i32.sub
                  local.set 4
                  i32.const 0
                  local.set 5
                  loop  ;; label = @8
                    local.get 5
                    local.get 7
                    i32.add
                    i32.const 479
                    i32.add
                    local.get 4
                    local.get 4
                    i32.const 10
                    i32.div_u
                    local.tee 6
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get 5
                    i32.const 1
                    i32.sub
                    local.set 5
                    local.get 4
                    i32.const 9
                    i32.gt_u
                    local.get 6
                    local.set 4
                    br_if 0 (;@8;)
                  end
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 7
                  i32.add
                  i32.const 480
                  i32.add
                  br 1 (;@6;)
                end
                local.get 7
                i32.const 48
                i32.store8 offset=479
                local.get 36
              end
              local.tee 4
              i32.const 2
              i32.sub
              local.tee 16
              local.get 19
              i32.const 15
              i32.add
              i32.store8
              local.get 4
              i32.const 1
              i32.sub
              i32.const 45
              i32.const 43
              local.get 8
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get 17
              i32.const 8
              i32.and
              local.set 19
              local.get 7
              i32.const 480
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 5
                local.set 4
                global.get 0
                i32.const 16
                i32.sub
                local.tee 5
                global.set 0
                block (result i32)  ;; label = @7
                  i32.const 0
                  local.get 41
                  i64.const 48
                  i64.shr_u
                  i32.wrap_i64
                  local.tee 8
                  i32.const 32767
                  i32.and
                  local.tee 11
                  i32.const 16383
                  i32.lt_u
                  br_if 0 (;@7;)
                  drop
                  local.get 41
                  i64.const 63
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 2147483647
                  i32.xor
                  local.get 11
                  i32.const 16414
                  i32.sub
                  i32.const -32
                  i32.le_u
                  br_if 0 (;@7;)
                  drop
                  local.get 5
                  local.get 40
                  local.get 41
                  i64.const 281474976710655
                  i64.and
                  i64.const 281474976710656
                  i64.or
                  i32.const 111
                  local.get 8
                  i32.sub
                  i32.const 127
                  i32.and
                  call 50
                  local.get 5
                  i32.load
                  local.tee 6
                  i32.const 0
                  local.get 6
                  i32.sub
                  local.get 41
                  i64.const 0
                  i64.ge_s
                  select
                end
                local.set 6
                local.get 5
                i32.const 16
                i32.add
                global.set 0
                local.get 4
                local.get 6
                i32.const 1051216
                i32.add
                i32.load8_u
                local.get 14
                i32.or
                i32.store8
                i64.const 0
                local.set 42
                global.get 0
                i32.const 16
                i32.sub
                local.tee 5
                global.set 0
                local.get 7
                i32.const 32
                i32.add
                local.tee 8
                local.get 6
                if (result i64)  ;; label = @7
                  local.get 6
                  i32.const 31
                  i32.shr_s
                  local.tee 11
                  local.get 6
                  i32.xor
                  local.get 11
                  i32.sub
                  local.tee 21
                  i32.clz
                  i32.const 31
                  i32.xor
                  local.set 11
                  local.get 5
                  local.get 21
                  i64.extend_i32_u
                  i64.const 0
                  i32.const 112
                  local.get 11
                  i32.sub
                  call 49
                  local.get 5
                  i32.const 8
                  i32.add
                  i64.load
                  i64.const 281474976710656
                  i64.xor
                  local.get 11
                  i64.extend_i32_u
                  i64.const 48
                  i64.shl
                  i64.add
                  i64.const 4611404543450677248
                  i64.add
                  local.get 6
                  i32.const -2147483648
                  i32.and
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.or
                  local.set 42
                  local.get 5
                  i64.load
                else
                  i64.const 0
                end
                i64.store
                local.get 8
                local.get 42
                i64.store offset=8
                local.get 5
                i32.const 16
                i32.add
                global.set 0
                local.get 7
                i32.const 16
                i32.add
                local.tee 6
                local.get 40
                local.get 41
                local.get 7
                i64.load offset=32
                local.get 8
                i32.const 8
                i32.add
                i64.load
                call 51
                local.get 7
                local.get 7
                i64.load offset=16
                local.get 6
                i32.const 8
                i32.add
                i64.load
                i64.const 4612530443357519872
                call 52
                local.get 7
                i32.const 8
                i32.add
                i64.load
                local.set 41
                local.get 7
                i64.load
                local.set 40
                block  ;; label = @7
                  local.get 4
                  i32.const 1
                  i32.add
                  local.tee 5
                  local.get 7
                  i32.const 480
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 19
                    br_if 0 (;@8;)
                    local.get 9
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 40
                    local.get 41
                    i64.const 0
                    i64.const 0
                    call 54
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 4
                  i32.const 46
                  i32.store8 offset=1
                  local.get 4
                  i32.const 2
                  i32.add
                  local.set 5
                end
                local.get 40
                local.get 41
                i64.const 0
                i64.const 0
                call 54
                br_if 0 (;@6;)
              end
              i32.const 2147483645
              local.get 24
              local.get 16
              i32.sub
              local.tee 11
              local.get 15
              i32.add
              local.tee 4
              i32.sub
              local.get 9
              i32.lt_s
              br_if 1 (;@4;)
              local.get 9
              i32.const 2
              i32.add
              local.get 5
              local.get 7
              i32.const 480
              i32.add
              i32.sub
              local.tee 6
              local.get 5
              local.get 35
              i32.add
              local.get 9
              i32.lt_s
              select
              local.get 6
              local.get 9
              select
              local.tee 9
              local.get 4
              i32.add
              local.set 14
              block  ;; label = @6
                local.get 17
                i32.const 73728
                i32.and
                local.tee 5
                br_if 0 (;@6;)
                local.get 13
                local.get 14
                i32.le_s
                br_if 0 (;@6;)
                local.get 13
                local.get 14
                i32.sub
                local.tee 4
                i32.const 256
                i32.lt_u
                local.set 8
                local.get 7
                i32.const 7904
                i32.add
                i32.const 32
                local.get 4
                i32.const 256
                local.get 8
                select
                memory.fill
                local.get 8
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      i32.const 7904
                      i32.add
                      i32.const 256
                      local.get 0
                      call 42
                    end
                    local.get 4
                    i32.const 256
                    i32.sub
                    local.tee 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 7
                i32.const 7904
                i32.add
                local.get 4
                local.get 0
                call 42
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 10
                local.get 15
                local.get 0
                call 42
              end
              block  ;; label = @6
                local.get 5
                i32.const 65536
                i32.ne
                br_if 0 (;@6;)
                local.get 13
                local.get 14
                i32.le_s
                br_if 0 (;@6;)
                local.get 13
                local.get 14
                i32.sub
                local.tee 4
                i32.const 256
                i32.lt_u
                local.set 8
                local.get 7
                i32.const 7904
                i32.add
                i32.const 48
                local.get 4
                i32.const 256
                local.get 8
                select
                memory.fill
                local.get 8
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      i32.const 7904
                      i32.add
                      i32.const 256
                      local.get 0
                      call 42
                    end
                    local.get 4
                    i32.const 256
                    i32.sub
                    local.tee 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 7
                i32.const 7904
                i32.add
                local.get 4
                local.get 0
                call 42
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 7
                i32.const 480
                i32.add
                local.get 6
                local.get 0
                call 42
              end
              block  ;; label = @6
                local.get 9
                local.get 6
                i32.sub
                local.tee 4
                i32.const 0
                i32.le_s
                br_if 0 (;@6;)
                local.get 7
                i32.const 7904
                i32.add
                i32.const 48
                local.get 4
                i32.const 256
                local.get 4
                i32.const 256
                i32.lt_u
                local.tee 6
                select
                memory.fill
                local.get 6
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      i32.const 7904
                      i32.add
                      i32.const 256
                      local.get 0
                      call 42
                    end
                    local.get 4
                    i32.const 256
                    i32.sub
                    local.tee 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 7
                i32.const 7904
                i32.add
                local.get 4
                local.get 0
                call 42
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 16
                local.get 11
                local.get 0
                call 42
              end
              local.get 5
              i32.const 8192
              i32.ne
              br_if 0 (;@5;)
              local.get 13
              local.get 14
              i32.le_s
              br_if 0 (;@5;)
              local.get 13
              local.get 14
              i32.sub
              local.tee 4
              i32.const 256
              i32.lt_u
              local.set 6
              local.get 7
              i32.const 7904
              i32.add
              i32.const 32
              local.get 4
              i32.const 256
              local.get 6
              select
              memory.fill
              local.get 6
              i32.eqz
              if  ;; label = @6
                loop  ;; label = @7
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 7
                    i32.const 7904
                    i32.add
                    i32.const 256
                    local.get 0
                    call 42
                  end
                  local.get 4
                  i32.const 256
                  i32.sub
                  local.tee 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              local.get 7
              i32.const 7904
              i32.add
              local.get 4
              local.get 0
              call 42
            end
            local.get 14
            local.get 13
            local.get 13
            local.get 14
            i32.lt_s
            select
            local.tee 4
            i32.const 0
            i32.ge_s
            br_if 1 (;@3;)
          end
        end
        i32.const 1051524
        i32.const 61
        i32.store
      end
      i32.const -1
      local.set 18
    end
    local.get 7
    i32.const 8160
    i32.add
    global.set 0
    local.get 18)
  (func (;46;) (type 9) (param i32 i32 i32)
    (local i64 i64 i64 i32 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const 9
                                          i32.sub
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 5 (;@14;) 3 (;@16;) 4 (;@15;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 17 (;@2;) 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 2
                                        i32.load
                                        local.tee 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get 0
                                        local.get 1
                                        i32.load
                                        i32.store
                                        br 17 (;@1;)
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i64.load32_s
                                      i64.store
                                      br 16 (;@1;)
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i64.load32_u
                                    i64.store
                                    br 15 (;@1;)
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 0
                                  local.get 1
                                  i64.load32_s
                                  i64.store
                                  br 14 (;@1;)
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                local.tee 1
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 0
                                local.get 1
                                i64.load32_u
                                i64.store
                                br 13 (;@1;)
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              i32.const 7
                              i32.add
                              i32.const -8
                              i32.and
                              local.tee 1
                              i32.const 8
                              i32.add
                              i32.store
                              local.get 0
                              local.get 1
                              i64.load
                              i64.store
                              br 12 (;@1;)
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i64.load16_s
                            i64.store
                            br 11 (;@1;)
                          end
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 0
                          local.get 1
                          i64.load16_u
                          i64.store
                          br 10 (;@1;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load8_s
                        i64.store
                        br 9 (;@1;)
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load8_u
                      i64.store
                      br 8 (;@1;)
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee 1
                    i32.const 8
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load
                    i64.store
                    br 7 (;@1;)
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load32_u
                  i64.store
                  br 6 (;@1;)
                end
                local.get 2
                local.get 2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee 1
                i32.const 8
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load
                i64.store
                br 5 (;@1;)
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const 8
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load
              i64.store
              br 4 (;@1;)
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load32_s
            i64.store
            br 3 (;@1;)
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load32_u
          i64.store
          br 2 (;@1;)
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 1
        f64.load
        local.set 7
        global.get 0
        i32.const 16
        i32.sub
        local.tee 1
        global.set 0
        block (result i64)  ;; label = @3
          local.get 7
          i64.reinterpret_f64
          local.tee 4
          i64.const 9223372036854775807
          i64.and
          local.tee 3
          i64.const 4503599627370496
          i64.sub
          i64.const 9214364837600034815
          i64.le_u
          if  ;; label = @4
            local.get 3
            i64.const 60
            i64.shl
            local.set 5
            local.get 3
            i64.const 4
            i64.shr_u
            i64.const 4323455642275676160
            i64.add
            br 1 (;@3;)
          end
          local.get 3
          i64.const 9218868437227405312
          i64.ge_u
          if  ;; label = @4
            local.get 4
            i64.const 60
            i64.shl
            local.set 5
            local.get 4
            i64.const 4
            i64.shr_u
            i64.const 9223090561878065152
            i64.or
            br 1 (;@3;)
          end
          i64.const 0
          local.get 3
          i64.eqz
          br_if 0 (;@3;)
          drop
          local.get 1
          local.get 3
          i64.const 0
          local.get 3
          i64.clz
          i32.wrap_i64
          local.tee 2
          i32.const 49
          i32.add
          call 49
          local.get 1
          i64.load
          local.set 5
          local.get 1
          i32.const 8
          i32.add
          i64.load
          i64.const 281474976710656
          i64.xor
          i32.const 15361
          local.get 2
          i32.const 117
          i32.add
          i32.const 127
          i32.and
          i32.sub
          i64.extend_i32_u
          i64.const 48
          i64.shl
          i64.or
        end
        local.set 3
        local.get 6
        local.get 5
        i64.store
        local.get 6
        local.get 3
        local.get 4
        i64.const -9223372036854775808
        i64.and
        i64.or
        i64.store offset=8
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        local.get 0
        local.get 6
        i32.const 8
        i32.add
        i64.load
        i64.store offset=8
        local.get 0
        local.get 6
        i64.load
        i64.store
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      local.tee 1
      i32.const 16
      i32.add
      i32.store
      local.get 0
      local.get 1
      i64.load
      i64.store
      local.get 0
      local.get 1
      i64.load offset=8
      i64.store offset=8
    end
    local.get 6
    i32.const 16
    i32.add
    global.set 0)
  (func (;47;) (type 9) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.sub
      local.tee 2
      i32.const 256
      i32.lt_u
      local.set 1
      local.get 3
      i32.const 48
      local.get 2
      i32.const 256
      local.get 1
      select
      memory.fill
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          i32.const 32
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 3
            i32.const 256
            local.get 0
            call 42
          end
          local.get 2
          i32.const 256
          i32.sub
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      local.get 0
      call 42
    end
    local.get 3
    i32.const 256
    i32.add
    global.set 0)
  (func (;48;) (type 13) (param i32 i64 i64 i64 i64)
    (local i64 i64 i64 i64 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 10
    global.set 0
    local.get 4
    i64.const 9223372036854775807
    i64.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.eqz
        local.tee 9
        local.get 2
        i64.const 9223372036854775807
        i64.and
        local.tee 6
        i64.const 9223090561878065152
        i64.sub
        i64.const -9223090561878065152
        i64.lt_u
        local.get 6
        i64.eqz
        select
        i32.eqz
        if  ;; label = @3
          local.get 3
          i64.const 0
          i64.ne
          local.get 5
          i64.const 9223090561878065152
          i64.sub
          local.tee 7
          i64.const -9223090561878065152
          i64.gt_u
          local.get 7
          i64.const -9223090561878065152
          i64.eq
          select
          br_if 1 (;@2;)
        end
        local.get 9
        local.get 6
        i64.const 9223090561878065152
        i64.lt_u
        local.get 6
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 2
          i64.const 140737488355328
          i64.or
          local.set 4
          local.get 1
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        i64.eqz
        local.get 5
        i64.const 9223090561878065152
        i64.lt_u
        local.get 5
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 4
          i64.const 140737488355328
          i64.or
          local.set 4
          br 2 (;@1;)
        end
        local.get 1
        local.get 6
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        if  ;; label = @3
          i64.const 9223231299366420480
          local.get 2
          local.get 1
          local.get 3
          i64.xor
          local.get 2
          local.get 4
          i64.xor
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.eqz
          local.tee 9
          select
          local.set 4
          i64.const 1
          local.get 1
          local.get 9
          select
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        local.get 5
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        i64.or
        i64.eqz
        if  ;; label = @3
          local.get 3
          local.get 5
          i64.or
          i64.const 0
          i64.ne
          br_if 2 (;@1;)
          local.get 1
          local.get 3
          i64.and
          local.set 3
          local.get 2
          local.get 4
          i64.and
          local.set 4
          br 2 (;@1;)
        end
        local.get 3
        local.get 5
        i64.or
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.set 3
        local.get 2
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      local.get 1
      local.get 3
      i64.lt_u
      local.get 5
      local.get 6
      i64.gt_u
      local.get 5
      local.get 6
      i64.eq
      select
      local.tee 12
      select
      local.set 5
      local.get 4
      local.get 2
      local.get 12
      select
      local.tee 7
      i64.const 281474976710655
      i64.and
      local.set 6
      local.get 2
      local.get 4
      local.get 12
      select
      local.tee 8
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      i32.const 32767
      i32.and
      local.set 11
      local.get 7
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      i32.const 32767
      i32.and
      local.tee 9
      i32.eqz
      if  ;; label = @2
        local.get 10
        i32.const 80
        i32.add
        local.get 5
        local.get 6
        local.get 6
        i64.clz
        local.get 5
        i64.clz
        i64.const -64
        i64.sub
        local.get 6
        i64.const 0
        i64.ne
        select
        i32.wrap_i64
        i32.const 15
        i32.sub
        local.tee 9
        i32.const 127
        i32.and
        call 49
        local.get 10
        i32.const 88
        i32.add
        i64.load
        local.set 6
        local.get 10
        i64.load offset=80
        local.set 5
        i32.const 1
        local.get 9
        i32.const 255
        i32.and
        i32.sub
        local.set 9
      end
      local.get 1
      local.get 3
      local.get 12
      select
      local.set 3
      local.get 8
      i64.const 281474976710655
      i64.and
      local.set 4
      local.get 11
      i32.eqz
      if  ;; label = @2
        local.get 10
        i32.const -64
        i32.sub
        local.get 3
        local.get 4
        local.get 4
        i64.clz
        local.get 3
        i64.clz
        i64.const -64
        i64.sub
        local.get 4
        i64.const 0
        i64.ne
        select
        i32.wrap_i64
        i32.const 15
        i32.sub
        local.tee 11
        i32.const 127
        i32.and
        call 49
        i32.const 1
        local.get 11
        i32.const 255
        i32.and
        i32.sub
        local.set 11
        local.get 10
        i32.const 72
        i32.add
        i64.load
        local.set 4
        local.get 10
        i64.load offset=64
        local.set 3
      end
      local.get 4
      i64.const 3
      i64.shl
      local.get 3
      i64.const 61
      i64.shr_u
      i64.or
      i64.const 2251799813685248
      i64.or
      local.set 2
      local.get 6
      i64.const 3
      i64.shl
      local.get 5
      i64.const 61
      i64.shr_u
      i64.or
      local.get 3
      i64.const 3
      i64.shl
      local.set 1
      local.get 7
      local.get 8
      i64.xor
      local.set 3
      block  ;; label = @2
        local.get 9
        local.get 11
        i32.eq
        br_if 0 (;@2;)
        local.get 9
        local.get 11
        i32.sub
        local.tee 11
        i32.const 127
        i32.gt_u
        if  ;; label = @3
          i64.const 0
          local.set 2
          i64.const 1
          local.set 1
          br 1 (;@2;)
        end
        local.get 10
        i32.const 48
        i32.add
        local.tee 12
        local.get 1
        local.get 2
        i32.const 0
        local.get 11
        i32.sub
        i32.const 127
        i32.and
        call 49
        local.get 10
        i32.const 32
        i32.add
        local.tee 13
        local.get 1
        local.get 2
        local.get 11
        call 50
        local.get 10
        i64.load offset=32
        local.get 10
        i64.load offset=48
        local.get 12
        i32.const 8
        i32.add
        i64.load
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.set 1
        local.get 13
        i32.const 8
        i32.add
        i64.load
        local.set 2
      end
      i64.const 2251799813685248
      i64.or
      local.set 6
      local.get 5
      i64.const 3
      i64.shl
      local.set 5
      block  ;; label = @2
        local.get 3
        i64.const 0
        i64.lt_s
        if  ;; label = @3
          i64.const 0
          local.set 3
          i64.const 0
          local.set 4
          local.get 1
          local.get 5
          i64.xor
          local.get 2
          local.get 6
          i64.xor
          i64.or
          i64.eqz
          br_if 2 (;@1;)
          local.get 5
          local.get 1
          i64.sub
          local.set 4
          local.get 6
          local.get 2
          i64.sub
          local.get 1
          local.get 5
          i64.gt_u
          i64.extend_i32_u
          i64.sub
          local.tee 3
          i64.const 2251799813685247
          i64.gt_u
          br_if 1 (;@2;)
          local.get 10
          i32.const 16
          i32.add
          local.get 4
          local.get 3
          local.get 3
          i64.clz
          local.get 4
          i64.clz
          i64.const -64
          i64.sub
          local.get 3
          i64.const 0
          i64.ne
          select
          i32.wrap_i64
          i32.const 12
          i32.sub
          local.tee 11
          i32.const 127
          i32.and
          call 49
          local.get 9
          local.get 11
          i32.sub
          local.set 9
          local.get 10
          i32.const 24
          i32.add
          i64.load
          local.set 3
          local.get 10
          i64.load offset=16
          local.set 4
          br 1 (;@2;)
        end
        local.get 1
        local.get 5
        i64.add
        local.tee 4
        local.get 1
        i64.lt_u
        i64.extend_i32_u
        local.get 2
        local.get 6
        i64.add
        i64.add
        local.tee 3
        i64.const 4503599627370496
        i64.and
        i64.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.const 1
        i64.and
        local.get 3
        i64.const 63
        i64.shl
        local.get 4
        i64.const 1
        i64.shr_u
        i64.or
        i64.or
        local.set 4
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        local.get 3
        i64.const 1
        i64.shr_u
        local.set 3
      end
      local.get 7
      i64.const -9223372036854775808
      i64.and
      local.set 1
      local.get 9
      i32.const 32767
      i32.ge_s
      if  ;; label = @2
        local.get 1
        i64.const 9223090561878065152
        i64.or
        local.set 4
        i64.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 9
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 10
        local.get 4
        local.get 3
        i32.const 4
        local.get 9
        i32.sub
        i32.const 127
        i32.and
        call 50
        local.get 10
        i32.const 8
        i32.add
        i64.load
        local.get 1
        i64.or
        local.set 4
        local.get 10
        i64.load
        local.set 3
        br 1 (;@1;)
      end
      local.get 3
      i64.const 61
      i64.shl
      local.get 4
      i64.const 3
      i64.shr_u
      i64.or
      local.tee 5
      local.get 4
      i64.const 7
      i64.and
      local.tee 4
      i64.const 4
      i64.gt_u
      i64.extend_i32_u
      i64.add
      local.set 2
      local.get 2
      local.get 5
      i64.lt_u
      i64.extend_i32_u
      local.get 3
      i64.const 3
      i64.shr_u
      i64.const 281474976710655
      i64.and
      local.get 1
      i64.or
      local.get 9
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
      i64.add
      local.get 2
      local.get 2
      i64.const 1
      i64.and
      i64.const 0
      local.get 4
      i64.const 4
      i64.eq
      select
      local.tee 2
      i64.add
      local.tee 3
      local.get 2
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set 4
    end
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 10
    i32.const 96
    i32.add
    global.set 0)
  (func (;49;) (type 10) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      local.get 3
      i32.const 64
      i32.ge_s
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.const 63
        i32.and
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.const 63
      i32.and
      i64.extend_i32_u
      local.tee 4
      i64.shl
      local.get 1
      i32.const 0
      local.get 3
      i32.sub
      i32.const 63
      i32.and
      i64.extend_i32_u
      i64.shr_u
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;50;) (type 10) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      local.get 3
      i32.const 64
      i32.ge_s
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const 63
        i32.and
        i64.extend_i32_u
        i64.shr_u
        local.set 1
        i64.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 3
      i32.sub
      i32.const 63
      i32.and
      i64.extend_i32_u
      i64.shl
      local.get 1
      local.get 3
      i32.const 63
      i32.and
      i64.extend_i32_u
      local.tee 4
      i64.shr_u
      i64.or
      local.set 1
      local.get 2
      local.get 4
      i64.shr_u
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;51;) (type 13) (param i32 i64 i64 i64 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 3
    local.get 4
    i64.const -9223372036854775808
    i64.xor
    local.get 1
    local.get 2
    call 48
    local.get 0
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 0
    local.get 5
    i64.load
    i64.store
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func (;52;) (type 21) (param i32 i64 i64 i64)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 21
    global.set 0
    local.get 3
    i64.const 281474976710655
    i64.and
    local.set 4
    local.get 2
    local.get 3
    i64.xor
    i64.const -9223372036854775808
    i64.and
    local.set 7
    local.get 2
    i64.const 281474976710655
    i64.and
    local.tee 5
    i64.const 32
    i64.shr_u
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i64.const 48
          i64.shr_u
          i32.wrap_i64
          i32.const 32767
          i32.and
          local.tee 23
          i32.const 32767
          i32.sub
          i32.const -32767
          i32.gt_u
          local.get 2
          i64.const 48
          i64.shr_u
          i32.wrap_i64
          i32.const 32767
          i32.and
          local.tee 24
          i32.const 32767
          i32.sub
          i32.const -32766
          i32.ge_u
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i64.eqz
          local.get 2
          i64.const 9223372036854775807
          i64.and
          local.tee 6
          i64.const 9223090561878065152
          i64.lt_u
          local.get 6
          i64.const 9223090561878065152
          i64.eq
          select
          i32.eqz
          if  ;; label = @4
            local.get 2
            i64.const 140737488355328
            i64.or
            local.set 7
            br 3 (;@1;)
          end
          local.get 3
          i64.const 9223372036854775807
          i64.and
          local.tee 2
          i64.const 9223090561878065152
          i64.eq
          local.get 2
          i64.const 9223090561878065152
          i64.lt_u
          i32.or
          i32.eqz
          if  ;; label = @4
            local.get 3
            i64.const 140737488355328
            i64.or
            local.set 7
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 1
          local.get 6
          i64.const 9223090561878065152
          i64.xor
          i64.or
          i64.eqz
          if  ;; label = @4
            local.get 2
            i64.eqz
            br_if 2 (;@2;)
            local.get 7
            i64.const 9223090561878065152
            i64.or
            local.set 7
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          i64.const 9223090561878065152
          i64.xor
          i64.eqz
          if  ;; label = @4
            local.get 1
            local.get 6
            i64.or
            i64.eqz
            br_if 2 (;@2;)
            local.get 7
            i64.const 9223090561878065152
            i64.or
            local.set 7
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 1
          local.get 6
          i64.or
          i64.eqz
          if  ;; label = @4
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          i64.eqz
          if  ;; label = @4
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 6
          i64.const 281474976710655
          i64.le_u
          if  ;; label = @4
            local.get 21
            i32.const 80
            i32.add
            local.get 1
            local.get 5
            local.get 5
            i64.clz
            local.get 1
            i64.clz
            i64.const -64
            i64.sub
            local.get 5
            i64.const 0
            i64.ne
            select
            i32.wrap_i64
            i32.const 15
            i32.sub
            local.tee 22
            i32.const 127
            i32.and
            call 49
            i32.const 1
            local.get 22
            i32.const 255
            i32.and
            i32.sub
            local.set 22
            local.get 21
            i32.const 88
            i32.add
            i64.load
            local.tee 5
            i64.const 32
            i64.shr_u
            local.set 10
            local.get 21
            i64.load offset=80
            local.set 1
          end
          local.get 2
          i64.const 281474976710655
          i64.gt_u
          br_if 0 (;@3;)
          local.get 21
          i32.const -64
          i32.sub
          i64.const 0
          local.get 4
          local.get 4
          i64.clz
          i64.const 128
          local.get 4
          i64.const 0
          i64.ne
          select
          i32.wrap_i64
          i32.const 15
          i32.sub
          local.tee 25
          i32.const 127
          i32.and
          call 49
          local.get 22
          local.get 25
          i32.const 255
          i32.and
          i32.sub
          i32.const 1
          i32.add
          local.set 22
          local.get 21
          i32.const 72
          i32.add
          i64.load
          local.set 4
          local.get 21
          i64.load offset=64
          local.set 8
        end
        local.get 8
        i64.const 15
        i64.shl
        local.tee 6
        i64.const 4294934528
        i64.and
        local.tee 2
        local.get 1
        i64.const 32
        i64.shr_u
        local.tee 3
        i64.mul
        local.set 9
        local.get 9
        local.get 6
        i64.const 32
        i64.shr_u
        local.tee 6
        local.get 1
        i64.const 4294967295
        i64.and
        local.tee 1
        i64.mul
        i64.add
        local.tee 11
        i64.const 32
        i64.shl
        local.set 12
        local.get 5
        i64.const 4294967295
        i64.and
        local.tee 5
        local.get 2
        i64.mul
        local.tee 18
        local.get 3
        local.get 6
        i64.mul
        i64.add
        local.tee 13
        local.get 4
        i64.const 15
        i64.shl
        local.get 8
        i64.const 49
        i64.shr_u
        i64.or
        local.tee 4
        i64.const 4294967295
        i64.and
        local.tee 8
        local.get 1
        i64.mul
        i64.add
        local.tee 15
        local.get 9
        local.get 11
        i64.gt_u
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 11
        i64.const 32
        i64.shr_u
        i64.or
        i64.add
        local.set 9
        local.get 9
        local.get 10
        i64.const 65536
        i64.or
        local.tee 10
        local.get 2
        i64.mul
        local.tee 19
        local.get 5
        local.get 6
        i64.mul
        i64.add
        local.tee 14
        local.get 4
        i64.const 32
        i64.shr_u
        i64.const 2147483648
        i64.or
        local.tee 11
        local.get 1
        i64.mul
        i64.add
        local.tee 16
        local.get 3
        local.get 8
        i64.mul
        i64.add
        local.tee 17
        i64.const 32
        i64.shl
        i64.add
        local.tee 20
        local.get 12
        local.get 12
        local.get 1
        local.get 2
        i64.mul
        i64.add
        local.tee 4
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.set 1
        local.get 23
        local.get 24
        i32.add
        local.get 22
        i32.add
        i32.const 16383
        i32.sub
        local.set 22
        block  ;; label = @3
          local.get 9
          local.get 15
          i64.lt_u
          i64.extend_i32_u
          local.get 9
          local.get 20
          i64.gt_u
          i64.extend_i32_u
          i64.add
          local.get 16
          local.get 17
          i64.gt_u
          i64.extend_i32_u
          local.get 14
          local.get 19
          i64.lt_u
          i64.extend_i32_u
          local.get 14
          local.get 16
          i64.gt_u
          i64.extend_i32_u
          i64.add
          i64.add
          i64.const 32
          i64.shl
          local.get 17
          i64.const 32
          i64.shr_u
          i64.or
          local.get 8
          local.get 10
          i64.mul
          local.tee 14
          local.get 5
          local.get 11
          i64.mul
          i64.add
          local.tee 9
          i64.const 32
          i64.shl
          local.get 13
          local.get 18
          i64.lt_u
          i64.extend_i32_u
          local.get 13
          local.get 15
          i64.gt_u
          i64.extend_i32_u
          i64.add
          local.get 3
          local.get 11
          i64.mul
          local.tee 13
          local.get 6
          local.get 10
          i64.mul
          i64.add
          local.tee 3
          local.get 5
          local.get 8
          i64.mul
          i64.add
          local.tee 5
          i64.add
          local.tee 6
          i64.add
          local.tee 8
          i64.add
          local.tee 12
          i64.add
          local.tee 2
          local.get 12
          i64.lt_u
          i64.extend_i32_u
          local.get 8
          local.get 12
          i64.gt_u
          i64.extend_i32_u
          local.get 6
          local.get 8
          i64.gt_u
          i64.extend_i32_u
          local.get 5
          local.get 6
          i64.gt_u
          i64.extend_i32_u
          local.get 3
          local.get 13
          i64.lt_u
          i64.extend_i32_u
          local.get 3
          local.get 5
          i64.gt_u
          i64.extend_i32_u
          i64.add
          local.get 10
          local.get 11
          i64.mul
          i64.add
          i64.add
          local.get 9
          local.get 14
          i64.lt_u
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 9
          i64.const 32
          i64.shr_u
          i64.or
          i64.add
          i64.add
          i64.add
          i64.add
          local.tee 3
          i64.const 281474976710656
          i64.and
          i64.eqz
          i32.eqz
          if  ;; label = @4
            local.get 22
            i32.const 1
            i32.add
            local.set 22
            br 1 (;@3;)
          end
          local.get 4
          i64.const 63
          i64.shr_u
          local.get 3
          i64.const 1
          i64.shl
          local.get 2
          i64.const 63
          i64.shr_u
          i64.or
          local.set 3
          local.get 2
          i64.const 1
          i64.shl
          local.get 1
          i64.const 63
          i64.shr_u
          i64.or
          local.set 2
          local.get 4
          i64.const 1
          i64.shl
          local.set 4
          local.get 1
          i64.const 1
          i64.shl
          i64.or
          local.set 1
        end
        local.get 22
        i32.const 32767
        i32.ge_s
        if  ;; label = @3
          local.get 7
          i64.const 9223090561878065152
          i64.or
          local.set 7
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        block (result i64)  ;; label = @3
          local.get 22
          i32.const 0
          i32.le_s
          if  ;; label = @4
            i32.const 1
            local.get 22
            i32.sub
            local.tee 23
            i32.const 127
            i32.gt_u
            if  ;; label = @5
              i64.const 0
              local.set 1
              br 4 (;@1;)
            end
            local.get 21
            i32.const 48
            i32.add
            local.tee 24
            local.get 2
            local.get 3
            local.get 22
            i32.const 1
            i32.sub
            i32.const 127
            i32.and
            local.tee 22
            call 49
            local.get 21
            i32.const 16
            i32.add
            local.tee 25
            local.get 4
            local.get 1
            local.get 23
            call 50
            local.get 21
            i32.const 32
            i32.add
            local.tee 26
            local.get 2
            local.get 3
            local.get 23
            call 50
            local.get 21
            local.get 4
            local.get 1
            local.get 22
            call 49
            local.get 21
            i64.load
            local.get 21
            i32.const 8
            i32.add
            i64.load
            i64.or
            i64.const 0
            i64.ne
            i64.extend_i32_u
            local.get 21
            i64.load offset=48
            local.get 21
            i64.load offset=16
            i64.or
            i64.or
            local.set 4
            local.get 24
            i32.const 8
            i32.add
            i64.load
            local.get 25
            i32.const 8
            i32.add
            i64.load
            i64.or
            local.set 1
            local.get 21
            i64.load offset=32
            local.set 2
            local.get 26
            i32.const 8
            i32.add
            i64.load
            br 1 (;@3;)
          end
          local.get 3
          i64.const 281474976710655
          i64.and
          local.get 22
          i64.extend_i32_u
          i64.const 48
          i64.shl
          i64.or
        end
        local.set 3
        local.get 2
        local.get 4
        i64.const 0
        i64.ne
        local.get 1
        i64.const -9223372036854775808
        i64.gt_u
        local.get 1
        i64.const -9223372036854775808
        i64.eq
        select
        i64.extend_i32_u
        i64.add
        local.tee 5
        i64.const 1
        i64.and
        i64.const 0
        local.get 4
        local.get 1
        i64.const -9223372036854775808
        i64.xor
        i64.or
        i64.eqz
        select
        local.set 4
        local.get 4
        local.get 4
        local.get 5
        i64.add
        local.tee 1
        i64.gt_u
        i64.extend_i32_u
        local.get 3
        local.get 2
        local.get 5
        i64.gt_u
        i64.extend_i32_u
        i64.add
        i64.add
        local.get 7
        i64.or
        local.set 7
        br 1 (;@1;)
      end
      i64.const 9223231299366420480
      local.set 7
      i64.const 1
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 7
    i64.store offset=8
    local.get 21
    i32.const 96
    i32.add
    global.set 0)
  (func (;53;) (type 14) (param i64 i64 i64 i64) (result i32)
    local.get 0
    i64.const 0
    i64.ne
    local.get 1
    i64.const 9223372036854775807
    i64.and
    local.tee 0
    i64.const 9223090561878065152
    i64.gt_u
    local.get 0
    i64.const 9223090561878065152
    i64.eq
    select
    local.get 2
    i64.const 0
    i64.ne
    local.get 3
    i64.const 9223372036854775807
    i64.and
    local.tee 0
    i64.const 9223090561878065152
    i64.gt_u
    local.get 0
    i64.const 9223090561878065152
    i64.eq
    select
    i32.or)
  (func (;54;) (type 14) (param i64 i64 i64 i64) (result i32)
    (local i32 i64 i64)
    i32.const 1
    local.set 4
    block  ;; label = @1
      local.get 0
      i64.const 0
      i64.ne
      local.get 1
      i64.const 9223372036854775807
      i64.and
      local.tee 5
      i64.const 9223090561878065152
      i64.gt_u
      local.get 5
      i64.const 9223090561878065152
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 2
      i64.const 0
      i64.ne
      local.get 3
      i64.const 9223372036854775807
      i64.and
      local.tee 6
      i64.const 9223090561878065152
      i64.gt_u
      local.get 6
      i64.const 9223090561878065152
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.or
      local.get 5
      local.get 6
      i64.or
      i64.or
      i64.eqz
      if  ;; label = @2
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i64.and
      i64.const 0
      i64.ge_s
      if  ;; label = @2
        i32.const -1
        local.set 4
        local.get 0
        local.get 2
        i64.lt_u
        local.get 1
        local.get 3
        i64.lt_s
        local.get 1
        local.get 3
        i64.eq
        select
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i64.xor
        local.get 1
        local.get 3
        i64.xor
        i64.or
        i64.const 0
        i64.ne
        local.set 4
        br 1 (;@1;)
      end
      i32.const -1
      local.set 4
      local.get 0
      local.get 2
      i64.gt_u
      local.get 1
      local.get 3
      i64.gt_s
      local.get 1
      local.get 3
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.xor
      local.get 1
      local.get 3
      i64.xor
      i64.or
      i64.const 0
      i64.ne
      local.set 4
    end
    local.get 4)
  (func (;55;) (type 22) (param i32 i64 i64)
    (local i64 i64 i64)
    local.get 2
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 4
    i64.mul
    local.set 5
    local.get 2
    i64.const 32
    i64.shr_u
    local.tee 2
    local.get 4
    i64.mul
    local.get 3
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 3
    i64.mul
    local.get 5
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 4
    i64.const 4294967295
    i64.and
    i64.add
    local.set 1
    local.get 0
    local.get 2
    local.get 3
    i64.mul
    local.get 4
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 4294967295
    i64.and
    local.get 1
    i64.const 32
    i64.shl
    i64.or
    i64.store)
  (table (;0;) 19 19 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "_start" (func 9))
  (elem (;0;) (i32.const 1) func 14 15 8 16 10 18 20 21 22 27 28 29 30 31 38 36 39 40)
  (data (;0;) (i32.const 1048592) "expand 32-byte k-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00sysrandom\00internal\00inf\00NAN\00INF\00.\00(null)\00%llu\0a\00\00g\e6\09j\85\aeg\bbr\f3n<:\f5O\a5\7fR\0eQ\8ch\05\9b\ab\d9\83\1f\19\cd\e0[\98/\8aB\91D7q\cf\fb\c0\b5\a5\db\b5\e9[\c2V9\f1\11\f1Y\a4\82?\92\d5^\1c\ab\98\aa\07\d8\01[\83\12\be\851$\c3}\0cUt]\ber\fe\b1\de\80\a7\06\dc\9bt\f1\9b\c1\c1i\9b\e4\86G\be\ef\c6\9d\c1\0f\cc\a1\0c$o,\e9-\aa\84tJ\dc\a9\b0\5c\da\88\f9vRQ>\98m\c61\a8\c8'\03\b0\c7\7fY\bf\f3\0b\e0\c6G\91\a7\d5Qc\ca\06g))\14\85\0a\b7'8!\1b.\fcm,M\13\0d8STs\0ae\bb\0ajv.\c9\c2\81\85,r\92\a1\e8\bf\a2Kf\1a\a8p\8bK\c2\a3Ql\c7\19\e8\92\d1$\06\99\d6\855\0e\f4p\a0j\10\16\c1\a4\19\08l7\1eLwH'\b5\bc\b04\b3\0c\1c9J\aa\d8NO\ca\9c[\f3o.h\ee\82\8ftoc\a5x\14x\c8\84\08\02\c7\8c\fa\ff\be\90\eblP\a4\f7\a3\f9\be\f2xq\c6\80")
  (data (;1;) (i32.const 1049040) "Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data (;2;) (i32.const 1050833) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;3;) (i32.const 1050891) "\0c")
  (data (;4;) (i32.const 1050903) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;5;) (i32.const 1050949) "\10")
  (data (;6;) (i32.const 1050961) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;7;) (i32.const 1051007) "\12")
  (data (;8;) (i32.const 1051019) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;9;) (i32.const 1051074) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;10;) (i32.const 1051123) "\14")
  (data (;11;) (i32.const 1051135) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;12;) (i32.const 1051181) "\16")
  (data (;13;) (i32.const 1051193) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data (;14;) (i32.const 1051232) "\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\00\00\00\00\0d\00\00\00\0e\00\00\00\05")
  (data (;15;) (i32.const 1051308) "\10")
  (data (;16;) (i32.const 1051328) "\11\00\00\00\12\00\00\00\18\10\10\00\00\04")
  (data (;17;) (i32.const 1051352) "\01\00\00\00\00\00\00\00\0a")
  (data (;18;) (i32.const 1051408) "\a0\0a\10")
  (data (;19;) (i32.const 1051424) "\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd\cd")
  (data (;20;) (i32.const 1051488) "\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f "))
