; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bitfield = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.151 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv20_gr_chan = type { %struct.nvkm_object, ptr, i32, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv20_gr = type { %struct.nvkm_gr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.150 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.150 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.148, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.148 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv10_gr_intr_name = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv04_gr_nsource = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv10_gr_nstatus = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv20_gr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv20_gr_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv20_gr_intr._entry_ptr = internal global ptr @nv20_gr_intr._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv20_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.151, [16 x %struct.nvkm_sclass] }, [72 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.151, [16 x %struct.nvkm_sclass] } { ptr @nv20_gr_dtor, ptr @nv20_gr_oneinit, ptr @nv20_gr_init, ptr null, ptr @nv20_gr_intr, ptr @nv20_gr_tile, ptr null, ptr @nv20_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.151 zeroinitializer, [16 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 150, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 151, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 158, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [72 x i8] zeroinitializer }, align 32
@nv20_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv20_gr_chan_dtor, ptr @nv20_gr_chan_init, ptr @nv20_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 44, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 208, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"nv20_gr\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 345, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"nv20_gr_chan\00", align 1
@___asan_gen_.36 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 68, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nv20_gr_intr._entry, ptr @nv20_gr_intr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nv20_gr, ptr @nv20_gr_chan], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv20_gr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv20_gr to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv20_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_chan_init(ptr nocapture noundef readonly %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %inst2 = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 3
  %2 = ptrtoint ptr %inst2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %call = tail call i64 %7(ptr noundef %3) #5
  %conv = trunc i64 %call to i32
  %ctxtab = getelementptr inbounds %struct.nv20_gr, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctxtab, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acquire, align 4
  %call6 = tail call ptr %13(ptr noundef %9) #5
  %14 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctxtab, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  %chid = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 2
  %20 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chid, align 4
  %mul = shl i32 %21, 2
  %conv9 = sext i32 %mul to i64
  %shr = lshr i32 %conv, 4
  tail call void %19(ptr noundef %15, i64 noundef %conv9, i32 noundef %shr) #5
  %22 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctxtab, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %release, align 4
  tail call void %27(ptr noundef %23) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_chan_fini(ptr nocapture noundef readonly %object, i1 zeroext %suspend) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %inst3 = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 3
  %4 = ptrtoint ptr %inst3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %call = tail call i64 %9(ptr noundef %5) #5
  %conv = trunc i64 %call to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 4196128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %and = and i32 %12, -2
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %and) #5, !srcloc !27
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 4194628
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  %and16 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %19, i32 4194632
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %and22 = lshr i32 %20, 24
  %shr = and i32 %and22, 31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chid.0 = phi i32 [ %shr, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %chid23 = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 2
  %21 = ptrtoint ptr %chid23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chid23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %chid.0)
  %cmp = icmp eq i32 %22, %chid.0
  br i1 %cmp, label %do.body26, label %if.end.if.end108_crit_edge

if.end.if.end108_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.body26:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %shr29 = lshr i32 %conv, 4
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %24, i32 4196228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %shr29) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %26, i32 4196232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 2) #5, !srcloc !27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %27 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body37

do.body37:                                        ; preds = %do.cond46.do.body37_crit_edge, %do.body26
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr40 = getelementptr i8, ptr %29, i32 4196096
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool43.not = icmp eq i32 %30, 0
  br i1 %tobool43.not, label %do.body37.if.end85_crit_edge, label %do.cond46

do.body37.if.end85_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.cond46:                                        ; preds = %do.body37
  %call47 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp48 = icmp sgt i64 %call47, -1
  br i1 %cmp48, label %do.cond46.do.body37_crit_edge, label %do.end63

do.cond46.do.body37_crit_edge:                    ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

do.end63:                                         ; preds = %do.cond46
  %31 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_wait, align 8
  %device65 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device65, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %call66 = call ptr @dev_driver_string(ptr noundef %36) #5
  %37 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_wait, align 8
  %device69 = getelementptr inbounds %struct.nvkm_timer, ptr %38, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device69, align 4
  %dev70 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev70, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end63.dev_name.exit_crit_edge

do.end63.dev_name.exit_crit_edge:                 ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end63.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %46, %if.end.i ], [ %44, %do.end63.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call66, ptr noundef %retval.0.i) #5
  br label %if.end85

if.end85:                                         ; preds = %dev_name.exit, %do.body37.if.end85_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr91 = getelementptr i8, ptr %48, i32 4194628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 268435456) #5, !srcloc !27
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr97 = getelementptr i8, ptr %50, i32 4194632
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @arm_heavy_mb() #5
  %and103 = and i32 %51, 16777215
  %or104 = or i32 %and103, 520093696
  %52 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri, align 4
  %add.ptr106 = getelementptr i8, ptr %53, i32 4194632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %or104) #5, !srcloc !27
  br label %if.end108

