; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pll_mapping = type { i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.140, %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }

@nvbios_pll_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: unknown pll limits version 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvbios_pll_parse\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvbios_pll_parse._entry_ptr = internal global ptr @nvbios_pll_parse._entry, section ".printk_index", align 4
@nv04_pll_mapping = internal constant { [5 x %struct.pll_mapping], [56 x i8] } { [5 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 6817024 }, %struct.pll_mapping { i8 4, i32 6817028 }, %struct.pll_mapping { i8 -128, i32 6817032 }, %struct.pll_mapping { i8 -127, i32 6817056 }, %struct.pll_mapping zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nv40_pll_mapping = internal constant { [5 x %struct.pll_mapping], [56 x i8] } { [5 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 16384 }, %struct.pll_mapping { i8 4, i32 16416 }, %struct.pll_mapping { i8 -128, i32 6817032 }, %struct.pll_mapping { i8 -127, i32 6817056 }, %struct.pll_mapping zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nv50_pll_mapping = internal constant { [10 x %struct.pll_mapping], [48 x i8] } { [10 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 16424 }, %struct.pll_mapping { i8 2, i32 16416 }, %struct.pll_mapping { i8 3, i32 16384 }, %struct.pll_mapping { i8 4, i32 16392 }, %struct.pll_mapping { i8 64, i32 59408 }, %struct.pll_mapping { i8 65, i32 59416 }, %struct.pll_mapping { i8 66, i32 59428 }, %struct.pll_mapping { i8 -128, i32 6373632 }, %struct.pll_mapping { i8 -127, i32 6375680 }, %struct.pll_mapping zeroinitializer], [48 x i8] zeroinitializer }, align 32
@g84_pll_mapping = internal constant { [8 x %struct.pll_mapping], [32 x i8] } { [8 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 16424 }, %struct.pll_mapping { i8 2, i32 16416 }, %struct.pll_mapping { i8 4, i32 16392 }, %struct.pll_mapping { i8 5, i32 16432 }, %struct.pll_mapping { i8 65, i32 59416 }, %struct.pll_mapping { i8 -128, i32 6373632 }, %struct.pll_mapping { i8 -127, i32 6375680 }, %struct.pll_mapping zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 16, i64 17, i64 32, i64 48, i64 64, i64 80]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 16, i64 17, i64 32, i64 48, i64 64, i64 80]
@__sancov_gen_cov_switch_values.6 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 16, i64 17, i64 32, i64 33, i64 48, i64 64, i64 80]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 382, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"nv04_pll_mapping\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 37, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"nv40_pll_mapping\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 46, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"nv50_pll_mapping\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 55, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"g84_pll_mapping\00", align 1
@___asan_gen_.35 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 69, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nvbios_pll_parse._entry, ptr @nvbios_pll_parse._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv04_pll_mapping, ptr @nv40_pll_mapping, ptr @nv50_pll_mapping, ptr @g84_pll_mapping], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_pll_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_pll_mapping to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_pll_mapping to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_pll_mapping to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_pll_mapping to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_pll_parse(ptr noundef %bios, i32 noundef %type, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i768 = alloca i8, align 1
  %cnt.i769 = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ver, align 1, !annotation !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %len, align 1, !annotation !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %type)
  %cmp = icmp ugt i32 %type, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %4 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %hdr.i, align 1, !annotation !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %5 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cnt.i, align 1, !annotation !25
  %call.i = call fastcc i32 @pll_limits_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end14.i_crit_edge, label %land.lhs.true.i

if.then.if.end14.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %7)
  %cmp.i = icmp ugt i8 %7, 47
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %cnt.promoted.i = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt.promoted.i)
  %tobool3.not96.i = icmp eq i8 %cnt.promoted.i, 0
  br i1 %tobool3.not96.i, label %if.then.i.pll_map_reg.exit_crit_edge, label %while.body.preheader.i

if.then.i.pll_map_reg.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

while.body.preheader.i:                           ; preds = %if.then.i
  %9 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hdr.i, align 1
  %conv2.i = zext i8 %10 to i32
  %add.i = add i32 %call.i, %conv2.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec98.in.i = phi i8 [ %dec98.i, %if.end.i.while.body.i_crit_edge ], [ %cnt.promoted.i, %while.body.preheader.i ]
  %data.097.i = phi i32 [ %add13.i, %if.end.i.while.body.i_crit_edge ], [ %add.i, %while.body.preheader.i ]
  %add4.i = add i32 %data.097.i, 3
  %call5.i = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add4.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %type)
  %cmp6.i = icmp eq i32 %call5.i, %type
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i

if.then8.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %data.097.i) #4
  %conv11.i = zext i8 %call10.i to i32
  br label %pll_map_reg.exit

if.end.i:                                         ; preds = %while.body.i
  %dec98.i = add i8 %dec98.in.i, -1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len, align 1
  %conv12.i = zext i8 %12 to i32
  %add13.i = add i32 %data.097.i, %conv12.i
  %tobool3.not.i = icmp eq i8 %dec98.i, 0
  br i1 %tobool3.not.i, label %if.end.i.pll_map_reg.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end.i.pll_map_reg.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.then.if.end14.i_crit_edge
  %13 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device2, align 4
  %card_type.i.i = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %card_type.i.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end14.i.pll_map_reg.exit_crit_edge [
    i32 4, label %if.end14.i.land.rhs.i.preheader_crit_edge
    i32 16, label %if.end14.i.land.rhs.i.preheader_crit_edge867
    i32 17, label %if.end14.i.land.rhs.i.preheader_crit_edge868
    i32 32, label %if.end14.i.land.rhs.i.preheader_crit_edge869
    i32 48, label %if.end14.i.land.rhs.i.preheader_crit_edge870
    i32 64, label %sw.bb2.i.i
    i32 80, label %sw.bb3.i.i
  ]

if.end14.i.land.rhs.i.preheader_crit_edge870:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

if.end14.i.land.rhs.i.preheader_crit_edge869:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

if.end14.i.land.rhs.i.preheader_crit_edge868:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

if.end14.i.land.rhs.i.preheader_crit_edge867:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

if.end14.i.land.rhs.i.preheader_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

if.end14.i.pll_map_reg.exit_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

sw.bb2.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

sw.bb3.i.i:                                       ; preds = %if.end14.i
  %chipset.i.i = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 16
  %18 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chipset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 80
  br i1 %cmp.i.i, label %sw.bb3.i.i.land.rhs.i.preheader_crit_edge, label %if.else.i.i

sw.bb3.i.i.land.rhs.i.preheader_crit_edge:        ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

if.else.i.i:                                      ; preds = %sw.bb3.i.i
  %.fr.i.i = freeze i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %.fr.i.i)
  %cmp5.i.i = icmp ult i32 %.fr.i.i, 163
  br i1 %cmp5.i.i, label %if.else.i.i.land.rhs.i.preheader_crit_edge, label %switch.early.test.i.i

if.else.i.i.land.rhs.i.preheader_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

switch.early.test.i.i:                            ; preds = %if.else.i.i
  %20 = add i32 %.fr.i.i, -170
  %switch.and.i.i = and i32 %20, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %switch.early.test.i.i.land.rhs.i.preheader_crit_edge, label %switch.early.test.i.i.pll_map_reg.exit_crit_edge

switch.early.test.i.i.pll_map_reg.exit_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

