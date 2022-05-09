; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.144, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.144 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.141, %struct.anon.141, %struct.anon.141, %struct.anon.142, %struct.anon.143, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.139 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.139 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.141 = type { i32, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.anon.143 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nv50_disp_pioc_func = dso_local constant { %struct.nv50_disp_chan_func, [44 x i8] } { %struct.nv50_disp_chan_func { ptr @nv50_disp_pioc_init, ptr @nv50_disp_pioc_fini, ptr @nv50_disp_chan_intr, ptr @nv50_disp_chan_user, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv50_disp_pioc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ch %d timeout0: %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_pioc_init\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_disp_pioc_init._entry_ptr = internal global ptr @nv50_disp_pioc_init._entry, section ".printk_index", align 4
@nv50_disp_pioc_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 74, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ch %d timeout1: %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@nv50_disp_pioc_init._entry_ptr.8 = internal global ptr @nv50_disp_pioc_init._entry.6, section ".printk_index", align 4
@nv50_disp_pioc_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 44, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: ch %d timeout: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_pioc_fini\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_pioc_fini._entry_ptr = internal global ptr @nv50_disp_pioc_fini._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"nv50_disp_pioc_func\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 82, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 58, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 62, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 73, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 43, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nv50_disp_pioc_fini._entry, ptr @nv50_disp_pioc_fini._entry_ptr, ptr @nv50_disp_pioc_init._entry, ptr @nv50_disp_pioc_init._entry.6, ptr @nv50_disp_pioc_init._entry_ptr, ptr @nv50_disp_pioc_init._entry_ptr.8, ptr @nv50_disp_pioc_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_pioc_func to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_pioc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_pioc_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_pioc_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_pioc_init(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait77 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 8
  %device3 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %chid = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid, align 4
  %user6 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %user6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 6357504
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8192) #4, !srcloc !31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body7

do.body7:                                         ; preds = %do.cond12.do.body7_crit_edge, %entry
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 %add
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %and = and i32 %13, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body70, label %do.cond12

do.cond12:                                        ; preds = %do.body7
  %call13 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call13, -1
  br i1 %cmp, label %do.cond12.do.body7_crit_edge, label %do.end25

do.cond12.do.body7_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body7

do.end25:                                         ; preds = %do.cond12
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device27 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device27, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call28 = call ptr @dev_driver_string(ptr noundef %19) #4
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device31 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device31, align 4
  %dev32 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev32, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end25.do.body51_crit_edge

do.end25.do.body51_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body51

if.end.i:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %do.body51

do.body51:                                        ; preds = %if.end.i, %do.end25.do.body51_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end25.do.body51_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call28, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp52.not = icmp eq i32 %31, 0
  br i1 %cmp52.not, label %do.body51.cleanup164_crit_edge, label %do.end56

do.body51.cleanup164_crit_edge:                   ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup164

do.end56:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device3, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev58, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %37, i32 %add
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #4, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %7, i32 noundef %38) #7
  br label %cleanup164

do.body70:                                        ; preds = %do.body7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr76 = getelementptr i8, ptr %40, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 1) #4, !srcloc !31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait77) #4
  %41 = call ptr @memset(ptr %_wait77, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait77) #4
  br label %do.body80

do.body80:                                        ; preds = %do.cond93.do.body80_crit_edge, %do.body70
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr86 = getelementptr i8, ptr %43, i32 %add
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #4, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %and89 = and i32 %44, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and89)
  %cmp90 = icmp eq i32 %and89, 65536
  br i1 %cmp90, label %if.end137.thread, label %do.cond93

if.end137.thread:                                 ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait77) #4
  br label %cleanup164

do.cond93:                                        ; preds = %do.body80
  %call94 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait77) #4
  %cmp95 = icmp sgt i64 %call94, -1
  br i1 %cmp95, label %do.cond93.do.body80_crit_edge, label %do.end113

do.cond93.do.body80_crit_edge:                    ; preds = %do.cond93
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body80

