; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.151 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.150 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.148, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.148 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nv40_gr_chan = type { %struct.nvkm_object, ptr, ptr, i32, %struct.list_head }
%struct.nv40_gr = type { %struct.nvkm_gr, i32, %struct.list_head }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@nv40_gr_object = dso_local constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv40_gr_object_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@nv40_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv40_gr_chan_dtor, ptr null, ptr @nv40_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv40_gr_chan_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@nv10_gr_intr_name = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv04_gr_nsource = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv10_gr_nstatus = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv40_gr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%08x %s] subc %d class %04x mthd %04x data %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv40_gr_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv40_gr_intr._entry_ptr = internal global ptr @nv40_gr_intr._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv40_gr_chan_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 114, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ctxprog timeout %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv40_gr_chan_fini\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nv40_gr_chan_fini._entry_ptr = internal global ptr @nv40_gr_chan_fini._entry, section ".printk_index", align 4
@nv40_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.151, [17 x %struct.nvkm_sclass] }, [116 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.151, [17 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv40_gr_init, ptr null, ptr @nv40_gr_intr, ptr @nv40_gr_tile, ptr null, ptr @nv40_gr_chan_new, ptr null, ptr @nv40_gr_units, ptr null, %struct.anon.151 zeroinitializer, [17 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12386, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12425, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12446, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 16535, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 73, i64 74, i64 75, i64 76, i64 78]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 68, i64 70, i64 74, i64 76, i64 78, i64 103]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 74, i64 78]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 64, i64 65, i64 66, i64 67, i64 69, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 64, i64 65, i64 66, i64 67, i64 69]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"nv40_gr_object\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 65, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"nv40_gr_chan\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 141, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 274, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 109, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 114, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"nv40_gr\00", align 1
@___asan_gen_.58 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 445, i32 1 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @nv40_gr_chan_fini._entry, ptr @nv40_gr_chan_fini._entry_ptr, ptr @nv40_gr_intr._entry, ptr @nv40_gr_intr._entry_ptr, ptr @nv40_gr_object, ptr @nv40_gr_chan, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nv40_gr], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_gr_object to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_gr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_gr_chan_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_gr to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nv40_gr_units(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_gr_object_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 20, i32 noundef %align, i1 noundef zeroext false, ptr noundef %parent, ptr noundef %pgpuobj) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgpuobj, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = tail call ptr %9(ptr noundef %5) #5
  %10 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgpuobj, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass, align 4
  tail call void %15(ptr noundef %11, i32 noundef 0, i32 noundef %17) #5
  %18 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pgpuobj, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %wr322 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %wr322 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr322, align 4
  tail call void %23(ptr noundef %19, i32 noundef 4, i32 noundef 0) #5
  %24 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pgpuobj, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %wr323 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %wr323 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr323, align 4
  tail call void %29(ptr noundef %25, i32 noundef 8, i32 noundef 0) #5
  %30 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pgpuobj, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rd32, align 4
  %call4 = tail call i32 %35(ptr noundef %31, i32 noundef 8) #5
  %36 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pgpuobj, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %wr325 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %wr325 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr325, align 4
  %or = or i32 %call4, 16777216
  tail call void %41(ptr noundef %37, i32 noundef 8, i32 noundef %or) #5
  %42 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pgpuobj, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %wr326 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %wr326 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr326, align 4
  tail call void %47(ptr noundef %43, i32 noundef 12, i32 noundef 0) #5
  %48 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pgpuobj, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %wr327 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %wr327 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wr327, align 4
  tail call void %53(ptr noundef %49, i32 noundef 16, i32 noundef 0) #5
  %54 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pgpuobj, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %release, align 4
  tail call void %59(ptr noundef %55) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_chan_new(ptr noundef %base, ptr noundef %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv40_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  %gr1 = getelementptr inbounds %struct.nv40_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %gr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %gr1, align 8
  %fifo = getelementptr inbounds %struct.nv40_gr_chan, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fifoch, ptr %fifo, align 4
  %3 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %pobject, align 4
  %lock = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %head = getelementptr inbounds %struct.nv40_gr_chan, ptr %call7.i.i, i32 0, i32 4
  %chan11 = getelementptr inbounds %struct.nv40_gr, ptr %base, i32 0, i32 2
  %4 = ptrtoint ptr %chan11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan11, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %chan11, ptr noundef %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nv40_gr_chan, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chan11, ptr %prev3.i.i, align 8
  %9 = ptrtoint ptr %chan11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %head, ptr %chan11, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %10 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gr1, align 8
  %lock15 = getelementptr inbounds %struct.nvkm_gr, ptr %11, i32 0, i32 1, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv40_gr_intr(ptr noundef %base) #0 align 64 {
entry:
  %msg = alloca [128 x i8], align 1
  %src = alloca [128 x i8], align 1
  %sta = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 4194560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4194568
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4194564
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 4195116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %and = and i32 %13, 1048575
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 4196100
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  %and26 = lshr i32 %16, 16
  %shr = and i32 %and26, 7
  %and27 = and i32 %16, 8188
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 4196104
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %shr, 2
  %add = or i32 %mul, 4194656
  %add.ptr35 = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %and38 = and i32 %22, 65535
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #5
  %23 = call ptr @memset(ptr %msg, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %src) #5
  %24 = call ptr @memset(ptr %src, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sta) #5
  %25 = call ptr @memset(ptr %sta, i32 255, i32 128)
  %lock = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 2
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chan48 = getelementptr inbounds %struct.nv40_gr, ptr %base, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %chan48, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %26 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp52.not = icmp eq ptr %.pn, %chan48
  br i1 %cmp52.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %inst54 = getelementptr i8, ptr %.pn, i32 -4
  %27 = ptrtoint ptr %inst54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inst54, align 8
  %shr55 = lshr i32 %28, 4
  %cmp56 = icmp eq i32 %shr55, %and
  br i1 %cmp56, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %temp.0.le = getelementptr i8, ptr %.pn, i32 -84
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %35 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %37 = ptrtoint ptr %chan48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan48, align 4
  %call.i.i166 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %chan48, ptr noundef %38) #5
  br i1 %call.i.i166, label %if.end.i.i167, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i.i167:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.pn, ptr %prev1.i.i, align 4
  %40 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %.pn, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %chan48, ptr %prev.i, align 4
  %42 = ptrtoint ptr %chan48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %.pn, ptr %chan48, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i167, %list_del.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %chan.0 = phi ptr [ %temp.0.le, %list_del.exit.for.end_crit_edge ], [ %temp.0.le, %if.end.i.i167 ], [ null, %for.cond.for.end_crit_edge ]
  %and66 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool.not = icmp eq i32 %and66, 0
  %and68 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %for.end.do.body85_crit_edge, label %if.then70