switch.early.test.i.i.land.rhs.i.preheader_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %switch.early.test.i.i.land.rhs.i.preheader_crit_edge, %if.else.i.i.land.rhs.i.preheader_crit_edge, %sw.bb3.i.i.land.rhs.i.preheader_crit_edge, %sw.bb2.i.i, %if.end14.i.land.rhs.i.preheader_crit_edge, %if.end14.i.land.rhs.i.preheader_crit_edge867, %if.end14.i.land.rhs.i.preheader_crit_edge868, %if.end14.i.land.rhs.i.preheader_crit_edge869, %if.end14.i.land.rhs.i.preheader_crit_edge870
  %map.0100.i.ph = phi ptr [ @g84_pll_mapping, %switch.early.test.i.i.land.rhs.i.preheader_crit_edge ], [ @nv40_pll_mapping, %sw.bb2.i.i ], [ @nv04_pll_mapping, %if.end14.i.land.rhs.i.preheader_crit_edge ], [ @nv04_pll_mapping, %if.end14.i.land.rhs.i.preheader_crit_edge867 ], [ @nv04_pll_mapping, %if.end14.i.land.rhs.i.preheader_crit_edge868 ], [ @nv04_pll_mapping, %if.end14.i.land.rhs.i.preheader_crit_edge869 ], [ @nv04_pll_mapping, %if.end14.i.land.rhs.i.preheader_crit_edge870 ], [ @nv50_pll_mapping, %sw.bb3.i.i.land.rhs.i.preheader_crit_edge ], [ @g84_pll_mapping, %if.else.i.i.land.rhs.i.preheader_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end54.i.land.rhs.i_crit_edge, %land.rhs.i.preheader
  %map.0100.i = phi ptr [ %incdec.ptr.i, %if.end54.i.land.rhs.i_crit_edge ], [ %map.0100.i.ph, %land.rhs.i.preheader ]
  %reg18.i = getelementptr inbounds %struct.pll_mapping, ptr %map.0100.i, i32 0, i32 1
  %21 = ptrtoint ptr %reg18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not.i = icmp eq i32 %22, 0
  br i1 %tobool19.not.i, label %land.rhs.i.pll_map_reg.exit_crit_edge, label %while.body20.i

land.rhs.i.pll_map_reg.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

while.body20.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %type)
  %cmp22.i = icmp eq i32 %22, %type
  br i1 %cmp22.i, label %land.lhs.true24.i, label %if.end54.i

land.lhs.true24.i:                                ; preds = %while.body20.i
  %reg18.i.le = getelementptr inbounds %struct.pll_mapping, ptr %map.0100.i, i32 0, i32 1
  %23 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %24)
  %cmp26.i = icmp ugt i8 %24, 31
  br i1 %cmp26.i, label %if.then28.i, label %if.then49.i

if.then28.i:                                      ; preds = %land.lhs.true24.i
  %25 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hdr.i, align 1
  %conv29.i = zext i8 %26 to i32
  %add30.i = add i32 %call.i, %conv29.i
  %27 = ptrtoint ptr %map.0100.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %map.0100.i, align 4
  %conv32.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %cnt.promoted101.i = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt.promoted101.i)
  %tobool35.not105.i = icmp eq i8 %cnt.promoted101.i, 0
  br i1 %tobool35.not105.i, label %if.then28.i.pll_map_reg.exit_crit_edge, label %if.then28.i.while.body36.i_crit_edge

if.then28.i.while.body36.i_crit_edge:             ; preds = %if.then28.i
  br label %while.body36.i

if.then28.i.pll_map_reg.exit_crit_edge:           ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

while.body36.i:                                   ; preds = %if.end42.i.while.body36.i_crit_edge, %if.then28.i.while.body36.i_crit_edge
  %dec34107.in.i = phi i8 [ %dec34107.i, %if.end42.i.while.body36.i_crit_edge ], [ %cnt.promoted101.i, %if.then28.i.while.body36.i_crit_edge ]
  %data.1106.i = phi i32 [ %add44.i, %if.end42.i.while.body36.i_crit_edge ], [ %add30.i, %if.then28.i.while.body36.i_crit_edge ]
  %call37.i = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %data.1106.i) #4
  %30 = ptrtoint ptr %reg18.i.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg18.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i, i32 %31)
  %cmp39.i = icmp eq i32 %call37.i, %31
  br i1 %cmp39.i, label %while.body36.i.pll_map_reg.exit_crit_edge, label %if.end42.i

while.body36.i.pll_map_reg.exit_crit_edge:        ; preds = %while.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

if.end42.i:                                       ; preds = %while.body36.i
  %dec34107.i = add i8 %dec34107.in.i, -1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %len, align 1
  %conv43.i = zext i8 %33 to i32
  %add44.i = add i32 %data.1106.i, %conv43.i
  %tobool35.not.i = icmp eq i8 %dec34107.i, 0
  br i1 %tobool35.not.i, label %if.end42.i.pll_map_reg.exit_crit_edge, label %if.end42.i.while.body36.i_crit_edge

if.end42.i.while.body36.i_crit_edge:              ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body36.i

if.end42.i.pll_map_reg.exit_crit_edge:            ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

if.then49.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %map.0100.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %map.0100.i, align 4
  %conv51.i = zext i8 %35 to i32
  %add52.i = add i32 %call.i, 1
  br label %pll_map_reg.exit

if.end54.i:                                       ; preds = %while.body20.i
  %incdec.ptr.i = getelementptr %struct.pll_mapping, ptr %map.0100.i, i32 1
  %tobool17.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool17.not.i, label %if.end54.i.pll_map_reg.exit_crit_edge, label %if.end54.i.land.rhs.i_crit_edge

if.end54.i.land.rhs.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

if.end54.i.pll_map_reg.exit_crit_edge:            ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_reg.exit

pll_map_reg.exit:                                 ; preds = %if.end54.i.pll_map_reg.exit_crit_edge, %if.then49.i, %if.end42.i.pll_map_reg.exit_crit_edge, %while.body36.i.pll_map_reg.exit_crit_edge, %if.then28.i.pll_map_reg.exit_crit_edge, %land.rhs.i.pll_map_reg.exit_crit_edge, %switch.early.test.i.i.pll_map_reg.exit_crit_edge, %if.end14.i.pll_map_reg.exit_crit_edge, %if.end.i.pll_map_reg.exit_crit_edge, %if.then8.i, %if.then.i.pll_map_reg.exit_crit_edge
  %type.addr.0 = phi i32 [ %type, %if.end14.i.pll_map_reg.exit_crit_edge ], [ %conv32.i, %if.then28.i.pll_map_reg.exit_crit_edge ], [ %conv51.i, %if.then49.i ], [ %type, %switch.early.test.i.i.pll_map_reg.exit_crit_edge ], [ %type, %if.then.i.pll_map_reg.exit_crit_edge ], [ %conv11.i, %if.then8.i ], [ %conv32.i, %if.end42.i.pll_map_reg.exit_crit_edge ], [ %conv32.i, %while.body36.i.pll_map_reg.exit_crit_edge ], [ %type, %if.end54.i.pll_map_reg.exit_crit_edge ], [ %type, %land.rhs.i.pll_map_reg.exit_crit_edge ], [ %type, %if.end.i.pll_map_reg.exit_crit_edge ]
  %retval.1.i = phi i32 [ 0, %if.end14.i.pll_map_reg.exit_crit_edge ], [ %add30.i, %if.then28.i.pll_map_reg.exit_crit_edge ], [ %add52.i, %if.then49.i ], [ 0, %switch.early.test.i.i.pll_map_reg.exit_crit_edge ], [ 0, %if.then.i.pll_map_reg.exit_crit_edge ], [ %data.097.i, %if.then8.i ], [ %data.1106.i, %while.body36.i.pll_map_reg.exit_crit_edge ], [ %add30.i, %if.end42.i.pll_map_reg.exit_crit_edge ], [ 0, %if.end54.i.pll_map_reg.exit_crit_edge ], [ 0, %land.rhs.i.pll_map_reg.exit_crit_edge ], [ 0, %if.end.i.pll_map_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %conv = trunc i32 %type to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i768) #4
  %36 = ptrtoint ptr %hdr.i768 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %hdr.i768, align 1, !annotation !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i769) #4
  %37 = ptrtoint ptr %cnt.i769 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %cnt.i769, align 1, !annotation !25
  %call.i770 = call fastcc i32 @pll_limits_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i768, ptr noundef nonnull %cnt.i769, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i770)
  %tobool.not.i771 = icmp eq i32 %call.i770, 0
  br i1 %tobool.not.i771, label %if.else.if.end20.i_crit_edge, label %land.lhs.true.i773

