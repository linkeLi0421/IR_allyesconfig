; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdmi_i2c_adapter = type { %struct.i2c_adapter, ptr, i8, %struct.wait_queue_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.94 = type { i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@msm_hdmi_i2c_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hdmi_i2c->ddc_event\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msm hdmi i2c\00", [19 x i8] zeroinitializer }, align 32
@msm_hdmi_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @msm_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @msm_hdmi_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msm_hdmi_i2c_xfer.nack = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4096, i32 8192, i32 16384, i32 32768], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/hdmi/hdmi_i2c.c\00", [60 x i8] zeroinitializer }, align 32
@msm_hdmi_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DDC timeout: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_hdmi_i2c_xfer\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_hdmi_i2c_xfer._entry_ptr = internal global ptr @msm_hdmi_i2c_xfer._entry, section ".printk_index", align 4
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sw_status=%08x, hw_status=%08x, int_ctrl=%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ddc_status=%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* timeout waiting for DDC\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 248, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 253, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"msm_hdmi_i2c_algorithm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 213, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"nack\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 95, i32 24 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 105, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 167, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 168, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 186, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [39 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @msm_hdmi_i2c_xfer._entry, ptr @msm_hdmi_i2c_xfer._entry_ptr, ptr @msm_hdmi_i2c_init.__key, ptr @.str, ptr @.str.1, ptr @msm_hdmi_i2c_algorithm, ptr @msm_hdmi_i2c_xfer.nack, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_i2c_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_i2c_xfer.nack to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_i2c_irq(ptr noundef %i2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_done.i = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %i2c, i32 0, i32 2
  %0 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sw_done.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i:                                        ; preds = %entry
  %hdmi1.i = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %hdmi1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1.i, align 8
  %mmio.i.i = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 532
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #7
  %6 = and i32 %call.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %.not.i = icmp eq i32 %6, 5
  br i1 %.not.i, label %if.then5.i, label %if.then.i.sw_done.exit_crit_edge

if.then.i.sw_done.exit_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_done.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %sw_done.i, align 4
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %9, i32 532
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i16.i) #7
  br label %sw_done.exit

sw_done.exit:                                     ; preds = %if.then5.i, %if.then.i.sw_done.exit_crit_edge
  %10 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %sw_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool9.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool9.i.not, label %sw_done.exit.if.end_crit_edge, label %sw_done.exit.if.then_crit_edge

sw_done.exit.if.then_crit_edge:                   ; preds = %sw_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw_done.exit.if.end_crit_edge:                    ; preds = %sw_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw_done.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ddc_event = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %i2c, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %ddc_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw_done.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_i2c_destroy(ptr noundef %i2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef %i2c) #7
  tail call void @kfree(ptr noundef %i2c) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_hdmi_i2c_init(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1424) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdmi1 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdmi, ptr %hdmi1, align 8
  %ddc_event = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %ddc_event, ptr noundef nonnull @.str, ptr noundef nonnull @msm_hdmi_i2c_init.__key) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call7.i.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %class, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %4 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 13)
  %pdev = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @msm_hdmi_i2c_algorithm, ptr %algo, align 8
  %call4 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_adapter(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %phi.cast = inttoptr i32 %call4 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end.cleanup_crit_edge ], [ %phi.cast, %if.then9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_i2c_xfer(ptr noundef %i2c, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %indices = alloca [4 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %i2c, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %indices) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %num, i32 4)
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %5 = call ptr @memset(ptr %indices, i32 255, i32 16)
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %call.i = tail call i32 @msm_readl(ptr noundef %7) #7
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !35

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25 = icmp eq i32 %4, 0
  br i1 %cmp25, label %if.end.cleanup201_crit_edge, label %if.end27

if.end.cleanup201_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

if.end27:                                         ; preds = %if.end
  %8 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmi1, align 8
  %mmio.i.i = getelementptr inbounds %struct.hdmi, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 524
  tail call void @msm_writel(i32 noundef 8, ptr noundef %add.ptr.i.i) #7
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %13, i32 524
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i11.i) #7
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %15, i32 544
  tail call void @msm_writel(i32 noundef 655362, ptr noundef %add.ptr.i13.i) #7
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %17, i32 548
  tail call void @msm_writel(i32 noundef -16777216, ptr noundef %add.ptr.i15.i) #7
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %19, i32 636
  tail call void @msm_writel(i32 noundef 65563, ptr noundef %add.ptr.i17.i) #7
  %20 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdmi1, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %mmio.i.i294 = getelementptr inbounds %struct.hdmi, ptr %21, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end27
  %retry.0.i = phi i32 [ 65535, %if.end27 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %retry.0.i, -1
  %24 = ptrtoint ptr %mmio.i.i294 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i294, align 4
  %add.ptr.i.i295 = getelementptr i8, ptr %25, i32 532
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr.i.i295) #7
  %26 = ptrtoint ptr %mmio.i.i294 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i294, align 4
  %add.ptr.i15.i296 = getelementptr i8, ptr %27, i32 532
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i15.i296) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %tobool3.not.i, label %ddc_clear_irq.exit.thread, label %ddc_clear_irq.exit