if.end108:                                        ; preds = %if.end85, %if.end.if.end108_crit_edge
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %add.ptr114 = getelementptr i8, ptr %55, i32 4196128
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @arm_heavy_mb() #5
  %or121 = or i32 %56, 1
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr123 = getelementptr i8, ptr %58, i32 4196128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %or121) #5, !srcloc !27
  %ctxtab = getelementptr inbounds %struct.nv20_gr, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctxtab, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %acquire, align 4
  %call127 = call ptr %64(ptr noundef %60) #5
  %65 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctxtab, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr32, align 4
  %71 = ptrtoint ptr %chid23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chid23, align 4
  %mul = shl i32 %72, 2
  %conv131 = sext i32 %mul to i64
  call void %70(ptr noundef %66, i64 noundef %conv131, i32 noundef 0) #5
  %73 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctxtab, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %release, align 4
  call void %78(ptr noundef %74) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv20_gr_chan_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.nv20_gr_chan, ptr %object, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %inst) #5
  ret ptr %object
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv20_gr_tile(ptr noundef %base, i32 noundef %i, ptr nocapture noundef readonly %tile) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %fifo3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fifo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !38
  call void @nvkm_fifo_pause(ptr noundef %3, ptr noundef nonnull %flags) #5
  %call = call zeroext i1 @nv04_gr_idle(ptr noundef %base) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  call void @arm_heavy_mb() #5
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %5 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %limit, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i, 4
  %add = add i32 %mul, 4196612
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void @arm_heavy_mb() #5
  %pitch = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %9 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pitch, align 4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add11 = add i32 %mul, 4196616
  %add.ptr12 = getelementptr i8, ptr %12, i32 %add11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void @arm_heavy_mb() #5
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add18 = add i32 %mul, 4196608
  %add.ptr19 = getelementptr i8, ptr %16, i32 %add18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %14) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  call void @arm_heavy_mb() #5
  %mul23 = shl i32 %i, 2
  %add24 = add i32 %mul23, 15335472
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %add24) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit, align 4
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr32 = getelementptr i8, ptr %22, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @arm_heavy_mb() #5
  %add37 = add i32 %mul23, 15335504
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr39 = getelementptr i8, ptr %24, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %add37) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pitch, align 4
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %28, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %26) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @arm_heavy_mb() #5
  %add50 = add i32 %mul23, 15335440
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr52 = getelementptr i8, ptr %30, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %add50) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %34, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %32) #5, !srcloc !27
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %36)
  %cmp.not = icmp eq i32 %36, 52
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body59:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  call void @arm_heavy_mb() #5
  %zcomp = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %37 = ptrtoint ptr %zcomp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %zcomp, align 4
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add64 = add i32 %mul23, 4196736
  %add.ptr65 = getelementptr i8, ptr %40, i32 %add64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %38) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @arm_heavy_mb() #5
  %add70 = add i32 %mul23, 15335568
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %42, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %add70) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %zcomp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %zcomp, align 4
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %46, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %44) #5, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %do.body59, %entry.if.end_crit_edge
  call void @nvkm_fifo_start(ptr noundef %3, ptr noundef nonnull %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv20_gr_intr(ptr noundef %base) #0 align 64 {
entry:
  %chan = alloca ptr, align 4
  %msg = alloca [128 x i8], align 1
  %src = alloca [128 x i8], align 1
  %sta = alloca [128 x i8], align 1
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 4194560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4194568
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4194564
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 4196100
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %and = lshr i32 %13, 20
  %shr = and i32 %and, 31
  %and21 = lshr i32 %13, 16
  %shr22 = and i32 %and21, 7
  %and23 = and i32 %13, 8188
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 4196104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %shr22, 2
  %add = or i32 %mul, 4194656
  %add.ptr31 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and34 = and i32 %19, 4095
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #5
  %20 = call ptr @memset(ptr %msg, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %src) #5
  %21 = call ptr @memset(ptr %src, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sta) #5
  %22 = call ptr @memset(ptr %sta, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %flags, align 4, !annotation !38
  %fifo = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %24 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fifo, align 8
  %call35 = call ptr @nvkm_fifo_chan_chid(ptr noundef %25, i32 noundef %shr, ptr noundef nonnull %flags) #5
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call35, ptr %chan, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %28, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %4) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %30, i32 4196128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 1) #5, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %if.then

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then:                                          ; preds = %entry
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv10_gr_intr_name, i32 noundef %4) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %src, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %7) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %sta, i32 noundef 128, ptr noundef nonnull @nv10_gr_nstatus, i32 noundef %10) #5
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not = icmp eq i32 %32, 0
  br i1 %cmp.not, label %if.then.if.end60_crit_edge, label %do.end49

if.then.if.end60_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end49:                                         ; preds = %if.then
  %33 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan, align 4
  %tobool55.not = icmp eq ptr %38, null
  br i1 %tobool55.not, label %do.end49.cond.end_crit_edge, label %cond.true

do.end49.cond.end_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %38, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client, align 4
  %name56 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end49.cond.end_crit_edge
  %cond = phi ptr [ %name56, %cond.true ], [ @.str.6, %do.end49.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %4, ptr noundef nonnull %msg, i32 noundef %7, ptr noundef nonnull %src, i32 noundef %10, ptr noundef nonnull %sta, i32 noundef %shr, ptr noundef %cond, i32 noundef %shr22, i32 noundef %and34, i32 noundef %and23, i32 noundef %16) #8
  br label %if.end60

if.end60:                                         ; preds = %cond.end, %if.then.if.end60_crit_edge, %entry.if.end60_crit_edge
  %41 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fifo, align 8
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %chan) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sta) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %src) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_oneinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %ctxtab = getelementptr inbounds %struct.nv20_gr, ptr %base, i32 0, i32 1
  %call = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 128, i32 noundef 16, i1 noundef zeroext true, ptr noundef %ctxtab) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait83 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %ctxtab = getelementptr inbounds %struct.nv20_gr, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %ctxtab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctxtab, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %call = tail call i64 %7(ptr noundef %3) #5
  %shr = lshr i64 %call, 4
  %conv = trunc i64 %shr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 4196224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %conv) #5, !srcloc !27
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp = icmp eq i32 %11, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 4196176
  br i1 %cmp, label %do.body7, label %do.body66

do.body7:                                         ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 3997696) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr18.1 = getelementptr i8, ptr %17, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.1, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr18.2 = getelementptr i8, ptr %19, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.2, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr18.3 = getelementptr i8, ptr %21, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.3, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr18.4 = getelementptr i8, ptr %23, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.4, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr18.5 = getelementptr i8, ptr %25, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.5, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr18.6 = getelementptr i8, ptr %27, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.6, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr18.7 = getelementptr i8, ptr %29, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.7, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr18.8 = getelementptr i8, ptr %31, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.8, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr18.9 = getelementptr i8, ptr %33, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.9, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr18.10 = getelementptr i8, ptr %35, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.10, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr18.11 = getelementptr i8, ptr %37, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.11, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr18.12 = getelementptr i8, ptr %39, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.12, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr18.13 = getelementptr i8, ptr %41, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.13, i32 0) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr18.14 = getelementptr i8, ptr %43, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.14, i32 0) #5, !srcloc !27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %44 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body19

do.body19:                                        ; preds = %do.cond25.do.body19_crit_edge, %do.body7
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %46, i32 4196096
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %do.body19.if.end64_crit_edge, label %do.cond25

do.body19.if.end64_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.cond25:                                        ; preds = %do.body19
  %call26 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp27 = icmp sgt i64 %call26, -1
  br i1 %cmp27, label %do.cond25.do.body19_crit_edge, label %do.end42

do.cond25.do.body19_crit_edge:                    ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

do.end42:                                         ; preds = %do.cond25
  %48 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_wait, align 8
  %device44 = getelementptr inbounds %struct.nvkm_timer, ptr %49, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device44, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %call45 = call ptr @dev_driver_string(ptr noundef %53) #5
  %54 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_wait, align 8
  %device48 = getelementptr inbounds %struct.nvkm_timer, ptr %55, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %device48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device48, align 4
  %dev49 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev49, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end42.dev_name.exit_crit_edge

do.end42.dev_name.exit_crit_edge:                 ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end42.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %63, %if.end.i ], [ %61, %do.end42.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call45, ptr noundef %retval.0.i) #5
  br label %if.end64

