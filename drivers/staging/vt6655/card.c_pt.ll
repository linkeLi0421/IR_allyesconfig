; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/card.c_pt.bc'
source_filename = "../drivers/staging/vt6655/card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%union.vnt_phy_field_swap = type { i32 }
%struct.vnt_tx_desc = type { %struct.vnt_tdes0, %struct.vnt_tdes1, i32, i32, ptr, [4 x i8], ptr, [4 x i8] }
%struct.vnt_tdes0 = type { i8, i8, %union.anon.129 }
%union.anon.129 = type { i16 }
%struct.vnt_tdes1 = type { i16, i8, i8 }
%struct.anon.130 = type { i8, i8 }
%struct.vnt_rx_desc = type { %struct.vnt_rdes0, %struct.vnt_rdes1, i32, i32, ptr, [4 x i8], ptr, [4 x i8] }
%struct.vnt_rdes0 = type { i16, %union.anon.131 }
%union.anon.131 = type { i16 }
%struct.vnt_rdes1 = type { i16, i16 }
%struct.anon.132 = type { i8, i8 }

@CARDbRadioPowerOff.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CARDbRadioPowerOff\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/vt6655/card.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chester power off\0A\00", [45 x i8] zeroinitializer }, align 32
@cwRXBCNTSFOff = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 17, i16 17, i16 17, i16 17, i16 34, i16 23, i16 17, i16 11, i16 8, i16 5, i16 4, i16 3], [40 x i8] zeroinitializer }, align 32
@CARDvUpdateNextTBTT.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CARDvUpdateNextTBTT\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Card:Update Next TBTT[%8llx]\0A\00", [34 x i8] zeroinitializer }, align 32
@CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CARDwGetOFDMControlRate\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BASIC RATE: %X\0A\00", [16 x i8] zeroinitializer }, align 32
@CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:(NO OFDM) %d\0A\00", [47 x i8] zeroinitializer }, align 32
@CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s : %d\0A\00", [23 x i8] zeroinitializer }, align 32
@CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: 6M\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 10, i64 14]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 433, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"cwRXBCNTSFOff\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 54, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 896, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 563, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 566, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 573, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [33 x i8] c"../drivers/staging/vt6655/card.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 578, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cwRXBCNTSFOff, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cwRXBCNTSFOff to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @CARDbSetPhyParameter(ptr noundef %priv, i8 noundef zeroext %bb_type) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !34
  %1 = zext i8 %bb_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bb_type, label %do.body121 [
    i8 0, label %if.then
    i8 1, label %do.body68
  ]

if.then:                                          ; preds = %entry
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %2 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %byRFType, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %3, label %do.body49 [
    i8 10, label %do.body
    i8 8, label %do.body25
  ]

do.body:                                          ; preds = %if.then
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %5 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 76
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %8 = and i32 %7, -50331649
  %9 = or i32 %8, 33554432
  %10 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_offset, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #9, !srcloc !38
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %12 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %abyBBVGA, align 2
  %arrayidx9 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %arrayidx9, align 2
  %arrayidx11 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %arrayidx11, align 1
  %call12 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %data) #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %16)
  %cmp14 = icmp eq i8 %16, 28
  br i1 %cmp14, label %if.then16, label %do.body.if.end186.sink.split_crit_edge

do.body.if.end186.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.sink.split

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %abyBBVGA, align 2
  %call19 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %18) #9
  br label %if.end186.sink.split

do.body25:                                        ; preds = %if.then
  %port_offset27 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %19 = ptrtoint ptr %port_offset27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_offset27, align 4
  %add.ptr28 = getelementptr i8, ptr %20, i32 76
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %22 = and i32 %21, -50331649
  %23 = ptrtoint ptr %port_offset27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_offset27, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %22) #9, !srcloc !38
  %abyBBVGA36 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %25 = ptrtoint ptr %abyBBVGA36 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 24, ptr %abyBBVGA36, align 2
  %call38 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %data) #9
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %27)
  %cmp40 = icmp eq i8 %27, 20
  br i1 %cmp40, label %if.then42, label %do.body25.if.end186.sink.split_crit_edge

do.body25.if.end186.sink.split_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.sink.split

if.then42:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %abyBBVGA36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %abyBBVGA36, align 2
  %call45 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %29) #9
  %call46 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -31, i8 noundef zeroext 87) #9
  br label %if.end186.sink.split

do.body49:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %port_offset51 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %30 = ptrtoint ptr %port_offset51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port_offset51, align 4
  %add.ptr52 = getelementptr i8, ptr %31, i32 76
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %33 = and i32 %32, -50331649
  %34 = ptrtoint ptr %port_offset51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_offset51, align 4
  %add.ptr57 = getelementptr i8, ptr %35, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %33) #9, !srcloc !38
  br label %if.end186.sink.split

do.body68:                                        ; preds = %entry
  %port_offset70 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %36 = ptrtoint ptr %port_offset70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_offset70, align 4
  %add.ptr71 = getelementptr i8, ptr %37, i32 76
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %39 = and i32 %38, -50331649
  %40 = or i32 %39, 16777216
  %41 = ptrtoint ptr %port_offset70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port_offset70, align 4
  %add.ptr76 = getelementptr i8, ptr %42, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %40) #9, !srcloc !38
  %byRFType79 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %43 = ptrtoint ptr %byRFType79 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %byRFType79, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %44, label %do.body68.if.end186.sink.split_crit_edge [
    i8 10, label %if.then83
    i8 8, label %if.then104
  ]

do.body68.if.end186.sink.split_crit_edge:         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.sink.split

if.then83:                                        ; preds = %do.body68
  %abyBBVGA84 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %46 = ptrtoint ptr %abyBBVGA84 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 28, ptr %abyBBVGA84, align 2
  %arrayidx87 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %47 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx87, align 2
  %arrayidx89 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %48 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx89, align 1
  %call90 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %data) #9
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %50)
  %cmp92 = icmp eq i8 %50, 32
  br i1 %cmp92, label %if.then94, label %if.then83.if.end186.sink.split_crit_edge

if.then83.if.end186.sink.split_crit_edge:         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.sink.split

if.then94:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %abyBBVGA84 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %abyBBVGA84, align 2
  %call97 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %52) #9
  br label %if.end186.sink.split

if.then104:                                       ; preds = %do.body68
  %abyBBVGA105 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %53 = ptrtoint ptr %abyBBVGA105 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 20, ptr %abyBBVGA105, align 2
  %call107 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %data) #9
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %55)
  %cmp109 = icmp eq i8 %55, 24
  br i1 %cmp109, label %if.then111, label %if.then104.if.end186.sink.split_crit_edge

if.then104.if.end186.sink.split_crit_edge:        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.sink.split

if.then111:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %abyBBVGA105 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %abyBBVGA105, align 2
  %call114 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %57) #9
  %call115 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -31, i8 noundef zeroext -45) #9
  br label %if.end186.sink.split

do.body121:                                       ; preds = %entry
  %port_offset123 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %58 = ptrtoint ptr %port_offset123 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port_offset123, align 4
  %add.ptr124 = getelementptr i8, ptr %59, i32 76
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %61 = and i32 %60, -50331649
  %62 = or i32 %61, 33554432
  %63 = ptrtoint ptr %port_offset123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port_offset123, align 4
  %add.ptr129 = getelementptr i8, ptr %64, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %62) #9, !srcloc !38
  %byRFType132 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %65 = ptrtoint ptr %byRFType132 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %byRFType132, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %66, label %do.body121.if.end171_crit_edge [
    i8 10, label %if.then136
    i8 8, label %if.then157
  ]

do.body121.if.end171_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then136:                                       ; preds = %do.body121
  %abyBBVGA137 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %68 = ptrtoint ptr %abyBBVGA137 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 28, ptr %abyBBVGA137, align 2
  %arrayidx140 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %69 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx140, align 2
  %arrayidx142 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %70 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx142, align 1
  %call143 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %data) #9
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %72)
  %cmp145 = icmp eq i8 %72, 32
  br i1 %cmp145, label %if.then147, label %if.then136.if.end171_crit_edge

if.then136.if.end171_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then147:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %abyBBVGA137 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %abyBBVGA137, align 2
  %call150 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %74) #9
  br label %if.end171

if.then157:                                       ; preds = %do.body121
  %abyBBVGA158 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %75 = ptrtoint ptr %abyBBVGA158 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 20, ptr %abyBBVGA158, align 2
  %call160 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %data) #9
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %77)
  %cmp162 = icmp eq i8 %77, 24
  br i1 %cmp162, label %if.then164, label %if.then157.if.end171_crit_edge

if.then157.if.end171_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then164:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %abyBBVGA158 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %abyBBVGA158, align 2
  %call167 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %79) #9
  %call168 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -31, i8 noundef zeroext -45) #9
  br label %if.end171