for.end.do.body85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body85

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %44, i32 4202496
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri, align 4
  %add.ptr81 = getelementptr i8, ptr %47, i32 4202496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %45) #5, !srcloc !43
  br label %do.body85

do.body85:                                        ; preds = %if.then70, %for.end.do.body85_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %49, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %4) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %51, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 1) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool95.not = icmp eq i32 %4, 0
  br i1 %tobool95.not, label %do.body85.if.end124_crit_edge, label %if.then96

do.body85.if.end124_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then96:                                        ; preds = %do.body85
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv10_gr_intr_name, i32 noundef %4) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %src, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %7) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %sta, i32 noundef 128, ptr noundef nonnull @nv10_gr_nstatus, i32 noundef %10) #5
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %52 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp100.not = icmp eq i32 %53, 0
  br i1 %cmp100.not, label %if.then96.if.end124_crit_edge, label %do.end105

if.then96.if.end124_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

do.end105:                                        ; preds = %if.then96
  %54 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  %tobool111.not = icmp eq ptr %chan.0, null
  br i1 %tobool111.not, label %do.end105.cond.end119_crit_edge, label %cond.true114

do.end105.cond.end119_crit_edge:                  ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end119

cond.true114:                                     ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #7
  %fifo = getelementptr inbounds %struct.nv40_gr_chan, ptr %chan.0, i32 0, i32 2
  %58 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fifo, align 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %chid, align 8
  %conv112 = zext i16 %61 to i32
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %59, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client, align 4
  %name116 = getelementptr inbounds %struct.nvkm_client, ptr %63, i32 0, i32 1
  br label %cond.end119

cond.end119:                                      ; preds = %cond.true114, %do.end105.cond.end119_crit_edge
  %cond170 = phi i32 [ %conv112, %cond.true114 ], [ -1, %do.end105.cond.end119_crit_edge ]
  %cond120 = phi ptr [ %name116, %cond.true114 ], [ @.str.5, %do.end105.cond.end119_crit_edge ]
  %shl171 = shl nuw nsw i32 %and, 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %4, ptr noundef nonnull %msg, i32 noundef %7, ptr noundef nonnull %src, i32 noundef %10, ptr noundef nonnull %sta, i32 noundef %cond170, i32 noundef %shl171, ptr noundef %cond120, i32 noundef %shr, i32 noundef %and38, i32 noundef %and27, i32 noundef %19) #9
  br label %if.end124

if.end124:                                        ; preds = %cond.end119, %if.then96.if.end124_crit_edge, %do.body85.if.end124_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sta) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %src) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_init(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %size = getelementptr inbounds %struct.nv40_gr, ptr %base, i32 0, i32 1
  %call = tail call i32 @nv40_grctx_init(ptr noundef %1, ptr noundef %size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 4195116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 4194620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 4194432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 4194432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 4194436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 1074956224) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 4194444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -522289067) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %17, i32 4194448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 32768) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %19, i32 4195856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 12467295) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %21, i32 4194628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 268501248) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %23, i32 4196116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 -1) #5, !srcloc !43
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %25, i32 5440
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %and = and i32 %26, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %do.body.if.end67_crit_edge, label %for.cond.preheader

do.body.if.end67_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