ddc_clear_irq.exit.thread:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %cleanup201

ddc_clear_irq.exit:                               ; preds = %do.end.i
  %sw_done.i = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %i2c, i32 0, i32 2
  %30 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %sw_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp32371 = icmp sgt i32 %num, 0
  br i1 %cmp32371, label %for.body.lr.ph, label %ddc_clear_irq.exit.for.end88_crit_edge

ddc_clear_irq.exit.for.end88_crit_edge:           ; preds = %ddc_clear_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end88

for.body.lr.ph:                                   ; preds = %ddc_clear_irq.exit
  %sub = add i32 %4, -1
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end68.for.body_crit_edge, %for.body.lr.ph
  %i.0373 = phi i32 [ 0, %for.body.lr.ph ], [ %inc87, %if.end68.for.body_crit_edge ]
  %index.0372 = phi i32 [ 0, %for.body.lr.ph ], [ %index.2, %if.end68.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0373
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %32 to i32
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0373, i32 1
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags, align 2
  %35 = shl nuw nsw i32 %conv, 9
  %36 = shl i16 %34, 8
  %37 = and i16 %36, 256
  %38 = zext i16 %37 to i32
  %.masked = and i32 %35, 65024
  %and.i297 = or i32 %.masked, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0373)
  %cmp41 = icmp eq i32 %i.0373, 0
  %or46 = or i32 %and.i297, -2147483648
  %spec.select365 = select i1 %cmp41, i32 %or46, i32 %and.i297
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 568
  tail call void @msm_writel(i32 noundef %spec.select365, ptr noundef %add.ptr.i) #7
  %inc = add i32 %index.0372, 1
  %arrayidx48 = getelementptr [4 x i32], ptr %indices, i32 0, i32 %i.0373
  %41 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc, ptr %arrayidx48, align 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags, align 2
  %44 = and i16 %43, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool52.not = icmp eq i16 %44, 0
  %len56 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0373, i32 2
  %45 = ptrtoint ptr %len56 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len56, align 4
  br i1 %tobool52.not, label %for.cond55.preheader, label %if.then53

for.cond55.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp58368.not = icmp eq i16 %46, 0
  br i1 %cmp58368.not, label %for.cond55.preheader.if.end68_crit_edge, label %for.body60.lr.ph

for.cond55.preheader.if.end68_crit_edge:          ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

for.body60.lr.ph:                                 ; preds = %for.cond55.preheader
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0373, i32 3
  br label %for.body60

if.then53:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv54 = zext i16 %46 to i32
  %add = add i32 %inc, %conv54
  br label %if.end68

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.body60.lr.ph
  %index.1370 = phi i32 [ %inc, %for.body60.lr.ph ], [ %inc66, %for.body60.for.body60_crit_edge ]
  %j.0369 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc67, %for.body60.for.body60_crit_edge ]
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf, align 4
  %arrayidx61 = getelementptr i8, ptr %48, i32 %j.0369
  %49 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %50 to i32
  %shl.i299 = shl nuw nsw i32 %conv62, 8
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i302 = getelementptr i8, ptr %52, i32 568
  tail call void @msm_writel(i32 noundef %shl.i299, ptr noundef %add.ptr.i302) #7
  %inc66 = add i32 %index.1370, 1
  %inc67 = add nuw nsw i32 %j.0369, 1
  %53 = ptrtoint ptr %len56 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %len56, align 4
  %conv57 = zext i16 %54 to i32
  %cmp58 = icmp ult i32 %inc67, %conv57
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.body60.if.end68_crit_edge

