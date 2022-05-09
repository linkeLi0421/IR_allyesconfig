; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_conn = type { ptr, i32, %struct.nvbios_connE, %struct.nvkm_notify, %struct.list_head }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_gpio_ntfy_req = type { i8, i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.137 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpio = type { ptr, %struct.nvkm_subdev, %struct.nvkm_event }
%struct.nvif_notify_conn_rep_v0 = type { i8, i8, [6 x i8] }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_conn_ctor.hpd = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\07\08QR^_`", [25 x i8] zeroinitializer }, align 32
@nvkm_conn_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: conn %02x:%02x%02x: type %02x loc %d hpd %02x dp %x di %x sr %x lcdid %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_conn_ctor\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_conn_ctor._entry_ptr = internal global ptr @nvkm_conn_ctor._entry, section ".printk_index", align 4
@nvkm_conn_ctor._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: conn %02x:%02x%02x: hpd %02x unknown\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_conn_ctor._entry_ptr.8 = internal global ptr @nvkm_conn_ctor._entry.5, section ".printk_index", align 4
@nvkm_conn_ctor._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 104, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: conn %02x:%02x%02x: func %02x lookup failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_conn_ctor._entry_ptr.11 = internal global ptr @nvkm_conn_ctor._entry.9, section ".printk_index", align 4
@nvkm_conn_ctor._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: conn %02x:%02x%02x: func %02x failed, %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nvkm_conn_ctor._entry_ptr.14 = internal global ptr @nvkm_conn_ctor._entry.12, section ".printk_index", align 4
@nvkm_conn_ctor._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: conn %02x:%02x%02x: func %02x (HPD)\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_conn_ctor._entry_ptr.17 = internal global ptr @nvkm_conn_ctor._entry.15, section ".printk_index", align 4
@nvkm_conn_hpd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: conn %02x:%02x%02x: HPD: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_conn_hpd\00", [18 x i8] zeroinitializer }, align 32
@nvkm_conn_hpd._entry_ptr = internal global ptr @nvkm_conn_hpd._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 81, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 90, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 96, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 103, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 117, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 119, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 42, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @nvkm_conn_ctor._entry, ptr @nvkm_conn_ctor._entry.12, ptr @nvkm_conn_ctor._entry.15, ptr @nvkm_conn_ctor._entry.5, ptr @nvkm_conn_ctor._entry.9, ptr @nvkm_conn_ctor._entry_ptr, ptr @nvkm_conn_ctor._entry_ptr.11, ptr @nvkm_conn_ctor._entry_ptr.14, ptr @nvkm_conn_ctor._entry_ptr.17, ptr @nvkm_conn_ctor._entry_ptr.8, ptr @nvkm_conn_hpd._entry, ptr @nvkm_conn_hpd._entry_ptr, ptr @nvkm_conn_ctor.hpd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_ctor.hpd to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_ctor._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_ctor._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_ctor._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_ctor._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_conn_hpd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_conn_fini(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd = getelementptr inbounds %struct.nvkm_conn, ptr %conn, i32 0, i32 3
  tail call void @nvkm_notify_put(ptr noundef %hpd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_conn_init(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd = getelementptr inbounds %struct.nvkm_conn, ptr %conn, i32 0, i32 3
  tail call void @nvkm_notify_get(ptr noundef %hpd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_conn_del(ptr nocapture noundef %pconn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pconn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pconn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hpd = getelementptr inbounds %struct.nvkm_conn, ptr %1, i32 0, i32 3
  tail call void @nvkm_notify_fini(ptr noundef %hpd) #6
  %2 = ptrtoint ptr %pconn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pconn, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %pconn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pconn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_conn_new(ptr noundef %disp, i32 noundef %index, ptr nocapture noundef %info, ptr nocapture noundef writeonly %pconn) local_unnamed_addr #0 align 64 {
entry:
  %func.i = alloca %struct.dcb_gpio_func, align 1
  %.compoundliteral.i = alloca %struct.nvkm_gpio_ntfy_req, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #9
  %1 = ptrtoint ptr %pconn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pconn, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %.compoundliteral.i)
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %gpio1.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio1.i, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func.i) #6
  %6 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %func.i, i32 255, i32 5)
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %disp, ptr %call7.i.i, align 8
  %index3.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index, ptr %index3.i, align 4
  %info4.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %info4.i, ptr %info, i32 7)
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 5
  %11 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp ugt i32 %12, 3
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 4
  %location.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %location.i, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %info4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %info4.i, align 8
  %conv14.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %info, align 1
  %conv16.i = zext i8 %20 to i32
  %location17.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %location17.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %location17.i, align 1
  %conv18.i = zext i8 %22 to i32
  %hpd.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 2
  %23 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hpd.i, align 1
  %conv19.i = zext i8 %24 to i32
  %dp.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 3
  %25 = ptrtoint ptr %dp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp.i, align 1
  %conv20.i = zext i8 %26 to i32
  %di.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %di.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %di.i, align 1
  %conv21.i = zext i8 %28 to i32
  %sr.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 5
  %29 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sr.i, align 1
  %conv22.i = zext i8 %30 to i32
  %lcdid.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 6
  %31 = ptrtoint ptr %lcdid.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lcdid.i, align 1
  %conv23.i = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %index, i32 noundef %conv.i, i32 noundef %conv14.i, i32 noundef %conv16.i, i32 noundef %conv18.i, i32 noundef %conv19.i, i32 noundef %conv20.i, i32 noundef %conv21.i, i32 noundef %conv22.i, i32 noundef %conv23.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %hpd28.i = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 2
  %33 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hpd28.i, align 1
  %35 = tail call i8 @llvm.cttz.i8(i8 %34, i1 true) #6, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %iszero.i = icmp eq i8 %34, 0
  %36 = add nuw nsw i8 %35, 1
  %conv30.i = select i1 %iszero.i, i8 0, i8 %36
  %37 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv30.i, ptr %hpd28.i, align 1
  br i1 %iszero.i, label %if.end.i.nvkm_conn_ctor.exit_crit_edge, label %if.then32.i

if.end.i.nvkm_conn_ctor.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_conn_ctor.exit

if.then32.i:                                      ; preds = %if.end.i
  %dec.i = add nsw i8 %conv30.i, -1
  %38 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %dec.i, ptr %hpd28.i, align 1
  %conv34.i = zext i8 %dec.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %dec.i)
  %cmp35.i = icmp ugt i8 %dec.i, 6
  br i1 %cmp35.i, label %do.body38.i, label %if.end70.i

do.body38.i:                                      ; preds = %if.then32.i
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %debug45.i = getelementptr inbounds %struct.nvkm_disp, ptr %40, i32 0, i32 1, i32 1, i32 5
  %41 = ptrtoint ptr %debug45.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp46.not.i = icmp eq i32 %42, 0
  br i1 %cmp46.not.i, label %do.body38.i.nvkm_conn_ctor.exit_crit_edge, label %do.end51.i

do.body38.i.nvkm_conn_ctor.exit_crit_edge:        ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_conn_ctor.exit

do.end51.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  %device52.i = getelementptr inbounds %struct.nvkm_disp, ptr %40, i32 0, i32 1, i32 1, i32 1
  %43 = ptrtoint ptr %device52.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device52.i, align 4
  %dev53.i = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev53.i, align 8
  %name54.i = getelementptr inbounds %struct.nvkm_disp, ptr %40, i32 0, i32 1, i32 1, i32 4
  %47 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index3.i, align 4
  %location58.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %location58.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %location58.i, align 1
  %conv59.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %info4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %info4.i, align 8
  %conv62.i = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.6, ptr noundef %name54.i, i32 noundef %48, i32 noundef %conv59.i, i32 noundef %conv62.i, i32 noundef %conv34.i) #10
  br label %nvkm_conn_ctor.exit

if.end70.i:                                       ; preds = %if.then32.i
  %arrayidx.i = getelementptr [7 x i8], ptr @nvkm_conn_ctor.hpd, i32 0, i32 %conv34.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  %55 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %hpd28.i, align 1
  %call.i = call i32 @nvkm_gpio_find(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %54, i8 noundef zeroext -1, ptr noundef nonnull %func.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool74.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool74.not.i, label %if.end108.i, label %do.body76.i

do.body76.i:                                      ; preds = %if.end70.i
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %debug83.i = getelementptr inbounds %struct.nvkm_disp, ptr %57, i32 0, i32 1, i32 1, i32 5
  %58 = ptrtoint ptr %debug83.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp84.not.i = icmp eq i32 %59, 0
  br i1 %cmp84.not.i, label %do.body76.i.nvkm_conn_ctor.exit_crit_edge, label %do.end89.i

do.body76.i.nvkm_conn_ctor.exit_crit_edge:        ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_conn_ctor.exit

do.end89.i:                                       ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #8
  %device90.i = getelementptr inbounds %struct.nvkm_disp, ptr %57, i32 0, i32 1, i32 1, i32 1
  %60 = ptrtoint ptr %device90.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device90.i, align 4
  %dev91.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev91.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev91.i, align 8
  %name92.i = getelementptr inbounds %struct.nvkm_disp, ptr %57, i32 0, i32 1, i32 1, i32 4
  %64 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index3.i, align 4
  %location96.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %location96.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %location96.i, align 1
  %conv97.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %info4.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %info4.i, align 8
  %conv100.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %hpd28.i, align 1
  %conv102.i = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.10, ptr noundef %name92.i, i32 noundef %65, i32 noundef %conv97.i, i32 noundef %conv100.i, i32 noundef %conv102.i, i32 noundef %call.i) #10
  br label %nvkm_conn_ctor.exit

if.end108.i:                                      ; preds = %if.end70.i
  %event.i = getelementptr inbounds %struct.nvkm_gpio, ptr %5, i32 0, i32 2
  %72 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 3, ptr %.compoundliteral.i, align 1
  %line.i = getelementptr inbounds %struct.nvkm_gpio_ntfy_req, ptr %.compoundliteral.i, i32 0, i32 1
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %6, align 1
  %75 = ptrtoint ptr %line.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %line.i, align 1
  %hpd110.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 3
  %call111.i = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %event.i, ptr noundef nonnull @nvkm_conn_hpd, i1 noundef zeroext true, ptr noundef nonnull %.compoundliteral.i, i32 noundef 2, i32 noundef 1, ptr noundef %hpd110.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call7.i.i, align 8
  %debug153.i = getelementptr inbounds %struct.nvkm_disp, ptr %77, i32 0, i32 1, i32 1, i32 5
  %78 = ptrtoint ptr %debug153.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debug153.i, align 4
  br i1 %tobool112.not.i, label %do.body146.i, label %do.body114.i

do.body114.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp122.not.i = icmp eq i32 %79, 0
  br i1 %cmp122.not.i, label %do.body114.i.nvkm_conn_ctor.exit_crit_edge, label %do.end127.i

do.body114.i.nvkm_conn_ctor.exit_crit_edge:       ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_conn_ctor.exit

do.end127.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #8
  %device128.i = getelementptr inbounds %struct.nvkm_disp, ptr %77, i32 0, i32 1, i32 1, i32 1
  %80 = ptrtoint ptr %device128.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device128.i, align 4
  %dev129.i = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev129.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev129.i, align 8
  %name130.i = getelementptr inbounds %struct.nvkm_disp, ptr %77, i32 0, i32 1, i32 1, i32 4
  %84 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index3.i, align 4
  %location134.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %location134.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %location134.i, align 1
  %conv135.i = zext i8 %87 to i32
  %88 = ptrtoint ptr %info4.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %info4.i, align 8
  %conv138.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %hpd28.i, align 1
  %conv140.i = zext i8 %91 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.13, ptr noundef %name130.i, i32 noundef %85, i32 noundef %conv135.i, i32 noundef %conv138.i, i32 noundef %conv140.i, i32 noundef %call111.i) #10
  br label %nvkm_conn_ctor.exit

do.body146.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp154.i = icmp ugt i32 %79, 3
  br i1 %cmp154.i, label %do.end159.i, label %do.body146.i.nvkm_conn_ctor.exit_crit_edge

do.body146.i.nvkm_conn_ctor.exit_crit_edge:       ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_conn_ctor.exit

do.end159.i:                                      ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #8
  %device160.i = getelementptr inbounds %struct.nvkm_disp, ptr %77, i32 0, i32 1, i32 1, i32 1
  %92 = ptrtoint ptr %device160.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device160.i, align 4
  %dev161.i = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dev161.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev161.i, align 8
  %name162.i = getelementptr inbounds %struct.nvkm_disp, ptr %77, i32 0, i32 1, i32 1, i32 4
  %96 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index3.i, align 4
  %location166.i = getelementptr inbounds %struct.nvkm_conn, ptr %call7.i.i, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %location166.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %location166.i, align 1
  %conv167.i = zext i8 %99 to i32
  %100 = ptrtoint ptr %info4.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %info4.i, align 8
  %conv170.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %hpd28.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %hpd28.i, align 1
  %conv172.i = zext i8 %103 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.16, ptr noundef %name162.i, i32 noundef %97, i32 noundef %conv167.i, i32 noundef %conv170.i, i32 noundef %conv172.i) #10
  br label %nvkm_conn_ctor.exit

nvkm_conn_ctor.exit:                              ; preds = %do.end159.i, %do.body146.i.nvkm_conn_ctor.exit_crit_edge, %do.end127.i, %do.body114.i.nvkm_conn_ctor.exit_crit_edge, %do.end89.i, %do.body76.i.nvkm_conn_ctor.exit_crit_edge, %do.end51.i, %do.body38.i.nvkm_conn_ctor.exit_crit_edge, %if.end.i.nvkm_conn_ctor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %.compoundliteral.i)
  br label %return

return:                                           ; preds = %nvkm_conn_ctor.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %nvkm_conn_ctor.exit ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_conn_hpd(ptr nocapture noundef readonly %notify) #0 align 64 {
entry:
  %rep = alloca %struct.nvif_notify_conn_rep_v0, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notify, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %gpio2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio2, align 8
  %data = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rep) #6
  %index3 = getelementptr i8, ptr %notify, i32 -12
  %8 = getelementptr inbounds i8, ptr %rep, i32 2
  %9 = call ptr @memset(ptr %8, i32 255, i32 6)
  %10 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index3, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp ugt i32 %13, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 4
  %info = getelementptr i8, ptr %notify, i32 -8
  %location = getelementptr i8, ptr %notify, i32 -7
  %16 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %location, align 1
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %info, align 4
  %conv12 = zext i8 %19 to i32
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %7, align 1
  %conv13 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %11, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv13) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %22 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %rep, i32 0, i32 1
  %index18 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %23 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index18, align 4
  %conv19 = trunc i32 %24 to i8
  %call = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext -1, i8 noundef zeroext %conv19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i8 2, i8 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %., ptr %22, align 1
  %26 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rep, align 1
  %hpd24 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 6
  %conv26 = zext i8 %. to i32
  call void @nvkm_event_send(ptr noundef %hpd24, i32 noundef %conv26, i32 noundef %11, ptr noundef nonnull %rep, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rep) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @nvkm_conn_ctor.hpd, !1, !"hpd", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 81, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 90, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_conn_ctor._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_conn_ctor._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 96, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nvkm_conn_ctor._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nvkm_conn_ctor._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 103, i32 4}
!17 = !{ptr @nvkm_conn_ctor._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_conn_ctor._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 117, i32 4}
!21 = !{ptr @nvkm_conn_ctor._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_conn_ctor._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 119, i32 4}
!25 = !{ptr @nvkm_conn_ctor._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvkm_conn_ctor._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c", i32 42, i32 2}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nvkm_conn_hpd._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_conn_hpd._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 9}