if.end64:                                         ; preds = %dev_name.exit, %do.body19.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %do.body145

do.body66:                                        ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 46661632) #5, !srcloc !27
  br label %do.body75

do.body75:                                        ; preds = %do.body75.do.body75_crit_edge, %do.body66
  %i.1511 = phi i32 [ 0, %do.body66 ], [ %inc81, %do.body75.do.body75_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr79 = getelementptr i8, ptr %65, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 0) #5, !srcloc !27
  %inc81 = add nuw nsw i32 %i.1511, 1
  %exitcond.not = icmp eq i32 %inc81, 32
  br i1 %exitcond.not, label %for.end82, label %do.body75.do.body75_crit_edge

do.body75.do.body75_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

for.end82:                                        ; preds = %do.body75
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait83) #5
  %66 = call ptr @memset(ptr %_wait83, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait83) #5
  br label %do.body86

do.body86:                                        ; preds = %do.cond95.do.body86_crit_edge, %for.end82
  %67 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %68, i32 4196096
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool92.not = icmp eq i32 %69, 0
  br i1 %tobool92.not, label %do.body86.if.end142_crit_edge, label %do.cond95

do.body86.if.end142_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

do.cond95:                                        ; preds = %do.body86
  %call96 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait83) #5
  %cmp97 = icmp sgt i64 %call96, -1
  br i1 %cmp97, label %do.cond95.do.body86_crit_edge, label %do.end118

do.cond95.do.body86_crit_edge:                    ; preds = %do.cond95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

do.end118:                                        ; preds = %do.cond95
  %70 = ptrtoint ptr %_wait83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_wait83, align 8
  %device121 = getelementptr inbounds %struct.nvkm_timer, ptr %71, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %device121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device121, align 4
  %dev122 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev122, align 8
  %call123 = call ptr @dev_driver_string(ptr noundef %75) #5
  %76 = ptrtoint ptr %_wait83 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %_wait83, align 8
  %device126 = getelementptr inbounds %struct.nvkm_timer, ptr %77, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %device126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device126, align 4
  %dev127 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev127, align 8
  %init_name.i502 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %init_name.i502 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i502, align 8
  %tobool.not.i503 = icmp eq ptr %83, null
  br i1 %tobool.not.i503, label %if.end.i504, label %do.end118.dev_name.exit506_crit_edge

do.end118.dev_name.exit506_crit_edge:             ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit506

if.end.i504:                                      ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  br label %dev_name.exit506

dev_name.exit506:                                 ; preds = %if.end.i504, %do.end118.dev_name.exit506_crit_edge
  %retval.0.i505 = phi ptr [ %85, %if.end.i504 ], [ %83, %do.end118.dev_name.exit506_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 254, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call123, ptr noundef %retval.0.i505) #5
  br label %if.end142

if.end142:                                        ; preds = %dev_name.exit506, %do.body86.if.end142_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait83) #5
  br label %do.body145

do.body145:                                       ; preds = %if.end142, %if.end64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri, align 4
  %add.ptr149 = getelementptr i8, ptr %87, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 -1) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri, align 4
  %add.ptr154 = getelementptr i8, ptr %89, i32 4194624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 -1) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr159 = getelementptr i8, ptr %91, i32 4194432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 -1) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri, align 4
  %add.ptr164 = getelementptr i8, ptr %93, i32 4194432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri, align 4
  %add.ptr169 = getelementptr i8, ptr %95, i32 4194436
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 1148672) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri, align 4
  %add.ptr174 = getelementptr i8, ptr %97, i32 4194444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 -204602251) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri, align 4
  %add.ptr179 = getelementptr i8, ptr %99, i32 4194448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri, align 4
  %add.ptr184 = getelementptr i8, ptr %101, i32 4194460
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 64) #5, !srcloc !27
  %102 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %103)
  %cmp186 = icmp ugt i32 %103, 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri, align 4
  br i1 %cmp186, label %do.body189, label %do.body220

do.body189:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr193 = getelementptr i8, ptr %105, i32 4196496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 11063295) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri, align 4
  %add.ptr198 = getelementptr i8, ptr %107, i32 4195856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 810229686) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr203 = getelementptr i8, ptr %109, i32 4197248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 482162819) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri, align 4
  %add.ptr208 = getelementptr i8, ptr %111, i32 4197252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 1140850688) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri, align 4
  %add.ptr213 = getelementptr i8, ptr %113, i32 4194456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 1073741952) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri, align 4
  %add.ptr218 = getelementptr i8, ptr %115, i32 4197256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 255) #5, !srcloc !27
  br label %do.body266

do.body220:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr224 = getelementptr i8, ptr %105, i32 4196480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 575455) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri, align 4
  %add.ptr229 = getelementptr i8, ptr %117, i32 4194452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 5) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri, align 4
  %add.ptr234 = getelementptr i8, ptr %119, i32 4197248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 1173021198) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pri, align 4
  %add.ptr239 = getelementptr i8, ptr %121, i32 4197252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 603979776) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri, align 4
  %add.ptr244 = getelementptr i8, ptr %123, i32 4194456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 64) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add.ptr249 = getelementptr i8, ptr %125, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249, i32 14680120) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pri, align 4
  %add.ptr254 = getelementptr i8, ptr %127, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 48) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pri, align 4
  %add.ptr259 = getelementptr i8, ptr %129, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 14745656) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri, align 4
  %add.ptr264 = getelementptr i8, ptr %131, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr264, i32 48) #5, !srcloc !27
  br label %do.body266

