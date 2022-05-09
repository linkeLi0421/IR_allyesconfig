; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.139, %struct.anon.139, %struct.anon.139, %struct.anon.139, %struct.anon.139, i16 }
%struct.anon.139 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.138 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.138 = type { %struct.spinlock, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.140, %struct.anon.140, %struct.anon.140, %struct.anon.141, %struct.anon.142, ptr, ptr, [81 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.140 = type { i32, i32 }
%struct.anon.141 = type { i32, i32, i32 }
%struct.anon.142 = type { i32, i32, [3 x i8] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_gpuobj = type { %union.anon.2, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.2 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@gf119_disp_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: supervisor %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gf119_disp_super\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf119_disp_super._entry_ptr = internal global ptr @gf119_disp_super._entry, section ".printk_index", align 4
@gf119_disp_super._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: head-%d: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@gf119_disp_super._entry_ptr.7 = internal global ptr @gf119_disp_super._entry.5, section ".printk_index", align 4
@nv50_disp_intr_error_type = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gf119_disp_intr_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 105, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: chid %d stat %08x reason %d [%s] mthd %04x data %08x code %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gf119_disp_intr_error\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gf119_disp_intr_error._entry_ptr = internal global ptr @gf119_disp_intr_error._entry, section ".printk_index", align 4
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gf119_disp_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 157, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: intr24 %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gf119_disp_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gf119_disp_intr._entry_ptr = internal global ptr @gf119_disp_intr._entry, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf119_disp = internal constant { %struct.nv50_disp_func, [56 x i8] } { %struct.nv50_disp_func { ptr @gf119_disp_init, ptr @gf119_disp_fini, ptr @gf119_disp_intr, ptr @gf119_disp_intr_error, ptr @gf119_disp_chan_uevent, ptr @gf119_disp_super, ptr @gf119_disp_root_oclass, %struct.anon.139 zeroinitializer, %struct.anon.139 { ptr @gf119_head_cnt, ptr @gf119_head_new }, %struct.anon.139 { ptr @gf119_dac_cnt, ptr @gf119_dac_new }, %struct.anon.139 { ptr @gf119_sor_cnt, ptr @gf119_sor_new }, %struct.anon.139 zeroinitializer, i16 0 }, [56 x i8] zeroinitializer }, align 32
@gf119_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@gf119_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 43, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 46, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 102, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 157, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 225, i32 7 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"gf119_disp\00", align 1
@___asan_gen_.71 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 255, i32 1 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @gf119_disp_intr._entry, ptr @gf119_disp_intr._entry_ptr, ptr @gf119_disp_intr_error._entry, ptr @gf119_disp_intr_error._entry_ptr, ptr @gf119_disp_super._entry, ptr @gf119_disp_super._entry.5, ptr @gf119_disp_super._entry_ptr, ptr @gf119_disp_super._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @gf119_disp], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_super._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_intr_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_super(ptr noundef %work) #0 align 64 {
entry:
  %mask = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -516
  %base = getelementptr i8, ptr %work, i32 -512
  %device2 = getelementptr i8, ptr %work, i32 -500
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask) #5
  %debug = getelementptr i8, ptr %work, i32 -472
  %2 = call ptr @memset(ptr %mask, i32 255, i32 16)
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %work, i32 -488
  %super = getelementptr i8, ptr %work, i32 44
  %7 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %super, align 4
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !38
  %10 = add nuw nsw i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %iszero = icmp eq i32 %8, 0
  %ffs = select i1 %iszero, i32 0, i32 %10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %ffs) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %head9 = getelementptr i8, ptr %work, i32 -308
  %11 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn297 = load ptr, ptr %head9, align 4
  %cmp15.not298 = icmp eq ptr %.pn297, %head9
  br i1 %cmp15.not298, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %.pn299 = phi ptr [ %.pn297, %for.body.lr.ph ], [ %.pn, %if.end38.for.body_crit_edge ]
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %id = getelementptr i8, ptr %.pn299, i32 -4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %mul = shl i32 %15, 11
  %add = add i32 %mul, 6357460
  %add.ptr16 = getelementptr i8, ptr %13, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr %mask, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %arrayidx, align 4
  %disp22 = getelementptr i8, ptr %.pn299, i32 -8
  %20 = ptrtoint ptr %disp22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disp22, align 4
  %debug25 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 5
  %22 = ptrtoint ptr %debug25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp26 = icmp ugt i32 %23, 3
  br i1 %cmp26, label %do.end30, label %for.body.if.end38_crit_edge

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %device31 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device31, align 4
  %dev32 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev32, align 8
  %name33 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef %name33, i32 noundef %18, i32 noundef %16) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end30, %for.body.if.end38_crit_edge
  %28 = ptrtoint ptr %.pn299 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn299, align 4
  %cmp15.not = icmp eq ptr %.pn, %head9
  br i1 %cmp15.not, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %if.end.for.end_crit_edge
  %super48 = getelementptr i8, ptr %work, i32 44
  %29 = ptrtoint ptr %super48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %super48, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %for.end
  %chan = getelementptr i8, ptr %work, i32 216
  %31 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %32, i32 noundef 4) #5
  tail call void @nv50_disp_super_1(ptr noundef %add.ptr) #5
  %33 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn294300 = load ptr, ptr %head9, align 4
  %cmp61.not302 = icmp eq ptr %.pn294300, %head9
  br i1 %cmp61.not302, label %if.then49.if.end193_crit_edge, label %if.then49.for.body63_crit_edge