for.cond.preheader:                               ; preds = %do.body
  %and60423 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60423)
  %tobool61.not424 = icmp eq i32 %and60423, 0
  br i1 %tobool61.not424, label %for.cond.preheader.for.inc_crit_edge, label %for.cond.preheader.do.body62_crit_edge

for.cond.preheader.do.body62_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %i.0426 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %j.0425 = phi i32 [ %27, %for.inc.for.inc_crit_edge ], [ %and, %for.cond.preheader.for.inc_crit_edge ]
  %27 = lshr i32 %j.0425, 1
  %inc = add i32 %i.0426, 1
  %28 = and i32 %j.0425, 2
  %tobool61.not = icmp eq i32 %28, 0
  br i1 %tobool61.not, label %for.inc.for.inc_crit_edge, label %for.inc.do.body62_crit_edge

for.inc.do.body62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body62:                                        ; preds = %for.inc.do.body62_crit_edge, %for.cond.preheader.do.body62_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body62_crit_edge ], [ %inc, %for.inc.do.body62_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %30, i32 4214784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %i.0.lcssa) #5, !srcloc !43
  br label %if.end67

if.end67:                                         ; preds = %do.body62, %do.body.if.end67_crit_edge
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %32)
  %cmp = icmp eq i32 %32, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  br i1 %cmp, label %do.body69, label %do.body79

do.body69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr73 = getelementptr i8, ptr %34, i32 4196784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 -2094526465) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %36, i32 4196788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 160) #5, !srcloc !43
  br label %if.end89

do.body79:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr83 = getelementptr i8, ptr %34, i32 4196384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 -2094526721) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr88 = getelementptr i8, ptr %38, i32 4196388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 160) #5, !srcloc !43
  br label %if.end89

if.end89:                                         ; preds = %do.body79, %do.body69
  %39 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chipset, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.end89.do.body145_crit_edge [
    i32 64, label %if.end89.do.body91_crit_edge
    i32 69, label %if.end89.do.body91_crit_edge427
    i32 65, label %if.end89.do.body102_crit_edge
    i32 66, label %if.end89.do.body102_crit_edge428
    i32 67, label %do.body113
    i32 68, label %if.end89.do.body124_crit_edge
    i32 70, label %if.end89.do.body124_crit_edge429
    i32 74, label %if.end89.do.body124_crit_edge430
    i32 76, label %if.end89.do.body124_crit_edge431
    i32 78, label %if.end89.do.body124_crit_edge432
    i32 71, label %if.end89.do.body135_crit_edge
    i32 73, label %if.end89.do.body135_crit_edge433
    i32 75, label %if.end89.do.body135_crit_edge434
  ]

if.end89.do.body135_crit_edge434:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body135

if.end89.do.body135_crit_edge433:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body135

if.end89.do.body135_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body135

if.end89.do.body124_crit_edge432:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

if.end89.do.body124_crit_edge431:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

if.end89.do.body124_crit_edge430:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

if.end89.do.body124_crit_edge429:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

if.end89.do.body124_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

if.end89.do.body102_crit_edge428:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

if.end89.do.body102_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

if.end89.do.body91_crit_edge427:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body91

if.end89.do.body91_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body91

if.end89.do.body145_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body145

do.body91:                                        ; preds = %if.end89.do.body91_crit_edge, %if.end89.do.body91_crit_edge427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr95 = getelementptr i8, ptr %43, i32 4196792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 7922534) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr100 = getelementptr i8, ptr %45, i32 4196796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 332) #5, !srcloc !43
  br label %do.body145

do.body102:                                       ; preds = %if.end89.do.body102_crit_edge, %if.end89.do.body102_crit_edge428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri, align 4
  %add.ptr106 = getelementptr i8, ptr %47, i32 4196392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 7706367) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr111 = getelementptr i8, ptr %49, i32 4196396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 264) #5, !srcloc !43
  br label %do.body145

do.body113:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr117 = getelementptr i8, ptr %51, i32 4196392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 7523191) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri, align 4
  %add.ptr122 = getelementptr i8, ptr %53, i32 4196396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 264) #5, !srcloc !43
  br label %do.body145

do.body124:                                       ; preds = %if.end89.do.body124_crit_edge, %if.end89.do.body124_crit_edge429, %if.end89.do.body124_crit_edge430, %if.end89.do.body124_crit_edge431, %if.end89.do.body124_crit_edge432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %add.ptr128 = getelementptr i8, ptr %55, i32 4196448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri, align 4
  %add.ptr133 = getelementptr i8, ptr %57, i32 4196452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 0) #5, !srcloc !43
  br label %do.body145

do.body135:                                       ; preds = %if.end89.do.body135_crit_edge, %if.end89.do.body135_crit_edge433, %if.end89.do.body135_crit_edge434
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %add.ptr139 = getelementptr i8, ptr %59, i32 4196392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 126027280) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr144 = getelementptr i8, ptr %61, i32 4196396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 362) #5, !srcloc !43
  br label %do.body145