if.end171:                                        ; preds = %if.then164, %if.then157.if.end171_crit_edge, %if.then147, %if.then136.if.end171_crit_edge, %do.body121.if.end171_crit_edge
  %call172 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -120, i8 noundef zeroext 8) #9
  %short_slot_time = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 82
  %80 = ptrtoint ptr %short_slot_time to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %short_slot_time, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not = icmp eq i8 %81, 0
  %. = select i1 %tobool.not, i8 50, i8 28
  %.351 = select i1 %tobool.not, i8 20, i8 9
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %82 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %basic_rates, align 4
  %84 = and i32 %83, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %85 = icmp eq i32 %84, 0
  %spec.select = select i1 %85, i8 -92, i8 -91
  br label %if.end186

if.end186.sink.split:                             ; preds = %if.then111, %if.then104.if.end186.sink.split_crit_edge, %if.then94, %if.then83.if.end186.sink.split_crit_edge, %do.body68.if.end186.sink.split_crit_edge, %do.body49, %if.then42, %do.body25.if.end186.sink.split_crit_edge, %if.then16, %do.body.if.end186.sink.split_crit_edge
  %.sink = phi i8 [ 3, %do.body49 ], [ 3, %if.then42 ], [ 3, %do.body25.if.end186.sink.split_crit_edge ], [ 3, %do.body.if.end186.sink.split_crit_edge ], [ 3, %if.then16 ], [ 2, %do.body68.if.end186.sink.split_crit_edge ], [ 2, %if.then111 ], [ 2, %if.then104.if.end186.sink.split_crit_edge ], [ 2, %if.then83.if.end186.sink.split_crit_edge ], [ 2, %if.then94 ]
  %byDIFS.1.ph = phi i8 [ 34, %do.body49 ], [ 34, %if.then42 ], [ 34, %do.body25.if.end186.sink.split_crit_edge ], [ 34, %do.body.if.end186.sink.split_crit_edge ], [ 34, %if.then16 ], [ 50, %do.body68.if.end186.sink.split_crit_edge ], [ 50, %if.then111 ], [ 50, %if.then104.if.end186.sink.split_crit_edge ], [ 50, %if.then83.if.end186.sink.split_crit_edge ], [ 50, %if.then94 ]
  %bySIFS.0.ph = phi i8 [ 16, %do.body49 ], [ 16, %if.then42 ], [ 16, %do.body25.if.end186.sink.split_crit_edge ], [ 16, %do.body.if.end186.sink.split_crit_edge ], [ 16, %if.then16 ], [ 10, %do.body68.if.end186.sink.split_crit_edge ], [ 10, %if.then111 ], [ 10, %if.then104.if.end186.sink.split_crit_edge ], [ 10, %if.then83.if.end186.sink.split_crit_edge ], [ 10, %if.then94 ]
  %bySlot.1.ph = phi i8 [ 9, %do.body49 ], [ 9, %if.then42 ], [ 9, %do.body25.if.end186.sink.split_crit_edge ], [ 9, %do.body.if.end186.sink.split_crit_edge ], [ 9, %if.then16 ], [ 20, %do.body68.if.end186.sink.split_crit_edge ], [ 20, %if.then111 ], [ 20, %if.then104.if.end186.sink.split_crit_edge ], [ 20, %if.then83.if.end186.sink.split_crit_edge ], [ 20, %if.then94 ]
  %byCWMaxMin.0.ph = phi i8 [ -92, %do.body49 ], [ -92, %if.then42 ], [ -92, %do.body25.if.end186.sink.split_crit_edge ], [ -92, %do.body.if.end186.sink.split_crit_edge ], [ -92, %if.then16 ], [ -91, %do.body68.if.end186.sink.split_crit_edge ], [ -91, %if.then111 ], [ -91, %if.then104.if.end186.sink.split_crit_edge ], [ -91, %if.then83.if.end186.sink.split_crit_edge ], [ -91, %if.then94 ]
  %call119 = call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -120, i8 noundef zeroext %.sink) #9
  br label %if.end186

if.end186:                                        ; preds = %if.end186.sink.split, %if.end171
  %byDIFS.1 = phi i8 [ %., %if.end171 ], [ %byDIFS.1.ph, %if.end186.sink.split ]
  %bySIFS.0 = phi i8 [ 10, %if.end171 ], [ %bySIFS.0.ph, %if.end186.sink.split ]
  %bySlot.1 = phi i8 [ %.351, %if.end171 ], [ %bySlot.1.ph, %if.end186.sink.split ]
  %byCWMaxMin.0 = phi i8 [ %spec.select, %if.end171 ], [ %byCWMaxMin.0.ph, %if.end186.sink.split ]
  %byRFType187 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %86 = ptrtoint ptr %byRFType187 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %byRFType187, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp189 = icmp eq i8 %87, 1
  %sub = add nsw i8 %bySIFS.0, -3
  %sub195 = add nsw i8 %byDIFS.1, -3
  %byDIFS.2 = select i1 %cmp189, i8 %sub195, i8 %byDIFS.1
  %bySIFS.1 = select i1 %cmp189, i8 %sub, i8 %bySIFS.0
  %bySIFS198 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 59
  %88 = ptrtoint ptr %bySIFS198 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bySIFS198, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %bySIFS.1)
  %cmp201.not = icmp eq i8 %89, %bySIFS.1
  br i1 %cmp201.not, label %if.end186.if.end208_crit_edge, label %if.then203

if.end186.if.end208_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then203:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %bySIFS198 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %bySIFS.1, ptr %bySIFS198, align 4
  %port_offset206 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %91 = ptrtoint ptr %port_offset206 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port_offset206, align 4
  %add.ptr207 = getelementptr i8, ptr %92, i32 34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr207, i8 %bySIFS.1) #9, !srcloc !41
  br label %if.end208

if.end208:                                        ; preds = %if.then203, %if.end186.if.end208_crit_edge
  %byDIFS209 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 60
  %93 = ptrtoint ptr %byDIFS209 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %byDIFS209, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %byDIFS.2)
  %cmp212.not = icmp eq i8 %94, %byDIFS.2
  br i1 %cmp212.not, label %if.end208.if.end219_crit_edge, label %if.then214

if.end208.if.end219_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then214:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %byDIFS209 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %byDIFS.2, ptr %byDIFS209, align 1
  %port_offset217 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %96 = ptrtoint ptr %port_offset217 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port_offset217, align 4
  %add.ptr218 = getelementptr i8, ptr %97, i32 35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr218, i8 %byDIFS.2) #9, !srcloc !41
  br label %if.end219

if.end219:                                        ; preds = %if.then214, %if.end208.if.end219_crit_edge
  %byEIFS = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 61
  %98 = ptrtoint ptr %byEIFS to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %byEIFS, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %99)
  %cmp221.not = icmp eq i8 %99, 80
  br i1 %cmp221.not, label %if.end219.if.end228_crit_edge, label %if.then223

if.end219.if.end228_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %byEIFS to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 80, ptr %byEIFS, align 2
  %port_offset226 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %101 = ptrtoint ptr %port_offset226 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %port_offset226, align 4
  %add.ptr227 = getelementptr i8, ptr %102, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr227, i8 80) #9, !srcloc !41
  br label %if.end228

if.end228:                                        ; preds = %if.then223, %if.end219.if.end228_crit_edge
  %bySlot229 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 62
  %103 = ptrtoint ptr %bySlot229 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %bySlot229, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %bySlot.1)
  %cmp232.not = icmp eq i8 %104, %bySlot.1
  br i1 %cmp232.not, label %if.end228.if.end239_crit_edge, label %if.then234

if.end228.if.end239_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

if.then234:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %bySlot229 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %bySlot.1, ptr %bySlot229, align 1
  %port_offset237 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %106 = ptrtoint ptr %port_offset237 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %port_offset237, align 4
  %add.ptr238 = getelementptr i8, ptr %107, i32 37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr238, i8 %bySlot.1) #9, !srcloc !41
  call void @bb_set_short_slot_time(ptr noundef %priv) #9
  br label %if.end239

if.end239:                                        ; preds = %if.then234, %if.end228.if.end239_crit_edge
  %byCWMaxMin240 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 63
  %108 = ptrtoint ptr %byCWMaxMin240 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %byCWMaxMin240, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %109, i8 %byCWMaxMin.0)
  %cmp243.not = icmp eq i8 %109, %byCWMaxMin.0
  br i1 %cmp243.not, label %if.end239.if.end250_crit_edge, label %if.then245

if.end239.if.end250_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

if.then245:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %byCWMaxMin240 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %byCWMaxMin.0, ptr %byCWMaxMin240, align 4
  %port_offset248 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %111 = ptrtoint ptr %port_offset248 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %port_offset248, align 4
  %add.ptr249 = getelementptr i8, ptr %112, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr249, i8 %byCWMaxMin.0) #9, !srcloc !41
  br label %if.end250

if.end250:                                        ; preds = %if.then245, %if.end239.if.end250_crit_edge
  %byBBType.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %113 = ptrtoint ptr %byBBType.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %byBBType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %114)
  %switch.i = icmp ult i8 %114, 2
  br i1 %switch.i, label %if.end250.CARDbyGetPktType.exit_crit_edge, label %if.else.i