if.else.if.end20.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.i773:                               ; preds = %if.else
  %38 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %39)
  %cmp.i772 = icmp ugt i8 %39, 47
  br i1 %cmp.i772, label %if.then.i775, label %land.lhs.true.i773.if.end20.i_crit_edge

land.lhs.true.i773.if.end20.i_crit_edge:          ; preds = %land.lhs.true.i773
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.then.i775:                                     ; preds = %land.lhs.true.i773
  %40 = ptrtoint ptr %cnt.i769 to i32
  call void @__asan_load1_noabort(i32 %40)
  %cnt.promoted.i774 = load i8, ptr %cnt.i769, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt.promoted.i774)
  %tobool3.not106.i = icmp eq i8 %cnt.promoted.i774, 0
  br i1 %tobool3.not106.i, label %if.then.i775.pll_map_type.exit_crit_edge, label %while.body.preheader.i778

if.then.i775.pll_map_type.exit_crit_edge:         ; preds = %if.then.i775
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

while.body.preheader.i778:                        ; preds = %if.then.i775
  %41 = ptrtoint ptr %hdr.i768 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hdr.i768, align 1
  %conv2.i776 = zext i8 %42 to i32
  %add.i777 = add i32 %call.i770, %conv2.i776
  br label %while.body.i780

while.body.i780:                                  ; preds = %if.end17.i.while.body.i780_crit_edge, %while.body.preheader.i778
  %dec108.in.i = phi i8 [ %dec108.i, %if.end17.i.while.body.i780_crit_edge ], [ %cnt.promoted.i774, %while.body.preheader.i778 ]
  %data.0107.i = phi i32 [ %add19.i, %if.end17.i.while.body.i780_crit_edge ], [ %add.i777, %while.body.preheader.i778 ]
  %call5.i779 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %data.0107.i) #4
  call void @__sanitizer_cov_trace_cmp1(i8 %call5.i779, i8 %conv)
  %cmp8.i = icmp eq i8 %call5.i779, %conv
  br i1 %cmp8.i, label %if.then10.i, label %if.end17.i

if.then10.i:                                      ; preds = %while.body.i780
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %39)
  %cmp12.i = icmp ult i8 %39, 80
  br i1 %cmp12.i, label %if.then14.i, label %if.then10.i.pll_map_type.exit_crit_edge

if.then10.i.pll_map_type.exit_crit_edge:          ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  %add15.i = add i32 %data.0107.i, 3
  %call16.i = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add15.i) #4
  br label %pll_map_type.exit

if.end17.i:                                       ; preds = %while.body.i780
  %dec108.i = add i8 %dec108.in.i, -1
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %len, align 1
  %conv18.i = zext i8 %44 to i32
  %add19.i = add i32 %data.0107.i, %conv18.i
  %tobool3.not.i782 = icmp eq i8 %dec108.i, 0
  br i1 %tobool3.not.i782, label %if.end17.i.pll_map_type.exit_crit_edge, label %if.end17.i.while.body.i780_crit_edge

if.end17.i.while.body.i780_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i780

if.end17.i.pll_map_type.exit_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

if.end20.i:                                       ; preds = %land.lhs.true.i773.if.end20.i_crit_edge, %if.else.if.end20.i_crit_edge
  %45 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device2, align 4
  %card_type.i.i784 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %card_type.i.i784 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %card_type.i.i784, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %48, label %if.end20.i.pll_map_type.exit_crit_edge [
    i32 4, label %if.end20.i.land.rhs.i797.preheader_crit_edge
    i32 16, label %if.end20.i.land.rhs.i797.preheader_crit_edge871
    i32 17, label %if.end20.i.land.rhs.i797.preheader_crit_edge872
    i32 32, label %if.end20.i.land.rhs.i797.preheader_crit_edge873
    i32 48, label %if.end20.i.land.rhs.i797.preheader_crit_edge874
    i32 64, label %sw.bb2.i.i785
    i32 80, label %sw.bb3.i.i788
  ]

if.end20.i.land.rhs.i797.preheader_crit_edge874:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

if.end20.i.land.rhs.i797.preheader_crit_edge873:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

if.end20.i.land.rhs.i797.preheader_crit_edge872:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

if.end20.i.land.rhs.i797.preheader_crit_edge871:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

if.end20.i.land.rhs.i797.preheader_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

if.end20.i.pll_map_type.exit_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

sw.bb2.i.i785:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

sw.bb3.i.i788:                                    ; preds = %if.end20.i
  %chipset.i.i786 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 16
  %50 = ptrtoint ptr %chipset.i.i786 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chipset.i.i786, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %51)
  %cmp.i.i787 = icmp eq i32 %51, 80
  br i1 %cmp.i.i787, label %sw.bb3.i.i788.land.rhs.i797.preheader_crit_edge, label %if.else.i.i791

sw.bb3.i.i788.land.rhs.i797.preheader_crit_edge:  ; preds = %sw.bb3.i.i788
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

if.else.i.i791:                                   ; preds = %sw.bb3.i.i788
  %.fr.i.i789 = freeze i32 %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %.fr.i.i789)
  %cmp5.i.i790 = icmp ult i32 %.fr.i.i789, 163
  br i1 %cmp5.i.i790, label %if.else.i.i791.land.rhs.i797.preheader_crit_edge, label %switch.early.test.i.i794

if.else.i.i791.land.rhs.i797.preheader_crit_edge: ; preds = %if.else.i.i791
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

switch.early.test.i.i794:                         ; preds = %if.else.i.i791
  %52 = add i32 %.fr.i.i789, -170
  %switch.and.i.i792 = and i32 %52, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i792)
  %switch.selectcmp.i.i793 = icmp eq i32 %switch.and.i.i792, 0
  br i1 %switch.selectcmp.i.i793, label %switch.early.test.i.i794.land.rhs.i797.preheader_crit_edge, label %switch.early.test.i.i794.pll_map_type.exit_crit_edge

switch.early.test.i.i794.pll_map_type.exit_crit_edge: ; preds = %switch.early.test.i.i794
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

switch.early.test.i.i794.land.rhs.i797.preheader_crit_edge: ; preds = %switch.early.test.i.i794
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797.preheader

land.rhs.i797.preheader:                          ; preds = %switch.early.test.i.i794.land.rhs.i797.preheader_crit_edge, %if.else.i.i791.land.rhs.i797.preheader_crit_edge, %sw.bb3.i.i788.land.rhs.i797.preheader_crit_edge, %sw.bb2.i.i785, %if.end20.i.land.rhs.i797.preheader_crit_edge, %if.end20.i.land.rhs.i797.preheader_crit_edge871, %if.end20.i.land.rhs.i797.preheader_crit_edge872, %if.end20.i.land.rhs.i797.preheader_crit_edge873, %if.end20.i.land.rhs.i797.preheader_crit_edge874
  %map.0110.i.ph = phi ptr [ @g84_pll_mapping, %switch.early.test.i.i794.land.rhs.i797.preheader_crit_edge ], [ @nv40_pll_mapping, %sw.bb2.i.i785 ], [ @nv04_pll_mapping, %if.end20.i.land.rhs.i797.preheader_crit_edge ], [ @nv04_pll_mapping, %if.end20.i.land.rhs.i797.preheader_crit_edge871 ], [ @nv04_pll_mapping, %if.end20.i.land.rhs.i797.preheader_crit_edge872 ], [ @nv04_pll_mapping, %if.end20.i.land.rhs.i797.preheader_crit_edge873 ], [ @nv04_pll_mapping, %if.end20.i.land.rhs.i797.preheader_crit_edge874 ], [ @nv50_pll_mapping, %sw.bb3.i.i788.land.rhs.i797.preheader_crit_edge ], [ @g84_pll_mapping, %if.else.i.i791.land.rhs.i797.preheader_crit_edge ]
  br label %land.rhs.i797