if.then49.for.body63_crit_edge:                   ; preds = %if.then49
  br label %for.body63

if.then49.if.end193_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

for.body63:                                       ; preds = %for.inc70.for.body63_crit_edge, %if.then49.for.body63_crit_edge
  %.pn294303 = phi ptr [ %.pn294, %for.inc70.for.body63_crit_edge ], [ %.pn294300, %if.then49.for.body63_crit_edge ]
  %id64 = getelementptr i8, ptr %.pn294303, i32 -4
  %34 = ptrtoint ptr %id64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id64, align 4
  %arrayidx65 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx65, align 4
  %and66 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %for.body63.for.inc70_crit_edge, label %if.end69

for.body63.for.inc70_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc70

if.end69:                                         ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #7
  %head.1304 = getelementptr i8, ptr %.pn294303, i32 -12
  tail call void @nv50_disp_super_1_0(ptr noundef %add.ptr, ptr noundef %head.1304) #5
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69, %for.body63.for.inc70_crit_edge
  %38 = ptrtoint ptr %.pn294303 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn294 = load ptr, ptr %.pn294303, align 4
  %cmp61.not = icmp eq ptr %.pn294, %head9
  br i1 %cmp61.not, label %for.inc70.if.end193_crit_edge, label %for.inc70.for.body63_crit_edge

for.inc70.for.body63_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body63

for.inc70.if.end193_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

if.else:                                          ; preds = %for.end
  %and78 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else160, label %for.cond87.preheader

for.cond87.preheader:                             ; preds = %if.else
  %39 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn291305 = load ptr, ptr %head9, align 4
  %cmp91.not307 = icmp eq ptr %.pn291305, %head9
  br i1 %cmp91.not307, label %for.cond87.preheader.for.end106_crit_edge, label %for.cond87.preheader.for.body93_crit_edge

for.cond87.preheader.for.body93_crit_edge:        ; preds = %for.cond87.preheader
  br label %for.body93

for.cond87.preheader.for.end106_crit_edge:        ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end106

for.body93:                                       ; preds = %for.inc100.for.body93_crit_edge, %for.cond87.preheader.for.body93_crit_edge
  %.pn291308 = phi ptr [ %.pn291, %for.inc100.for.body93_crit_edge ], [ %.pn291305, %for.cond87.preheader.for.body93_crit_edge ]
  %id94 = getelementptr i8, ptr %.pn291308, i32 -4
  %40 = ptrtoint ptr %id94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id94, align 4
  %arrayidx95 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx95, align 4
  %and96 = and i32 %43, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %for.body93.for.inc100_crit_edge, label %if.end99

for.body93.for.inc100_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc100

if.end99:                                         ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  %head.2309 = getelementptr i8, ptr %.pn291308, i32 -12
  tail call void @nv50_disp_super_2_0(ptr noundef %add.ptr, ptr noundef %head.2309) #5
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99, %for.body93.for.inc100_crit_edge
  %44 = ptrtoint ptr %.pn291308 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn291 = load ptr, ptr %.pn291308, align 4
  %cmp91.not = icmp eq ptr %.pn291, %head9
  br i1 %cmp91.not, label %for.inc100.for.end106_crit_edge, label %for.inc100.for.body93_crit_edge

for.inc100.for.body93_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body93

for.inc100.for.end106_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end106