if.end250.CARDbyGetPktType.exit_crit_edge:        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDbyGetPktType.exit

if.else.i:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  %basic_rates.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %115 = ptrtoint ptr %basic_rates.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %basic_rates.i.i, align 4
  %117 = and i32 %116, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %.not.i = icmp eq i32 %117, 0
  %..i = select i1 %.not.i, i8 2, i8 3
  br label %CARDbyGetPktType.exit

CARDbyGetPktType.exit:                            ; preds = %if.else.i, %if.end250.CARDbyGetPktType.exit_crit_edge
  %retval.0.i = phi i8 [ %..i, %if.else.i ], [ %114, %if.end250.CARDbyGetPktType.exit_crit_edge ]
  %byPacketType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 65
  %118 = ptrtoint ptr %byPacketType to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %retval.0.i, ptr %byPacketType, align 2
  call void @CARDvSetRSPINF(ptr noundef %priv, i8 noundef zeroext %bb_type)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #9
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bb_read_embedded(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bb_write_embedded(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_set_short_slot_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @CARDbyGetPktType(ptr nocapture noundef readonly %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %byBBType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %0 = ptrtoint ptr %byBBType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %byBBType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %basic_rates.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %basic_rates.i, align 4
  %4 = and i32 %3, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  %. = select i1 %.not, i8 2, i8 3
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i8 [ %., %if.else ], [ %1, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDvSetRSPINF(ptr noundef %priv, i8 noundef zeroext %bb_type) local_unnamed_addr #0 align 64 {
entry:
  %phy = alloca %union.vnt_phy_field_swap, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy) #9
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phy, align 4, !annotation !34
  %lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #9, !srcloc !41
  call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef 14, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %phy) #9
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy, align 4
  %arrayidx7 = getelementptr inbounds [2 x i16], ptr %phy, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx7, align 2
  store i16 %6, ptr %phy, align 4
  store i16 %4, ptr %arrayidx7, align 2
  %7 = load i32, ptr %phy, align 4
  %8 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_offset, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @arm_heavy_mb() #9
  %10 = call i32 @llvm.bswap.i32(i32 %7) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #9, !srcloc !38
  %basic_rates.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %basic_rates.i, align 4
  %13 = trunc i32 %12 to i16
  %14 = lshr i16 %13, 1
  %15 = and i16 %14, 1
  call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef 14, i16 noundef zeroext %15, i8 noundef zeroext 1, ptr noundef nonnull %phy) #9
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy, align 4
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx7, align 2
  store i16 %19, ptr %phy, align 4
  store i16 %17, ptr %arrayidx7, align 2
  %20 = load i32, ptr %phy, align 4
  %21 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_offset, align 4
  %add.ptr24 = getelementptr i8, ptr %22, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @arm_heavy_mb() #9
  %23 = call i32 @llvm.bswap.i32(i32 %20) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %23) #9, !srcloc !38
  %24 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %basic_rates.i, align 4
  %and.i167 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  %26 = trunc i32 %25 to i16
  %27 = lshr i16 %26, 1
  %28 = and i16 %27, 1
  %retval.0.i175 = select i1 %tobool.not.i168, i16 %28, i16 2
  call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef 14, i16 noundef zeroext %retval.0.i175, i8 noundef zeroext 1, ptr noundef nonnull %phy) #9
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %phy, align 4
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx7, align 2
  store i16 %32, ptr %phy, align 4
  store i16 %30, ptr %arrayidx7, align 2
  %33 = load i32, ptr %phy, align 4
  %34 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_offset, align 4
  %add.ptr35 = getelementptr i8, ptr %35, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @arm_heavy_mb() #9
  %36 = call i32 @llvm.bswap.i32(i32 %33) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %36) #9, !srcloc !38
  %37 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %basic_rates.i, align 4
  %and.i180 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  br i1 %tobool.not.i181, label %if.end.i187, label %entry.CARDwGetCCKControlRate.exit189_crit_edge

entry.CARDwGetCCKControlRate.exit189_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDwGetCCKControlRate.exit189

if.end.i187:                                      ; preds = %entry
  %and.i180.1 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180.1)
  %tobool.not.i181.1 = icmp eq i32 %and.i180.1, 0
  br i1 %tobool.not.i181.1, label %if.end.i187.1, label %if.end.i187.CARDwGetCCKControlRate.exit189_crit_edge

if.end.i187.CARDwGetCCKControlRate.exit189_crit_edge: ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDwGetCCKControlRate.exit189

if.end.i187.1:                                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #11
  %39 = trunc i32 %38 to i16
  %40 = lshr i16 %39, 1
  %41 = and i16 %40, 1
  br label %CARDwGetCCKControlRate.exit189

CARDwGetCCKControlRate.exit189:                   ; preds = %if.end.i187.1, %if.end.i187.CARDwGetCCKControlRate.exit189_crit_edge, %entry.CARDwGetCCKControlRate.exit189_crit_edge
  %retval.0.i188 = phi i16 [ 3, %entry.CARDwGetCCKControlRate.exit189_crit_edge ], [ 2, %if.end.i187.CARDwGetCCKControlRate.exit189_crit_edge ], [ %41, %if.end.i187.1 ]
  call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef 14, i16 noundef zeroext %retval.0.i188, i8 noundef zeroext 1, ptr noundef nonnull %phy) #9
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phy, align 4
  %44 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx7, align 2
  store i16 %45, ptr %phy, align 4
  store i16 %43, ptr %arrayidx7, align 2
  %46 = load i32, ptr %phy, align 4
  %47 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port_offset, align 4
  %add.ptr46 = getelementptr i8, ptr %48, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @arm_heavy_mb() #9
  %49 = call i32 @llvm.bswap.i32(i32 %46) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %49) #9, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bb_type)
  %cmp.i = icmp eq i8 %bb_type, 0
  %..i = select i1 %cmp.i, i8 -101, i8 -117
  %.90.i = select i1 %cmp.i, i8 44, i8 50
  %conv47 = zext i8 %..i to i16
  %conv49 = zext i8 %.90.i to i16
  %shl = shl nuw nsw i16 %conv49, 8
  %or = or i16 %shl, %conv47
  %50 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port_offset, align 4
  %add.ptr52 = getelementptr i8, ptr %51, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %52 = call i16 @llvm.bswap.i16(i16 %or) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52, i16 %52) #9, !srcloc !43
  %.91.i = select i1 %cmp.i, i8 -97, i8 -113
  %.92.i = select i1 %cmp.i, i8 36, i8 42
  %conv53 = zext i8 %.91.i to i16
  %conv55 = zext i8 %.92.i to i16
  %shl56 = shl nuw nsw i16 %conv55, 8
  %or57 = or i16 %shl56, %conv53
  %53 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port_offset, align 4
  %add.ptr60 = getelementptr i8, ptr %54, i32 54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %55 = call i16 @llvm.bswap.i16(i16 %or57) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr60, i16 %55) #9, !srcloc !43
  %.93.i = select i1 %cmp.i, i8 -102, i8 -118
  %.94.i = select i1 %cmp.i, i8 32, i8 38
  %conv61 = zext i8 %.93.i to i16
  %conv63 = zext i8 %.94.i to i16
  %shl64 = shl nuw nsw i16 %conv63, 8
  %or65 = or i16 %shl64, %conv61
  %56 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port_offset, align 4
  %add.ptr68 = getelementptr i8, ptr %57, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %58 = call i16 @llvm.bswap.i16(i16 %or65) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr68, i16 %58) #9, !srcloc !43
  %.95.i = select i1 %cmp.i, i8 -98, i8 -114
  %.96.i = select i1 %cmp.i, i8 28, i8 34
  %conv69 = zext i8 %.95.i to i16
  %conv71 = zext i8 %.96.i to i16
  %shl72 = shl nuw nsw i16 %conv71, 8
  %or73 = or i16 %shl72, %conv69
  %59 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port_offset, align 4
  %add.ptr76 = getelementptr i8, ptr %60, i32 58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %61 = call i16 @llvm.bswap.i16(i16 %or73) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr76, i16 %61) #9, !srcloc !43
  %.103.i = select i1 %cmp.i, i8 -103, i8 -119
  %conv77 = zext i8 %.103.i to i16
  %or81 = or i16 %shl72, %conv77
  %62 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port_offset, align 4
  %add.ptr84 = getelementptr i8, ptr %63, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %64 = call i16 @llvm.bswap.i16(i16 %or81) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 %64) #9, !srcloc !43
  %call85 = call fastcc zeroext i16 @CARDwGetOFDMControlRate(ptr noundef %priv, i16 noundef zeroext 9)
  %conv86 = trunc i16 %call85 to i8
  %65 = zext i8 %conv86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %conv86, label %sw.default.i [
    i8 4, label %CARDwGetCCKControlRate.exit189.s_vCalculateOFDMRParameter.exit_crit_edge
    i8 5, label %sw.bb3.i
    i8 6, label %sw.bb10.i
    i8 7, label %sw.bb17.i
    i8 9, label %sw.bb24.i
    i8 10, label %sw.bb31.i
    i8 11, label %sw.bb38.i
  ]