do.body266:                                       ; preds = %do.body220, %do.body189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri, align 4
  %add.ptr271 = getelementptr i8, ptr %133, i32 1049380
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr271) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %135 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri, align 4
  %add.ptr275 = getelementptr i8, ptr %136, i32 4196768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 %134) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pri, align 4
  %add.ptr280 = getelementptr i8, ptr %138, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 15335436) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %139 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pri, align 4
  %add.ptr286 = getelementptr i8, ptr %140, i32 1049380
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %142 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pri, align 4
  %add.ptr290 = getelementptr i8, ptr %143, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 %141) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri, align 4
  %add.ptr295 = getelementptr i8, ptr %145, i32 4194628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 268435712) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri, align 4
  %add.ptr300 = getelementptr i8, ptr %147, i32 4196116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 -1) #5, !srcloc !27
  %148 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri, align 4
  %add.ptr303 = getelementptr i8, ptr %149, i32 4196112
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr303) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %and = and i32 %150, 524032
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pri, align 4
  %add.ptr310 = getelementptr i8, ptr %152, i32 4196112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 %and) #5, !srcloc !27
  %153 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pri, align 4
  %add.ptr313 = getelementptr i8, ptr %154, i32 4196112
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr313) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %or = or i32 %155, 131328
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pri, align 4
  %add.ptr320 = getelementptr i8, ptr %157, i32 4196112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 %or) #5, !srcloc !27
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %159, i32 0, i32 7
  %160 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %resource_size, align 4
  %call322 = call i32 %161(ptr noundef %1, i32 noundef 1) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pri, align 4
  %add.ptr328 = getelementptr i8, ptr %163, i32 1049088
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr328) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %165 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pri, align 4
  %add.ptr332 = getelementptr i8, ptr %166, i32 4196772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr332, i32 %164) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pri, align 4
  %add.ptr338 = getelementptr i8, ptr %168, i32 1049092
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr338) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %170 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pri, align 4
  %add.ptr342 = getelementptr i8, ptr %171, i32 4196776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr342, i32 %169) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri, align 4
  %add.ptr347 = getelementptr i8, ptr %173, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr347, i32 15335424) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  call void @arm_heavy_mb() #5
  %174 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pri, align 4
  %add.ptr353 = getelementptr i8, ptr %175, i32 1049088
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr353) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %177 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pri, align 4
  %add.ptr357 = getelementptr i8, ptr %178, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357, i32 %176) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pri, align 4
  %add.ptr362 = getelementptr i8, ptr %180, i32 4196176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr362, i32 15335428) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pri, align 4
  %add.ptr368 = getelementptr i8, ptr %182, i32 1049092
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr368) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %184 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pri, align 4
  %add.ptr372 = getelementptr i8, ptr %185, i32 4196180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr372, i32 %183) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pri, align 4
  %add.ptr377 = getelementptr i8, ptr %187, i32 4196384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr377, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri, align 4
  %add.ptr382 = getelementptr i8, ptr %189, i32 4196388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr382, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  call void @arm_heavy_mb() #5
  %sub386 = add i32 %call322, -2
  %190 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pri, align 4
  %add.ptr388 = getelementptr i8, ptr %191, i32 4196452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr388, i32 %sub386) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pri, align 4
  %add.ptr394 = getelementptr i8, ptr %193, i32 4196456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr394, i32 %sub386) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri, align 4
  %add.ptr399 = getelementptr i8, ptr %195, i32 4197152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr399, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  call void @arm_heavy_mb() #5
  %196 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pri, align 4
  %add.ptr404 = getelementptr i8, ptr %197, i32 4197124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr404, i32 -1) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  call void @arm_heavy_mb() #5
  %198 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pri, align 4
  %add.ptr409 = getelementptr i8, ptr %199, i32 4195644
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr409, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pri, align 4
  %add.ptr414 = getelementptr i8, ptr %201, i32 4195648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr414, i32 0) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pri, align 4
  %add.ptr419 = getelementptr i8, ptr %203, i32 4195652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr419, i32 32767) #5, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  call void @arm_heavy_mb() #5
  %204 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pri, align 4
  %add.ptr424 = getelementptr i8, ptr %205, i32 4195656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr424, i32 32767) #5, !srcloc !27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv20_gr_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctxtab = getelementptr inbounds %struct.nv20_gr, ptr %base, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %ctxtab) #5
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgr, align 4
  %call2 = tail call i32 @nvkm_gr_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv20_gr_new_.exit_crit_edge, label %if.end.i

entry.nv20_gr_new_.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv20_gr_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pgr, align 4
  %call2.i = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv20_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i.i) #5
  br label %nv20_gr_new_.exit