for.end106:                                       ; preds = %for.inc100.for.end106_crit_edge, %for.cond87.preheader.for.end106_crit_edge
  tail call void @nvkm_outp_route(ptr noundef %base) #5
  %45 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn292310 = load ptr, ptr %head9, align 4
  %cmp118.not312 = icmp eq ptr %.pn292310, %head9
  br i1 %cmp118.not312, label %for.end106.for.cond140.preheader_crit_edge, label %for.end106.for.body120_crit_edge

for.end106.for.body120_crit_edge:                 ; preds = %for.end106
  br label %for.body120

for.end106.for.cond140.preheader_crit_edge:       ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond140.preheader

for.cond140.preheader:                            ; preds = %for.inc127.for.cond140.preheader_crit_edge, %for.end106.for.cond140.preheader_crit_edge
  %46 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn293315 = load ptr, ptr %head9, align 4
  %cmp144.not317 = icmp eq ptr %.pn293315, %head9
  br i1 %cmp144.not317, label %for.cond140.preheader.if.end193_crit_edge, label %for.cond140.preheader.for.body146_crit_edge

for.cond140.preheader.for.body146_crit_edge:      ; preds = %for.cond140.preheader
  br label %for.body146

for.cond140.preheader.if.end193_crit_edge:        ; preds = %for.cond140.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

for.body120:                                      ; preds = %for.inc127.for.body120_crit_edge, %for.end106.for.body120_crit_edge
  %.pn292313 = phi ptr [ %.pn292, %for.inc127.for.body120_crit_edge ], [ %.pn292310, %for.end106.for.body120_crit_edge ]
  %id121 = getelementptr i8, ptr %.pn292313, i32 -4
  %47 = ptrtoint ptr %id121 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id121, align 4
  %arrayidx122 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx122, align 4
  %and123 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %for.body120.for.inc127_crit_edge, label %if.end126

for.body120.for.inc127_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc127

if.end126:                                        ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #7
  %head.3314 = getelementptr i8, ptr %.pn292313, i32 -12
  tail call void @nv50_disp_super_2_1(ptr noundef %add.ptr, ptr noundef %head.3314) #5
  br label %for.inc127

for.inc127:                                       ; preds = %if.end126, %for.body120.for.inc127_crit_edge
  %51 = ptrtoint ptr %.pn292313 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn292 = load ptr, ptr %.pn292313, align 4
  %cmp118.not = icmp eq ptr %.pn292, %head9
  br i1 %cmp118.not, label %for.inc127.for.cond140.preheader_crit_edge, label %for.inc127.for.body120_crit_edge

for.inc127.for.body120_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body120

for.inc127.for.cond140.preheader_crit_edge:       ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond140.preheader

for.body146:                                      ; preds = %for.inc153.for.body146_crit_edge, %for.cond140.preheader.for.body146_crit_edge
  %.pn293318 = phi ptr [ %.pn293, %for.inc153.for.body146_crit_edge ], [ %.pn293315, %for.cond140.preheader.for.body146_crit_edge ]
  %id147 = getelementptr i8, ptr %.pn293318, i32 -4
  %52 = ptrtoint ptr %id147 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id147, align 4
  %arrayidx148 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx148, align 4
  %and149 = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %for.body146.for.inc153_crit_edge, label %if.end152

for.body146.for.inc153_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

if.end152:                                        ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #7
  %head.4319 = getelementptr i8, ptr %.pn293318, i32 -12
  tail call void @nv50_disp_super_2_2(ptr noundef %add.ptr, ptr noundef %head.4319) #5
  br label %for.inc153

for.inc153:                                       ; preds = %if.end152, %for.body146.for.inc153_crit_edge
  %56 = ptrtoint ptr %.pn293318 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn293 = load ptr, ptr %.pn293318, align 4
  %cmp144.not = icmp eq ptr %.pn293, %head9
  br i1 %cmp144.not, label %for.inc153.if.end193_crit_edge, label %for.inc153.for.body146_crit_edge

for.inc153.for.body146_crit_edge:                 ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body146

for.inc153.if.end193_crit_edge:                   ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

if.else160:                                       ; preds = %if.else
  %and162 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.else160.if.end193_crit_edge, label %for.cond171.preheader

if.else160.if.end193_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

for.cond171.preheader:                            ; preds = %if.else160
  %57 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn290320 = load ptr, ptr %head9, align 4
  %cmp175.not322 = icmp eq ptr %.pn290320, %head9
  br i1 %cmp175.not322, label %for.cond171.preheader.if.end193_crit_edge, label %for.cond171.preheader.for.body177_crit_edge