CARDwGetCCKControlRate.exit189.s_vCalculateOFDMRParameter.exit_crit_edge: ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit

sw.bb3.i:                                         ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit

sw.bb10.i:                                        ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit

sw.bb17.i:                                        ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit

sw.bb24.i:                                        ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  %.97.i = select i1 %cmp.i, i8 -99, i8 -115
  %.98.i = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit

sw.bb31.i:                                        ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  %.99.i = select i1 %cmp.i, i8 -104, i8 -120
  %.100.i = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit

sw.bb38.i:                                        ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  %.101.i = select i1 %cmp.i, i8 -100, i8 -116
  %.102.i = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit

sw.default.i:                                     ; preds = %CARDwGetCCKControlRate.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit

s_vCalculateOFDMRParameter.exit:                  ; preds = %sw.default.i, %sw.bb38.i, %sw.bb31.i, %sw.bb24.i, %sw.bb17.i, %sw.bb10.i, %sw.bb3.i, %CARDwGetCCKControlRate.exit189.s_vCalculateOFDMRParameter.exit_crit_edge
  %.sink89.i = phi i8 [ %.91.i, %sw.bb3.i ], [ %.93.i, %sw.bb10.i ], [ %.95.i, %sw.bb17.i ], [ %.97.i, %sw.bb24.i ], [ %.99.i, %sw.bb31.i ], [ %.101.i, %sw.bb38.i ], [ %.103.i, %sw.default.i ], [ %..i, %CARDwGetCCKControlRate.exit189.s_vCalculateOFDMRParameter.exit_crit_edge ]
  %.sink.i = phi i8 [ %.92.i, %sw.bb3.i ], [ %.94.i, %sw.bb10.i ], [ %.96.i, %sw.bb17.i ], [ %.98.i, %sw.bb24.i ], [ %.100.i, %sw.bb31.i ], [ %.102.i, %sw.bb38.i ], [ %.96.i, %sw.default.i ], [ %.90.i, %CARDwGetCCKControlRate.exit189.s_vCalculateOFDMRParameter.exit_crit_edge ]
  %conv87 = zext i8 %.sink89.i to i16
  %conv89 = zext i8 %.sink.i to i16
  %shl90 = shl nuw nsw i16 %conv89, 8
  %or91 = or i16 %shl90, %conv87
  %66 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port_offset, align 4
  %add.ptr94 = getelementptr i8, ptr %67, i32 62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %68 = call i16 @llvm.bswap.i16(i16 %or91) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr94, i16 %68) #9, !srcloc !43
  %call95 = call fastcc zeroext i16 @CARDwGetOFDMControlRate(ptr noundef %priv, i16 noundef zeroext 10)
  %conv96 = trunc i16 %call95 to i8
  %69 = zext i8 %conv96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %conv96, label %sw.default.i236 [
    i8 4, label %s_vCalculateOFDMRParameter.exit.s_vCalculateOFDMRParameter.exit239_crit_edge
    i8 5, label %sw.bb3.i212
    i8 6, label %sw.bb10.i216
    i8 7, label %sw.bb17.i220
    i8 9, label %sw.bb24.i224
    i8 10, label %sw.bb31.i228
    i8 11, label %sw.bb38.i232
  ]

s_vCalculateOFDMRParameter.exit.s_vCalculateOFDMRParameter.exit239_crit_edge: ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit239

sw.bb3.i212:                                      ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit239

sw.bb10.i216:                                     ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit239

sw.bb17.i220:                                     ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit239

sw.bb24.i224:                                     ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.97.i222 = select i1 %cmp.i, i8 -99, i8 -115
  %.98.i223 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit239

sw.bb31.i228:                                     ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.99.i226 = select i1 %cmp.i, i8 -104, i8 -120
  %.100.i227 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit239

sw.bb38.i232:                                     ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.101.i230 = select i1 %cmp.i, i8 -100, i8 -116
  %.102.i231 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit239

sw.default.i236:                                  ; preds = %s_vCalculateOFDMRParameter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit239

s_vCalculateOFDMRParameter.exit239:               ; preds = %sw.default.i236, %sw.bb38.i232, %sw.bb31.i228, %sw.bb24.i224, %sw.bb17.i220, %sw.bb10.i216, %sw.bb3.i212, %s_vCalculateOFDMRParameter.exit.s_vCalculateOFDMRParameter.exit239_crit_edge
  %.sink89.i237 = phi i8 [ %.91.i, %sw.bb3.i212 ], [ %.93.i, %sw.bb10.i216 ], [ %.95.i, %sw.bb17.i220 ], [ %.97.i222, %sw.bb24.i224 ], [ %.99.i226, %sw.bb31.i228 ], [ %.101.i230, %sw.bb38.i232 ], [ %.103.i, %sw.default.i236 ], [ %..i, %s_vCalculateOFDMRParameter.exit.s_vCalculateOFDMRParameter.exit239_crit_edge ]
  %.sink.i238 = phi i8 [ %.92.i, %sw.bb3.i212 ], [ %.94.i, %sw.bb10.i216 ], [ %.96.i, %sw.bb17.i220 ], [ %.98.i223, %sw.bb24.i224 ], [ %.100.i227, %sw.bb31.i228 ], [ %.102.i231, %sw.bb38.i232 ], [ %.96.i, %sw.default.i236 ], [ %.90.i, %s_vCalculateOFDMRParameter.exit.s_vCalculateOFDMRParameter.exit239_crit_edge ]
  %conv97 = zext i8 %.sink89.i237 to i16
  %conv99 = zext i8 %.sink.i238 to i16
  %shl100 = shl nuw nsw i16 %conv99, 8
  %or101 = or i16 %shl100, %conv97
  %70 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port_offset, align 4
  %add.ptr104 = getelementptr i8, ptr %71, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %72 = call i16 @llvm.bswap.i16(i16 %or101) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr104, i16 %72) #9, !srcloc !43
  %call105 = call fastcc zeroext i16 @CARDwGetOFDMControlRate(ptr noundef %priv, i16 noundef zeroext 11)
  %conv106 = trunc i16 %call105 to i8
  %73 = zext i8 %conv106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %conv106, label %sw.default.i271 [
    i8 4, label %s_vCalculateOFDMRParameter.exit239.s_vCalculateOFDMRParameter.exit274_crit_edge
    i8 5, label %sw.bb3.i247
    i8 6, label %sw.bb10.i251
    i8 7, label %sw.bb17.i255
    i8 9, label %sw.bb24.i259
    i8 10, label %sw.bb31.i263
    i8 11, label %sw.bb38.i267
  ]

s_vCalculateOFDMRParameter.exit239.s_vCalculateOFDMRParameter.exit274_crit_edge: ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit274

sw.bb3.i247:                                      ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit274

sw.bb10.i251:                                     ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit274

sw.bb17.i255:                                     ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit274

sw.bb24.i259:                                     ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  %.97.i257 = select i1 %cmp.i, i8 -99, i8 -115
  %.98.i258 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit274

sw.bb31.i263:                                     ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  %.99.i261 = select i1 %cmp.i, i8 -104, i8 -120
  %.100.i262 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit274

sw.bb38.i267:                                     ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  %.101.i265 = select i1 %cmp.i, i8 -100, i8 -116
  %.102.i266 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit274

sw.default.i271:                                  ; preds = %s_vCalculateOFDMRParameter.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit274

s_vCalculateOFDMRParameter.exit274:               ; preds = %sw.default.i271, %sw.bb38.i267, %sw.bb31.i263, %sw.bb24.i259, %sw.bb17.i255, %sw.bb10.i251, %sw.bb3.i247, %s_vCalculateOFDMRParameter.exit239.s_vCalculateOFDMRParameter.exit274_crit_edge
  %.sink89.i272 = phi i8 [ %.91.i, %sw.bb3.i247 ], [ %.93.i, %sw.bb10.i251 ], [ %.95.i, %sw.bb17.i255 ], [ %.97.i257, %sw.bb24.i259 ], [ %.99.i261, %sw.bb31.i263 ], [ %.101.i265, %sw.bb38.i267 ], [ %.103.i, %sw.default.i271 ], [ %..i, %s_vCalculateOFDMRParameter.exit239.s_vCalculateOFDMRParameter.exit274_crit_edge ]
  %.sink.i273 = phi i8 [ %.92.i, %sw.bb3.i247 ], [ %.94.i, %sw.bb10.i251 ], [ %.96.i, %sw.bb17.i255 ], [ %.98.i258, %sw.bb24.i259 ], [ %.100.i262, %sw.bb31.i263 ], [ %.102.i266, %sw.bb38.i267 ], [ %.96.i, %sw.default.i271 ], [ %.90.i, %s_vCalculateOFDMRParameter.exit239.s_vCalculateOFDMRParameter.exit274_crit_edge ]
  %conv107 = zext i8 %.sink89.i272 to i16
  %conv109 = zext i8 %.sink.i273 to i16
  %shl110 = shl nuw nsw i16 %conv109, 8
  %or111 = or i16 %shl110, %conv107
  %74 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %port_offset, align 4
  %add.ptr114 = getelementptr i8, ptr %75, i32 66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %76 = call i16 @llvm.bswap.i16(i16 %or111) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr114, i16 %76) #9, !srcloc !43
  %call115 = call fastcc zeroext i16 @CARDwGetOFDMControlRate(ptr noundef %priv, i16 noundef zeroext 11)
  %conv116 = trunc i16 %call115 to i8
  %77 = zext i8 %conv116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %conv116, label %sw.default.i306 [
    i8 4, label %s_vCalculateOFDMRParameter.exit274.s_vCalculateOFDMRParameter.exit309_crit_edge
    i8 5, label %sw.bb3.i282
    i8 6, label %sw.bb10.i286
    i8 7, label %sw.bb17.i290
    i8 9, label %sw.bb24.i294
    i8 10, label %sw.bb31.i298
    i8 11, label %sw.bb38.i302
  ]