land.rhs.i797:                                    ; preds = %if.end63.i.land.rhs.i797_crit_edge, %land.rhs.i797.preheader
  %map.0110.i = phi ptr [ %incdec.ptr.i798, %if.end63.i.land.rhs.i797_crit_edge ], [ %map.0110.i.ph, %land.rhs.i797.preheader ]
  %reg24.i = getelementptr inbounds %struct.pll_mapping, ptr %map.0110.i, i32 0, i32 1
  %53 = ptrtoint ptr %reg24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool25.not.i = icmp eq i32 %54, 0
  br i1 %tobool25.not.i, label %land.rhs.i797.pll_map_type.exit_crit_edge, label %while.body26.i

land.rhs.i797.pll_map_type.exit_crit_edge:        ; preds = %land.rhs.i797
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

while.body26.i:                                   ; preds = %land.rhs.i797
  %55 = ptrtoint ptr %map.0110.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %map.0110.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %conv)
  %cmp30.i = icmp eq i8 %56, %conv
  br i1 %cmp30.i, label %land.lhs.true32.i, label %if.end63.i

land.lhs.true32.i:                                ; preds = %while.body26.i
  %reg24.i.le = getelementptr inbounds %struct.pll_mapping, ptr %map.0110.i, i32 0, i32 1
  %57 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %58)
  %cmp34.i = icmp ugt i8 %58, 31
  br i1 %cmp34.i, label %if.then36.i, label %if.then59.i

if.then36.i:                                      ; preds = %land.lhs.true32.i
  %59 = ptrtoint ptr %hdr.i768 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hdr.i768, align 1
  %conv37.i = zext i8 %60 to i32
  %add38.i = add i32 %call.i770, %conv37.i
  %61 = ptrtoint ptr %cnt.i769 to i32
  call void @__asan_load1_noabort(i32 %61)
  %cnt.promoted111.i = load i8, ptr %cnt.i769, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt.promoted111.i)
  %tobool42.not115.i = icmp eq i8 %cnt.promoted111.i, 0
  br i1 %tobool42.not115.i, label %if.then36.i.pll_map_type.exit_crit_edge, label %if.then36.i.while.body43.i_crit_edge

if.then36.i.while.body43.i_crit_edge:             ; preds = %if.then36.i
  br label %while.body43.i

if.then36.i.pll_map_type.exit_crit_edge:          ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

while.body43.i:                                   ; preds = %if.end49.i.while.body43.i_crit_edge, %if.then36.i.while.body43.i_crit_edge
  %dec41117.in.i = phi i8 [ %dec41117.i, %if.end49.i.while.body43.i_crit_edge ], [ %cnt.promoted111.i, %if.then36.i.while.body43.i_crit_edge ]
  %data.1116.i = phi i32 [ %add51.i, %if.end49.i.while.body43.i_crit_edge ], [ %add38.i, %if.then36.i.while.body43.i_crit_edge ]
  %call44.i = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %data.1116.i) #4
  %62 = ptrtoint ptr %reg24.i.le to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg24.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call44.i, i32 %63)
  %cmp46.i = icmp eq i32 %call44.i, %63
  br i1 %cmp46.i, label %while.body43.i.pll_map_type.exit_crit_edge, label %if.end49.i

while.body43.i.pll_map_type.exit_crit_edge:       ; preds = %while.body43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

if.end49.i:                                       ; preds = %while.body43.i
  %dec41117.i = add i8 %dec41117.in.i, -1
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %len, align 1
  %conv50.i = zext i8 %65 to i32
  %add51.i = add i32 %data.1116.i, %conv50.i
  %tobool42.not.i = icmp eq i8 %dec41117.i, 0
  br i1 %tobool42.not.i, label %if.end49.i.pll_map_type.exit_crit_edge, label %if.end49.i.while.body43.i_crit_edge

if.end49.i.while.body43.i_crit_edge:              ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body43.i

if.end49.i.pll_map_type.exit_crit_edge:           ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

if.then59.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #6
  %add61.i = add i32 %call.i770, 1
  br label %pll_map_type.exit

if.end63.i:                                       ; preds = %while.body26.i
  %incdec.ptr.i798 = getelementptr %struct.pll_mapping, ptr %map.0110.i, i32 1
  %tobool23.not.i = icmp eq ptr %incdec.ptr.i798, null
  br i1 %tobool23.not.i, label %if.end63.i.pll_map_type.exit_crit_edge, label %if.end63.i.land.rhs.i797_crit_edge

if.end63.i.land.rhs.i797_crit_edge:               ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i797

if.end63.i.pll_map_type.exit_crit_edge:           ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pll_map_type.exit

pll_map_type.exit:                                ; preds = %if.end63.i.pll_map_type.exit_crit_edge, %if.then59.i, %if.end49.i.pll_map_type.exit_crit_edge, %while.body43.i.pll_map_type.exit_crit_edge, %if.then36.i.pll_map_type.exit_crit_edge, %land.rhs.i797.pll_map_type.exit_crit_edge, %switch.early.test.i.i794.pll_map_type.exit_crit_edge, %if.end20.i.pll_map_type.exit_crit_edge, %if.end17.i.pll_map_type.exit_crit_edge, %if.then14.i, %if.then10.i.pll_map_type.exit_crit_edge, %if.then.i775.pll_map_type.exit_crit_edge
  %reg.0 = phi i32 [ %type, %if.end20.i.pll_map_type.exit_crit_edge ], [ %54, %if.then36.i.pll_map_type.exit_crit_edge ], [ %54, %if.then59.i ], [ %type, %switch.early.test.i.i794.pll_map_type.exit_crit_edge ], [ %type, %if.then.i775.pll_map_type.exit_crit_edge ], [ %call16.i, %if.then14.i ], [ 0, %if.then10.i.pll_map_type.exit_crit_edge ], [ %54, %if.end49.i.pll_map_type.exit_crit_edge ], [ %54, %while.body43.i.pll_map_type.exit_crit_edge ], [ %type, %if.end63.i.pll_map_type.exit_crit_edge ], [ %type, %land.rhs.i797.pll_map_type.exit_crit_edge ], [ %type, %if.end17.i.pll_map_type.exit_crit_edge ]
  %retval.1.i799 = phi i32 [ 0, %if.end20.i.pll_map_type.exit_crit_edge ], [ %add38.i, %if.then36.i.pll_map_type.exit_crit_edge ], [ %add61.i, %if.then59.i ], [ 0, %switch.early.test.i.i794.pll_map_type.exit_crit_edge ], [ 0, %if.then.i775.pll_map_type.exit_crit_edge ], [ %data.0107.i, %if.then14.i ], [ %data.0107.i, %if.then10.i.pll_map_type.exit_crit_edge ], [ %data.1116.i, %while.body43.i.pll_map_type.exit_crit_edge ], [ %add38.i, %if.end49.i.pll_map_type.exit_crit_edge ], [ 0, %if.end63.i.pll_map_type.exit_crit_edge ], [ 0, %land.rhs.i797.pll_map_type.exit_crit_edge ], [ 0, %if.end17.i.pll_map_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i769) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i768) #4
  br label %if.end

if.end:                                           ; preds = %pll_map_type.exit, %pll_map_reg.exit
  %type.addr.1 = phi i32 [ %type.addr.0, %pll_map_reg.exit ], [ %type, %pll_map_type.exit ]
  %reg.1 = phi i32 [ %type, %pll_map_reg.exit ], [ %reg.0, %pll_map_type.exit ]
  %data.0 = phi i32 [ %retval.1.i, %pll_map_reg.exit ], [ %retval.1.i799, %pll_map_type.exit ]
  %66 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not = icmp ne i8 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.0)
  %tobool5.not = icmp eq i32 %data.0, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %68 = getelementptr inbounds i8, ptr %info, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 48)
  %70 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %type.addr.1, ptr %info, align 4
  %reg9 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 1
  %71 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %reg.1, ptr %reg9, align 4
  %conv10 = zext i8 %67 to i32
  %72 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %67, label %do.body [
    i8 0, label %if.end7.sw.epilog368_crit_edge
    i8 16, label %if.end7.sw.bb_crit_edge
    i8 17, label %if.end7.sw.bb_crit_edge875
    i8 32, label %if.end7.sw.bb56_crit_edge
    i8 33, label %if.end7.sw.bb56_crit_edge876
    i8 48, label %sw.bb158
    i8 64, label %sw.bb252
    i8 80, label %sw.bb306
  ]

