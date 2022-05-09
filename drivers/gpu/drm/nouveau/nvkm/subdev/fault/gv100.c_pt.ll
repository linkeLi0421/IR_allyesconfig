; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.140 }
%struct.anon = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@gv100_fault = internal constant { %struct.nvkm_fault_func, [60 x i8] } { %struct.nvkm_fault_func { ptr @gv100_fault_oneinit, ptr @gv100_fault_init, ptr @gv100_fault_fini, ptr @gv100_fault_intr, %struct.anon { i32 2, i32 32, ptr @gv100_fault_buffer_info, ptr @gp100_fault_buffer_pin, ptr @gv100_fault_buffer_init, ptr @gv100_fault_buffer_fini, ptr @gv100_fault_buffer_intr }, %struct.anon.140 { %struct.nvkm_sclass { i32 0, i32 0, i32 50025, ptr null, ptr null }, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@gv100_fault_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gv100_fault_intr\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gv100_fault_intr._entry_ptr = internal global ptr @gv100_fault_intr._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"gv100_fault\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 209, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 179, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @gv100_fault_intr._entry, ptr @gv100_fault_intr._entry_ptr, ptr @gv100_fault, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_fault to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_fault_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_fault_oneinit(ptr noundef %fault) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 2
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %event = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 4
  %nrpfb = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 5
  %call = tail call i32 @nvkm_notify_init(ptr noundef %1, ptr noundef %event, ptr noundef nonnull @gv100_fault_ntfy_nrpfb, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %nrpfb) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gv100_fault_ntfy_nrpfb(ptr nocapture noundef readonly %notify) #0 align 64 {
entry:
  %info.i = alloca %struct.nvkm_fault_data, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr i8, ptr %notify, i32 -124
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %fault.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fault.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fault.i, align 8
  %device1.i = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i, align 4
  %mem2.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem2.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %get3.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %get3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %get3.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %put6.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %put6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %put6.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %14, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %12)
  %cmp.i = icmp eq i32 %17, %12
  br i1 %cmp.i, label %entry.gv100_fault_buffer_process.exit_crit_edge, label %if.end.i

entry.gv100_fault_buffer_process.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %gv100_fault_buffer_process.exit

if.end.i:                                         ; preds = %entry
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %acquire.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %acquire.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %acquire.i, align 4
  %call10.i = tail call ptr %21(ptr noundef %7) #4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %7, i32 0, i32 1
  %entries.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %1, i32 0, i32 3
  %inst.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 1
  %time.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 2
  %engine.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 3
  %valid.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 4
  %gpc.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 5
  %hub.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 6
  %access.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 7
  %client.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 8
  %reason.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 9
  %fifo.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 52
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i
  %get.0135.i = phi i32 [ %12, %if.end.i ], [ %spec.store.select.i, %while.body.i.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %fault.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fault.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %entry_size.i = getelementptr inbounds %struct.nvkm_fault_func, ptr %25, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %27, %get.0135.i
  %28 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptrs.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %conv.i = zext i32 %mul.i to i64
  %call15.i = call i32 %31(ptr noundef %7, i64 noundef %conv.i) #4
  %32 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptrs.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add18.i = add i32 %mul.i, 4
  %conv19.i = zext i32 %add18.i to i64
  %call20.i = call i32 %35(ptr noundef %7, i64 noundef %conv19.i) #4
  %36 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %add23.i = add i32 %mul.i, 8
  %conv24.i = zext i32 %add23.i to i64
  %call25.i = call i32 %39(ptr noundef %7, i64 noundef %conv24.i) #4
  %40 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptrs.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %add28.i = add i32 %mul.i, 12
  %conv29.i = zext i32 %add28.i to i64
  %call30.i = call i32 %43(ptr noundef %7, i64 noundef %conv29.i) #4
  %44 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptrs.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %add33.i = add i32 %mul.i, 16
  %conv34.i = zext i32 %add33.i to i64
  %call35.i = call i32 %47(ptr noundef %7, i64 noundef %conv34.i) #4
  %48 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptrs.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %add38.i = add i32 %mul.i, 20
  %conv39.i = zext i32 %add38.i to i64
  %call40.i = call i32 %51(ptr noundef %7, i64 noundef %conv39.i) #4
  %52 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptrs.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %add43.i = add i32 %mul.i, 24
  %conv44.i = zext i32 %add43.i to i64
  %call45.i = call i32 %55(ptr noundef %7, i64 noundef %conv44.i) #4
  %56 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ptrs.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %add48.i = add i32 %mul.i, 28
  %conv49.i = zext i32 %add48.i to i64
  %call50.i = call i32 %59(ptr noundef %7, i64 noundef %conv49.i) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #4
  %60 = call ptr @memset(ptr %info.i, i32 255, i32 32)
  %inc.i = add i32 %get.0135.i, 1
  %61 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %62)
  %cmp51.i = icmp eq i32 %inc.i, %62
  %spec.store.select.i = select i1 %cmp51.i, i32 0, i32 %inc.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @arm_heavy_mb() #4
  %63 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri.i, align 4
  %65 = ptrtoint ptr %get3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %get3.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %64, i32 %66
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %spec.store.select.i) #4, !srcloc !23
  %conv58.i = zext i32 %call30.i to i64
  %shl.i = shl nuw i64 %conv58.i, 32
  %conv59.i = zext i32 %call25.i to i64
  %or.i = or i64 %shl.i, %conv59.i
  %67 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or.i, ptr %info.i, align 8
  %conv60.i = zext i32 %call20.i to i64
  %shl61.i = shl nuw i64 %conv60.i, 32
  %conv62.i = zext i32 %call15.i to i64
  %or63.i = or i64 %shl61.i, %conv62.i
  %68 = ptrtoint ptr %inst.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %or63.i, ptr %inst.i, align 8
  %conv64.i = zext i32 %call40.i to i64
  %shl65.i = shl nuw i64 %conv64.i, 32
  %conv66.i = zext i32 %call35.i to i64
  %or67.i = or i64 %shl65.i, %conv66.i
  %69 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %or67.i, ptr %time.i, align 8
  %conv68.i = trunc i32 %call45.i to i8
  %70 = ptrtoint ptr %engine.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv68.i, ptr %engine.i, align 8
  %shr.i = lshr i32 %call50.i, 31
  %conv70.i = trunc i32 %shr.i to i8
  %71 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv70.i, ptr %valid.i, align 1
  %and71.i = lshr i32 %call50.i, 24
  %72 = trunc i32 %and71.i to i8
  %conv73.i = and i8 %72, 31
  %73 = ptrtoint ptr %gpc.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv73.i, ptr %gpc.i, align 2
  %and74.i = lshr i32 %call50.i, 20
  %74 = trunc i32 %and74.i to i8
  %conv76.i = and i8 %74, 1
  %75 = ptrtoint ptr %hub.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv76.i, ptr %hub.i, align 1
  %and77.i = lshr i32 %call50.i, 16
  %76 = trunc i32 %and77.i to i8
  %conv79.i = and i8 %76, 15
  %77 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv79.i, ptr %access.i, align 4
  %and80.i = lshr i32 %call50.i, 8
  %78 = trunc i32 %and80.i to i8
  %conv82.i = and i8 %78, 127
  %79 = ptrtoint ptr %client.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv82.i, ptr %client.i, align 1
  %80 = trunc i32 %call50.i to i8
  %conv84.i = and i8 %80, 31
  %81 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv84.i, ptr %reason.i, align 2
  %82 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fifo.i, align 8
  call void @nvkm_fifo_fault(ptr noundef %83, ptr noundef nonnull %info.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #4
  %cmp11.not.i = icmp eq i32 %spec.store.select.i, %17
  br i1 %cmp11.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %7, align 4
  %release.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %release.i, align 4
  call void %87(ptr noundef %7) #4
  br label %gv100_fault_buffer_process.exit

gv100_fault_buffer_process.exit:                  ; preds = %while.end.i, %entry.gv100_fault_buffer_process.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_fault_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfault) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_fault_new_(ptr noundef nonnull @gv100_fault, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfault) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fault_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_init(ptr noundef %fault) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1051180
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %or = or i32 %4, -2147483648
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 1051180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %or) #4, !srcloc !23
  %7 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fault, align 4
  %init = getelementptr inbounds %struct.nvkm_fault_func, ptr %8, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init, align 4
  %buffer4 = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 2
  %11 = ptrtoint ptr %buffer4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer4, align 4
  tail call void %10(ptr noundef %12) #4
  %nrpfb = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 5
  tail call void @nvkm_notify_get(ptr noundef %nrpfb) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_fini(ptr noundef %fault) #0 align 64 {
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
  %device = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1051188
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %or = or i32 %10, -2147483648
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 1051188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_intr(ptr noundef %fault) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 1051168
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
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
  %add.ptr.i = getelementptr i8, ptr %10, i32 1052236
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 1052240
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %16, i32 1052244
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %18 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %19, i32 1052248
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %21 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %22, i32 1052252
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %42, i32 1052256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -2147483648) #4, !srcloc !23
  %and5 = and i32 %4, 2147483647
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stat.0 = phi i32 [ %and5, %if.then ], [ %4, %entry.if.end_crit_edge ]
  %and6 = and i32 %stat.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8:                                         ; preds = %if.end
  %buffer = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 2
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  %tobool9.not = icmp eq ptr %44, null
  br i1 %tobool9.not, label %if.then8.if.end13_crit_edge, label %if.then10

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %event = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %event, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  %and11 = and i32 %stat.0, -536870913
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %stat.1 = phi i32 [ %and11, %if.then10 ], [ %stat.0, %if.then8.if.end13_crit_edge ], [ %stat.0, %if.end.if.end13_crit_edge ]
  %and14 = and i32 %stat.1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end24_crit_edge, label %if.then16

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then16:                                        ; preds = %if.end13
  %arrayidx18 = getelementptr %struct.nvkm_fault, ptr %fault, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %46, null
  br i1 %tobool19.not, label %if.then16.do.body27_crit_edge, label %if.then20