s_vCalculateOFDMRParameter.exit274.s_vCalculateOFDMRParameter.exit309_crit_edge: ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit309

sw.bb3.i282:                                      ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit309

sw.bb10.i286:                                     ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit309

sw.bb17.i290:                                     ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit309

sw.bb24.i294:                                     ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  %.97.i292 = select i1 %cmp.i, i8 -99, i8 -115
  %.98.i293 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit309

sw.bb31.i298:                                     ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  %.99.i296 = select i1 %cmp.i, i8 -104, i8 -120
  %.100.i297 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit309

sw.bb38.i302:                                     ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  %.101.i300 = select i1 %cmp.i, i8 -100, i8 -116
  %.102.i301 = select i1 %cmp.i, i8 24, i8 30
  br label %s_vCalculateOFDMRParameter.exit309

sw.default.i306:                                  ; preds = %s_vCalculateOFDMRParameter.exit274
  call void @__sanitizer_cov_trace_pc() #11
  br label %s_vCalculateOFDMRParameter.exit309

s_vCalculateOFDMRParameter.exit309:               ; preds = %sw.default.i306, %sw.bb38.i302, %sw.bb31.i298, %sw.bb24.i294, %sw.bb17.i290, %sw.bb10.i286, %sw.bb3.i282, %s_vCalculateOFDMRParameter.exit274.s_vCalculateOFDMRParameter.exit309_crit_edge
  %.sink89.i307 = phi i8 [ %.91.i, %sw.bb3.i282 ], [ %.93.i, %sw.bb10.i286 ], [ %.95.i, %sw.bb17.i290 ], [ %.97.i292, %sw.bb24.i294 ], [ %.99.i296, %sw.bb31.i298 ], [ %.101.i300, %sw.bb38.i302 ], [ %.103.i, %sw.default.i306 ], [ %..i, %s_vCalculateOFDMRParameter.exit274.s_vCalculateOFDMRParameter.exit309_crit_edge ]
  %.sink.i308 = phi i8 [ %.92.i, %sw.bb3.i282 ], [ %.94.i, %sw.bb10.i286 ], [ %.96.i, %sw.bb17.i290 ], [ %.98.i293, %sw.bb24.i294 ], [ %.100.i297, %sw.bb31.i298 ], [ %.102.i301, %sw.bb38.i302 ], [ %.96.i, %sw.default.i306 ], [ %.90.i, %s_vCalculateOFDMRParameter.exit274.s_vCalculateOFDMRParameter.exit309_crit_edge ]
  %conv117 = zext i8 %.sink89.i307 to i16
  %conv119 = zext i8 %.sink.i308 to i16
  %shl120 = shl nuw nsw i16 %conv119, 8
  %or121 = or i16 %shl120, %conv117
  %78 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %port_offset, align 4
  %add.ptr124 = getelementptr i8, ptr %79, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %80 = call i16 @llvm.bswap.i16(i16 %or121) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr124, i16 %80) #9, !srcloc !43
  %81 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port_offset, align 4
  %add.ptr126 = getelementptr i8, ptr %82, i32 79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 0) #9, !srcloc !41
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @CARDbUpdateTSF(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byRxRate, i64 noundef %qwBSSTimestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %3 = or i8 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %3) #9, !srcloc !41
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %ww.032.i = phi i16 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i16 %ww.032.i, 1
  %cmp.i = icmp ult i16 %ww.032.i, -17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge

for.inc.i.CARDbGetCurrentTSF.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDbGetCurrentTSF.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13.i = getelementptr i8, ptr %1, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #9, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %add.ptr16.i = getelementptr i8, ptr %1, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #9, !srcloc !35
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %CARDbGetCurrentTSF.exit

CARDbGetCurrentTSF.exit:                          ; preds = %if.end12.i, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge
  %local_tsf.sroa.5.0 = phi i32 [ %9, %if.end12.i ], [ -1, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge ]
  %local_tsf.sroa.0.0 = phi i32 [ %7, %if.end12.i ], [ -1, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge ]
  %local_tsf.sroa.5.0.insert.ext = zext i32 %local_tsf.sroa.5.0 to i64
  %local_tsf.sroa.0.0.insert.ext = zext i32 %local_tsf.sroa.0.0 to i64
  %local_tsf.sroa.0.0.insert.shift = shl nuw i64 %local_tsf.sroa.0.0.insert.ext, 32
  %local_tsf.sroa.0.0.insert.insert = or i64 %local_tsf.sroa.0.0.insert.shift, %local_tsf.sroa.5.0.insert.ext
  call void @__sanitizer_cov_trace_cmp8(i64 %local_tsf.sroa.0.0.insert.insert, i64 %qwBSSTimestamp)
  %cmp.not = icmp eq i64 %local_tsf.sroa.0.0.insert.insert, %qwBSSTimestamp
  br i1 %cmp.not, label %CARDbGetCurrentTSF.exit.if.end_crit_edge, label %if.then

CARDbGetCurrentTSF.exit.if.end_crit_edge:         ; preds = %CARDbGetCurrentTSF.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %CARDbGetCurrentTSF.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = urem i8 %byRxRate, 12
  %rem.i = zext i8 %10 to i32
  %arrayidx.i = getelementptr [12 x i16], ptr @cwRXBCNTSFOff, i32 0, i32 %rem.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %conv1.i = zext i16 %12 to i64
  %13 = add i64 %local_tsf.sroa.0.0.insert.insert, %conv1.i
  %sub.i = sub i64 %qwBSSTimestamp, %13
  %conv = trunc i64 %sub.i to i32
  %14 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_offset.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #9, !srcloc !38
  %shr = lshr i64 %sub.i, 32
  %conv2 = trunc i64 %shr to i32
  %17 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_offset.i, align 4
  %add.ptr5 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv2) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %19) #9, !srcloc !38
  %20 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_offset.i, align 4
  %add.ptr7 = getelementptr i8, ptr %21, i32 72
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %23 = or i8 %22, 4
  %24 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_offset.i, align 4
  %add.ptr12 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %23) #9, !srcloc !41
  br label %if.end

if.end:                                           ; preds = %if.then, %CARDbGetCurrentTSF.exit.if.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @CARDbGetCurrentTSF(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %pqwCurrTSF) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %3 = or i8 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %3) #9, !srcloc !41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.032 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end12, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.032, 1
  %cmp = icmp ult i16 %ww.032, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13 = getelementptr i8, ptr %1, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %8 = ptrtoint ptr %pqwCurrTSF to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pqwCurrTSF, align 4
  %add.ptr16 = getelementptr i8, ptr %1, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !35
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %add.ptr18 = getelementptr i32, ptr %pqwCurrTSF, i32 1
  %11 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.inc.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @CARDqGetTSFOffset(i8 noundef zeroext %byRxRate, i64 noundef %qwTSF1, i64 noundef %qwTSF2) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = urem i8 %byRxRate, 12
  %rem = zext i8 %0 to i32
  %arrayidx = getelementptr [12 x i16], ptr @cwRXBCNTSFOff, i32 0, i32 %rem
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv1 = zext i16 %2 to i64
  %3 = add i64 %conv1, %qwTSF2
  %sub = sub i64 %qwTSF1, %3
  ret i64 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @CARDbSetBeaconPeriod(ptr nocapture noundef %priv, i16 noundef zeroext %wBeaconInterval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %3 = or i8 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %3) #9, !srcloc !41
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %ww.032.i = phi i16 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i16 %ww.032.i, 1
  %cmp.i = icmp ult i16 %ww.032.i, -17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge

for.inc.i.CARDbGetCurrentTSF.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDbGetCurrentTSF.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13.i = getelementptr i8, ptr %1, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #9, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %add.ptr16.i = getelementptr i8, ptr %1, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #9, !srcloc !35
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %CARDbGetCurrentTSF.exit