if.end7.sw.bb56_crit_edge876:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb56

if.end7.sw.bb56_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb56

if.end7.sw.bb_crit_edge875:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end7.sw.epilog368_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog368

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge875
  %call11 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %data.0) #4
  %vco1 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %73 = ptrtoint ptr %vco1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call11, ptr %vco1, align 4
  %add12 = add i32 %data.0, 4
  %call13 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add12) #4
  %max_freq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %74 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call13, ptr %max_freq, align 4
  %add15 = add i32 %data.0, 8
  %call16 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add15) #4
  %vco2 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8
  %75 = ptrtoint ptr %vco2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call16, ptr %vco2, align 4
  %add18 = add i32 %data.0, 12
  %call19 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add18) #4
  %max_freq21 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 1
  %76 = ptrtoint ptr %max_freq21 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call19, ptr %max_freq21, align 4
  %add22 = add i32 %data.0, 16
  %call23 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add22) #4
  %min_inputfreq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %77 = ptrtoint ptr %min_inputfreq to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call23, ptr %min_inputfreq, align 4
  %add25 = add i32 %data.0, 20
  %call26 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add25) #4
  %min_inputfreq28 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 2
  %78 = ptrtoint ptr %min_inputfreq28 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call26, ptr %min_inputfreq28, align 4
  %max_inputfreq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %79 = ptrtoint ptr %max_inputfreq to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2147483647, ptr %max_inputfreq, align 4
  %max_inputfreq31 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 3
  %80 = ptrtoint ptr %max_inputfreq31 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2147483647, ptr %max_inputfreq31, align 4
  %max_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %81 = ptrtoint ptr %max_p to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 7, ptr %max_p, align 1
  %max_p_usable = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 6
  %82 = ptrtoint ptr %max_p_usable to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 6, ptr %max_p_usable, align 1
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 7, i32 1
  %83 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %chip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %84)
  %cond = icmp eq i8 %84, 54
  %spec.select = select i1 %cond, i8 5, i8 1
  %85 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %spec.select, ptr %85, align 2
  %max_n = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %87 = ptrtoint ptr %max_n to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %max_n, align 1
  %min_m = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %88 = ptrtoint ptr %min_m to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %min_m, align 4
  %max_m = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %89 = ptrtoint ptr %max_m to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 13, ptr %max_m, align 1
  %min_n41 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 6
  %90 = ptrtoint ptr %min_n41 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %min_n41, align 2
  %91 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %chip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %92)
  %switch.selectcmp.case1 = icmp eq i8 %92, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %92)
  %switch.selectcmp.case2 = icmp eq i8 %92, 53
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %93 = select i1 %switch.selectcmp, i8 31, i8 40
  %max_n50 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 7
  %94 = ptrtoint ptr %max_n50 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %max_n50, align 1
  %min_m53 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 4
  %95 = ptrtoint ptr %min_m53 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %min_m53, align 4
  %max_m55 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 5
  %96 = ptrtoint ptr %max_m55 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 4, ptr %max_m55, align 1
  br label %sw.epilog368

sw.bb56:                                          ; preds = %if.end7.sw.bb56_crit_edge, %if.end7.sw.bb56_crit_edge876
  %add57 = add i32 %data.0, 4
  %call58 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add57) #4
  %conv59 = zext i16 %call58 to i32
  %mul = mul nuw nsw i32 %conv59, 1000
  %vco160 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %97 = ptrtoint ptr %vco160 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul, ptr %vco160, align 4
  %add62 = add i32 %data.0, 6
  %call63 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add62) #4
  %conv64 = zext i16 %call63 to i32
  %mul65 = mul nuw nsw i32 %conv64, 1000
  %max_freq67 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %98 = ptrtoint ptr %max_freq67 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mul65, ptr %max_freq67, align 4
  %add68 = add i32 %data.0, 8
  %call69 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add68) #4
  %conv70 = zext i16 %call69 to i32
  %mul71 = mul nuw nsw i32 %conv70, 1000
  %vco272 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8
  %99 = ptrtoint ptr %vco272 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mul71, ptr %vco272, align 4
  %add74 = add i32 %data.0, 10
  %call75 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add74) #4
  %conv76 = zext i16 %call75 to i32
  %mul77 = mul nuw nsw i32 %conv76, 1000
  %max_freq79 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 1
  %100 = ptrtoint ptr %max_freq79 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul77, ptr %max_freq79, align 4
  %add80 = add i32 %data.0, 12
  %call81 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add80) #4
  %conv82 = zext i16 %call81 to i32
  %mul83 = mul nuw nsw i32 %conv82, 1000
  %min_inputfreq85 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %101 = ptrtoint ptr %min_inputfreq85 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul83, ptr %min_inputfreq85, align 4
  %add86 = add i32 %data.0, 14
  %call87 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add86) #4
  %conv88 = zext i16 %call87 to i32
  %mul89 = mul nuw nsw i32 %conv88, 1000
  %min_inputfreq91 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 2
  %102 = ptrtoint ptr %min_inputfreq91 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul89, ptr %min_inputfreq91, align 4
  %add92 = add i32 %data.0, 16
  %call93 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add92) #4
  %conv94 = zext i16 %call93 to i32
  %mul95 = mul nuw nsw i32 %conv94, 1000
  %max_inputfreq97 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %103 = ptrtoint ptr %max_inputfreq97 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul95, ptr %max_inputfreq97, align 4
  %add98 = add i32 %data.0, 18
  %call99 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add98) #4
  %conv100 = zext i16 %call99 to i32
  %mul101 = mul nuw nsw i32 %conv100, 1000
  %max_inputfreq103 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 3
  %104 = ptrtoint ptr %max_inputfreq103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul101, ptr %max_inputfreq103, align 4
  %add104 = add i32 %data.0, 20
  %call105 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add104) #4
  %min_n107 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %105 = ptrtoint ptr %min_n107 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %call105, ptr %min_n107, align 2
  %add108 = add i32 %data.0, 21
  %call109 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add108) #4
  %max_n111 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %106 = ptrtoint ptr %max_n111 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %call109, ptr %max_n111, align 1
  %add112 = add i32 %data.0, 22
  %call113 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add112) #4
  %min_m115 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %107 = ptrtoint ptr %min_m115 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %call113, ptr %min_m115, align 4
  %add116 = add i32 %data.0, 23
  %call117 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add116) #4
  %max_m119 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %108 = ptrtoint ptr %max_m119 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %call117, ptr %max_m119, align 1
  %add120 = add i32 %data.0, 24
  %call121 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add120) #4
  %min_n123 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 6
  %109 = ptrtoint ptr %min_n123 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %call121, ptr %min_n123, align 2
  %add124 = add i32 %data.0, 25
  %call125 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add124) #4
  %max_n127 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 7
  %110 = ptrtoint ptr %max_n127 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %call125, ptr %max_n127, align 1
  %add128 = add i32 %data.0, 26
  %call129 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add128) #4
  %min_m131 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 4
  %111 = ptrtoint ptr %min_m131 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %call129, ptr %min_m131, align 4
  %add132 = add i32 %data.0, 27
  %call133 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add132) #4
  %max_m135 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 5
  %112 = ptrtoint ptr %max_m135 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %call133, ptr %max_m135, align 1
  %add136 = add i32 %data.0, 29
  %call137 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add136) #4
  %max_p138 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %113 = ptrtoint ptr %max_p138 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %call137, ptr %max_p138, align 1
  %max_p_usable140 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 6
  %114 = ptrtoint ptr %max_p_usable140 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %call137, ptr %max_p_usable140, align 1
  %chip142 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 7, i32 1
  %115 = ptrtoint ptr %chip142 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %chip142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %116)
  %cmp144 = icmp ult i8 %116, 96
  %spec.store.select = select i1 %cmp144, i8 6, i8 %call137
  %117 = ptrtoint ptr %max_p_usable140 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %spec.store.select, ptr %max_p_usable140, align 1
  %add149 = add i32 %data.0, 30
  %call150 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add149) #4
  %bias_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 5
  %118 = ptrtoint ptr %bias_p to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %call150, ptr %bias_p, align 2
  %119 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %120)
  %cmp152 = icmp ugt i8 %120, 34
  br i1 %cmp152, label %if.then154, label %sw.bb56.sw.epilog368_crit_edge