if.then16.do.body27_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %event21 = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %event21, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0) #4
  %and22 = and i32 %stat.1, -134217729
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end13.if.end24_crit_edge
  %stat.2 = phi i32 [ %and22, %if.then20 ], [ %stat.1, %if.end13.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.2)
  %tobool25.not = icmp eq i32 %stat.2, 0
  br i1 %tobool25.not, label %if.end24.if.end36_crit_edge, label %if.end24.do.body27_crit_edge

if.end24.do.body27_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body27:                                        ; preds = %if.end24.do.body27_crit_edge, %if.then16.do.body27_crit_edge
  %stat.255 = phi i32 [ %stat.2, %if.end24.do.body27_crit_edge ], [ %stat.1, %if.then16.do.body27_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp = icmp ugt i32 %48, 3
  br i1 %cmp, label %do.end31, label %do.body27.if.end36_crit_edge

do.body27.if.end36_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.end31:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fault, ptr %fault, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %stat.255) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %do.body27.if.end36_crit_edge, %if.end24.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_info(ptr nocapture noundef %buffer) #0 align 64 {
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
  %mul = mul i32 %5, 20
  %add = add i32 %mul, 1052212
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %or = or i32 %8, 1073741824
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #4, !srcloc !23
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %and11 = and i32 %13, 1048575
  %entries = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 3
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and11, ptr %entries, align 8
  %add12 = add i32 %mul, 1052204
  %get = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 4
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add12, ptr %get, align 4
  %add13 = add i32 %mul, 1052208
  %put = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 5
  %16 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add13, ptr %put, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gp100_fault_buffer_pin(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_init(ptr nocapture noundef readonly %buffer) #0 align 64 {
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
  %mul = mul i32 %5, 20
  %add = add i32 %mul, 1052212
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %and = and i32 %8, 1073741823
  %or = or i32 %and, 1073741824
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %addr = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %buffer, i32 0, i32 7
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr, align 8
  %shr = lshr i64 %12, 32
  %conv = trunc i64 %shr to i32
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add10 = add i32 %mul, 1052200
  %add.ptr11 = getelementptr i8, ptr %14, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %conv) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr, align 8
  %conv17 = trunc i64 %16 to i32
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add19 = add i32 %mul, 1052196
  %add.ptr20 = getelementptr i8, ptr %18, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %conv17) #4, !srcloc !23
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 %add
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %or34 = or i32 %21, -2147483648
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %or34) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_fini(ptr nocapture noundef readonly %buffer) #0 align 64 {
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
  %mul = mul i32 %5, 20
  %add = add i32 %mul, 1052212
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %and = and i32 %8, 2147483647
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_intr(ptr nocapture noundef readonly %buffer, i1 noundef zeroext %enable) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 536870912, i32 134217728
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %7, i32 1051180
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %or = or i32 %8, %cond
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 1051180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #4, !srcloc !23
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr11 = getelementptr i8, ptr %7, i32 1051188
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %or19 = or i32 %11, %cond
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 1051188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #4, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