for.body60.if.end68_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body60

if.end68:                                         ; preds = %for.body60.if.end68_crit_edge, %if.then53, %for.cond55.preheader.if.end68_crit_edge
  %index.2 = phi i32 [ %add, %if.then53 ], [ %inc, %for.cond55.preheader.if.end68_crit_edge ], [ %inc66, %for.body60.if.end68_crit_edge ]
  %len69 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0373, i32 2
  %55 = ptrtoint ptr %len69 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len69, align 4
  %conv70 = zext i16 %56 to i32
  %shl.i303 = shl nuw i32 %conv70, 16
  %and.i304 = and i32 %shl.i303, 16711680
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags, align 2
  %59 = and i16 %58, 1
  %60 = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0373, i32 %sub)
  %cmp80 = icmp eq i32 %i.0373, %sub
  %spec.select291.v = select i1 %cmp80, i32 12288, i32 4096
  %or78 = or i32 %spec.select291.v, %60
  %spec.select291 = or i32 %or78, %and.i304
  %mul.i = shl i32 %i.0373, 2
  %add.i = add nuw nsw i32 %mul.i, 552
  %61 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %62, i32 %add.i
  tail call void @msm_writel(i32 noundef %spec.select291, ptr noundef %add.ptr.i307) #7
  %inc87 = add nuw nsw i32 %i.0373, 1
  %exitcond.not = icmp eq i32 %inc87, %smax
  br i1 %exitcond.not, label %if.end68.for.end88_crit_edge, label %if.end68.for.body_crit_edge

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end68.for.end88_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end88

for.end88:                                        ; preds = %if.end68.for.end88_crit_edge, %ddc_clear_irq.exit.for.end88_crit_edge
  %sub89 = shl i32 %4, 20
  %shl.i308 = add i32 %sub89, 3145728
  %and.i309 = and i32 %shl.i308, 3145728
  %or91 = or i32 %and.i309, 1
  %63 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i311 = getelementptr i8, ptr %64, i32 524
  tail call void @msm_writel(i32 noundef %or91, ptr noundef %add.ptr.i311) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 163) #7
  %65 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sw_done.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i313 = icmp eq i8 %66, 0
  br i1 %tobool.not.i313, label %if.then.i318, label %for.end88.if.end156_crit_edge

for.end88.if.end156_crit_edge:                    ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then.i318:                                     ; preds = %for.end88
  %67 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hdmi1, align 8
  %mmio.i.i315 = getelementptr inbounds %struct.hdmi, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %mmio.i.i315 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i.i315, align 4
  %add.ptr.i.i316 = getelementptr i8, ptr %70, i32 532
  %call.i.i317 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i316) #7
  %71 = and i32 %call.i.i317, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %71)
  %.not.i = icmp eq i32 %71, 5
  br i1 %.not.i, label %if.then5.i, label %if.then.i318.sw_done.exit_crit_edge

if.then.i318.sw_done.exit_crit_edge:              ; preds = %if.then.i318
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_done.exit

if.then5.i:                                       ; preds = %if.then.i318
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %sw_done.i, align 4
  %73 = ptrtoint ptr %mmio.i.i315 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i315, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %74, i32 532
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i16.i) #7
  br label %sw_done.exit

sw_done.exit:                                     ; preds = %if.then5.i, %if.then.i318.sw_done.exit_crit_edge
  %75 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %.pr = load i8, ptr %sw_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool9.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool9.i.not, label %if.then111, label %sw_done.exit.if.end156_crit_edge

sw_done.exit.if.end156_crit_edge:                 ; preds = %sw_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then111:                                       ; preds = %sw_done.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %76 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %ddc_event = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %i2c, i32 0, i32 3
  br label %for.cond113