sw.bb56.sw.epilog368_crit_edge:                   ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog368

if.then154:                                       ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #6
  %add155 = add i32 %data.0, 31
  %call156 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add155) #4
  %refclk = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %121 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call156, ptr %refclk, align 4
  br label %sw.epilog368

sw.bb158:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %add159 = add i32 %data.0, 1
  %call160 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add159) #4
  %conv161 = zext i16 %call160 to i32
  %call163 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv161) #4
  %conv164 = zext i16 %call163 to i32
  %mul165 = mul nuw nsw i32 %conv164, 1000
  %vco1166 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %122 = ptrtoint ptr %vco1166 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %mul165, ptr %vco1166, align 4
  %add168 = add nuw nsw i32 %conv161, 2
  %call169 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add168) #4
  %conv170 = zext i16 %call169 to i32
  %mul171 = mul nuw nsw i32 %conv170, 1000
  %max_freq173 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %123 = ptrtoint ptr %max_freq173 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %mul171, ptr %max_freq173, align 4
  %add174 = add nuw nsw i32 %conv161, 4
  %call175 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add174) #4
  %conv176 = zext i16 %call175 to i32
  %mul177 = mul nuw nsw i32 %conv176, 1000
  %vco2178 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8
  %124 = ptrtoint ptr %vco2178 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul177, ptr %vco2178, align 4
  %add180 = add nuw nsw i32 %conv161, 6
  %call181 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add180) #4
  %conv182 = zext i16 %call181 to i32
  %mul183 = mul nuw nsw i32 %conv182, 1000
  %max_freq185 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 1
  %125 = ptrtoint ptr %max_freq185 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul183, ptr %max_freq185, align 4
  %add186 = add nuw nsw i32 %conv161, 8
  %call187 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add186) #4
  %conv188 = zext i16 %call187 to i32
  %mul189 = mul nuw nsw i32 %conv188, 1000
  %min_inputfreq191 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %126 = ptrtoint ptr %min_inputfreq191 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul189, ptr %min_inputfreq191, align 4
  %add192 = add nuw nsw i32 %conv161, 10
  %call193 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add192) #4
  %conv194 = zext i16 %call193 to i32
  %mul195 = mul nuw nsw i32 %conv194, 1000
  %min_inputfreq197 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 2
  %127 = ptrtoint ptr %min_inputfreq197 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %mul195, ptr %min_inputfreq197, align 4
  %add198 = add nuw nsw i32 %conv161, 12
  %call199 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add198) #4
  %conv200 = zext i16 %call199 to i32
  %mul201 = mul nuw nsw i32 %conv200, 1000
  %max_inputfreq203 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %128 = ptrtoint ptr %max_inputfreq203 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %mul201, ptr %max_inputfreq203, align 4
  %add204 = add nuw nsw i32 %conv161, 14
  %call205 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add204) #4
  %conv206 = zext i16 %call205 to i32
  %mul207 = mul nuw nsw i32 %conv206, 1000
  %max_inputfreq209 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 3
  %129 = ptrtoint ptr %max_inputfreq209 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %mul207, ptr %max_inputfreq209, align 4
  %add210 = add nuw nsw i32 %conv161, 16
  %call211 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add210) #4
  %min_n213 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %130 = ptrtoint ptr %min_n213 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %call211, ptr %min_n213, align 2
  %add214 = add nuw nsw i32 %conv161, 17
  %call215 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add214) #4
  %max_n217 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %131 = ptrtoint ptr %max_n217 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %call215, ptr %max_n217, align 1
  %add218 = add nuw nsw i32 %conv161, 18
  %call219 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add218) #4
  %min_m221 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %132 = ptrtoint ptr %min_m221 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %call219, ptr %min_m221, align 4
  %add222 = add nuw nsw i32 %conv161, 19
  %call223 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add222) #4
  %max_m225 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %133 = ptrtoint ptr %max_m225 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %call223, ptr %max_m225, align 1
  %add226 = add nuw nsw i32 %conv161, 20
  %call227 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add226) #4
  %min_n229 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 6
  %134 = ptrtoint ptr %min_n229 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %call227, ptr %min_n229, align 2
  %add230 = add nuw nsw i32 %conv161, 21
  %call231 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %max_n233 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 7
  %135 = ptrtoint ptr %max_n233 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %call231, ptr %max_n233, align 1
  %add234 = add nuw nsw i32 %conv161, 22
  %call235 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add234) #4
  %min_m237 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 4
  %136 = ptrtoint ptr %min_m237 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %call235, ptr %min_m237, align 4
  %add238 = add nuw nsw i32 %conv161, 23
  %call239 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add238) #4
  %max_m241 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 5
  %137 = ptrtoint ptr %max_m241 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %call239, ptr %max_m241, align 1
  %add242 = add nuw nsw i32 %conv161, 25
  %call243 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add242) #4
  %max_p244 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %138 = ptrtoint ptr %max_p244 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %call243, ptr %max_p244, align 1
  %max_p_usable245 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 6
  %139 = ptrtoint ptr %max_p_usable245 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %call243, ptr %max_p_usable245, align 1
  %add246 = add nuw nsw i32 %conv161, 27
  %call247 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add246) #4
  %bias_p248 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 5
  %140 = ptrtoint ptr %bias_p248 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %call247, ptr %bias_p248, align 2
  %add249 = add nuw nsw i32 %conv161, 28
  %call250 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add249) #4
  %refclk251 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %141 = ptrtoint ptr %refclk251 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call250, ptr %refclk251, align 4
  br label %sw.epilog368

sw.bb252:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %add253 = add i32 %data.0, 9
  %call254 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add253) #4
  %conv255 = zext i16 %call254 to i32
  %mul256 = mul nuw nsw i32 %conv255, 1000
  %refclk257 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %142 = ptrtoint ptr %refclk257 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %mul256, ptr %refclk257, align 4
  %add258 = add i32 %data.0, 1
  %call259 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add258) #4
  %conv260 = zext i16 %call259 to i32
  %call262 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv260) #4
  %conv263 = zext i16 %call262 to i32
  %mul264 = mul nuw nsw i32 %conv263, 1000
  %vco1265 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %143 = ptrtoint ptr %vco1265 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %mul264, ptr %vco1265, align 4
  %add267 = add nuw nsw i32 %conv260, 2
  %call268 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add267) #4
  %conv269 = zext i16 %call268 to i32
  %mul270 = mul nuw nsw i32 %conv269, 1000
  %max_freq272 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %144 = ptrtoint ptr %max_freq272 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %mul270, ptr %max_freq272, align 4
  %add273 = add nuw nsw i32 %conv260, 4
  %call274 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add273) #4
  %conv275 = zext i16 %call274 to i32
  %mul276 = mul nuw nsw i32 %conv275, 1000
  %min_inputfreq278 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %145 = ptrtoint ptr %min_inputfreq278 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul276, ptr %min_inputfreq278, align 4
  %add279 = add nuw nsw i32 %conv260, 6
  %call280 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add279) #4
  %conv281 = zext i16 %call280 to i32
  %mul282 = mul nuw nsw i32 %conv281, 1000
  %max_inputfreq284 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %146 = ptrtoint ptr %max_inputfreq284 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %mul282, ptr %max_inputfreq284, align 4
  %add285 = add nuw nsw i32 %conv260, 8
  %call286 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add285) #4
  %min_m288 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %147 = ptrtoint ptr %min_m288 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %call286, ptr %min_m288, align 4
  %add289 = add nuw nsw i32 %conv260, 9
  %call290 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add289) #4
  %max_m292 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %148 = ptrtoint ptr %max_m292 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %call290, ptr %max_m292, align 1
  %add293 = add nuw nsw i32 %conv260, 10
  %call294 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add293) #4
  %min_n296 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %149 = ptrtoint ptr %min_n296 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %call294, ptr %min_n296, align 2
  %add297 = add nuw nsw i32 %conv260, 11
  %call298 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add297) #4
  %max_n300 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %150 = ptrtoint ptr %max_n300 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %call298, ptr %max_n300, align 1
  %add301 = add nuw nsw i32 %conv260, 12
  %call302 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add301) #4
  %min_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 3
  %151 = ptrtoint ptr %min_p to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %call302, ptr %min_p, align 4
  %add303 = add nuw nsw i32 %conv260, 13
  %call304 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add303) #4
  %max_p305 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %152 = ptrtoint ptr %max_p305 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %call304, ptr %max_p305, align 1
  br label %sw.epilog368

