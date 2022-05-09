; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.145, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.145 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.142, %struct.anon.142, %struct.anon.142, %struct.anon.143, %struct.anon.144, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.140 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.140 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.142 = type { i32, i32 }
%struct.anon.143 = type { i32, i32, i32 }
%struct.anon.144 = type { i32, i32, [3 x i8] }
%struct.nv50_disp_chan_mthd = type { ptr, i32, i32, [0 x %struct.anon.138] }
%struct.anon.138 = type { ptr, i32, ptr }
%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_notify_uevent_rep = type {}
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.3, %struct.anon.136, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.3 = type { ptr }
%struct.anon.136 = type { ptr, ptr }
%struct.nv50_disp_chan_object = type { %struct.nvkm_oproxy, ptr, i32 }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }

@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %d\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" - %s %d\00", [23 x i8] zeroinitializer }, align 32
@nv50_disp_chan_mthd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 99, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %s%s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_chan_mthd\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_disp_chan_mthd._entry_ptr = internal global ptr @nv50_disp_chan_mthd._entry, section ".printk_index", align 4
@nv50_disp_chan_uevent = dso_local constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nv50_disp_chan_uevent_ctor, ptr null, ptr @nv50_disp_chan_uevent_init, ptr @nv50_disp_chan_uevent_fini }, [16 x i8] zeroinitializer }, align 32
@nv50_disp_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv50_disp_chan_dtor, ptr @nv50_disp_chan_init, ptr @nv50_disp_chan_fini, ptr null, ptr @nv50_disp_chan_ntfy, ptr @nv50_disp_chan_map, ptr null, ptr null, ptr null, ptr @nv50_disp_chan_rd32, ptr null, ptr null, ptr @nv50_disp_chan_wr32, ptr null, ptr @nv50_disp_chan_child_get }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-> %08x\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%13c\00", [27 x i8] zeroinitializer }, align 32
@nv50_disp_mthd_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 61, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: \09%04x: %08x %s%s%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_mthd_list\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_mthd_list._entry_ptr = internal global ptr @nv50_disp_mthd_list._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" // \00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_disp_chan_child_func_ = internal constant { %struct.nvkm_oproxy_func, [40 x i8] } { %struct.nvkm_oproxy_func { [2 x ptr] [ptr @nv50_disp_chan_child_del_, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 84, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 88, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 94, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 99, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"nv50_disp_chan_uevent\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 154, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"nv50_disp_chan\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 326, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 54, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 56, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 58, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"nv50_disp_chan_child_func_\00", align 1
@___asan_gen_.65 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 239, i32 1 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @nv50_disp_chan_mthd._entry, ptr @nv50_disp_chan_mthd._entry_ptr, ptr @nv50_disp_mthd_list._entry, ptr @nv50_disp_mthd_list._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nv50_disp_chan_uevent, ptr @nv50_disp_chan, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nv50_disp_chan_child_func_], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_chan_mthd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_chan_uevent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_mthd_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_chan_child_func_ to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_chan_mthd(ptr nocapture noundef readonly %chan, i32 noundef %debug) local_unnamed_addr #0 align 64 {
entry:
  %mods.i = alloca [16 x i8], align 1
  %cname_ = alloca [16 x i8], align 1
  %sname_ = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 8
  %mthd3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %mthd3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mthd3, align 4
  %debug4 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %debug4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %debug)
  %cmp = icmp ult i32 %5, %debug
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %mthd787 = getelementptr %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %mthd787 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mthd787, align 4
  %cmp8.not88 = icmp eq ptr %7, null
  br i1 %cmp8.not88, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx86 = getelementptr %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 3, i32 0
  %head = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 4
  %addr = getelementptr inbounds %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 1
  %user = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %debug)
  %cmp33 = icmp slt i32 %debug, 6
  %device = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %name38 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %prev = getelementptr inbounds %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %7, %for.body.lr.ph ], [ %71, %for.end.for.body_crit_edge ]
  %arrayidx90 = phi ptr [ %arrayidx86, %for.body.lr.ph ], [ %arrayidx, %for.end.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc45, %for.end.for.body_crit_edge ]
  %nr = getelementptr %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 3, i32 %i.089, i32 1
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1381 = icmp sgt i32 %10, 0
  br i1 %cmp1381, label %for.body14.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body14.lr.ph:                                 ; preds = %for.body
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %mul = mul i32 %12, %14
  %arrayidx73.i = getelementptr %struct.nv50_disp_mthd_list, ptr %8, i32 0, i32 2, i32 0
  %addr43 = getelementptr inbounds %struct.nv50_disp_mthd_list, ptr %8, i32 0, i32 1
  br label %for.body14