for.cond113:                                      ; preds = %cleanup, %if.then111
  %__ret112.0 = phi i32 [ 25, %if.then111 ], [ %call136, %cleanup ]
  %call114 = call i32 @prepare_to_wait_event(ptr noundef %ddc_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %77 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sw_done.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i320 = icmp eq i8 %78, 0
  br i1 %tobool.not.i320, label %if.then.i326, label %for.cond113.sw_done.exit330_crit_edge

for.cond113.sw_done.exit330_crit_edge:            ; preds = %for.cond113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_done.exit330

if.then.i326:                                     ; preds = %for.cond113
  %79 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hdmi1, align 8
  %mmio.i.i322 = getelementptr inbounds %struct.hdmi, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %mmio.i.i322 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i.i322, align 4
  %add.ptr.i.i323 = getelementptr i8, ptr %82, i32 532
  %call.i.i324 = call i32 @msm_readl(ptr noundef %add.ptr.i.i323) #7
  %83 = and i32 %call.i.i324, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %83)
  %.not.i325 = icmp eq i32 %83, 5
  br i1 %.not.i325, label %if.then5.i328, label %if.then.i326.sw_done.exit330_crit_edge

if.then.i326.sw_done.exit330_crit_edge:           ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_done.exit330

if.then5.i328:                                    ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %sw_done.i, align 4
  %85 = ptrtoint ptr %mmio.i.i322 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i.i322, align 4
  %add.ptr.i16.i327 = getelementptr i8, ptr %86, i32 532
  call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i16.i327) #7
  br label %sw_done.exit330

sw_done.exit330:                                  ; preds = %if.then5.i328, %if.then.i326.sw_done.exit330_crit_edge, %for.cond113.sw_done.exit330_crit_edge
  %87 = ptrtoint ptr %sw_done.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sw_done.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool9.i329 = icmp ne i8 %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.0)
  %tobool121.not = icmp eq i32 %__ret112.0, 0
  %89 = select i1 %tobool9.i329, i1 %tobool121.not, i1 false
  %__ret112.1 = select i1 %89, i32 1, i32 %__ret112.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.1)
  %tobool128.not = icmp eq i32 %__ret112.1, 0
  %90 = select i1 %tobool9.i329, i1 true, i1 %tobool128.not
  br i1 %90, label %if.end140, label %cleanup

cleanup:                                          ; preds = %sw_done.exit330
  call void @__sanitizer_cov_trace_pc() #9
  %call136 = call i32 @schedule_timeout(i32 noundef %__ret112.1) #7
  br label %for.cond113

if.end140:                                        ; preds = %sw_done.exit330
  call void @finish_wait(ptr noundef %ddc_event, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret112.1)
  %cmp142 = icmp slt i32 %__ret112.1, 1
  br i1 %cmp142, label %if.then144, label %if.end140.if.end156_crit_edge

if.end140.if.end156_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then144:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  %spec.store.select213 = select i1 %tobool128.not, i32 -110, i32 %__ret112.1
  %dev152 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %91 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev152, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.3, i32 noundef %spec.store.select213) #11
  %93 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i332 = getelementptr i8, ptr %94, i32 536
  %call.i333 = call i32 @msm_readl(ptr noundef %add.ptr.i332) #7
  %95 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i335 = getelementptr i8, ptr %96, i32 540
  %call.i336 = call i32 @msm_readl(ptr noundef %add.ptr.i335) #7
  %97 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i338 = getelementptr i8, ptr %98, i32 532
  %call.i339 = call i32 @msm_readl(ptr noundef %add.ptr.i338) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %call.i333, i32 noundef %call.i336, i32 noundef %call.i339) #7
  br label %cleanup201

if.end156:                                        ; preds = %if.end140.if.end156_crit_edge, %sw_done.exit.if.end156_crit_edge, %for.end88.if.end156_crit_edge
  %99 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i341 = getelementptr i8, ptr %100, i32 536
  %call.i342 = call i32 @msm_readl(ptr noundef %add.ptr.i341) #7
  br i1 %cmp32371, label %for.body161.preheader, label %if.end156.cleanup201_crit_edge

if.end156.cleanup201_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

for.body161.preheader:                            ; preds = %if.end156
  %smax383 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  br label %for.body161

for.body161:                                      ; preds = %for.inc198.for.body161_crit_edge, %for.body161.preheader
  %i.1378 = phi i32 [ %inc199, %for.inc198.for.body161_crit_edge ], [ 0, %for.body161.preheader ]
  %flags164 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1378, i32 1
  %101 = ptrtoint ptr %flags164 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %flags164, align 2
  %103 = and i16 %102, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool167.not = icmp eq i16 %103, 0
  br i1 %tobool167.not, label %for.body161.for.inc198_crit_edge, label %if.end169

for.body161.for.inc198_crit_edge:                 ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc198