for.cond171.preheader.for.body177_crit_edge:      ; preds = %for.cond171.preheader
  br label %for.body177

for.cond171.preheader.if.end193_crit_edge:        ; preds = %for.cond171.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

for.body177:                                      ; preds = %for.inc184.for.body177_crit_edge, %for.cond171.preheader.for.body177_crit_edge
  %.pn290323 = phi ptr [ %.pn290, %for.inc184.for.body177_crit_edge ], [ %.pn290320, %for.cond171.preheader.for.body177_crit_edge ]
  %id178 = getelementptr i8, ptr %.pn290323, i32 -4
  %58 = ptrtoint ptr %id178 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id178, align 4
  %arrayidx179 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx179, align 4
  %and180 = and i32 %61, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %for.body177.for.inc184_crit_edge, label %if.end183

for.body177.for.inc184_crit_edge:                 ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc184

if.end183:                                        ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #7
  %head.5324 = getelementptr i8, ptr %.pn290323, i32 -12
  tail call void @nv50_disp_super_3_0(ptr noundef %add.ptr, ptr noundef %head.5324) #5
  br label %for.inc184

for.inc184:                                       ; preds = %if.end183, %for.body177.for.inc184_crit_edge
  %62 = ptrtoint ptr %.pn290323 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn290 = load ptr, ptr %.pn290323, align 4
  %cmp175.not = icmp eq ptr %.pn290, %head9
  br i1 %cmp175.not, label %for.inc184.if.end193_crit_edge, label %for.inc184.for.body177_crit_edge

for.inc184.for.body177_crit_edge:                 ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body177

for.inc184.if.end193_crit_edge:                   ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

if.end193:                                        ; preds = %for.inc184.if.end193_crit_edge, %for.cond171.preheader.if.end193_crit_edge, %if.else160.if.end193_crit_edge, %for.inc153.if.end193_crit_edge, %for.cond140.preheader.if.end193_crit_edge, %for.inc70.if.end193_crit_edge, %if.then49.if.end193_crit_edge
  %63 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn289325 = load ptr, ptr %head9, align 4
  %cmp204.not326 = icmp eq ptr %.pn289325, %head9
  br i1 %cmp204.not326, label %if.end193.do.body222_crit_edge, label %do.body207.lr.ph

if.end193.do.body222_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body222

do.body207.lr.ph:                                 ; preds = %if.end193
  %pri210 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body207

do.body207:                                       ; preds = %do.body207.do.body207_crit_edge, %do.body207.lr.ph
  %.pn289327 = phi ptr [ %.pn289325, %do.body207.lr.ph ], [ %.pn289, %do.body207.do.body207_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %pri210 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri210, align 4
  %id211 = getelementptr i8, ptr %.pn289327, i32 -4
  %66 = ptrtoint ptr %id211 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id211, align 4
  %mul212 = shl i32 %67, 11
  %add213 = add i32 %mul212, 6357460
  %add.ptr214 = getelementptr i8, ptr %65, i32 %add213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 0) #5, !srcloc !42
  %68 = ptrtoint ptr %.pn289327 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn289 = load ptr, ptr %.pn289327, align 4
  %cmp204.not = icmp eq ptr %.pn289, %head9
  br i1 %cmp204.not, label %do.body207.do.body222_crit_edge, label %do.body207.do.body207_crit_edge

do.body207.do.body207_crit_edge:                  ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body207

do.body207.do.body222_crit_edge:                  ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body222

do.body222:                                       ; preds = %do.body207.do.body222_crit_edge, %if.end193.do.body222_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %pri225 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %pri225 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri225, align 4
  %add.ptr226 = getelementptr i8, ptr %70, i32 6357456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr226, i32 -2147483648) #5, !srcloc !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_mthd(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_1(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_1_0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_route(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_3_0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_intr_error(ptr noundef %disp, i32 noundef %chid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = mul i32 %chid, 12
  %add = add i32 %mul, 6357488
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %and = lshr i32 %4, 12
  %shr = and i32 %and, 7
  %and3 = and i32 %4, 4092
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add7 = add i32 %mul, 6357492
  %add.ptr8 = getelementptr i8, ptr %6, i32 %add7
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add14 = add i32 %mul, 6357496
  %add.ptr15 = getelementptr i8, ptr %9, i32 %add14
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %call18 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_type, i32 noundef %shr) #5
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %name21 = getelementptr inbounds %struct.nvkm_enum, ptr %call18, i32 0, i32 1
  %17 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ @.str.11, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %chid, i32 noundef %4, i32 noundef %shr, ptr noundef %cond, i32 noundef %and3, i32 noundef %7, i32 noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %chid)
  %cmp24 = icmp ult i32 %chid, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and3)
  %cond39 = icmp eq i32 %and3, 128
  %or.cond = select i1 %cmp24, i1 %cond39, i1 false
  br i1 %or.cond, label %sw.bb, label %if.end.do.body27_crit_edge