for.body14:                                       ; preds = %nv50_disp_mthd_list.exit.for.body14_crit_edge, %for.body14.lr.ph
  %base9.084 = phi i32 [ %mul, %for.body14.lr.ph ], [ %add, %nv50_disp_mthd_list.exit.for.body14_crit_edge ]
  %j.082 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %nv50_disp_mthd_list.exit.for.body14_crit_edge ]
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cname_) #8
  %17 = call ptr @memset(ptr %cname_, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sname_) #8
  %18 = call ptr @memset(ptr %sname_, i32 255, i32 16)
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %for.body14.if.end20_crit_edge, label %if.then17

for.body14.if.end20_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %23 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %user, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cname_, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %22, i32 noundef %24)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.body14.if.end20_crit_edge
  %cname.0 = phi ptr [ %cname_, %if.then17 ], [ %16, %for.body14.if.end20_crit_edge ]
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp24 = icmp sgt i32 %26, 1
  br i1 %cmp24, label %if.then25, label %if.end20.do.body_crit_edge

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx90, align 4
  %call30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sname_, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %28, i32 noundef %j.082)
  br label %do.body

do.body:                                          ; preds = %if.then25, %if.end20.do.body_crit_edge
  %sname.0 = phi ptr [ %sname_, %if.then25 ], [ @.str, %if.end20.do.body_crit_edge ]
  br i1 %cmp33, label %land.lhs.true, label %do.body.if.end40_crit_edge

do.body.if.end40_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %do.body
  %29 = ptrtoint ptr %debug4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %debug)
  %cmp35.not = icmp ult i32 %30, %debug
  br i1 %cmp35.not, label %land.lhs.true.if.end40_crit_edge, label %do.end

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef %name38, ptr noundef %cname.0, ptr noundef nonnull %sname.0) #11
  br label %if.end40

if.end40:                                         ; preds = %do.end, %land.lhs.true.if.end40_crit_edge, %do.body.if.end40_crit_edge
  %35 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not74.i = icmp eq i32 %36, 0
  br i1 %tobool.not74.i, label %if.end40.nv50_disp_mthd_list.exit_crit_edge, label %for.body.lr.ph.i

if.end40.nv50_disp_mthd_list.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_disp_mthd_list.exit

for.body.lr.ph.i:                                 ; preds = %if.end40
  %37 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prev, align 4
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 11
  %add16.i = add i32 %38, %base9.084
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %arrayidx77.i = phi ptr [ %arrayidx73.i, %for.body.lr.ph.i ], [ %arrayidx.i, %for.inc.i.for.body.i_crit_edge ]
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %addr.i = getelementptr %struct.nv50_disp_mthd_list, ptr %8, i32 0, i32 2, i32 %i.075.i, i32 1
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool6.not.i = icmp eq i32 %42, 0
  br i1 %tobool6.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %43 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i, align 4
  %add.i = add i32 %42, %base9.084
  %add.ptr.i = getelementptr i8, ptr %44, i32 %add.i
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %46 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i, align 4
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i, align 4
  %add17.i = add i32 %add16.i, %49
  %add.ptr18.i = getelementptr i8, ptr %47, i32 %add17.i
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %51 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx77.i, align 4
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %8, align 4
  %mul.i = mul i32 %54, %j.082
  %add26.i = add i32 %mul.i, %52
  %name29.i = getelementptr %struct.nv50_disp_mthd_list, ptr %8, i32 0, i32 2, i32 %i.075.i, i32 2
  %55 = ptrtoint ptr %name29.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name29.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mods.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %45)
  %cmp.not.i = icmp eq i32 %50, %45
  %57 = call ptr @memset(ptr %mods.i, i32 255, i32 16)
  br i1 %cmp.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mods.i, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %45) #8
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mods.i, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef 32) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then30.i
  br i1 %cmp33, label %land.lhs.true.i, label %do.body.i.if.end46.i_crit_edge

do.body.i.if.end46.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %58 = ptrtoint ptr %debug4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %debug)
  %cmp36.not.i = icmp ult i32 %59, %debug
  br i1 %cmp36.not.i, label %land.lhs.true.i.if.end46.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  %tobool43.not.i = icmp eq ptr %56, null
  %cond.i = select i1 %tobool43.not.i, ptr @.str, ptr @.str.12
  %spec.select.i = select i1 %tobool43.not.i, ptr @.str, ptr %56
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.10, ptr noundef %name38, i32 noundef %add26.i, i32 noundef %50, ptr noundef nonnull %mods.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %spec.select.i) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %land.lhs.true.i.if.end46.i_crit_edge, %do.body.i.if.end46.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mods.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end46.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.075.i, 1
  %arrayidx.i = getelementptr %struct.nv50_disp_mthd_list, ptr %8, i32 0, i32 2, i32 %inc.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i, label %for.inc.i.nv50_disp_mthd_list.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.nv50_disp_mthd_list.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_disp_mthd_list.exit