do.body145:                                       ; preds = %do.body135, %do.body124, %do.body113, %do.body102, %do.body91, %if.end89.do.body145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr149 = getelementptr i8, ptr %63, i32 4197176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 805304320) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr154 = getelementptr i8, ptr %65, i32 4197180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 24576) #5, !srcloc !43
  %66 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chipset, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %67, label %do.body145.sw.epilog190_crit_edge [
    i32 68, label %do.body145.do.body157_crit_edge
    i32 74, label %do.body145.do.body157_crit_edge435
    i32 70, label %do.body168
    i32 76, label %do.body145.do.body179_crit_edge
    i32 78, label %do.body145.do.body179_crit_edge436
    i32 103, label %do.body145.do.body179_crit_edge437
  ]

do.body145.do.body179_crit_edge437:               ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body179

do.body145.do.body179_crit_edge436:               ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body179

do.body145.do.body179_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body179

do.body145.do.body157_crit_edge435:               ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body157

do.body145.do.body157_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body157

do.body145.sw.epilog190_crit_edge:                ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog190

do.body157:                                       ; preds = %do.body145.do.body157_crit_edge, %do.body145.do.body157_crit_edge435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add.ptr161 = getelementptr i8, ptr %70, i32 4197316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 268687496) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr166 = getelementptr i8, ptr %72, i32 4197308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 -1213745920) #5, !srcloc !43
  br label %sw.epilog190

do.body168:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri, align 4
  %add.ptr172 = getelementptr i8, ptr %74, i32 4197316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 57380) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri, align 4
  %add.ptr177 = getelementptr i8, ptr %76, i32 4197308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 -1213745888) #5, !srcloc !43
  br label %sw.epilog190

do.body179:                                       ; preds = %do.body145.do.body179_crit_edge, %do.body145.do.body179_crit_edge436, %do.body145.do.body179_crit_edge437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add.ptr183 = getelementptr i8, ptr %78, i32 4197316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 268687496) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add.ptr188 = getelementptr i8, ptr %80, i32 4197308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 -1213745856) #5, !srcloc !43
  br label %sw.epilog190

sw.epilog190:                                     ; preds = %do.body179, %do.body168, %do.body157, %do.body145.sw.epilog190_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %resource_size, align 4
  %call191 = tail call i32 %84(ptr noundef %1, i32 noundef 1) #5
  %sub = add i32 %call191, -1
  %85 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chipset, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %86, label %do.body278 [
    i32 64, label %do.body194
    i32 65, label %sw.epilog190.do.body257_crit_edge
    i32 66, label %sw.epilog190.do.body257_crit_edge438
    i32 67, label %sw.epilog190.do.body257_crit_edge439
    i32 69, label %sw.epilog190.do.body257_crit_edge440
    i32 78, label %sw.epilog190.do.body257_crit_edge441
    i32 68, label %sw.epilog190.do.body257_crit_edge442
    i32 74, label %sw.epilog190.do.body257_crit_edge443
  ]

sw.epilog190.do.body257_crit_edge443:             ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

sw.epilog190.do.body257_crit_edge442:             ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

sw.epilog190.do.body257_crit_edge441:             ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

sw.epilog190.do.body257_crit_edge440:             ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

sw.epilog190.do.body257_crit_edge439:             ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

sw.epilog190.do.body257_crit_edge438:             ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

sw.epilog190.do.body257_crit_edge:                ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

do.body194:                                       ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri, align 4
  %add.ptr199 = getelementptr i8, ptr %89, i32 1049088
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %91 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri, align 4
  %add.ptr203 = getelementptr i8, ptr %92, i32 4196772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %90) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri, align 4
  %add.ptr209 = getelementptr i8, ptr %94, i32 1049092
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %96 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri, align 4
  %add.ptr213 = getelementptr i8, ptr %97, i32 4196776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 %95) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri, align 4
  %add.ptr219 = getelementptr i8, ptr %99, i32 1049088
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %101 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri, align 4
  %add.ptr223 = getelementptr i8, ptr %102, i32 4221348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 %100) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri, align 4
  %add.ptr229 = getelementptr i8, ptr %104, i32 1049092
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %106 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri, align 4
  %add.ptr233 = getelementptr i8, ptr %107, i32 4221352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr233, i32 %105) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr238 = getelementptr i8, ptr %109, i32 4196384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr238, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri, align 4
  %add.ptr243 = getelementptr i8, ptr %111, i32 4196388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri, align 4
  %add.ptr248 = getelementptr i8, ptr %113, i32 4196452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 %sub) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri, align 4
  %add.ptr253 = getelementptr i8, ptr %115, i32 4196456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %sub) #5, !srcloc !43
  br label %cleanup