if.end.do.body27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.nv50_disp, ptr %disp, i32 0, i32 13, i32 %chid
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %20, i32 noundef 1) #5
  br label %do.body27

do.body27:                                        ; preds = %sw.bb, %if.end.do.body27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %shl = shl nuw i32 1, %chid
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %22, i32 6357148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %shl) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -1879048192) #5, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_intr(ptr noundef %disp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6357128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 6357132
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not168 = icmp eq i32 %7, 0
  br i1 %tobool8.not168, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %stat.0169 = phi i32 [ %and10, %while.body.while.body_crit_edge ], [ %7, %if.then.while.body_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %stat.0169, i1 true) #5, !range !38
  %shl = shl nuw i32 1, %8
  %neg = xor i32 %shl, -1
  %and10 = and i32 %stat.0169, %neg
  tail call void @nv50_disp_chan_uevent_send(ptr noundef %disp, i32 noundef %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 6357132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %shl) #5, !srcloc !42
  %tobool8.not = icmp eq i32 %and10, 0
  br i1 %tobool8.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %and14 = and i32 %4, -2
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %intr.0 = phi i32 [ %and14, %while.end ], [ %4, %entry.if.end_crit_edge ]
  %and15 = and i32 %intr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end28_crit_edge, label %if.then17

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then17:                                        ; preds = %if.end
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %12, i32 6357148
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %iszero = icmp eq i32 %13, 0
  %sub = select i1 %iszero, i32 -1, i32 %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then25, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disp, align 4
  %intr_error = getelementptr inbounds %struct.nv50_disp_func, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %intr_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intr_error, align 4
  tail call void %18(ptr noundef %disp, i32 noundef %sub) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then17.if.end26_crit_edge
  %and27 = and i32 %intr.0, -3
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end.if.end28_crit_edge
  %intr.1 = phi i32 [ %and27, %if.end26 ], [ %intr.0, %if.end.if.end28_crit_edge ]
  %and29 = and i32 %intr.1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end70_crit_edge, label %if.then31

if.end28.if.end70_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then31:                                        ; preds = %if.end28
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %20, i32 6357164
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %and38 = and i32 %21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then31.if.end50_crit_edge, label %if.then40

if.then31.if.end50_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then40:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %super = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 4
  %22 = ptrtoint ptr %super to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and38, ptr %super, align 4
  %wq = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 2
  %23 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq, align 4
  %supervisor = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %supervisor) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %super, align 4
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %28, i32 6357164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %26) #5, !srcloc !42
  %and49 = and i32 %21, -8
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.then31.if.end50_crit_edge
  %stat32.0 = phi i32 [ %and49, %if.then40 ], [ %21, %if.then31.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat32.0)
  %tobool51.not = icmp eq i32 %stat32.0, 0
  br i1 %tobool51.not, label %if.end50.if.end68_crit_edge, label %do.body53

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

do.body53:                                        ; preds = %if.end50
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %29 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp54 = icmp ugt i32 %30, 1
  br i1 %cmp54, label %do.end58, label %do.body53.if.end60_crit_edge

do.body53.if.end60_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %34, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %stat32.0) #8
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %do.body53.if.end60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %36, i32 6357164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %stat32.0) #5, !srcloc !42
  br label %if.end68

if.end68:                                         ; preds = %if.end60, %if.end50.if.end68_crit_edge
  %and69 = and i32 %intr.1, -1048577
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end28.if.end70_crit_edge
  %intr.2 = phi i32 [ %and69, %if.end68 ], [ %intr.1, %if.end28.if.end70_crit_edge ]
  %head72 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %head72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn170 = load ptr, ptr %head72, align 4
  %cmp78.not171 = icmp eq ptr %.pn170, %head72
  br i1 %cmp78.not171, label %if.end70.for.end_crit_edge, label %if.end70.for.body_crit_edge

if.end70.for.body_crit_edge:                      ; preds = %if.end70
  br label %for.body