nv20_gr_new_.exit:                                ; preds = %if.end.i, %entry.nv20_gr_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -12, %entry.nv20_gr_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv20_gr_chan_new(ptr noundef %base, ptr nocapture noundef readonly %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv20_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  %gr1 = getelementptr inbounds %struct.nv20_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %gr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %gr1, align 8
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %fifoch, i32 0, i32 5
  %2 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chid, align 8
  %conv = zext i16 %3 to i32
  %chid2 = getelementptr inbounds %struct.nv20_gr_chan, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %chid2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %chid2, align 4
  %5 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pobject, align 4
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %inst = getelementptr inbounds %struct.nv20_gr_chan, ptr %call7.i.i, i32 0, i32 3
  %call5 = tail call i32 @nvkm_memory_new(ptr noundef %7, i32 noundef 0, i64 noundef 14320, i32 noundef 16, i1 noundef zeroext true, ptr noundef %inst) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inst, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acquire, align 4
  %call11 = tail call ptr %13(ptr noundef %9) #5
  %14 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inst, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  %20 = ptrtoint ptr %chid2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chid2, align 4
  %shl = shl i32 %21, 24
  %or = or i32 %shl, 1
  tail call void %19(ptr noundef %15, i64 noundef 0, i32 noundef %or) #5
  %22 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inst, align 8
  %ptrs16 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs16, align 4
  %wr3217 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr3217 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr3217, align 4
  tail call void %27(ptr noundef %23, i64 noundef 828, i32 noundef -65536) #5
  %28 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inst, align 8
  %ptrs20 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ptrs20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptrs20, align 4
  %wr3221 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr3221 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr3221, align 4
  tail call void %33(ptr noundef %29, i64 noundef 928, i32 noundef 268369920) #5
  %34 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inst, align 8
  %ptrs24 = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs24, align 4
  %wr3225 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr3225 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr3225, align 4
  tail call void %39(ptr noundef %35, i64 noundef 932, i32 noundef 268369920) #5
  %40 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inst, align 8
  %ptrs28 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ptrs28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptrs28, align 4
  %wr3229 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr3229 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr3229, align 4
  tail call void %45(ptr noundef %41, i64 noundef 1148, i32 noundef 257) #5
  %46 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inst, align 8
  %ptrs32 = getelementptr inbounds %struct.nvkm_memory, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ptrs32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptrs32, align 4
  %wr3233 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wr3233 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr3233, align 4
  tail call void %51(ptr noundef %47, i64 noundef 1168, i32 noundef 273) #5
  %52 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inst, align 8
  %ptrs36 = getelementptr inbounds %struct.nvkm_memory, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ptrs36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptrs36, align 4
  %wr3237 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wr3237 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr3237, align 4
  tail call void %57(ptr noundef %53, i64 noundef 1192, i32 noundef 1145044992) #5
  %58 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inst, align 8
  %ptrs41 = getelementptr inbounds %struct.nvkm_memory, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ptrs41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptrs41, align 4
  %wr3242 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr3242 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr3242, align 4
  tail call void %63(ptr noundef %59, i64 noundef 1236, i32 noundef 197379) #5
  %64 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %inst, align 8
  %ptrs41.1 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ptrs41.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptrs41.1, align 4
  %wr3242.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wr3242.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr3242.1, align 4
  tail call void %69(ptr noundef %65, i64 noundef 1240, i32 noundef 197379) #5
  %70 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inst, align 8
  %ptrs41.2 = getelementptr inbounds %struct.nvkm_memory, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ptrs41.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptrs41.2, align 4
  %wr3242.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr3242.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr3242.2, align 4
  tail call void %75(ptr noundef %71, i64 noundef 1244, i32 noundef 197379) #5
  %76 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %inst, align 8
  %ptrs41.3 = getelementptr inbounds %struct.nvkm_memory, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %ptrs41.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptrs41.3, align 4
  %wr3242.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wr3242.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr3242.3, align 4
  tail call void %81(ptr noundef %77, i64 noundef 1248, i32 noundef 197379) #5
  %82 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %inst, align 8
  %ptrs50 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %ptrs50 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptrs50, align 4
  %wr3251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wr3251 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr3251, align 4
  tail call void %87(ptr noundef %83, i64 noundef 1268, i32 noundef 524288) #5
  %88 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %inst, align 8
  %ptrs50.1 = getelementptr inbounds %struct.nvkm_memory, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %ptrs50.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptrs50.1, align 4
  %wr3251.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %wr3251.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wr3251.1, align 4
  tail call void %93(ptr noundef %89, i64 noundef 1272, i32 noundef 524288) #5
  %94 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %inst, align 8
  %ptrs50.2 = getelementptr inbounds %struct.nvkm_memory, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %ptrs50.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ptrs50.2, align 4
  %wr3251.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %wr3251.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wr3251.2, align 4
  tail call void %99(ptr noundef %95, i64 noundef 1276, i32 noundef 524288) #5
  %100 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %inst, align 8
  %ptrs50.3 = getelementptr inbounds %struct.nvkm_memory, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %ptrs50.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptrs50.3, align 4
  %wr3251.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wr3251.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr3251.3, align 4
  tail call void %105(ptr noundef %101, i64 noundef 1280, i32 noundef 524288) #5
  %106 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %inst, align 8
  %ptrs62 = getelementptr inbounds %struct.nvkm_memory, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %ptrs62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ptrs62, align 4
  %wr3263 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %wr3263 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wr3263, align 4
  tail call void %111(ptr noundef %107, i64 noundef 1292, i32 noundef 16850944) #5
  %112 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inst, align 8
  %ptrs62.1 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %ptrs62.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ptrs62.1, align 4
  %wr3263.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %wr3263.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wr3263.1, align 4
  tail call void %117(ptr noundef %113, i64 noundef 1296, i32 noundef 16850944) #5
  %118 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %inst, align 8
  %ptrs62.2 = getelementptr inbounds %struct.nvkm_memory, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %ptrs62.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ptrs62.2, align 4
  %wr3263.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %wr3263.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wr3263.2, align 4
  tail call void %123(ptr noundef %119, i64 noundef 1300, i32 noundef 16850944) #5
  %124 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %inst, align 8
  %ptrs62.3 = getelementptr inbounds %struct.nvkm_memory, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %ptrs62.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptrs62.3, align 4
  %wr3263.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wr3263.3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wr3263.3, align 4
  tail call void %129(ptr noundef %125, i64 noundef 1304, i32 noundef 16850944) #5
  %130 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inst, align 8
  %ptrs74 = getelementptr inbounds %struct.nvkm_memory, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %ptrs74 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ptrs74, align 4
  %wr3275 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %wr3275 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wr3275, align 4
  tail call void %135(ptr noundef %131, i64 noundef 1308, i32 noundef 67000) #5
  %136 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %inst, align 8
  %ptrs74.1 = getelementptr inbounds %struct.nvkm_memory, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %ptrs74.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ptrs74.1, align 4
  %wr3275.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %wr3275.1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wr3275.1, align 4
  tail call void %141(ptr noundef %137, i64 noundef 1312, i32 noundef 67000) #5
  %142 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %inst, align 8
  %ptrs74.2 = getelementptr inbounds %struct.nvkm_memory, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ptrs74.2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ptrs74.2, align 4
  %wr3275.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %wr3275.2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wr3275.2, align 4
  tail call void %147(ptr noundef %143, i64 noundef 1316, i32 noundef 67000) #5
  %148 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %inst, align 8
  %ptrs74.3 = getelementptr inbounds %struct.nvkm_memory, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %ptrs74.3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ptrs74.3, align 4
  %wr3275.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %wr3275.3 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %wr3275.3, align 4
  tail call void %153(ptr noundef %149, i64 noundef 1320, i32 noundef 67000) #5
  %154 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %inst, align 8
  %ptrs86 = getelementptr inbounds %struct.nvkm_memory, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %ptrs86 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ptrs86, align 4
  %wr3287 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %wr3287 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wr3287, align 4
  tail call void %159(ptr noundef %155, i64 noundef 1324, i32 noundef 524296) #5
  %160 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %inst, align 8
  %ptrs86.1 = getelementptr inbounds %struct.nvkm_memory, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %ptrs86.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ptrs86.1, align 4
  %wr3287.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %wr3287.1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wr3287.1, align 4
  tail call void %165(ptr noundef %161, i64 noundef 1328, i32 noundef 524296) #5
  %166 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %inst, align 8
  %ptrs86.2 = getelementptr inbounds %struct.nvkm_memory, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %ptrs86.2 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ptrs86.2, align 4
  %wr3287.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %wr3287.2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr3287.2, align 4
  tail call void %171(ptr noundef %167, i64 noundef 1332, i32 noundef 524296) #5
  %172 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %inst, align 8
  %ptrs86.3 = getelementptr inbounds %struct.nvkm_memory, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %ptrs86.3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ptrs86.3, align 4
  %wr3287.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %wr3287.3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wr3287.3, align 4
  tail call void %177(ptr noundef %173, i64 noundef 1336, i32 noundef 524296) #5
  %178 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %inst, align 8
  %ptrs98 = getelementptr inbounds %struct.nvkm_memory, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %ptrs98 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ptrs98, align 4
  %wr3299 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %wr3299 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wr3299, align 4
  tail call void %183(ptr noundef %179, i64 noundef 1372, i32 noundef 134152192) #5
  %184 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %inst, align 8
  %ptrs98.1 = getelementptr inbounds %struct.nvkm_memory, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %ptrs98.1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ptrs98.1, align 4
  %wr3299.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %wr3299.1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %wr3299.1, align 4
  tail call void %189(ptr noundef %185, i64 noundef 1376, i32 noundef 134152192) #5
  %190 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %inst, align 8
  %ptrs98.2 = getelementptr inbounds %struct.nvkm_memory, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %ptrs98.2 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ptrs98.2, align 4
  %wr3299.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %wr3299.2 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wr3299.2, align 4
  tail call void %195(ptr noundef %191, i64 noundef 1380, i32 noundef 134152192) #5
  %196 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %inst, align 8
  %ptrs98.3 = getelementptr inbounds %struct.nvkm_memory, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %ptrs98.3 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ptrs98.3, align 4
  %wr3299.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %wr3299.3 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wr3299.3, align 4
  tail call void %201(ptr noundef %197, i64 noundef 1384, i32 noundef 134152192) #5
  %202 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %inst, align 8
  %ptrs98.4 = getelementptr inbounds %struct.nvkm_memory, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %ptrs98.4 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ptrs98.4, align 4
  %wr3299.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %wr3299.4 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wr3299.4, align 4
  tail call void %207(ptr noundef %203, i64 noundef 1388, i32 noundef 134152192) #5
  %208 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %inst, align 8
  %ptrs98.5 = getelementptr inbounds %struct.nvkm_memory, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ptrs98.5 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ptrs98.5, align 4
  %wr3299.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %wr3299.5 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wr3299.5, align 4
  tail call void %213(ptr noundef %209, i64 noundef 1392, i32 noundef 134152192) #5
  %214 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %inst, align 8
  %ptrs98.6 = getelementptr inbounds %struct.nvkm_memory, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %ptrs98.6 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ptrs98.6, align 4
  %wr3299.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %wr3299.6 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wr3299.6, align 4
  tail call void %219(ptr noundef %215, i64 noundef 1396, i32 noundef 134152192) #5
  %220 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %inst, align 8
  %ptrs98.7 = getelementptr inbounds %struct.nvkm_memory, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %ptrs98.7 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ptrs98.7, align 4
  %wr3299.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %wr3299.7 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %wr3299.7, align 4
  tail call void %225(ptr noundef %221, i64 noundef 1400, i32 noundef 134152192) #5
  %226 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %inst, align 8
  %ptrs98.8 = getelementptr inbounds %struct.nvkm_memory, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %ptrs98.8 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ptrs98.8, align 4
  %wr3299.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %wr3299.8 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %wr3299.8, align 4
  tail call void %231(ptr noundef %227, i64 noundef 1404, i32 noundef 134152192) #5
  %232 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %inst, align 8
  %ptrs98.9 = getelementptr inbounds %struct.nvkm_memory, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %ptrs98.9 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ptrs98.9, align 4
  %wr3299.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %wr3299.9 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wr3299.9, align 4
  tail call void %237(ptr noundef %233, i64 noundef 1408, i32 noundef 134152192) #5
  %238 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %inst, align 8
  %ptrs98.10 = getelementptr inbounds %struct.nvkm_memory, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %ptrs98.10 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ptrs98.10, align 4
  %wr3299.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %wr3299.10 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wr3299.10, align 4
  tail call void %243(ptr noundef %239, i64 noundef 1412, i32 noundef 134152192) #5
  %244 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %inst, align 8
  %ptrs98.11 = getelementptr inbounds %struct.nvkm_memory, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %ptrs98.11 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ptrs98.11, align 4
  %wr3299.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %wr3299.11 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %wr3299.11, align 4
  tail call void %249(ptr noundef %245, i64 noundef 1416, i32 noundef 134152192) #5
  %250 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %inst, align 8
  %ptrs98.12 = getelementptr inbounds %struct.nvkm_memory, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %ptrs98.12 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ptrs98.12, align 4
  %wr3299.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %wr3299.12 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wr3299.12, align 4
  tail call void %255(ptr noundef %251, i64 noundef 1420, i32 noundef 134152192) #5
  %256 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %inst, align 8
  %ptrs98.13 = getelementptr inbounds %struct.nvkm_memory, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %ptrs98.13 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ptrs98.13, align 4
  %wr3299.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %wr3299.13 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %wr3299.13, align 4
  tail call void %261(ptr noundef %257, i64 noundef 1424, i32 noundef 134152192) #5
  %262 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %inst, align 8
  %ptrs98.14 = getelementptr inbounds %struct.nvkm_memory, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %ptrs98.14 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ptrs98.14, align 4
  %wr3299.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %wr3299.14 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wr3299.14, align 4
  tail call void %267(ptr noundef %263, i64 noundef 1428, i32 noundef 134152192) #5
  %268 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %inst, align 8
  %ptrs98.15 = getelementptr inbounds %struct.nvkm_memory, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %ptrs98.15 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ptrs98.15, align 4
  %wr3299.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %wr3299.15 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wr3299.15, align 4
  tail call void %273(ptr noundef %269, i64 noundef 1432, i32 noundef 134152192) #5
  %274 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %inst, align 8
  %ptrs106 = getelementptr inbounds %struct.nvkm_memory, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %ptrs106 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ptrs106, align 4
  %wr32107 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %wr32107 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %wr32107, align 4
  tail call void %279(ptr noundef %275, i64 noundef 1444, i32 noundef 1266679807) #5
  %280 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %inst, align 8
  %ptrs110 = getelementptr inbounds %struct.nvkm_memory, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %ptrs110 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ptrs110, align 4
  %wr32111 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %wr32111 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wr32111, align 4
  tail call void %285(ptr noundef %281, i64 noundef 1532, i32 noundef 1) #5
  %286 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %inst, align 8
  %ptrs114 = getelementptr inbounds %struct.nvkm_memory, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %ptrs114 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ptrs114, align 4
  %wr32115 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %wr32115 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wr32115, align 4
  tail call void %291(ptr noundef %287, i64 noundef 1540, i32 noundef 16384) #5
  %292 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %inst, align 8
  %ptrs118 = getelementptr inbounds %struct.nvkm_memory, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %ptrs118 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ptrs118, align 4
  %wr32119 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %wr32119 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wr32119, align 4
  tail call void %297(ptr noundef %293, i64 noundef 1552, i32 noundef 1) #5
  %298 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %inst, align 8
  %ptrs122 = getelementptr inbounds %struct.nvkm_memory, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %ptrs122 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ptrs122, align 4
  %wr32123 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %wr32123 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %wr32123, align 4
  tail call void %303(ptr noundef %299, i64 noundef 1560, i32 noundef 262144) #5
  %304 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %inst, align 8
  %ptrs126 = getelementptr inbounds %struct.nvkm_memory, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %ptrs126 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ptrs126, align 4
  %wr32127 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %wr32127 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %wr32127, align 4
  tail call void %309(ptr noundef %305, i64 noundef 1564, i32 noundef 65536) #5
  br label %for.body132

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %if.end8
  %i.6332 = phi i32 [ 7196, %if.end8 ], [ %add152, %for.body132.for.body132_crit_edge ]
  %310 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %inst, align 8
  %ptrs134 = getelementptr inbounds %struct.nvkm_memory, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %ptrs134 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ptrs134, align 4
  %wr32135 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %wr32135 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %wr32135, align 4
  %conv138 = zext i32 %i.6332 to i64
  tail call void %315(ptr noundef %311, i64 noundef %conv138, i32 noundef 275779577) #5
  %316 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %inst, align 8
  %ptrs140 = getelementptr inbounds %struct.nvkm_memory, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %ptrs140 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ptrs140, align 4
  %wr32141 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %319, i32 0, i32 1
  %320 = ptrtoint ptr %wr32141 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %wr32141, align 4
  %add143 = add nuw nsw i32 %i.6332, 4
  %conv144 = zext i32 %add143 to i64
  tail call void %321(ptr noundef %317, i64 noundef %conv144, i32 noundef 70649964) #5
  %322 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %inst, align 8
  %ptrs146 = getelementptr inbounds %struct.nvkm_memory, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %ptrs146 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ptrs146, align 4
  %wr32147 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %wr32147 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %wr32147, align 4
  %add149 = add nuw nsw i32 %i.6332, 8
  %conv150 = zext i32 %add149 to i64
  tail call void %327(ptr noundef %323, i64 noundef %conv150, i32 noundef 786459) #5
  %add152 = add nuw nsw i32 %i.6332, 16
  %cmp130 = icmp ult i32 %i.6332, 9341
  br i1 %cmp130, label %for.body132.for.body132_crit_edge, label %for.end153

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body132

for.end153:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #7
  %328 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %inst, align 8
  %ptrs155 = getelementptr inbounds %struct.nvkm_memory, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %ptrs155 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ptrs155, align 4
  %wr32156 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %wr32156 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %wr32156, align 4
  tail call void %333(ptr noundef %329, i64 noundef 10268, i32 noundef 1065353216) #5
  %334 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %inst, align 8
  %ptrs159 = getelementptr inbounds %struct.nvkm_memory, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %ptrs159 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ptrs159, align 4
  %wr32160 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %wr32160 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %wr32160, align 4
  tail call void %339(ptr noundef %335, i64 noundef 10288, i32 noundef 1065353216) #5
  %340 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %inst, align 8
  %ptrs163 = getelementptr inbounds %struct.nvkm_memory, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %ptrs163 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ptrs163, align 4
  %wr32164 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %wr32164 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %wr32164, align 4
  tail call void %345(ptr noundef %341, i64 noundef 10332, i32 noundef 1073741824) #5
  %346 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %inst, align 8
  %ptrs167 = getelementptr inbounds %struct.nvkm_memory, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %ptrs167 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %ptrs167, align 4
  %wr32168 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %wr32168 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %wr32168, align 4
  tail call void %351(ptr noundef %347, i64 noundef 10336, i32 noundef 1065353216) #5
  %352 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %inst, align 8
  %ptrs171 = getelementptr inbounds %struct.nvkm_memory, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %ptrs171 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ptrs171, align 4
  %wr32172 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %wr32172 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %wr32172, align 4
  tail call void %357(ptr noundef %353, i64 noundef 10340, i32 noundef 1056964608) #5
  %358 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %inst, align 8
  %ptrs175 = getelementptr inbounds %struct.nvkm_memory, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %ptrs175 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ptrs175, align 4
  %wr32176 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %wr32176 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %wr32176, align 4
  tail call void %363(ptr noundef %359, i64 noundef 10348, i32 noundef 1073741824) #5
  %364 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %inst, align 8
  %ptrs179 = getelementptr inbounds %struct.nvkm_memory, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %ptrs179 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ptrs179, align 4
  %wr32180 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %wr32180 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %wr32180, align 4
  tail call void %369(ptr noundef %365, i64 noundef 10352, i32 noundef 1065353216) #5
  %370 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %inst, align 8
  %ptrs183 = getelementptr inbounds %struct.nvkm_memory, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %ptrs183 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ptrs183, align 4
  %wr32184 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %wr32184 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %wr32184, align 4
  tail call void %375(ptr noundef %371, i64 noundef 10360, i32 noundef -1082130432) #5
  %376 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %inst, align 8
  %ptrs187 = getelementptr inbounds %struct.nvkm_memory, ptr %377, i32 0, i32 1
  %378 = ptrtoint ptr %ptrs187 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ptrs187, align 4
  %wr32188 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %wr32188 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %wr32188, align 4
  tail call void %381(ptr noundef %377, i64 noundef 10368, i32 noundef -1082130432) #5
  %382 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %inst, align 8
  %ptrs191 = getelementptr inbounds %struct.nvkm_memory, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %ptrs191 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ptrs191, align 4
  %wr32192 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %385, i32 0, i32 1
  %386 = ptrtoint ptr %wr32192 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %wr32192, align 4
  tail call void %387(ptr noundef %383, i64 noundef 13476, i32 noundef 1040384) #5
  %388 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %inst, align 8
  %ptrs195 = getelementptr inbounds %struct.nvkm_memory, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %ptrs195 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ptrs195, align 4
  %wr32196 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %wr32196 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wr32196, align 4
  tail call void %393(ptr noundef %389, i64 noundef 13616, i32 noundef 1016) #5
  %394 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %inst, align 8
  %ptrs199 = getelementptr inbounds %struct.nvkm_memory, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %ptrs199 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ptrs199, align 4
  %wr32200 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %wr32200 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %wr32200, align 4
  tail call void %399(ptr noundef %395, i64 noundef 13632, i32 noundef 3137536) #5
  %400 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %inst, align 8
  %ptrs207 = getelementptr inbounds %struct.nvkm_memory, ptr %401, i32 0, i32 1
  %402 = ptrtoint ptr %ptrs207 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ptrs207, align 4
  %wr32208 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %wr32208 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %wr32208, align 4
  tail call void %405(ptr noundef %401, i64 noundef 13660, i32 noundef 1856124) #5
  %406 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %inst, align 8
  %ptrs207.1 = getelementptr inbounds %struct.nvkm_memory, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %ptrs207.1 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ptrs207.1, align 4
  %wr32208.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %wr32208.1 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %wr32208.1, align 4
  tail call void %411(ptr noundef %407, i64 noundef 13664, i32 noundef 1856124) #5
  %412 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %inst, align 8
  %ptrs207.2 = getelementptr inbounds %struct.nvkm_memory, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %ptrs207.2 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ptrs207.2, align 4
  %wr32208.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %wr32208.2 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %wr32208.2, align 4
  tail call void %417(ptr noundef %413, i64 noundef 13668, i32 noundef 1856124) #5
  %418 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %inst, align 8
  %ptrs207.3 = getelementptr inbounds %struct.nvkm_memory, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %ptrs207.3 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %ptrs207.3, align 4
  %wr32208.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %wr32208.3 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %wr32208.3, align 4
  tail call void %423(ptr noundef %419, i64 noundef 13672, i32 noundef 1856124) #5
  %424 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %inst, align 8
  %ptrs207.4 = getelementptr inbounds %struct.nvkm_memory, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %ptrs207.4 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ptrs207.4, align 4
  %wr32208.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %427, i32 0, i32 1
  %428 = ptrtoint ptr %wr32208.4 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %wr32208.4, align 4
  tail call void %429(ptr noundef %425, i64 noundef 13676, i32 noundef 1856124) #5
  %430 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %inst, align 8
  %ptrs207.5 = getelementptr inbounds %struct.nvkm_memory, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %ptrs207.5 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ptrs207.5, align 4
  %wr32208.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %wr32208.5 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %wr32208.5, align 4
  tail call void %435(ptr noundef %431, i64 noundef 13680, i32 noundef 1856124) #5
  %436 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %inst, align 8
  %ptrs207.6 = getelementptr inbounds %struct.nvkm_memory, ptr %437, i32 0, i32 1
  %438 = ptrtoint ptr %ptrs207.6 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ptrs207.6, align 4
  %wr32208.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %wr32208.6 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %wr32208.6, align 4
  tail call void %441(ptr noundef %437, i64 noundef 13684, i32 noundef 1856124) #5
  %442 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %inst, align 8
  %ptrs207.7 = getelementptr inbounds %struct.nvkm_memory, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %ptrs207.7 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ptrs207.7, align 4
  %wr32208.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %wr32208.7 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %wr32208.7, align 4
  tail call void %447(ptr noundef %443, i64 noundef 13688, i32 noundef 1856124) #5
  %448 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %inst, align 8
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %451, i32 0, i32 8
  %452 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %release, align 4
  tail call void %453(ptr noundef %449) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end153, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end153 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c", i32 208, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv20_gr_intr._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv20_gr_intr._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !4, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nv20_gr, !12, !"nv20_gr", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c", i32 345, i32 1}