do.end113:                                        ; preds = %do.cond93
  %45 = ptrtoint ptr %_wait77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_wait77, align 8
  %device116 = getelementptr inbounds %struct.nvkm_timer, ptr %46, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %device116 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device116, align 4
  %dev117 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev117, align 8
  %call118 = call ptr @dev_driver_string(ptr noundef %50) #4
  %51 = ptrtoint ptr %_wait77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_wait77, align 8
  %device121 = getelementptr inbounds %struct.nvkm_timer, ptr %52, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %device121 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device121, align 4
  %dev122 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev122, align 8
  %init_name.i194 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i194 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i194, align 8
  %tobool.not.i195 = icmp eq ptr %58, null
  br i1 %tobool.not.i195, label %if.end.i196, label %do.end113.do.body141_crit_edge

do.end113.do.body141_crit_edge:                   ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body141

if.end.i196:                                      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  br label %do.body141

do.body141:                                       ; preds = %if.end.i196, %do.end113.do.body141_crit_edge
  %retval.0.i197 = phi ptr [ %60, %if.end.i196 ], [ %58, %do.end113.do.body141_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call118, ptr noundef %retval.0.i197) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait77) #4
  %debug143 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %61 = ptrtoint ptr %debug143 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp144.not = icmp eq i32 %62, 0
  br i1 %cmp144.not, label %do.body141.cleanup164_crit_edge, label %do.end148

do.body141.cleanup164_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup164

do.end148:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device3, align 4
  %dev150 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev150, align 8
  %name151 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %67 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri, align 4
  %add.ptr157 = getelementptr i8, ptr %68, i32 %add
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #4, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.7, ptr noundef %name151, i32 noundef %7, i32 noundef %69) #7
  br label %cleanup164

cleanup164:                                       ; preds = %do.end148, %do.body141.cleanup164_crit_edge, %if.end137.thread, %do.end56, %do.body51.cleanup164_crit_edge
  %retval.0 = phi i32 [ -16, %do.end56 ], [ -16, %do.body51.cleanup164_crit_edge ], [ -16, %do.end148 ], [ -16, %do.body141.cleanup164_crit_edge ], [ 0, %if.end137.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_pioc_fini(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 8
  %device3 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %chid = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid, align 4
  %user6 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %user6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user6, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 6357504
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %and = and i32 %10, -2
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %and) #4, !srcloc !31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %13 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body10

do.body10:                                        ; preds = %do.cond19.do.body10_crit_edge, %entry
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 %add
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #4, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %and18 = and i32 %16, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.end54.thread, label %do.cond19

if.end54.thread:                                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %if.end76

do.cond19:                                        ; preds = %do.body10
  %call20 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call20, -1
  br i1 %cmp, label %do.cond19.do.body10_crit_edge, label %do.end32

do.cond19.do.body10_crit_edge:                    ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.end32:                                         ; preds = %do.cond19
  %17 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_wait, align 8
  %device34 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device34, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %22) #4
  %23 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_wait, align 8
  %device38 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device38, align 4
  %dev39 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev39, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end32.do.body58_crit_edge

do.end32.do.body58_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body58

if.end.i:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %do.body58

do.body58:                                        ; preds = %if.end.i, %do.end32.do.body58_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %do.end32.do.body58_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call35, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp59.not = icmp eq i32 %34, 0
  br i1 %cmp59.not, label %do.body58.if.end76_crit_edge, label %do.end63

do.body58.if.end76_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device3, align 4
  %dev65 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev65, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr70 = getelementptr i8, ptr %40, i32 %add
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #4, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %7, i32 noundef %41) #7
  br label %if.end76

if.end76:                                         ; preds = %do.end63, %do.body58.if.end76_crit_edge, %if.end54.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_intr(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @nv50_disp_pioc_func, !1, !"nv50_disp_pioc_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c", i32 82, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c", i32 58, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c", i32 62, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv50_disp_pioc_init._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv50_disp_pioc_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c", i32 73, i32 3}
!14 = !{ptr @nv50_disp_pioc_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nv50_disp_pioc_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c", i32 43, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nv50_disp_pioc_fini._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nv50_disp_pioc_fini._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2156253580}
!31 = !{i64 5386028}
!32 = !{i64 5386446}
!33 = !{i64 2156255559}
!34 = !{i64 2156259385}
!35 = !{i64 2156259762}
!36 = !{i64 2156261804}
!37 = !{i64 2156265657}
!38 = !{i64 2156246979}
!39 = !{i64 2156247381}
!40 = !{i64 2156249392}
!41 = !{i64 2156253206}