!0 = !{ptr @gv100_fault, !1, !"gv100_fault", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c", i32 209, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c", i32 179, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gv100_fault_intr._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @gv100_fault_intr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 5389747}
!20 = !{i64 2156258830}
!21 = !{i64 2156259224}
!22 = !{i64 2156259956}
!23 = !{i64 5389329}
!24 = !{i64 2156277239}
!25 = !{i64 2156277641}
!26 = !{i64 2156275950}
!27 = !{i64 2156276352}
!28 = !{i64 2156272614}
!29 = !{i64 2156270689}
!30 = !{i64 2156271074}
!31 = !{i64 2156271459}
!32 = !{i64 2156271844}
!33 = !{i64 2156272229}
!34 = !{i64 2156272956}
!35 = !{i64 2156268231}
!36 = !{i64 2156268633}
!37 = !{i64 2156269142}
!38 = !{i64 2156264563}
!39 = !{i64 2156264965}
!40 = !{i64 2156265522}
!41 = !{i64 2156266073}
!42 = !{i64 2156266949}
!43 = !{i64 2156267351}
!44 = !{i64 2156263281}
!45 = !{i64 2156263683}
!46 = !{i64 2156260808}
!47 = !{i64 2156261186}
!48 = !{i64 2156262035}
!49 = !{i64 2156262413}