if.end70.for.end_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end115.for.body_crit_edge, %if.end70.for.body_crit_edge
  %.pn172 = phi ptr [ %.pn, %if.end115.for.body_crit_edge ], [ %.pn170, %if.end70.for.body_crit_edge ]
  %id = getelementptr i8, ptr %.pn172, i32 -4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %mul = shl i32 %39, 11
  %shl80 = shl i32 16777216, %39
  %and81 = and i32 %shl80, %intr.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %for.body.if.end115_crit_edge, label %if.then83

for.body.if.end115_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then83:                                        ; preds = %for.body
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add = add i32 %mul, 6357180
  %add.ptr87 = getelementptr i8, ptr %41, i32 %add
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and90 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then83.if.end95_crit_edge, label %if.then92

if.then83.if.end95_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then92:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  tail call void @nvkm_disp_vblank(ptr noundef %base, i32 noundef %44) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then83.if.end95_crit_edge
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %46, i32 %add
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr107 = getelementptr i8, ptr %49, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %47) #5, !srcloc !42
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add111 = add i32 %mul, 6357184
  %add.ptr112 = getelementptr i8, ptr %51, i32 %add111
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  br label %if.end115

if.end115:                                        ; preds = %if.end95, %for.body.if.end115_crit_edge
  %53 = ptrtoint ptr %.pn172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn = load ptr, ptr %.pn172, align 4
  %cmp78.not = icmp eq ptr %.pn, %head72
  br i1 %cmp78.not, label %if.end115.for.end_crit_edge, label %if.end115.for.body_crit_edge

if.end115.for.body_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end115.for.end_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end115.for.end_crit_edge, %if.end70.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_uevent_send(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_disp_vblank(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_fini(ptr nocapture noundef readonly %disp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6357168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_init(ptr noundef readonly %disp) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %head3 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn283 = load ptr, ptr %head3, align 4
  %cmp.not284 = icmp eq ptr %.pn283, %head3
  br i1 %cmp.not284, label %entry.for.cond42.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond42.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond42.preheader

for.body.lr.ph:                                   ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.cond42.preheader:                             ; preds = %for.body.for.cond42.preheader_crit_edge, %entry.for.cond42.preheader_crit_edge
  %nr = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp43286 = icmp sgt i32 %4, 0
  br i1 %cmp43286, label %for.body44.lr.ph, label %for.cond42.preheader.for.cond61.preheader_crit_edge

for.cond42.preheader.for.cond61.preheader_crit_edge: ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond61.preheader

for.body44.lr.ph:                                 ; preds = %for.cond42.preheader
  %pri46 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body44

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn285 = phi ptr [ %.pn283, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %id = getelementptr i8, ptr %.pn285, i32 -4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %mul = shl i32 %6, 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add = add i32 %mul, 6381828
  %add.ptr8 = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add11 = add i32 %mul, 6357428
  %add.ptr12 = getelementptr i8, ptr %11, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #5, !srcloc !42
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add15 = add i32 %mul, 6381832
  %add.ptr16 = getelementptr i8, ptr %13, i32 %add15
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add23 = add i32 %mul, 6357432
  %add.ptr24 = getelementptr i8, ptr %16, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #5, !srcloc !42
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add27 = add i32 %mul, 6381836
  %add.ptr28 = getelementptr i8, ptr %18, i32 %add27
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add35 = add i32 %mul, 6357436
  %add.ptr36 = getelementptr i8, ptr %21, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %19) #5, !srcloc !42
  %22 = ptrtoint ptr %.pn285 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn285, align 4
  %cmp.not = icmp eq ptr %.pn, %head3
  br i1 %cmp.not, label %for.body.for.cond42.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond42.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond42.preheader

for.cond61.preheader:                             ; preds = %for.body44.for.cond61.preheader_crit_edge, %for.cond42.preheader.for.cond61.preheader_crit_edge
  %nr62 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %nr62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp63288 = icmp sgt i32 %24, 0
  br i1 %cmp63288, label %for.body64.lr.ph, label %for.cond61.preheader.for.end81_crit_edge

for.cond61.preheader.for.end81_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end81

for.body64.lr.ph:                                 ; preds = %for.cond61.preheader
  %pri66 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body64

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.lr.ph
  %i.0287 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc, %for.body44.for.body44_crit_edge ]
  %25 = ptrtoint ptr %pri46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri46, align 4
  %mul47 = shl i32 %i.0287, 11
  %add48 = add i32 %mul47, 6397952
  %add.ptr49 = getelementptr i8, ptr %26, i32 %add48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %pri46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri46, align 4
  %add57 = add i32 %mul47, 6357440
  %add.ptr58 = getelementptr i8, ptr %29, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %27) #5, !srcloc !42
  %inc = add nuw nsw i32 %i.0287, 1
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr, align 4
  %cmp43 = icmp slt i32 %inc, %31
  br i1 %cmp43, label %for.body44.for.body44_crit_edge, label %for.body44.for.cond61.preheader_crit_edge

for.body44.for.cond61.preheader_crit_edge:        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond61.preheader

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.body64.lr.ph
  %i.1289 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc80, %for.body64.for.body64_crit_edge ]
  %32 = ptrtoint ptr %pri66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri66, align 4
  %mul67 = shl i32 %i.1289, 11
  %add68 = add i32 %mul67, 6406144
  %add.ptr69 = getelementptr i8, ptr %33, i32 %add68
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %pri66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri66, align 4
  %add77 = add i32 %mul67, 6488516
  %add.ptr78 = getelementptr i8, ptr %36, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %34) #5, !srcloc !42
  %inc80 = add nuw nsw i32 %i.1289, 1
  %37 = ptrtoint ptr %nr62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr62, align 4
  %cmp63 = icmp slt i32 %inc80, %38
  br i1 %cmp63, label %for.body64.for.body64_crit_edge, label %for.body64.for.end81_crit_edge