if.end169:                                        ; preds = %for.body161
  %arrayidx170 = getelementptr [4 x i32], ptr @msm_hdmi_i2c_xfer.nack, i32 0, i32 %i.1378
  %104 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx170, align 4
  %and171 = and i32 %105, %call.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end174, label %cleanup195

if.end174:                                        ; preds = %if.end169
  %arrayidx176 = getelementptr [4 x i32], ptr %indices, i32 0, i32 %i.1378
  %106 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx176, align 4
  %shl.i343 = shl i32 %107, 16
  %and.i344 = and i32 %shl.i343, 16711680
  %or179 = or i32 %and.i344, -2147483647
  %108 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i346 = getelementptr i8, ptr %109, i32 568
  call void @msm_writel(i32 noundef %or179, ptr noundef %add.ptr.i346) #7
  %110 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i348 = getelementptr i8, ptr %111, i32 568
  %call.i349 = call i32 @msm_readl(ptr noundef %add.ptr.i348) #7
  %len182 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1378, i32 2
  %112 = ptrtoint ptr %len182 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %len182, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp184375.not = icmp eq i16 %113, 0
  br i1 %cmp184375.not, label %if.end174.for.inc198_crit_edge, label %for.body186.lr.ph

if.end174.for.inc198_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc198

for.body186.lr.ph:                                ; preds = %if.end174
  %buf190 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1378, i32 3
  br label %for.body186

for.body186:                                      ; preds = %for.body186.for.body186_crit_edge, %for.body186.lr.ph
  %j.1376 = phi i32 [ 0, %for.body186.lr.ph ], [ %inc193, %for.body186.for.body186_crit_edge ]
  %114 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i351 = getelementptr i8, ptr %115, i32 568
  %call.i352 = call i32 @msm_readl(ptr noundef %add.ptr.i351) #7
  %and188 = lshr i32 %call.i352, 8
  %conv189 = trunc i32 %and188 to i8
  %116 = ptrtoint ptr %buf190 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buf190, align 4
  %arrayidx191 = getelementptr i8, ptr %117, i32 %j.1376
  %118 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv189, ptr %arrayidx191, align 1
  %inc193 = add nuw nsw i32 %j.1376, 1
  %119 = ptrtoint ptr %len182 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %len182, align 4
  %conv183 = zext i16 %120 to i32
  %cmp184 = icmp ult i32 %inc193, %conv183
  br i1 %cmp184, label %for.body186.for.body186_crit_edge, label %for.body186.for.inc198_crit_edge

for.body186.for.inc198_crit_edge:                 ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc198

for.body186.for.body186_crit_edge:                ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body186

cleanup195:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %call.i342) #7
  br label %cleanup201

for.inc198:                                       ; preds = %for.body186.for.inc198_crit_edge, %if.end174.for.inc198_crit_edge, %for.body161.for.inc198_crit_edge
  %inc199 = add nuw nsw i32 %i.1378, 1
  %exitcond384.not = icmp eq i32 %inc199, %smax383
  br i1 %exitcond384.not, label %for.inc198.cleanup201_crit_edge, label %for.inc198.for.body161_crit_edge

for.inc198.for.body161_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body161

for.inc198.cleanup201_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

cleanup201:                                       ; preds = %for.inc198.cleanup201_crit_edge, %cleanup195, %if.end156.cleanup201_crit_edge, %if.then144, %ddc_clear_irq.exit.thread, %if.end.cleanup201_crit_edge
  %retval.0 = phi i32 [ %spec.store.select213, %if.then144 ], [ 0, %if.end.cleanup201_crit_edge ], [ %i.1378, %cleanup195 ], [ -110, %ddc_clear_irq.exit.thread ], [ 0, %if.end156.cleanup201_crit_edge ], [ %smax383, %for.inc198.cleanup201_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indices) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msm_hdmi_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @msm_hdmi_i2c_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 248, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 253, i32 41}
!5 = !{ptr @msm_hdmi_i2c_algorithm, !6, !"msm_hdmi_i2c_algorithm", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 213, i32 35}
!7 = !{ptr @msm_hdmi_i2c_xfer.nack, !8, !"nack", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 95, i32 24}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 105, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 167, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @msm_hdmi_i2c_xfer._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @msm_hdmi_i2c_xfer._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 168, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 186, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c", i32 58, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
!35 = !{!"branch_weights", i32 1, i32 2000}