do.body257:                                       ; preds = %sw.epilog190.do.body257_crit_edge, %sw.epilog190.do.body257_crit_edge438, %sw.epilog190.do.body257_crit_edge439, %sw.epilog190.do.body257_crit_edge440, %sw.epilog190.do.body257_crit_edge441, %sw.epilog190.do.body257_crit_edge442, %sw.epilog190.do.body257_crit_edge443
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri, align 4
  %add.ptr262 = getelementptr i8, ptr %117, i32 1049088
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr262) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %119 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri, align 4
  %add.ptr266 = getelementptr i8, ptr %120, i32 4196848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 %118) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %121 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pri, align 4
  %add.ptr272 = getelementptr i8, ptr %122, i32 1049092
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add.ptr276 = getelementptr i8, ptr %125, i32 4196852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr276, i32 %123) #5, !srcloc !43
  br label %do.body299

do.body278:                                       ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pri, align 4
  %add.ptr283 = getelementptr i8, ptr %127, i32 1049088
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr283) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %129 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pri, align 4
  %add.ptr287 = getelementptr i8, ptr %130, i32 4197872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 %128) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pri, align 4
  %add.ptr293 = getelementptr i8, ptr %132, i32 1049092
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr293) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %134 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pri, align 4
  %add.ptr297 = getelementptr i8, ptr %135, i32 4197876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr297, i32 %133) #5, !srcloc !43
  br label %do.body299

do.body299:                                       ; preds = %do.body278, %do.body257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri, align 4
  %add.ptr304 = getelementptr i8, ptr %137, i32 1049088
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr304) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %139 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pri, align 4
  %add.ptr308 = getelementptr i8, ptr %140, i32 4221424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr308, i32 %138) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pri, align 4
  %add.ptr314 = getelementptr i8, ptr %142, i32 1049092
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %144 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri, align 4
  %add.ptr318 = getelementptr i8, ptr %145, i32 4221428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr318, i32 %143) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri, align 4
  %add.ptr323 = getelementptr i8, ptr %147, i32 4196416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr323, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri, align 4
  %add.ptr328 = getelementptr i8, ptr %149, i32 4196420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr328, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pri, align 4
  %add.ptr333 = getelementptr i8, ptr %151, i32 4196512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 %sub) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri, align 4
  %add.ptr338 = getelementptr i8, ptr %153, i32 4196516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr338, i32 %sub) #5, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %do.body299, %do.body194, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.body299 ], [ 0, %do.body194 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_grctx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #8
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
  %chan = getelementptr inbounds %struct.nv40_gr, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chan, ptr %chan, align 8
  %prev.i = getelementptr inbounds %struct.nv40_gr, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chan, ptr %prev.i, align 4
  %call2 = tail call i32 @nvkm_gr_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv40_gr_new_.exit_crit_edge, label %if.end.i

entry.nv40_gr_new_.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pgr, align 4
  %chan.i = getelementptr inbounds %struct.nv40_gr, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chan.i, ptr %chan.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nv40_gr, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chan.i, ptr %prev.i.i, align 4
  %call2.i = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv40_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i.i) #5
  br label %nv40_gr_new_.exit

nv40_gr_new_.exit:                                ; preds = %if.end.i, %entry.nv40_gr_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -12, %entry.nv40_gr_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv40_gr_chan_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr, align 8
  %lock = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %head = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gr, align 8
  %lock9 = getelementptr inbounds %struct.nvkm_gr, ptr %11, i32 0, i32 1, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9, i32 noundef %call3) #5
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_gr_chan_fini(ptr nocapture noundef readonly %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %inst4 = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 3
  %4 = ptrtoint ptr %inst4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst4, align 8
  %shr = lshr i32 %5, 4
  %or = or i32 %shr, 16777216
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4196128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %and = and i32 %8, -2
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %and) #5, !srcloc !43
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 4195116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %or)
  %cmp = icmp eq i32 %13, %or
  br i1 %cmp, label %if.then, label %entry.if.end142_crit_edge

entry.if.end142_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then:                                          ; preds = %entry
  br i1 %suspend, label %do.body17, label %if.then.if.end125_crit_edge

if.then.if.end125_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

do.body17:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 4196228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or) #5, !srcloc !43
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 4195088
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %or39 = or i32 %20, 32
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %22, i32 4195088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %or39) #5, !srcloc !43
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %24, i32 4195076
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %or55 = or i32 %25, 1
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr57 = getelementptr i8, ptr %27, i32 4195076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %or55) #5, !srcloc !43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %28 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body59

do.body59:                                        ; preds = %do.cond68.do.body59_crit_edge, %do.body17
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr62 = getelementptr i8, ptr %30, i32 4195072
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %and65 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end104.thread, label %do.cond68

if.end104.thread:                                 ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %if.end125

do.cond68:                                        ; preds = %do.body59
  %call69 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp70 = icmp sgt i64 %call69, -1
  br i1 %cmp70, label %do.cond68.do.body59_crit_edge, label %do.end82

do.cond68.do.body59_crit_edge:                    ; preds = %do.cond68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

do.end82:                                         ; preds = %do.cond68
  %32 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_wait, align 8
  %device84 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device84, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %call85 = call ptr @dev_driver_string(ptr noundef %37) #5
  %38 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_wait, align 8
  %device88 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device88, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev89, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end82.if.then107_crit_edge