CARDbGetCurrentTSF.exit:                          ; preds = %if.end12.i, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge
  %qwNextTBTT.sroa.8.0 = phi i32 [ %9, %if.end12.i ], [ 0, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge ]
  %qwNextTBTT.sroa.0.0 = phi i32 [ %7, %if.end12.i ], [ 0, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge ]
  %qwNextTBTT.sroa.8.0.insert.ext = zext i32 %qwNextTBTT.sroa.8.0 to i64
  %qwNextTBTT.sroa.0.0.insert.ext = zext i32 %qwNextTBTT.sroa.0.0 to i64
  %qwNextTBTT.sroa.0.0.insert.shift = shl nuw i64 %qwNextTBTT.sroa.0.0.insert.ext, 32
  %qwNextTBTT.sroa.0.0.insert.insert = or i64 %qwNextTBTT.sroa.0.0.insert.shift, %qwNextTBTT.sroa.8.0.insert.ext
  %conv.i = zext i16 %wBeaconInterval to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wBeaconInterval)
  %tobool.not.i24 = icmp eq i16 %wBeaconInterval, 0
  br i1 %tobool.not.i24, label %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge, label %if.else167.i

CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge: ; preds = %CARDbGetCurrentTSF.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDqGetNextTBTT.exit

if.else167.i:                                     ; preds = %CARDbGetCurrentTSF.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %qwNextTBTT.sroa.0.0.insert.insert)
  %cmp169.i = icmp ult i64 %qwNextTBTT.sroa.0.0.insert.insert, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !46

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %div177.i = udiv i32 %qwNextTBTT.sroa.8.0, %mul.i
  %conv178.i = zext i32 %div177.i to i64
  br label %if.end183.i

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %qwNextTBTT.sroa.0.0.insert.insert) #12, !srcloc !47
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.else179.i, %if.then173.i
  %qwTSF.addr.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %qwTSF.addr.0.i, 1
  %conv186.i = zext i32 %mul.i to i64
  %mul187.i = mul i64 %add185.i, %conv186.i
  %extract.t43 = trunc i64 %mul187.i to i32
  %extract45 = lshr i64 %mul187.i, 32
  %extract.t46 = trunc i64 %extract45 to i32
  br label %CARDqGetNextTBTT.exit

CARDqGetNextTBTT.exit:                            ; preds = %if.end183.i, %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge
  %qwTSF.addr.1.i.off0 = phi i32 [ %qwNextTBTT.sroa.8.0, %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge ], [ %extract.t43, %if.end183.i ]
  %qwTSF.addr.1.i.off32 = phi i32 [ %qwNextTBTT.sroa.0.0, %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge ], [ %extract.t46, %if.end183.i ]
  %11 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_offset.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %wBeaconInterval) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %13) #9, !srcloc !43
  %wBeaconInterval2 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 131
  %14 = ptrtoint ptr %wBeaconInterval2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %wBeaconInterval, ptr %wBeaconInterval2, align 4
  %15 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset.i, align 4
  %add.ptr4 = getelementptr i8, ptr %16, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %qwTSF.addr.1.i.off0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %17) #9, !srcloc !38
  %18 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_offset.i, align 4
  %add.ptr8 = getelementptr i8, ptr %19, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %qwTSF.addr.1.i.off32) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %20) #9, !srcloc !38
  %21 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_offset.i, align 4
  %add.ptr10 = getelementptr i8, ptr %22, i32 72
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %24 = or i8 %23, 8
  %25 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_offset.i, align 4
  %add.ptr15 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %24) #9, !srcloc !41
  ret i1 true
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @CARDqGetNextTBTT(i64 noundef %qwTSF, i16 noundef zeroext %wBeaconInterval) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wBeaconInterval to i32
  %mul = shl nuw nsw i32 %conv, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wBeaconInterval)
  %tobool.not = icmp eq i16 %wBeaconInterval, 0
  br i1 %tobool.not, label %entry.if.end188_crit_edge, label %if.else167

entry.if.end188_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.else167:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %qwTSF)
  %cmp169 = icmp ult i64 %qwTSF, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !46

if.then173:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #11
  %conv174 = trunc i64 %qwTSF to i32
  %div177 = udiv i32 %conv174, %mul
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %qwTSF) #12, !srcloc !47
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %qwTSF.addr.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %qwTSF.addr.0, 1
  %conv186 = zext i32 %mul to i64
  %mul187 = mul i64 %add185, %conv186
  br label %if.end188

if.end188:                                        ; preds = %if.end183, %entry.if.end188_crit_edge
  %qwTSF.addr.1 = phi i64 [ %qwTSF, %entry.if.end188_crit_edge ], [ %mul187, %if.end183 ]
  ret i64 %qwTSF.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDbRadioPowerOff(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_off = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 87
  %0 = ptrtoint ptr %radio_off to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %radio_off, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end67_crit_edge

entry.do.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.end:                                           ; preds = %entry
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %2 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %byRFType, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %3, label %if.end.do.body38_crit_edge [
    i8 1, label %do.body
    i8 3, label %if.end.do.body16_crit_edge
    i8 14, label %if.end.do.body16_crit_edge85
    i8 10, label %if.end.do.body16_crit_edge86
  ]

if.end.do.body16_crit_edge86:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.end.do.body16_crit_edge85:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.end.do.body16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.end.do.body38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %5 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 120
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %8 = and i16 %7, -3
  %9 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %8) #9, !srcloc !43
  %11 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_offset, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 120
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #9, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %14 = or i16 %13, 512
  %15 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 %14) #9, !srcloc !43
  br label %do.body38

do.body16:                                        ; preds = %if.end.do.body16_crit_edge, %if.end.do.body16_crit_edge85, %if.end.do.body16_crit_edge86
  %port_offset18 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %17 = ptrtoint ptr %port_offset18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_offset18, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 120
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #9, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %20 = and i16 %19, -1025
  %21 = ptrtoint ptr %port_offset18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_offset18, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %20) #9, !srcloc !43
  %23 = ptrtoint ptr %port_offset18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_offset18, align 4
  %add.ptr30 = getelementptr i8, ptr %24, i32 120
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr30) #9, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %26 = and i16 %25, -257
  %27 = ptrtoint ptr %port_offset18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_offset18, align 4
  %add.ptr36 = getelementptr i8, ptr %28, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36, i16 %26) #9, !srcloc !43
  br label %do.body38

do.body38:                                        ; preds = %do.body16, %do.body, %if.end.do.body38_crit_edge
  %port_offset39 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %29 = ptrtoint ptr %port_offset39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_offset39, align 4
  %add.ptr40 = getelementptr i8, ptr %30, i32 84
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %32 = and i8 %31, -5
  %33 = ptrtoint ptr %port_offset39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port_offset39, align 4
  %add.ptr46 = getelementptr i8, ptr %34, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %32) #9, !srcloc !41
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %35 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %local_id, align 4
  tail call void @bb_set_deep_sleep(ptr noundef %priv, i8 noundef zeroext %36) #9
  %37 = ptrtoint ptr %radio_off to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %radio_off, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CARDbRadioPowerOff.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CARDbRadioPowerOff, %if.then54)) #9
          to label %do.body57 [label %if.then54], !srcloc !50

if.then54:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CARDbRadioPowerOff.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.3) #9
  br label %do.body57

do.body57:                                        ; preds = %if.then54, %do.body38
  %38 = ptrtoint ptr %port_offset39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port_offset39, align 4
  %add.ptr60 = getelementptr i8, ptr %39, i32 122
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %41 = or i8 %40, 1
  %42 = ptrtoint ptr %port_offset39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port_offset39, align 4
  %add.ptr66 = getelementptr i8, ptr %43, i32 122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66, i8 %41) #9, !srcloc !41
  br label %do.end67

do.end67:                                         ; preds = %do.body57, %entry.do.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_set_deep_sleep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDvSafeResetTx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %apTD0Rings = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %apTD0Rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apTD0Rings, align 4
  %apTailTD = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 25
  %2 = ptrtoint ptr %apTailTD to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %apTailTD, align 4
  %apCurrTD = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 24
  %3 = ptrtoint ptr %apCurrTD to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %apCurrTD, align 4
  %apTD1Rings = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 27
  %4 = ptrtoint ptr %apTD1Rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apTD1Rings, align 4
  %arrayidx7 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx7, align 4
  %arrayidx11 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 24, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 0
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %arrayidx12, align 4
  %arrayidx12.1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %arrayidx12.1, align 4
  %tx_descs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 2
  %10 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_descs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1566.not = icmp eq i32 %11, 0
  br i1 %cmp1566.not, label %entry.for.cond22.preheader_crit_edge, label %entry.for.body16_crit_edge

entry.for.body16_crit_edge:                       ; preds = %entry
  br label %for.body16

entry.for.cond22.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.body16.for.cond22.preheader_crit_edge, %entry.for.cond22.preheader_crit_edge
  %arrayidx25 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2668.not = icmp eq i32 %13, 0
  br i1 %cmp2668.not, label %for.cond22.preheader.for.end37_crit_edge, label %for.cond22.preheader.for.body27_crit_edge

for.cond22.preheader.for.body27_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body27

