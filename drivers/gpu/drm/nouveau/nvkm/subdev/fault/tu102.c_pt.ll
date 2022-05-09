; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon.139, %struct.anon.140 }
%struct.anon.139 = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.140 = type { %struct.nvkm_sclass, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.138, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.138 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }

@tu102_fault = internal constant { %struct.nvkm_fault_func, [60 x i8] } { %struct.nvkm_fault_func { ptr @gv100_fault_oneinit, ptr @tu102_fault_init, ptr @tu102_fault_fini, ptr @tu102_fault_intr, %struct.anon.139 { i32 2, i32 32, ptr @tu102_fault_buffer_info, ptr @gp100_fault_buffer_pin, ptr @tu102_fault_buffer_init, ptr @tu102_fault_buffer_fini, ptr @tu102_fault_buffer_intr }, %struct.anon.140 { %struct.nvkm_sclass { i32 0, i32 0, i32 50025, ptr null, ptr null }, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@tu102_fault_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tu102_fault_intr\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tu102_fault_intr._entry_ptr = internal global ptr @tu102_fault_intr._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"tu102_fault\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 168, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 146, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @tu102_fault_intr._entry, ptr @tu102_fault_intr._entry_ptr, ptr @tu102_fault, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fault to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fault_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_fault_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfault) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_fault_new_(ptr noundef nonnull @tu102_fault, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfault) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fault_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fault_oneinit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_init(ptr noundef %fault) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fault, align 4
  %init = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %buffer1 = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 2
  %4 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer1, align 4
  tail call void %3(ptr noundef %5) #4
  %nrpfb = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 5
  tail call void @nvkm_notify_get(ptr noundef %nrpfb) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_fini(ptr noundef %fault) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nrpfb = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 5
  tail call void @nvkm_notify_put(ptr noundef %nrpfb) #4
  %buffer = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 2
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fault, align 4
  %fini = getelementptr inbounds %struct.nvkm_fault_func, ptr %3, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 4
  tail call void %5(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_intr(ptr noundef %fault) #0 align 64 {
entry:
  %info.i = alloca %struct.nvkm_fault_data, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12071060
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #4
  %7 = getelementptr inbounds i8, ptr %info.i, i32 24
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 12071040
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 12071044
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %16, i32 12071048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %18 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %19, i32 12071052
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %21 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %22, i32 12071056
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %conv.i = zext i32 %14 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv23.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv23.i
  %24 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i, ptr %info.i, align 8
  %conv24.i = zext i32 %20 to i64
  %shl25.i = shl nuw i64 %conv24.i, 32
  %and.i = and i32 %17, -4096
  %conv26.i = zext i32 %and.i to i64
  %or27.i = or i64 %shl25.i, %conv26.i
  %inst.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 1
  %25 = ptrtoint ptr %inst.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or27.i, ptr %inst.i, align 8
  %time.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 2
  %26 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %time.i, align 8
  %conv29.i = trunc i32 %17 to i8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv29.i, ptr %7, align 8
  %shr.i = lshr i32 %23, 31
  %conv31.i = trunc i32 %shr.i to i8
  %valid.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 4
  %28 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv31.i, ptr %valid.i, align 1
  %and32.i = lshr i32 %23, 24
  %29 = trunc i32 %and32.i to i8
  %conv34.i = and i8 %29, 31
  %gpc.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 5
  %30 = ptrtoint ptr %gpc.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv34.i, ptr %gpc.i, align 2
  %and35.i = lshr i32 %23, 20
  %31 = trunc i32 %and35.i to i8
  %conv37.i = and i8 %31, 1
  %hub.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 6
  %32 = ptrtoint ptr %hub.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv37.i, ptr %hub.i, align 1
  %and38.i = lshr i32 %23, 16
  %33 = trunc i32 %and38.i to i8
  %conv40.i = and i8 %33, 15
  %access.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 7
  %34 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv40.i, ptr %access.i, align 4
  %and41.i = lshr i32 %23, 8
  %35 = trunc i32 %and41.i to i8
  %conv43.i = and i8 %35, 127
  %client.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 8
  %36 = ptrtoint ptr %client.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv43.i, ptr %client.i, align 1
  %37 = trunc i32 %23 to i8
  %conv45.i = and i8 %37, 31
  %reason.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 9
  %38 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv45.i, ptr %reason.i, align 2
  %fifo.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 52
  %39 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fifo.i, align 8
  call void @nvkm_fifo_fault(ptr noundef %40, ptr noundef nonnull %info.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %42, i32 12071060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -2147483648) #4, !srcloc !27
  %and5 = and i32 %4, 2147483647
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stat.0 = phi i32 [ %and5, %if.then ], [ %4, %entry.if.end_crit_edge ]
  %and6 = and i32 %stat.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %do.body9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.body9:                                         ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %44, i32 12062736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 16) #4, !srcloc !27
  %buffer = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 2
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %tobool14.not = icmp eq ptr %46, null
  br i1 %tobool14.not, label %do.body9.if.end18_crit_edge, label %if.then15

do.body9.if.end18_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %event = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %event, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  %and16 = and i32 %stat.0, -513
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.body9.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %stat.1 = phi i32 [ %and16, %if.then15 ], [ %stat.0, %do.body9.if.end18_crit_edge ], [ %stat.0, %if.end.if.end18_crit_edge ]
  %and19 = and i32 %stat.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end34_crit_edge, label %do.body22

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

do.body22:                                        ; preds = %if.end18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @arm_heavy_mb() #4
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %48, i32 12062728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 1) #4, !srcloc !27
  %arrayidx28 = getelementptr %struct.nvkm_fault, ptr %fault, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %50, null
  br i1 %tobool29.not, label %do.body22.do.body37_crit_edge, label %if.then30

do.body22.do.body37_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

if.then30:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %event31 = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %event31, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0) #4
  %and32 = and i32 %stat.1, -257
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end18.if.end34_crit_edge
  %stat.2 = phi i32 [ %and32, %if.then30 ], [ %stat.1, %if.end18.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.2)
  %tobool35.not = icmp eq i32 %stat.2, 0
  br i1 %tobool35.not, label %if.end34.if.end46_crit_edge, label %if.end34.do.body37_crit_edge

if.end34.do.body37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.body37:                                        ; preds = %if.end34.do.body37_crit_edge, %do.body22.do.body37_crit_edge
  %stat.267 = phi i32 [ %stat.2, %if.end34.do.body37_crit_edge ], [ %stat.1, %do.body22.do.body37_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp = icmp ugt i32 %52, 3
  br i1 %cmp, label %do.end41, label %do.body37.if.end46_crit_edge

do.body37.if.end46_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.end41:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %stat.267) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %do.body37.if.end46_crit_edge, %if.end34.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_info(ptr nocapture noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fault = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fault, align 8
  %device1 = getelementptr inbounds %struct.nvkm_fault, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 5
  %add = add i32 %mul, 12070928
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %or = or i32 %8, 1073741824
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #4, !srcloc !27
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %and11 = and i32 %13, 1048575
  %entries = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 3
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and11, ptr %entries, align 8
  %add12 = add i32 %mul, 12070920
  %get = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 4
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add12, ptr %get, align 4
  %add13 = add i32 %mul, 12070924
  %put = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 5
  %16 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add13, ptr %put, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gp100_fault_buffer_pin(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_init(ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fault = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fault, align 8
  %device1 = getelementptr inbounds %struct.nvkm_fault, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12063240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 12063248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16) #4, !srcloc !27
  %add = add i32 %mul, 12070928
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %and = and i32 %12, 1073741823
  %or = or i32 %and, 1073741824
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %or) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %addr = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 7
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr, align 8
  %shr = lshr i64 %16, 32
  %conv = trunc i64 %shr to i32
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add20 = add i32 %mul, 12070916
  %add.ptr21 = getelementptr i8, ptr %18, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %conv) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %addr, align 8
  %conv27 = trunc i64 %20 to i32
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add29 = add i32 %mul, 12070912
  %add.ptr30 = getelementptr i8, ptr %22, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %conv27) #4, !srcloc !27
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %or44 = or i32 %25, -2147483648
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or44) #4, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_fini(ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fault = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fault, align 8
  %device1 = getelementptr inbounds %struct.nvkm_fault, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12063752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 12063760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16) #4, !srcloc !27
  %add = add i32 %mul, 12070928
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %and = and i32 %12, 2147483647
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and) #4, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_intr(ptr nocapture noundef readonly %buffer, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fault = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fault, align 8
  %device1 = getelementptr inbounds %struct.nvkm_fault, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void @nvkm_mc_intr_mask(ptr noundef %3, i32 noundef 17, i32 noundef 0, i1 noundef zeroext %enable) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_mask(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @tu102_fault, !1, !"tu102_fault", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c", i32 168, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c", i32 146, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tu102_fault_intr._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tu102_fault_intr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 5388136}
!20 = !{i64 2156269490}
!21 = !{i64 2156267565}
!22 = !{i64 2156267950}
!23 = !{i64 2156268335}
!24 = !{i64 2156268720}
!25 = !{i64 2156269105}
!26 = !{i64 2156269832}
!27 = !{i64 5387718}
!28 = !{i64 2156270233}
!29 = !{i64 2156270638}
!30 = !{i64 2156266269}
!31 = !{i64 2156266671}
!32 = !{i64 2156267180}
!33 = !{i64 2156261365}
!34 = !{i64 2156261759}
!35 = !{i64 2156262601}
!36 = !{i64 2156263003}
!37 = !{i64 2156263560}
!38 = !{i64 2156264111}
!39 = !{i64 2156264987}
!40 = !{i64 2156265389}
!41 = !{i64 2156259296}
!42 = !{i64 2156259690}
!43 = !{i64 2156260532}
!44 = !{i64 2156260934}