do.end82.if.then107_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then107

if.end.i:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %if.then107

if.then107:                                       ; preds = %if.end.i, %do.end82.if.then107_crit_edge
  %retval.0.i = phi ptr [ %47, %if.end.i ], [ %45, %do.end82.if.then107_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call85, ptr noundef %retval.0.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr110 = getelementptr i8, ptr %49, i32 4195080
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 5
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp114 = icmp ugt i32 %52, 1
  br i1 %cmp114, label %do.end118, label %if.then107.if.end125_crit_edge

if.then107.if.end125_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

do.end118:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device3, align 4
  %dev120 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev120, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %56, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %50) #9
  br label %if.end125

if.end125:                                        ; preds = %do.end118, %if.then107.if.end125_crit_edge, %if.end104.thread, %if.then.if.end125_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.if.end125_crit_edge ], [ -16, %do.end118 ], [ -16, %if.then107.if.end125_crit_edge ], [ 0, %if.end104.thread ]
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr131 = getelementptr i8, ptr %58, i32 4195116
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  call void @arm_heavy_mb() #5
  %and137 = and i32 %59, -16777217
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr140 = getelementptr i8, ptr %61, i32 4195116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %and137) #5, !srcloc !43
  br label %if.end142

if.end142:                                        ; preds = %if.end125, %entry.if.end142_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end125 ], [ 0, %entry.if.end142_crit_edge ]
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr145 = getelementptr i8, ptr %63, i32 4195120
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %or)
  %cmp148 = icmp eq i32 %64, %or
  br i1 %cmp148, label %if.then149, label %if.end142.if.end166_crit_edge

if.end142.if.end166_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.then149:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr155 = getelementptr i8, ptr %66, i32 4195120
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  call void @arm_heavy_mb() #5
  %and161 = and i32 %67, -16777217
  %68 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri, align 4
  %add.ptr164 = getelementptr i8, ptr %69, i32 4195120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %and161) #5, !srcloc !43
  br label %if.end166

if.end166:                                        ; preds = %if.then149, %if.end142.if.end166_crit_edge
  %70 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri, align 4
  %add.ptr172 = getelementptr i8, ptr %71, i32 4196128
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  call void @arm_heavy_mb() #5
  %or179 = or i32 %72, 1
  %73 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri, align 4
  %add.ptr181 = getelementptr i8, ptr %74, i32 4196128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %or179) #5, !srcloc !43
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_gr_chan_bind(ptr nocapture noundef %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %size = getelementptr inbounds %struct.nv40_gr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef %5, i32 noundef %align, i1 noundef zeroext true, ptr noundef %parent, ptr noundef %pgpuobj) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgpuobj, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %addr, align 8
  %conv = trunc i64 %9 to i32
  %inst = getelementptr inbounds %struct.nv40_gr_chan, ptr %object, i32 0, i32 3
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %inst, align 8
  %11 = load ptr, ptr %pgpuobj, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call2 = tail call ptr %15(ptr noundef %11) #5
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pgpuobj, align 4
  tail call void @nv40_grctx_fill(ptr noundef %17, ptr noundef %19) #5
  %20 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pgpuobj, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr32, align 4
  %26 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inst, align 8
  %shr = lshr i32 %27, 4
  tail call void %25(ptr noundef %21, i32 noundef 0, i32 noundef %shr) #5
  %28 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pgpuobj, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %release, align 4
  tail call void %33(ptr noundef %29) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_grctx_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_gr_tile(ptr noundef %base, i32 noundef %i, ptr nocapture noundef readonly %tile) #0 align 64 {
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
  store i32 -1, ptr %flags, align 4, !annotation !125
  call void @nvkm_fifo_pause(ptr noundef %3, ptr noundef nonnull %flags) #5
  %call = call zeroext i1 @nv04_gr_idle(ptr noundef %base) #5
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipset, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %6, label %do.end149 [
    i32 64, label %entry.do.body_crit_edge
    i32 65, label %entry.do.body_crit_edge220
    i32 66, label %entry.do.body_crit_edge221
    i32 67, label %entry.do.body_crit_edge222
    i32 69, label %entry.do.body_crit_edge223
    i32 71, label %entry.do.body79_crit_edge
    i32 73, label %entry.do.body79_crit_edge224
    i32 75, label %entry.do.body79_crit_edge225
  ]

entry.do.body79_crit_edge225:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body79

entry.do.body79_crit_edge224:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body79

entry.do.body79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body79