for.body64.for.end81_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end81

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body64

for.end81:                                        ; preds = %for.body64.for.end81_crit_edge, %for.cond61.preheader.for.end81_crit_edge
  %pri83 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri83, align 4
  %add.ptr84 = getelementptr i8, ptr %40, i32 6357164
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %and = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end81.do.body156_crit_edge, label %do.body87

for.end81.do.body156_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

do.body87:                                        ; preds = %for.end81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri83, align 4
  %add.ptr91 = getelementptr i8, ptr %43, i32 6357164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 256) #5, !srcloc !42
  %44 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri83, align 4
  %add.ptr94 = getelementptr i8, ptr %45, i32 6395112
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %and100 = and i32 %46, -2
  %47 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri83, align 4
  %add.ptr102 = getelementptr i8, ptr %48, i32 6395112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %and100) #5, !srcloc !42
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %49 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body104

do.body104:                                       ; preds = %do.cond113.do.body104_crit_edge, %do.body87
  %50 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri83, align 4
  %add.ptr107 = getelementptr i8, ptr %51, i32 6395112
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #5, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %and110 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end150.thread, label %do.cond113

if.end150.thread:                                 ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %do.body156

do.cond113:                                       ; preds = %do.body104
  %call114 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp115 = icmp sgt i64 %call114, -1
  br i1 %cmp115, label %do.cond113.do.body104_crit_edge, label %do.end128

do.cond113.do.body104_crit_edge:                  ; preds = %do.cond113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body104

do.end128:                                        ; preds = %do.cond113
  %53 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_wait, align 8
  %device130 = getelementptr inbounds %struct.nvkm_timer, ptr %54, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %device130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device130, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %call131 = call ptr @dev_driver_string(ptr noundef %58) #5
  %59 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_wait, align 8
  %device134 = getelementptr inbounds %struct.nvkm_timer, ptr %60, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %device134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device134, align 4
  %dev135 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev135, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end128.if.end150_crit_edge

do.end128.if.end150_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

if.end.i:                                         ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end.i, %do.end128.if.end150_crit_edge
  %retval.0.i = phi ptr [ %68, %if.end.i ], [ %66, %do.end128.if.end150_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call131, ptr noundef %retval.0.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %cleanup

do.body156:                                       ; preds = %if.end150.thread, %for.end81.do.body156_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  call void @arm_heavy_mb() #5
  %inst = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 11
  %69 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %addr, align 8
  %shr = lshr i64 %72, 8
  %73 = trunc i64 %shr to i32
  %conv = or i32 %73, 9
  %74 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri83, align 4
  %add.ptr161 = getelementptr i8, ptr %75, i32 6357008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %conv) #5, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri83, align 4
  %add.ptr166 = getelementptr i8, ptr %77, i32 6357136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 0) #5, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri83, align 4
  %add.ptr171 = getelementptr i8, ptr %79, i32 6357152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 0) #5, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri83, align 4
  %add.ptr176 = getelementptr i8, ptr %81, i32 6357168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 775) #5, !srcloc !42
  %82 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn277290 = load ptr, ptr %head3, align 4
  %cmp187.not291 = icmp eq ptr %.pn277290, %head3
  br i1 %cmp187.not291, label %do.body156.cleanup_crit_edge, label %do.body156.for.body191_crit_edge