!13 = !{ptr @nv20_gr_chan, !14, !"nv20_gr_chan", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c", i32 68, i32 1}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 5400567}
!25 = !{i64 2156298302}
!26 = !{i64 2156298704}
!27 = !{i64 5400149}
!28 = !{i64 2156299192}
!29 = !{i64 2156299577}
!30 = !{i64 2156299917}
!31 = !{i64 2156300329}
!32 = !{i64 2156302183}
!33 = !{i64 2156303403}
!34 = !{i64 2156304244}
!35 = !{i64 2156304646}
!36 = !{i64 2156305519}
!37 = !{i64 2156305921}
!38 = !{!"auto-init"}
!39 = !{i64 2156313072}
!40 = !{i64 2156313542}
!41 = !{i64 2156314010}
!42 = !{i64 2156314454}
!43 = !{i64 2156314892}
!44 = !{i64 2156315337}
!45 = !{i64 2156315775}
!46 = !{i64 2156316220}
!47 = !{i64 2156316656}
!48 = !{i64 2156317122}
!49 = !{i64 2156317567}
!50 = !{i64 2156318005}
!51 = !{i64 2156319694}
!52 = !{i64 2156320096}
!53 = !{i64 2156320498}
!54 = !{i64 2156320900}
!55 = !{i64 2156321302}
!56 = !{i64 2156321720}
!57 = !{i64 2156322065}
!58 = !{i64 2156322487}
!59 = !{i64 2156329503}
!60 = !{i64 2156330394}
!61 = !{i64 2156332248}
!62 = !{i64 2156333912}
!63 = !{i64 2156335766}
!64 = !{i64 2156337002}
!65 = !{i64 2156337430}
!66 = !{i64 2156337858}
!67 = !{i64 2156338286}
!68 = !{i64 2156338714}
!69 = !{i64 2156339142}
!70 = !{i64 2156339570}
!71 = !{i64 2156339983}
!72 = !{i64 2156340809}
!73 = !{i64 2156341222}
!74 = !{i64 2156341635}
!75 = !{i64 2156342048}
!76 = !{i64 2156342461}
!77 = !{i64 2156343287}
!78 = !{i64 2156343700}
!79 = !{i64 2156344113}
!80 = !{i64 2156344526}
!81 = !{i64 2156344954}
!82 = !{i64 2156345382}
!83 = !{i64 2156345810}
!84 = !{i64 2156346238}
!85 = !{i64 2156347424}
!86 = !{i64 2156347677}
!87 = !{i64 2156348046}
!88 = !{i64 2156349247}
!89 = !{i64 2156349500}
!90 = !{i64 2156349869}
!91 = !{i64 2156350297}
!92 = !{i64 2156350770}
!93 = !{i64 2156351113}
!94 = !{i64 2156351579}
!95 = !{i64 2156351922}
!96 = !{i64 2156353101}
!97 = !{i64 2156353354}
!98 = !{i64 2156354481}
!99 = !{i64 2156354734}
!100 = !{i64 2156355103}
!101 = !{i64 2156356304}
!102 = !{i64 2156356557}
!103 = !{i64 2156356926}
!104 = !{i64 2156358127}
!105 = !{i64 2156358380}
!106 = !{i64 2156358716}
!107 = !{i64 2156359102}
!108 = !{i64 2156359506}
!109 = !{i64 2156359919}
!110 = !{i64 2156360332}
!111 = !{i64 2156360745}
!112 = !{i64 2156361155}
!113 = !{i64 2156361556}
!114 = !{i64 2156361967}
!115 = !{i64 2156362383}