nv50_disp_mthd_list.exit:                         ; preds = %for.inc.i.nv50_disp_mthd_list.exit_crit_edge, %if.end40.nv50_disp_mthd_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sname_) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cname_) #8
  %inc = add nuw nsw i32 %j.082, 1
  %66 = ptrtoint ptr %addr43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr43, align 4
  %add = add i32 %67, %base9.084
  %68 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr, align 4
  %cmp13 = icmp slt i32 %inc, %69
  br i1 %cmp13, label %nv50_disp_mthd_list.exit.for.body14_crit_edge, label %nv50_disp_mthd_list.exit.for.end_crit_edge

nv50_disp_mthd_list.exit.for.end_crit_edge:       ; preds = %nv50_disp_mthd_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

nv50_disp_mthd_list.exit.for.body14_crit_edge:    ; preds = %nv50_disp_mthd_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.end:                                          ; preds = %nv50_disp_mthd_list.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc45 = add i32 %i.089, 1
  %arrayidx = getelementptr %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 3, i32 %inc45
  %mthd7 = getelementptr %struct.nv50_disp_chan_mthd, ptr %3, i32 0, i32 3, i32 %inc45, i32 2
  %70 = ptrtoint ptr %mthd7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mthd7, align 4
  %cmp8.not = icmp eq ptr %71, null
  br i1 %cmp8.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_chan_uevent_send(ptr noundef %disp, i32 noundef %chid) local_unnamed_addr #0 align 64 {