sw.bb306:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %add307 = add i32 %data.0, 1
  %call308 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add307) #4
  %conv309 = zext i16 %call308 to i32
  %mul310 = mul nuw nsw i32 %conv309, 1000
  %refclk311 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %153 = ptrtoint ptr %refclk311 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %mul310, ptr %refclk311, align 4
  %add312 = add i32 %data.0, 5
  %call313 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add312) #4
  %conv314 = zext i16 %call313 to i32
  %mul315 = mul nuw nsw i32 %conv314, 1000
  %vco1316 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %154 = ptrtoint ptr %vco1316 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %mul315, ptr %vco1316, align 4
  %add318 = add i32 %data.0, 7
  %call319 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add318) #4
  %conv320 = zext i16 %call319 to i32
  %mul321 = mul nuw nsw i32 %conv320, 1000
  %max_freq323 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %155 = ptrtoint ptr %max_freq323 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %mul321, ptr %max_freq323, align 4
  %add324 = add i32 %data.0, 9
  %call325 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add324) #4
  %conv326 = zext i16 %call325 to i32
  %mul327 = mul nuw nsw i32 %conv326, 1000
  %min_inputfreq329 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %156 = ptrtoint ptr %min_inputfreq329 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %mul327, ptr %min_inputfreq329, align 4
  %add330 = add i32 %data.0, 11
  %call331 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add330) #4
  %conv332 = zext i16 %call331 to i32
  %mul333 = mul nuw nsw i32 %conv332, 1000
  %max_inputfreq335 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %157 = ptrtoint ptr %max_inputfreq335 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %mul333, ptr %max_inputfreq335, align 4
  %add336 = add i32 %data.0, 13
  %call337 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add336) #4
  %min_m339 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %158 = ptrtoint ptr %min_m339 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %call337, ptr %min_m339, align 4
  %add340 = add i32 %data.0, 14
  %call341 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add340) #4
  %max_m343 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %159 = ptrtoint ptr %max_m343 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %call341, ptr %max_m343, align 1
  %add344 = add i32 %data.0, 15
  %call345 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add344) #4
  %min_n347 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %160 = ptrtoint ptr %min_n347 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %call345, ptr %min_n347, align 2
  %add348 = add i32 %data.0, 16
  %call349 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add348) #4
  %max_n351 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %161 = ptrtoint ptr %max_n351 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %call349, ptr %max_n351, align 1
  %add352 = add i32 %data.0, 17
  %call353 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add352) #4
  %min_p354 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 3
  %162 = ptrtoint ptr %min_p354 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %call353, ptr %min_p354, align 4
  %add355 = add i32 %data.0, 18
  %call356 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add355) #4
  %max_p357 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %163 = ptrtoint ptr %max_p357 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %call356, ptr %max_p357, align 1
  br label %sw.epilog368

do.body:                                          ; preds = %if.end7
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %164 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp359.not = icmp eq i32 %165, 0
  br i1 %cmp359.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %166 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv10) #7
  br label %cleanup

sw.epilog368:                                     ; preds = %sw.bb306, %sw.bb252, %sw.bb158, %if.then154, %sw.bb56.sw.epilog368_crit_edge, %sw.bb, %if.end7.sw.epilog368_crit_edge
  %refclk369 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %170 = ptrtoint ptr %refclk369 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %refclk369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool370.not = icmp eq i32 %171, 0
  br i1 %tobool370.not, label %if.then371, label %sw.epilog368.if.end403_crit_edge

sw.epilog368.if.end403_crit_edge:                 ; preds = %sw.epilog368
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end403

if.then371:                                       ; preds = %sw.epilog368
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %172 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %crystal, align 4
  %174 = ptrtoint ptr %refclk369 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %refclk369, align 4
  %chip374 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 7, i32 1
  %175 = ptrtoint ptr %chip374 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %chip374, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %176)
  %cmp376 = icmp eq i8 %176, 81
  br i1 %cmp376, label %if.then378, label %if.then371.if.end403_crit_edge

if.then371.if.end403_crit_edge:                   ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end403

if.then378:                                       ; preds = %if.then371
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %177 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %178, i32 6817060
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %180 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %reg9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817032, i32 %181)
  %cmp381 = icmp ne i32 %181, 6817032
  %and = and i32 %179, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool384.not = icmp eq i32 %and, 0
  %or.cond764 = select i1 %cmp381, i1 true, i1 %tobool384.not
  br i1 %or.cond764, label %lor.lhs.false, label %if.then378.if.then391_crit_edge

if.then378.if.then391_crit_edge:                  ; preds = %if.then378
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then391

lor.lhs.false:                                    ; preds = %if.then378
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817056, i32 %181)
  %cmp386 = icmp ne i32 %181, 6817056
  %and389 = and i32 %179, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389)
  %tobool390.not = icmp eq i32 %and389, 0
  %or.cond765 = select i1 %cmp386, i1 true, i1 %tobool390.not
  br i1 %or.cond765, label %lor.lhs.false.if.end403_crit_edge, label %lor.lhs.false.if.then391_crit_edge

lor.lhs.false.if.then391_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then391

lor.lhs.false.if.end403_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end403

if.then391:                                       ; preds = %lor.lhs.false.if.then391_crit_edge, %if.then378.if.then391_crit_edge
  %call392 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 39) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -93, i8 %call392)
  %cmp394 = icmp ult i8 %call392, -93
  %. = select i1 %cmp394, i32 200000, i32 25000
  %182 = ptrtoint ptr %refclk369 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %., ptr %refclk369, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.then391, %lor.lhs.false.if.end403_crit_edge, %if.then371.if.end403_crit_edge, %sw.epilog368.if.end403_crit_edge
  %vco1404 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %max_freq405 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %183 = ptrtoint ptr %max_freq405 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_freq405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool406.not = icmp eq i32 %184, 0
  br i1 %tobool406.not, label %if.then407, label %if.end403.cleanup_crit_edge

if.end403.cleanup_crit_edge:                      ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then407:                                       ; preds = %if.end403
  %bmp_offset = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 5
  %185 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bmp_offset, align 4
  %add408 = add i32 %186, 67
  %call409 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add408) #4
  %187 = ptrtoint ptr %max_freq405 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call409, ptr %max_freq405, align 4
  %188 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bmp_offset, align 4
  %add413 = add i32 %189, 71
  %call414 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add413) #4
  %190 = ptrtoint ptr %vco1404 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call414, ptr %vco1404, align 4
  %191 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bmp_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i800 = icmp eq i32 %192, 0
  br i1 %tobool.not.i800, label %if.then407.if.then421_crit_edge, label %bmp_version.exit