entry.do.body_crit_edge223:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge222:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge221:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge220:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge220, %entry.do.body_crit_edge221, %entry.do.body_crit_edge222, %entry.do.body_crit_edge223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  call void @arm_heavy_mb() #5
  %pitch = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %8 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pitch, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i, 4
  %add = add i32 %mul, 4196616
  %add.ptr5 = getelementptr i8, ptr %11, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  call void @arm_heavy_mb() #5
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %12 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %limit, align 4
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add11 = add i32 %mul, 4196612
  %add.ptr12 = getelementptr i8, ptr %15, i32 %add11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void @arm_heavy_mb() #5
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add18 = add i32 %mul, 4196608
  %add.ptr19 = getelementptr i8, ptr %19, i32 %add18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %17) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pitch, align 4
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add26 = add i32 %mul, 4221192
  %add.ptr27 = getelementptr i8, ptr %23, i32 %add26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %21) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %limit, align 4
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add34 = add i32 %mul, 4221188
  %add.ptr35 = getelementptr i8, ptr %27, i32 %add34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %25) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add42 = add i32 %mul, 4221184
  %add.ptr43 = getelementptr i8, ptr %31, i32 %add42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %29) #5, !srcloc !43
  %32 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chipset, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %33, label %do.body.sw.epilog162_crit_edge [
    i32 64, label %do.body.do.body46_crit_edge
    i32 69, label %do.body.do.body46_crit_edge226
    i32 65, label %do.body.do.body62_crit_edge
    i32 66, label %do.body.do.body62_crit_edge227
    i32 67, label %do.body.do.body62_crit_edge228
  ]

do.body.do.body62_crit_edge228:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

do.body.do.body62_crit_edge227:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

do.body.do.body62_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

do.body.do.body46_crit_edge226:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

do.body.do.body46_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

do.body.sw.epilog162_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog162

do.body46:                                        ; preds = %do.body.do.body46_crit_edge, %do.body.do.body46_crit_edge226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  call void @arm_heavy_mb() #5
  %zcomp = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %35 = ptrtoint ptr %zcomp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %zcomp, align 4
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %mul50 = shl i32 %i, 2
  %add51 = add i32 %mul50, 4196736
  %add.ptr52 = getelementptr i8, ptr %38, i32 %add51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %36) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %zcomp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %zcomp, align 4
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add59 = add i32 %mul50, 4221312
  %add.ptr60 = getelementptr i8, ptr %42, i32 %add59
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %40) #5, !srcloc !43
  br label %sw.epilog162

do.body62:                                        ; preds = %do.body.do.body62_crit_edge, %do.body.do.body62_crit_edge227, %do.body.do.body62_crit_edge228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %zcomp65 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %43 = ptrtoint ptr %zcomp65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %zcomp65, align 4
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %mul67 = shl i32 %i, 2
  %add68 = add i32 %mul67, 4196800
  %add.ptr69 = getelementptr i8, ptr %46, i32 %add68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %44) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %zcomp65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %zcomp65, align 4
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add76 = add i32 %mul67, 4221376
  %add.ptr77 = getelementptr i8, ptr %50, i32 %add76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %48) #5, !srcloc !43
  br label %sw.epilog162

do.body79:                                        ; preds = %entry.do.body79_crit_edge, %entry.do.body79_crit_edge224, %entry.do.body79_crit_edge225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  call void @arm_heavy_mb() #5
  %pitch82 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %51 = ptrtoint ptr %pitch82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pitch82, align 4
  %pri83 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri83, align 4
  %mul84 = shl i32 %i, 4
  %add85 = add i32 %mul84, 4197640
  %add.ptr86 = getelementptr i8, ptr %54, i32 %add85
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %52) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  call void @arm_heavy_mb() #5
  %limit90 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %55 = ptrtoint ptr %limit90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %limit90, align 4
  %57 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri83, align 4
  %add93 = add i32 %mul84, 4197636
  %add.ptr94 = getelementptr i8, ptr %58, i32 %add93
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %56) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  call void @arm_heavy_mb() #5
  %addr98 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %59 = ptrtoint ptr %addr98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr98, align 4
  %61 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri83, align 4
  %add101 = add i32 %mul84, 4197632
  %add.ptr102 = getelementptr i8, ptr %62, i32 %add101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %60) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %pitch82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pitch82, align 4
  %65 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri83, align 4
  %add109 = add i32 %mul84, 4221192
  %add.ptr110 = getelementptr i8, ptr %66, i32 %add109
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %64) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %limit90 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %limit90, align 4
  %69 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri83, align 4
  %add117 = add i32 %mul84, 4221188
  %add.ptr118 = getelementptr i8, ptr %70, i32 %add117
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %68) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %addr98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr98, align 4
  %73 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri83, align 4
  %add125 = add i32 %mul84, 4221184
  %add.ptr126 = getelementptr i8, ptr %74, i32 %add125
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %72) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  call void @arm_heavy_mb() #5
  %zcomp130 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %75 = ptrtoint ptr %zcomp130 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %zcomp130, align 4
  %77 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri83, align 4
  %mul132 = shl i32 %i, 2
  %add133 = add i32 %mul132, 4197888
  %add.ptr134 = getelementptr i8, ptr %78, i32 %add133
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %76) #5, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %zcomp130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %zcomp130, align 4
  %81 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri83, align 4
  %add141 = add i32 %mul132, 4221120
  %add.ptr142 = getelementptr i8, ptr %82, i32 %add141
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %80) #5, !srcloc !43
  br label %sw.epilog162