for.cond22.preheader.for.end37_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %entry.for.body16_crit_edge
  %uu.167 = phi i32 [ %inc20, %for.body16.for.body16_crit_edge ], [ 0, %entry.for.body16_crit_edge ]
  %14 = ptrtoint ptr %apTD0Rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apTD0Rings, align 4
  %16 = getelementptr %struct.vnt_tx_desc, ptr %15, i32 %uu.167, i32 0, i32 2
  %owner = getelementptr inbounds %struct.anon.130, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load volatile i8, ptr %owner, align 1
  %bf.clear = and i8 %bf.load, 127
  store volatile i8 %bf.clear, ptr %owner, align 1
  %inc20 = add nuw i32 %uu.167, 1
  %18 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_descs, align 4
  %cmp15 = icmp ult i32 %inc20, %19
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.cond22.preheader_crit_edge

for.body16.for.cond22.preheader_crit_edge:        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond22.preheader

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.cond22.preheader.for.body27_crit_edge
  %uu.269 = phi i32 [ %inc36, %for.body27.for.body27_crit_edge ], [ 0, %for.cond22.preheader.for.body27_crit_edge ]
  %20 = ptrtoint ptr %apTD1Rings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %apTD1Rings, align 4
  %22 = getelementptr %struct.vnt_tx_desc, ptr %21, i32 %uu.269, i32 0, i32 2
  %owner31 = getelementptr inbounds %struct.anon.130, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %owner31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load32 = load volatile i8, ptr %owner31, align 1
  %bf.clear33 = and i8 %bf.load32, 127
  store volatile i8 %bf.clear33, ptr %owner31, align 1
  %inc36 = add nuw i32 %uu.269, 1
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp ult i32 %inc36, %25
  br i1 %cmp26, label %for.body27.for.body27_crit_edge, label %for.body27.for.end37_crit_edge

for.body27.for.end37_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

for.end37:                                        ; preds = %for.body27.for.end37_crit_edge, %for.cond22.preheader.for.end37_crit_edge
  %td0_pool_dma = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 11
  %26 = ptrtoint ptr %td0_pool_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %td0_pool_dma, align 4
  tail call void @MACvSetCurrTXDescAddr(i32 noundef 0, ptr noundef %priv, i32 noundef %27) #9
  %td1_pool_dma = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 12
  %28 = ptrtoint ptr %td1_pool_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %td1_pool_dma, align 4
  tail call void @MACvSetCurrTXDescAddr(i32 noundef 1, ptr noundef %priv, i32 noundef %29) #9
  %tx_beacon_dma = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 15
  %30 = ptrtoint ptr %tx_beacon_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_beacon_dma, align 4
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %32 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %34) #9, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetCurrTXDescAddr(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDvSafeResetRx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aRD0Ring = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %aRD0Ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aRD0Ring, align 4
  %pCurrRD = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 30
  %2 = ptrtoint ptr %pCurrRD to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pCurrRD, align 4
  %aRD1Ring = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 29
  %3 = ptrtoint ptr %aRD1Ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aRD1Ring, align 4
  %arrayidx4 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 30, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx4, align 4
  %opts = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp62.not = icmp eq i32 %7, 0
  br i1 %cmp62.not, label %entry.for.cond10.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond10.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_buf_sz = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  br label %for.body

for.cond10.preheader:                             ; preds = %for.body.for.cond10.preheader_crit_edge, %entry.for.cond10.preheader_crit_edge
  %rx_descs1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 1
  %8 = ptrtoint ptr %rx_descs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_descs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1264.not = icmp eq i32 %9, 0
  br i1 %cmp1264.not, label %for.cond10.preheader.for.end32_crit_edge, label %for.body14.lr.ph

for.cond10.preheader.for.end32_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %rx_buf_sz17 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  br label %for.body14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %uu.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %aRD0Ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aRD0Ring, align 4
  %arrayidx6 = getelementptr %struct.vnt_rx_desc, ptr %11, i32 %uu.063
  %12 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_sz, align 4
  %conv = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store volatile i16 %14, ptr %arrayidx6, align 8
  %16 = getelementptr inbounds %struct.vnt_rdes0, ptr %arrayidx6, i32 0, i32 1
  %owner = getelementptr inbounds %struct.anon.132, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load volatile i8, ptr %owner, align 1
  %bf.set = or i8 %bf.load, -128
  store volatile i8 %bf.set, ptr %owner, align 1
  %18 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_buf_sz, align 4
  %conv9 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %rd1 = getelementptr %struct.vnt_rx_desc, ptr %11, i32 %uu.063, i32 1
  %21 = ptrtoint ptr %rd1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store volatile i16 %20, ptr %rd1, align 4
  %inc = add nuw i32 %uu.063, 1
  %22 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opts, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond10.preheader_crit_edge

for.body.for.cond10.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %uu.165 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc31, %for.body14.for.body14_crit_edge ]
  %24 = ptrtoint ptr %aRD1Ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aRD1Ring, align 4
  %arrayidx16 = getelementptr %struct.vnt_rx_desc, ptr %25, i32 %uu.165
  %26 = ptrtoint ptr %rx_buf_sz17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_buf_sz17, align 4
  %conv18 = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %29)
  store volatile i16 %28, ptr %arrayidx16, align 8
  %30 = getelementptr inbounds %struct.vnt_rdes0, ptr %arrayidx16, i32 0, i32 1
  %owner22 = getelementptr inbounds %struct.anon.132, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %owner22 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load23 = load volatile i8, ptr %owner22, align 1
  %bf.set25 = or i8 %bf.load23, -128
  store volatile i8 %bf.set25, ptr %owner22, align 1
  %32 = ptrtoint ptr %rx_buf_sz17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_buf_sz17, align 4
  %conv27 = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %rd128 = getelementptr %struct.vnt_rx_desc, ptr %25, i32 %uu.165, i32 1
  %35 = ptrtoint ptr %rd128 to i32
  call void @__asan_store2_noabort(i32 %35)
  store volatile i16 %34, ptr %rd128, align 4
  %inc31 = add nuw i32 %uu.165, 1
  %36 = ptrtoint ptr %rx_descs1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_descs1, align 4
  %cmp12 = icmp ult i32 %inc31, %37
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end32_crit_edge

for.body14.for.end32_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.end32:                                        ; preds = %for.body14.for.end32_crit_edge, %for.cond10.preheader.for.end32_crit_edge
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %38 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65536) #9, !srcloc !38
  %40 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_offset, align 4
  %add.ptr34 = getelementptr i8, ptr %41, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 65536) #9, !srcloc !38
  %rd0_pool_dma = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 9
  %42 = ptrtoint ptr %rd0_pool_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rd0_pool_dma, align 4
  tail call void @MACvSetCurrRx0DescAddr(ptr noundef %priv, i32 noundef %43) #9
  %rd1_pool_dma = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 10
  %44 = ptrtoint ptr %rd1_pool_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rd1_pool_dma, align 4
  tail call void @MACvSetCurrRx1DescAddr(ptr noundef %priv, i32 noundef %45) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetCurrRx0DescAddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetCurrRx1DescAddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_get_phy_field(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @CARDwGetOFDMControlRate(ptr nocapture noundef readonly %priv, i16 noundef zeroext %wRateIdx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wRateIdx to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CARDwGetOFDMControlRate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %basic_rates, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.7, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %basic_rates.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %basic_rates.i, align 4
  %4 = and i32 %3, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %do.body5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %wRateIdx)
  %cmp2790 = icmp ugt i16 %wRateIdx, 3
  br i1 %cmp2790, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.do.body50_crit_edge

while.cond.preheader.do.body50_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CARDwGetOFDMControlRate, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !50

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %conv) #9
  br label %cleanup

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ui.091 = phi i32 [ %dec, %if.end49.while.body_crit_edge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %shl = shl nuw i32 1, %ui.091
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end49, label %do.body32

do.body32:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CARDwGetOFDMControlRate, %if.then44)) #9
          to label %do.end47 [label %if.then44], !srcloc !50

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %ui.091) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32
  %conv48 = trunc i32 %ui.091 to i16
  br label %cleanup

if.end49:                                         ; preds = %while.body
  %dec = add i32 %ui.091, -1
  %cmp27 = icmp ugt i32 %dec, 3
  br i1 %cmp27, label %if.end49.while.body_crit_edge, label %if.end49.do.body50_crit_edge