if.then407.if.then421_crit_edge:                  ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then421

bmp_version.exit:                                 ; preds = %if.then407
  %add.i801 = add i32 %192, 5
  %call.i802 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add.i801) #4
  %conv.i = zext i8 %call.i802 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %193 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bmp_offset, align 4
  %add3.i = add i32 %194, 6
  %call4.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3.i) #4
  %conv5.i = zext i8 %call4.i to i16
  %or.i = or i16 %shl.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1286, i16 %or.i)
  %cmp419 = icmp ult i16 %or.i, 1286
  br i1 %cmp419, label %bmp_version.exit.if.then421_crit_edge, label %bmp_version.exit.if.end426_crit_edge

bmp_version.exit.if.end426_crit_edge:             ; preds = %bmp_version.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end426

bmp_version.exit.if.then421_crit_edge:            ; preds = %bmp_version.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then421

if.then421:                                       ; preds = %bmp_version.exit.if.then421_crit_edge, %if.then407.if.then421_crit_edge
  %195 = ptrtoint ptr %max_freq405 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 256000, ptr %max_freq405, align 4
  %196 = ptrtoint ptr %vco1404 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 128000, ptr %vco1404, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.then421, %bmp_version.exit.if.end426_crit_edge
  %min_inputfreq428 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %197 = ptrtoint ptr %min_inputfreq428 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %min_inputfreq428, align 4
  %max_inputfreq430 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %198 = ptrtoint ptr %max_inputfreq430 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 2147483647, ptr %max_inputfreq430, align 4
  %min_n432 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %199 = ptrtoint ptr %min_n432 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %min_n432, align 2
  %max_n434 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %200 = ptrtoint ptr %max_n434 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -1, ptr %max_n434, align 1
  %min_m436 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %201 = ptrtoint ptr %min_m436 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %min_m436, align 4
  %crystal437 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %202 = ptrtoint ptr %crystal437 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %crystal437, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %203)
  %cmp438 = icmp eq i32 %203, 13500
  %chip442 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 7, i32 1
  %204 = ptrtoint ptr %chip442 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %chip442, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %205)
  %cmp444 = icmp ult i8 %205, 17
  %.843 = select i1 %cmp438, i8 13, i8 14
  br i1 %cmp444, label %if.end464.sink.split, label %if.end426.if.end464_crit_edge

if.end426.if.end464_crit_edge:                    ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end464

if.end464.sink.split:                             ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #6
  %.842 = select i1 %cmp438, i8 7, i8 8
  %206 = ptrtoint ptr %min_m436 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %.842, ptr %min_m436, align 4
  br label %if.end464

if.end464:                                        ; preds = %if.end464.sink.split, %if.end426.if.end464_crit_edge
  %max_m463 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %207 = ptrtoint ptr %max_m463 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %.843, ptr %max_m463, align 1
  %chip466 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 7, i32 1
  %208 = ptrtoint ptr %chip466 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %chip466, align 1
  %.fr = freeze i8 %209
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %.fr)
  %cmp468 = icmp ult i8 %.fr, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.fr)
  %switch.selectcmp.case1839 = icmp eq i8 %.fr, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %.fr)
  %switch.selectcmp.case2840 = icmp eq i8 %.fr, 26
  %switch.selectcmp841 = or i1 %switch.selectcmp.case1839, %switch.selectcmp.case2840
  %210 = or i1 %cmp468, %switch.selectcmp841
  %.sink838 = select i1 %210, i8 4, i8 5
  %max_p485 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %211 = ptrtoint ptr %max_p485 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %.sink838, ptr %max_p485, align 1
  %max_p_usable488 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 6
  %212 = ptrtoint ptr %max_p_usable488 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %.sink838, ptr %max_p_usable488, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end464, %if.end403.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end464 ], [ 0, %if.end403.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pll_limits_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) unnamed_addr #0 align 64 {
entry:
  %bit_C = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_C) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_C, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_C, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bit_entry, ptr %bit_C, i32 0, i32 3
  %3 = call ptr @memset(ptr %bit_C, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 67, ptr noundef nonnull %bit_C) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %7)
  %cmp3 = icmp ugt i16 %7, 9
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %2, align 2
  %conv6 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv6, 8
  %call7 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %conv8 = zext i16 %call7 to i32
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %11 = phi i8 [ %.pr, %if.then5 ], [ %5, %if.then.if.end_crit_edge ]
  %data.0 = phi i32 [ %conv8, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp11 = icmp eq i8 %11, 2
  br i1 %cmp11, label %land.lhs.true13, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

land.lhs.true13:                                  ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp16 = icmp ugt i16 %13, 3
  br i1 %cmp16, label %if.then18, label %land.lhs.true13.if.end23_crit_edge

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 2
  %conv20 = zext i16 %15 to i32
  %call22 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv20) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true13.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %data.1 = phi i32 [ %call22, %if.then18 ], [ %data.0, %land.lhs.true13.if.end23_crit_edge ], [ %data.0, %if.end.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.1)
  %tobool24.not = icmp eq i32 %data.1, 0
  br i1 %tobool24.not, label %if.end23.if.end35_crit_edge, label %if.then25

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %data.1) #4
  %16 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call27, ptr %ver, align 1
  %add28 = add i32 %data.1, 1
  %call29 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add28) #4
  %17 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call29, ptr %hdr, align 1
  %add30 = add i32 %data.1, 2
  %call31 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add30) #4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call31, ptr %len, align 1
  %add32 = add i32 %data.1, 3
  %call33 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add32) #4
  %19 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call33, ptr %cnt, align 1
  br label %cleanup

if.end35:                                         ; preds = %if.end23.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %bmp_offset.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 5
  %20 = ptrtoint ptr %bmp_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bmp_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end35.if.end49_crit_edge, label %bmp_version.exit

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

bmp_version.exit:                                 ; preds = %if.end35
  %add.i = add i32 %21, 5
  %call.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add.i) #4
  %conv.i = zext i8 %call.i to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %22 = ptrtoint ptr %bmp_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bmp_offset.i, align 4
  %add3.i = add i32 %23, 6
  %call4.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3.i) #4
  %conv5.i = zext i8 %call4.i to i16
  %or.i = or i16 %shl.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1315, i16 %or.i)
  %cmp38 = icmp ugt i16 %or.i, 1315
  br i1 %cmp38, label %if.then40, label %bmp_version.exit.if.end49_crit_edge

bmp_version.exit.if.end49_crit_edge:              ; preds = %bmp_version.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then40:                                        ; preds = %bmp_version.exit
  %24 = ptrtoint ptr %bmp_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bmp_offset.i, align 4
  %add41 = add i32 %25, 142
  %call42 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add41) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call42)
  %tobool44.not = icmp eq i16 %call42, 0
  br i1 %tobool44.not, label %if.then40.if.end49_crit_edge, label %if.then45

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %conv43 = zext i16 %call42 to i32
  %call47 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv43) #4
  %26 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call47, ptr %ver, align 1
  %27 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %hdr, align 1
  %28 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %cnt, align 1
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 24, ptr %len, align 1
  br label %cleanup

if.end49:                                         ; preds = %if.then40.if.end49_crit_edge, %bmp_version.exit.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %30 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ver, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then45, %if.then25
  %retval.0 = phi i32 [ %conv43, %if.then45 ], [ 0, %if.end49 ], [ %data.1, %if.then25 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_C) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c", i32 382, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvbios_pll_parse._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvbios_pll_parse._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nv04_pll_mapping, !9, !"nv04_pll_mapping", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c", i32 37, i32 1}
!10 = !{ptr @nv40_pll_mapping, !11, !"nv40_pll_mapping", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c", i32 46, i32 1}
!12 = !{ptr @nv50_pll_mapping, !13, !"nv50_pll_mapping", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c", i32 55, i32 1}
!14 = !{ptr @g84_pll_mapping, !15, !"g84_pll_mapping", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c", i32 69, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{i64 5392826}
!27 = !{i64 2156235211}