do.body156.for.body191_crit_edge:                 ; preds = %do.body156
  br label %for.body191

do.body156.cleanup_crit_edge:                     ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body191:                                      ; preds = %for.body191.for.body191_crit_edge, %do.body156.for.body191_crit_edge
  %.pn277292 = phi ptr [ %.pn277, %for.body191.for.body191_crit_edge ], [ %.pn277290, %do.body156.for.body191_crit_edge ]
  %id193 = getelementptr i8, ptr %.pn277292, i32 -4
  %83 = ptrtoint ptr %id193 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id193, align 4
  %mul194 = shl i32 %84, 11
  %add197 = add i32 %mul194, 6382344
  %85 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri83, align 4
  %add.ptr201 = getelementptr i8, ptr %86, i32 %add197
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr201) #5, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @arm_heavy_mb() #5
  %and207 = and i32 %87, -274
  %or208 = or i32 %and207, 16
  %88 = ptrtoint ptr %pri83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri83, align 4
  %add.ptr210 = getelementptr i8, ptr %89, i32 %add197
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 %or208) #5, !srcloc !42
  %90 = ptrtoint ptr %.pn277292 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn277 = load ptr, ptr %.pn277292, align 4
  %cmp187.not = icmp eq ptr %.pn277, %head3
  br i1 %cmp187.not, label %for.body191.cleanup_crit_edge, label %for.body191.for.body191_crit_edge

for.body191.for.body191_crit_edge:                ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body191

for.body191.cleanup_crit_edge:                    ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body191.cleanup_crit_edge, %do.body156.cleanup_crit_edge, %if.end150
  %retval.0 = phi i32 [ -16, %if.end150 ], [ 0, %do.body156.cleanup_crit_edge ], [ 0, %for.body191.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_new_(ptr noundef nonnull @gf119_disp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_head_cnt(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_head_new(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_dac_cnt(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_dac_new(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_cnt(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_new(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c", i32 43, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gf119_disp_super._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gf119_disp_super._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c", i32 46, i32 3}
!10 = !{ptr @gf119_disp_super._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gf119_disp_super._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c", i32 102, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gf119_disp_intr_error._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @gf119_disp_intr_error._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c", i32 157, i32 4}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gf119_disp_intr._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @gf119_disp_intr._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c", i32 225, i32 7}
!27 = !{ptr @gf119_disp, !28, !"gf119_disp", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c", i32 255, i32 1}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i32 0, i32 33}
!39 = !{i64 5396013}
!40 = !{i64 2156281507}
!41 = !{i64 2156308410}
!42 = !{i64 5395595}
!43 = !{i64 2156308823}
!44 = !{i64 2156309321}
!45 = !{i64 2156309748}
!46 = !{i64 2156310175}
!47 = !{i64 2156313984}
!48 = !{i64 2156314426}
!49 = !{i64 2156314882}
!50 = !{i64 2156315267}
!51 = !{i64 2156315607}
!52 = !{i64 2156316062}
!53 = !{i64 2156316469}
!54 = !{i64 2156316813}
!55 = !{i64 2156319363}
!56 = !{i64 2156323128}
!57 = !{i64 2156323887}
!58 = !{i64 2156324253}
!59 = !{i64 2156324744}
!60 = !{i64 2156325086}
!61 = !{i64 2156328857}
!62 = !{i64 2156329199}
!63 = !{i64 2156329669}
!64 = !{i64 2156330011}
!65 = !{i64 2156330481}
!66 = !{i64 2156330823}
!67 = !{i64 2156331314}
!68 = !{i64 2156331670}
!69 = !{i64 2156332161}
!70 = !{i64 2156332517}
!71 = !{i64 2156332966}
!72 = !{i64 2156333308}
!73 = !{i64 2156334149}
!74 = !{i64 2156334551}
!75 = !{i64 2156336468}
!76 = !{i64 2156337742}
!77 = !{i64 2156338172}
!78 = !{i64 2156338585}
!79 = !{i64 2156338998}
!80 = !{i64 2156343140}
!81 = !{i64 2156343542}