if.end49.do.body50_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body50:                                        ; preds = %if.end49.do.body50_crit_edge, %while.cond.preheader.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CARDwGetOFDMControlRate, %if.then62)) #9
          to label %cleanup [label %if.then62], !srcloc !50

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body50, %do.end47, %if.then17, %do.body5
  %retval.0 = phi i16 [ %conv48, %do.end47 ], [ 8, %if.then17 ], [ 8, %if.then62 ], [ 8, %do.body5 ], [ 8, %do.body50 ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDvUpdateBasicTopRate(ptr nocapture noundef %priv) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %basic_rates, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %and.7 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %spec.select = select i1 %tobool.not.7, i8 8, i8 4
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %byTopOFDM.0 = phi i8 [ 11, %entry.for.end_crit_edge ], [ 10, %for.inc.for.end_crit_edge ], [ 9, %for.inc.1.for.end_crit_edge ], [ 8, %for.inc.2.for.end_crit_edge ], [ 7, %for.inc.3.for.end_crit_edge ], [ 6, %for.inc.4.for.end_crit_edge ], [ 5, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %byTopOFDMBasicRate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %2 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %byTopOFDM.0, ptr %byTopOFDMBasicRate, align 1
  %3 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %basic_rates, align 4
  %and7 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not.not, label %for.cond3.1, label %for.end.for.end18_crit_edge

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end18

for.cond3.1:                                      ; preds = %for.end
  %and7.1 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1.not = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1.not, label %for.cond3.2, label %for.cond3.1.for.end18_crit_edge

for.cond3.1.for.end18_crit_edge:                  ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end18

for.cond3.2:                                      ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #11
  %and7.2 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2.not = icmp eq i32 %and7.2, 0
  %spec.select30 = select i1 %tobool8.not.2.not, i8 0, i8 1
  br label %for.end18

for.end18:                                        ; preds = %for.cond3.2, %for.cond3.1.for.end18_crit_edge, %for.end.for.end18_crit_edge
  %ii.1.lcssa = phi i8 [ 3, %for.end.for.end18_crit_edge ], [ 2, %for.cond3.1.for.end18_crit_edge ], [ %spec.select30, %for.cond3.2 ]
  %byTopCCKBasicRate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %5 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %ii.1.lcssa, ptr %byTopCCKBasicRate, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @CARDbIsOFDMinBasicRate(ptr nocapture noundef readonly %priv) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %basic_rates, align 4
  %2 = and i32 %1, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDvSetFirstNextTBTT(ptr nocapture noundef readonly %priv, i16 noundef zeroext %wBeaconInterval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %3 = or i8 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %3) #9, !srcloc !41
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %ww.032.i = phi i16 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i16 %ww.032.i, 1
  %cmp.i = icmp ult i16 %ww.032.i, -17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge

for.inc.i.CARDbGetCurrentTSF.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDbGetCurrentTSF.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13.i = getelementptr i8, ptr %1, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #9, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %add.ptr16.i = getelementptr i8, ptr %1, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #9, !srcloc !35
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %CARDbGetCurrentTSF.exit

CARDbGetCurrentTSF.exit:                          ; preds = %if.end12.i, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge
  %qwNextTBTT.sroa.7.0 = phi i32 [ %9, %if.end12.i ], [ 0, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge ]
  %qwNextTBTT.sroa.0.0 = phi i32 [ %7, %if.end12.i ], [ 0, %for.inc.i.CARDbGetCurrentTSF.exit_crit_edge ]
  %qwNextTBTT.sroa.7.0.insert.ext = zext i32 %qwNextTBTT.sroa.7.0 to i64
  %qwNextTBTT.sroa.0.0.insert.ext = zext i32 %qwNextTBTT.sroa.0.0 to i64
  %qwNextTBTT.sroa.0.0.insert.shift = shl nuw i64 %qwNextTBTT.sroa.0.0.insert.ext, 32
  %qwNextTBTT.sroa.0.0.insert.insert = or i64 %qwNextTBTT.sroa.0.0.insert.shift, %qwNextTBTT.sroa.7.0.insert.ext
  %conv.i = zext i16 %wBeaconInterval to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wBeaconInterval)
  %tobool.not.i14 = icmp eq i16 %wBeaconInterval, 0
  br i1 %tobool.not.i14, label %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge, label %if.else167.i

CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge: ; preds = %CARDbGetCurrentTSF.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDqGetNextTBTT.exit

if.else167.i:                                     ; preds = %CARDbGetCurrentTSF.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %qwNextTBTT.sroa.0.0.insert.insert)
  %cmp169.i = icmp ult i64 %qwNextTBTT.sroa.0.0.insert.insert, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !46

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %div177.i = udiv i32 %qwNextTBTT.sroa.7.0, %mul.i
  %conv178.i = zext i32 %div177.i to i64
  br label %if.end183.i

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %qwNextTBTT.sroa.0.0.insert.insert) #12, !srcloc !47
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.else179.i, %if.then173.i
  %qwTSF.addr.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %qwTSF.addr.0.i, 1
  %conv186.i = zext i32 %mul.i to i64
  %mul187.i = mul i64 %add185.i, %conv186.i
  %extract.t24 = trunc i64 %mul187.i to i32
  %extract26 = lshr i64 %mul187.i, 32
  %extract.t27 = trunc i64 %extract26 to i32
  br label %CARDqGetNextTBTT.exit

CARDqGetNextTBTT.exit:                            ; preds = %if.end183.i, %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge
  %qwTSF.addr.1.i.off0 = phi i32 [ %qwNextTBTT.sroa.7.0, %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge ], [ %extract.t24, %if.end183.i ]
  %qwTSF.addr.1.i.off32 = phi i32 [ %qwNextTBTT.sroa.0.0, %CARDbGetCurrentTSF.exit.CARDqGetNextTBTT.exit_crit_edge ], [ %extract.t27, %if.end183.i ]
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %qwTSF.addr.1.i.off0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #9, !srcloc !38
  %add.ptr4 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %qwTSF.addr.1.i.off32) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #9, !srcloc !38
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %14 = or i8 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %14) #9, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CARDvUpdateNextTBTT(ptr nocapture noundef readonly %priv, i64 noundef %qwTSF, i16 noundef zeroext %wBeaconInterval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %conv.i = zext i16 %wBeaconInterval to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wBeaconInterval)
  %tobool.not.i = icmp eq i16 %wBeaconInterval, 0
  br i1 %tobool.not.i, label %entry.CARDqGetNextTBTT.exit_crit_edge, label %if.else167.i

entry.CARDqGetNextTBTT.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %CARDqGetNextTBTT.exit

if.else167.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %qwTSF)
  %cmp169.i = icmp ult i64 %qwTSF, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !46

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %qwTSF to i32
  %div177.i = udiv i32 %conv174.i, %mul.i
  %conv178.i = zext i32 %div177.i to i64
  br label %if.end183.i

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %qwTSF) #12, !srcloc !47
  %asmresult1.i.i = extractvalue { i64, i64 } %2, 1
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.else179.i, %if.then173.i
  %qwTSF.addr.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %qwTSF.addr.0.i, 1
  %conv186.i = zext i32 %mul.i to i64
  %mul187.i = mul i64 %add185.i, %conv186.i
  br label %CARDqGetNextTBTT.exit

CARDqGetNextTBTT.exit:                            ; preds = %if.end183.i, %entry.CARDqGetNextTBTT.exit_crit_edge
  %qwTSF.addr.1.i = phi i64 [ %qwTSF, %entry.CARDqGetNextTBTT.exit_crit_edge ], [ %mul187.i, %if.end183.i ]
  %conv = trunc i64 %qwTSF.addr.1.i to i32
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !38
  %shr = lshr i64 %qwTSF.addr.1.i, 32
  %conv1 = trunc i64 %shr to i32
  %add.ptr3 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #9, !srcloc !38
  %add.ptr4 = getelementptr i8, ptr %1, i32 72
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %6 = or i8 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %6) #9, !srcloc !41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CARDvUpdateNextTBTT.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CARDvUpdateNextTBTT, %if.then)) #9
          to label %do.end14 [label %if.then], !srcloc !50

if.then:                                          ; preds = %CARDqGetNextTBTT.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CARDvUpdateNextTBTT.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.5, i64 noundef %qwTSF.addr.1.i) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then, %CARDqGetNextTBTT.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/card.c", i32 433, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @CARDbRadioPowerOff.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/card.c", i32 896, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @CARDvUpdateNextTBTT.__UNIQUE_ID_ddebug355, !7, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6655/card.c", i32 563, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug351, !11, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6655/card.c", i32 566, i32 3}
!16 = !{ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug352, !15, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/vt6655/card.c", i32 573, i32 4}
!19 = !{ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug353, !18, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/vt6655/card.c", i32 578, i32 2}
!22 = !{ptr @CARDwGetOFDMControlRate.__UNIQUE_ID_ddebug354, !21, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!23 = !{ptr @cwRXBCNTSFOff, !24, !"cwRXBCNTSFOff", i1 false, i1 false}
!24 = !{!"../drivers/staging/vt6655/card.c", i32 54, i32 29}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i64 5333787}
!36 = !{i64 2152874136}
!37 = !{i64 2152875491}
!38 = !{i64 5333369}
!39 = !{i8 0, i8 2}
!40 = !{i64 2152874517}
!41 = !{i64 5333172}
!42 = !{i64 2152874941}
!43 = !{i64 5332749}
!44 = !{i64 5333567}
!45 = !{i64 2152872912}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148540418, i64 2148540698, i64 2148541032, i64 2148541366}
!48 = !{i64 5332949}
!49 = !{i64 2152873524}
!50 = !{i64 2149306987, i64 2149306992, i64 2149307005, i64 2149307049, i64 2149307083, i64 2149307104}