entry:
  %rep = alloca %struct.nvif_notify_uevent_rep, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %rep) #8
  %uevent = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 5
  call void @nvkm_event_send(ptr noundef %uevent, i32 noundef 1, i32 noundef %chid, ptr noundef nonnull %rep, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %rep) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nv50_disp_chan_uevent_ctor(ptr nocapture noundef readonly %object, ptr nocapture readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  br i1 %cmp1, label %if.then3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %size4 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size4, align 4
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %1 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %types, align 4
  %user = getelementptr i8, ptr %object, i32 -8
  %2 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %user, align 4
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_chan_uevent_init(ptr nocapture noundef readonly %event, i32 noundef %types, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr i8, ptr %event, i32 -548
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %index
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 6357024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %shl) #8, !srcloc !43
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 6357032
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %or = or i32 %6, %shl
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 6357032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %or) #8, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_chan_uevent_fini(ptr nocapture noundef readonly %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr i8, ptr %event, i32 -548
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 6357032
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %index
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 6357032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and) #8, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 6357024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %shl) #8, !srcloc !43
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @nv50_disp_chan_user(ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %psize) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psize to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4096, ptr %psize, align 8
  %user = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %user, align 4
  %mul = shl i32 %2, 12
  %add = add i32 %mul, 6553600
  %conv = sext i32 %add to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_chan_intr(ptr nocapture noundef readonly %chan, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %user = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user, align 4
  %shl4 = shl i32 65536, %5
  %spec.select = select i1 %en, i32 %shl4, i32 0
  %shl = shl i32 65537, %5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 6357032
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  %or = or i32 %and, %spec.select
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 6357032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %or) #8, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_chan_new_(ptr noundef %func, ptr noundef %mthd, ptr noundef %disp, i32 noundef %ctrl, i32 noundef %user, i32 noundef %head, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.nv50_disp_chan, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %object, ptr %pobject, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_disp_chan, ptr noundef %oclass, ptr noundef %object) #8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %mthd3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mthd3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mthd, ptr %mthd3, align 4
  %disp4 = getelementptr inbounds %struct.nv50_disp_chan, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %disp4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %disp, ptr %disp4, align 8
  %chid = getelementptr inbounds %struct.nv50_disp_chan, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %chid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ctrl, ptr %chid, align 4
  %user7 = getelementptr inbounds %struct.nv50_disp_chan, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %user7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %user, ptr %user7, align 8
  %head8 = getelementptr inbounds %struct.nv50_disp_chan, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %head8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %head, ptr %head8, align 4
  %arrayidx = getelementptr %struct.nv50_disp, ptr %disp, i32 0, i32 13, i32 %user
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %user7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %user7, align 8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_disp_chan_dtor(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr i8, ptr %object, i32 -8
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %disp1 = getelementptr i8, ptr %object, i32 -16
  %2 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp1, align 8
  %arrayidx = getelementptr %struct.nv50_disp, ptr %3, i32 0, i32 13, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %memory = getelementptr i8, ptr %object, i32 72
  tail call void @nvkm_memory_unref(ptr noundef %memory) #8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_init(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %intr = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %add.ptr) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_fini(ptr noundef %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %fini = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  tail call void %3(ptr noundef %add.ptr) #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %intr = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr, align 4
  tail call void %7(ptr noundef %add.ptr, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv50_disp_chan_ntfy(ptr nocapture noundef readonly %object, i32 noundef %type, ptr nocapture noundef writeonly %pevent) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %disp1 = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 8
  %uevent = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pevent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %uevent, ptr %pevent, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_map(ptr noundef %object, ptr nocapture noundef readnone %argv, i32 noundef %argc, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %addr, ptr noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %disp = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource_addr, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef 0) #8
  %conv = zext i32 %call to i64
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %user = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user, align 4
  %call4 = tail call i64 %12(ptr noundef %add.ptr, ptr noundef %size) #8
  %add = add i64 %call4, %conv
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %addr, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_rd32(ptr noundef %object, i64 noundef %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %disp = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %size, align 8, !annotation !51
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %user = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user, align 4
  %call = call i64 %8(ptr noundef %add.ptr, ptr noundef nonnull %size) #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add = add i64 %call, %addr
  %idx.ext = trunc i64 %add to i32
  %add.ptr3 = getelementptr i8, ptr %10, i32 %idx.ext
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_wr32(ptr noundef %object, i64 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %disp = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %size, align 8, !annotation !51
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %user = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user, align 4
  %call = call i64 %8(ptr noundef %add.ptr, ptr noundef nonnull %size) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add = add i64 %call, %addr
  %idx.ext = trunc i64 %add to i32
  %add.ptr3 = getelementptr i8, ptr %10, i32 %idx.ext
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %data) #8, !srcloc !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_child_get(ptr nocapture noundef readonly %object, i32 noundef %index, ptr noundef %sclass) #0 align 64 {
entry:
  %oclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -24
  %disp = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oclass) #8
  %4 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %oclass, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %bind = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bind, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nvkm_device_engine(ptr noundef %3, i32 noundef 31, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %11, align 8
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %base8 = getelementptr inbounds %struct.nvkm_engine_func, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base8, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %call16 = call i32 %16(ptr noundef %sclass, i32 noundef %index, ptr noundef nonnull %oclass) #8
  %17 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oclass, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.then11.cleanup_crit_edge, label %if.then18

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nv50_disp_chan_child_new, ptr %sclass, align 8
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 2
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.then11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ 0, %if.then18 ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oclass) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_child_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -24
  %disp1 = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp1, align 8
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 2
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_oproxy_ctor(ptr noundef nonnull @nv50_disp_chan_child_func_, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #8
  %disp3 = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %disp3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %disp3, align 8
  %base5 = getelementptr inbounds %struct.nvkm_oproxy, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base5, ptr %pobject, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %object7 = getelementptr inbounds %struct.nvkm_oproxy, ptr %call7.i.i, i32 0, i32 2
  %call8 = tail call i32 %12(ptr noundef %5, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %object7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %bind = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bind, align 4
  %17 = ptrtoint ptr %object7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %object7, align 8
  %handle = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle, align 8
  %call14 = tail call i32 %16(ptr noundef %add.ptr, ptr noundef %18, i32 noundef %20) #8
  %hash = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call14, ptr %hash, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %call14, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %22, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_oproxy_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_chan_child_del_(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %ramht = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ramht, align 4
  %hash = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %base, i32 0, i32 2
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash, align 4
  tail call void @nvkm_ramht_remove(ptr noundef %3, i32 noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_remove(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 84, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 88, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 94, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 99, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nv50_disp_chan_mthd._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @nv50_disp_chan_mthd._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @nv50_disp_chan_uevent, !15, !"nv50_disp_chan_uevent", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 154, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 54, i32 34}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 56, i32 34}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 58, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nv50_disp_mthd_list._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nv50_disp_mthd_list._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nv50_disp_chan, !27, !"nv50_disp_chan", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 326, i32 1}
!28 = !{ptr @nv50_disp_chan_child_func_, !29, !"nv50_disp_chan_child_func_", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c", i32 239, i32 1}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 5393705}
!40 = !{i64 2156271997}
!41 = !{i64 2156272445}
!42 = !{i64 2156281067}
!43 = !{i64 5393287}
!44 = !{i64 2156281935}
!45 = !{i64 2156282373}
!46 = !{i64 2156278560}
!47 = !{i64 2156278998}
!48 = !{i64 2156279479}
!49 = !{i64 2156285109}
!50 = !{i64 2156285487}
!51 = !{!"auto-init"}
!52 = !{i64 2156287299}
!53 = !{i64 2156288962}