do.end149:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 224, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog162

sw.epilog162:                                     ; preds = %do.end149, %do.body79, %do.body62, %do.body46, %do.body.sw.epilog162_crit_edge
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @nv40_gr_object, !1, !"nv40_gr_object", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c", i32 65, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c", i32 274, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv40_gr_intr._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv40_gr_intr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nv40_gr_chan, !12, !"nv40_gr_chan", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c", i32 141, i32 1}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c", i32 109, i32 8}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c", i32 114, i32 5}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nv40_gr_chan_fini._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @nv40_gr_chan_fini._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @nv40_gr, !22, !"nv40_gr", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c", i32 445, i32 1}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 5402739}
!33 = !{i64 2156294009}
!34 = !{i64 2156327513}
!35 = !{i64 2156327915}
!36 = !{i64 2156328317}
!37 = !{i64 2156328702}
!38 = !{i64 2156329104}
!39 = !{i64 2156329506}
!40 = !{i64 2156329924}
!41 = !{i64 2156334248}
!42 = !{i64 2156334614}
!43 = !{i64 5402321}
!44 = !{i64 2156335044}
!45 = !{i64 2156335466}
!46 = !{i64 2156341367}
!47 = !{i64 2156341795}
!48 = !{i64 2156342223}
!49 = !{i64 2156342651}
!50 = !{i64 2156343079}
!51 = !{i64 2156343507}
!52 = !{i64 2156343935}
!53 = !{i64 2156344363}
!54 = !{i64 2156344791}
!55 = !{i64 2156345219}
!56 = !{i64 2156345647}
!57 = !{i64 2156346097}
!58 = !{i64 2156346421}
!59 = !{i64 2156347238}
!60 = !{i64 2156348064}
!61 = !{i64 2156348477}
!62 = !{i64 2156348890}
!63 = !{i64 2156349303}
!64 = !{i64 2156349716}
!65 = !{i64 2156350129}
!66 = !{i64 2156350542}
!67 = !{i64 2156350937}
!68 = !{i64 2156351323}
!69 = !{i64 2156351727}
!70 = !{i64 2156352140}
!71 = !{i64 2156352553}
!72 = !{i64 2156352966}
!73 = !{i64 2156353379}
!74 = !{i64 2156353792}
!75 = !{i64 2156354205}
!76 = !{i64 2156354618}
!77 = !{i64 2156355031}
!78 = !{i64 2156355444}
!79 = !{i64 2156356630}
!80 = !{i64 2156356883}
!81 = !{i64 2156358010}
!82 = !{i64 2156358263}
!83 = !{i64 2156359390}
!84 = !{i64 2156359643}
!85 = !{i64 2156360770}
!86 = !{i64 2156361023}
!87 = !{i64 2156361359}
!88 = !{i64 2156361745}
!89 = !{i64 2156362141}
!90 = !{i64 2156362542}
!91 = !{i64 2156363724}
!92 = !{i64 2156363977}
!93 = !{i64 2156365104}
!94 = !{i64 2156365357}
!95 = !{i64 2156366484}
!96 = !{i64 2156366737}
!97 = !{i64 2156367864}
!98 = !{i64 2156368117}
!99 = !{i64 2156369244}
!100 = !{i64 2156369497}
!101 = !{i64 2156370624}
!102 = !{i64 2156370877}
!103 = !{i64 2156371213}
!104 = !{i64 2156371599}
!105 = !{i64 2156371995}
!106 = !{i64 2156372396}
!107 = !{i64 2156298443}
!108 = !{i64 2156298845}
!109 = !{i64 2156299333}
!110 = !{i64 2156299675}
!111 = !{i64 2156300076}
!112 = !{i64 2156300911}
!113 = !{i64 2156301313}
!114 = !{i64 2156302186}
!115 = !{i64 2156302588}
!116 = !{i64 2156304507}
!117 = !{i64 2156305785}
!118 = !{i64 2156308811}
!119 = !{i64 2156309213}
!120 = !{i64 2156309701}
!121 = !{i64 2156310471}
!122 = !{i64 2156310873}
!123 = !{i64 2156311746}
!124 = !{i64 2156312148}
!125 = !{!"auto-init"}
!126 = !{i64 2156317342}
!127 = !{i64 2156317812}
!128 = !{i64 2156318280}
!129 = !{i64 2156318749}
!130 = !{i64 2156319219}
!131 = !{i64 2156319687}
!132 = !{i64 2156320153}
!133 = !{i64 2156320620}
!134 = !{i64 2156321087}
!135 = !{i64 2156321554}
!136 = !{i64 2156322024}
!137 = !{i64 2156322494}
!138 = !{i64 2156322962}
!139 = !{i64 2156323431}
!140 = !{i64 2156323901}
!141 = !{i64 2156324369}
!142 = !{i64 2156324835}
!143 = !{i64 2156325302}
