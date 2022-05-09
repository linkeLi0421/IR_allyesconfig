; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/qm1d1b0004.c_pt.bc'
source_filename = "../drivers/media/tuners/qm1d1b0004.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qm1d1b0004_cb_map = type { i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.qm1d1b0004_state = type { %struct.qm1d1b0004_config, ptr }
%struct.qm1d1b0004_config = type { ptr, i32, i8 }

@__initcall__kmod_qm1d1b0004__290_262_qm1d1b0004_driver_init6 = internal global ptr @qm1d1b0004_driver_init, section ".initcall6.init", align 4
@qm1d1b0004_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @qm1d1b0004_probe, ptr @qm1d1b0004_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @qm1d1b0004_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qm1d1b0004_driver_exit = internal global ptr @qm1d1b0004_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [40 x i8] c"qm1d1b0004.description=Sharp QM1D1B0004\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [34 x i8] c"qm1d1b0004.author=Akihiro Tsukada\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [48 x i8] c"qm1d1b0004.file=drivers/media/tuners/qm1d1b0004\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"qm1d1b0004.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qm1d1b0004\00", [21 x i8] zeroinitializer }, align 32
@qm1d1b0004_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qm1d1b0004\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qm1d1b0004_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sharp qm1d1b0004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @qm1d1b0004_init, ptr null, ptr null, ptr null, ptr @qm1d1b0004_set_params, ptr null, ptr @qm1d1b0004_set_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qm1d1b0004_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sharp QM1D1B0004 attached.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qm1d1b0004_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/tuners/qm1d1b0004.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qm1d1b0004_probe._entry_ptr = internal global ptr @qm1d1b0004_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cb_maps = internal constant { [8 x %struct.qm1d1b0004_cb_map], [32 x i8] } { [8 x %struct.qm1d1b0004_cb_map] [%struct.qm1d1b0004_cb_map { i32 986000, i8 -78 }, %struct.qm1d1b0004_cb_map { i32 1072000, i8 -46 }, %struct.qm1d1b0004_cb_map { i32 1154000, i8 -30 }, %struct.qm1d1b0004_cb_map { i32 1291000, i8 32 }, %struct.qm1d1b0004_cb_map { i32 1447000, i8 64 }, %struct.qm1d1b0004_cb_map { i32 1615000, i8 96 }, %struct.qm1d1b0004_cb_map { i32 1791000, i8 -128 }, %struct.qm1d1b0004_cb_map { i32 1972000, i8 -96 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"qm1d1b0004_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 253, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 255, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"qm1d1b0004_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 246, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"qm1d1b0004_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 185, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 225, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"cb_maps\00", align 1
@___asan_gen_.37 = private constant [37 x i8] c"../drivers/media/tuners/qm1d1b0004.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 80, i32 39 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_qm1d1b0004_driver_exit, ptr @__initcall__kmod_qm1d1b0004__290_262_qm1d1b0004_driver_init6, ptr @qm1d1b0004_driver_exit, ptr @qm1d1b0004_probe._entry, ptr @qm1d1b0004_probe._entry_ptr, ptr @qm1d1b0004_driver, ptr @.str, ptr @qm1d1b0004_id, ptr @qm1d1b0004_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cb_maps], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1b0004_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1b0004_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1b0004_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1b0004_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_maps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1b0004_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @qm1d1b0004_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qm1d1b0004_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @qm1d1b0004_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1b0004_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #11
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %err_mem, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %7 = call ptr @memcpy(ptr %tuner_ops, ptr @qm1d1b0004_ops, i32 220)
  %i2c = getelementptr inbounds %struct.qm1d1b0004_state, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %i2c, align 4
  %9 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner_priv, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %1, i32 12)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

err_mem:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_mem, %if.end
  %retval.0 = phi i32 [ -12, %err_mem ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1b0004_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tuner_priv, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qm1d1b0004_set_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %priv_cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %priv_cfg, i32 12)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1b0004_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -2044, ptr %buf, align 2
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv, align 4
  %half_step = getelementptr inbounds %struct.qm1d1b0004_config, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %half_step to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %half_step, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 2
  %7 = or i8 %6, 1
  store i8 %7, ptr %buf, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c = getelementptr inbounds %struct.qm1d1b0004_state, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1b0004_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %half_step = getelementptr inbounds %struct.qm1d1b0004_config, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %half_step to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %half_step, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool.not, i32 1000, i32 500
  %div2129 = lshr exact i32 %spec.select, 1
  %add = add i32 %div2129, %6
  %div3 = udiv i32 %add, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 986000, i32 %6)
  %cmp2.i = icmp ult i32 %6, 986000
  br i1 %cmp2.i, label %entry.if.then.i_crit_edge, label %for.inc.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %cb.i = getelementptr [8 x %struct.qm1d1b0004_cb_map], ptr @cb_maps, i32 0, i32 %i.08.lcssa.i, i32 1
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cb.i, align 4
  br label %lookup_cb.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1072000, i32 %6)
  %cmp2.1.i = icmp ult i32 %6, 1072000
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1154000, i32 %6)
  %cmp2.2.i = icmp ult i32 %6, 1154000
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1291000, i32 %6)
  %cmp2.3.i = icmp ult i32 %6, 1291000
  br i1 %cmp2.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1447000, i32 %6)
  %cmp2.4.i = icmp ult i32 %6, 1447000
  br i1 %cmp2.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1615000, i32 %6)
  %cmp2.5.i = icmp ult i32 %6, 1615000
  br i1 %cmp2.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791000, i32 %6)
  %cmp2.6.i = icmp ult i32 %6, 1791000
  br i1 %cmp2.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1972000, i32 %6)
  %cmp2.7.i = icmp ult i32 %6, 1972000
  br i1 %cmp2.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.lookup_cb.exit_crit_edge

for.inc.6.i.lookup_cb.exit_crit_edge:             ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lookup_cb.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lookup_cb.exit:                                   ; preds = %for.inc.6.i.lookup_cb.exit_crit_edge, %if.then.i
  %retval.0.i = phi i8 [ %10, %if.then.i ], [ -64, %for.inc.6.i.lookup_cb.exit_crit_edge ]
  %11 = and i8 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  %shl = shl nuw nsw i32 %div3, 1
  %and8 = and i32 %shl, 65504
  %and10 = and i32 %div3, 15
  %or = or i32 %and8, %and10
  %word.0.in = select i1 %tobool5.not, i32 %div3, i32 %or
  %12 = lshr i32 %word.0.in, 8
  %13 = trunc i32 %12 to i8
  %conv15 = or i8 %13, 64
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %buf, align 1
  %conv16 = trunc i32 %word.0.in to i8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %0, align 1
  %16 = or i8 %8, -32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %1, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i, ptr %2, align 1
  %i2c = getelementptr inbounds %struct.qm1d1b0004_state, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %lookup_cb.exit.cleanup_crit_edge, label %if.end29

lookup_cb.exit.cleanup_crit_edge:                 ; preds = %lookup_cb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %lookup_cb.exit
  %21 = ptrtoint ptr %half_step to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %half_step, align 4, !range !37
  %23 = or i8 %22, -28
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %buf, align 1
  %25 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c, align 4
  %call.i131 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp40 = icmp slt i32 %call.i131, 0
  br i1 %cmp40, label %if.end29.cleanup_crit_edge, label %if.end43

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  call void @msleep(i32 noundef 20) #8
  %lpf_freq45 = getelementptr inbounds %struct.qm1d1b0004_config, ptr %4, i32 0, i32 1
  %27 = ptrtoint ptr %lpf_freq45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lpf_freq45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp46 = icmp eq i32 %28, 0
  br i1 %cmp46, label %if.then48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %29 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %symbol_rate, align 4
  %div50 = udiv i32 %30, 1000
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.if.end51_crit_edge
  %lpf_freq.0 = phi i32 [ %div50, %if.then48 ], [ %28, %if.end43.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lpf_freq.0)
  %cmp52 = icmp eq i32 %lpf_freq.0, 0
  %lpf_freq.0.op.op = add i32 %lpf_freq.0, 1999
  %lpf_freq.0.op.op.op = udiv i32 %lpf_freq.0.op.op, 2000
  %31 = ptrtoint ptr %half_step to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %half_step, align 4, !range !37
  %33 = trunc i32 %lpf_freq.0.op.op.op to i8
  %34 = add i8 %33, -2
  %conv60.tr = select i1 %cmp52, i8 13, i8 %34
  %35 = shl i8 %conv60.tr, 1
  %36 = and i8 %35, 24
  %37 = or i8 %32, %36
  %conv69 = or i8 %37, -28
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv69, ptr %buf, align 1
  %39 = shl i8 %conv60.tr, 2
  %40 = and i8 %39, 12
  %conv76 = or i8 %40, %retval.0.i
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv76, ptr %0, align 1
  %42 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c, align 4
  %call.i132 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp81 = icmp slt i32 %call.i132, 0
  br i1 %cmp81, label %if.end51.cleanup_crit_edge, label %if.end84

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %buf, align 1
  %45 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c, align 4
  %call.i133 = call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 1) #8
  %47 = call i32 @llvm.smin.i32(i32 %call.i133, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end51.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %lookup_cb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %lookup_cb.exit.cleanup_crit_edge ], [ %call.i131, %if.end29.cleanup_crit_edge ], [ %call.i132, %if.end51.cleanup_crit_edge ], [ %47, %if.end84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_qm1d1b0004__290_262_qm1d1b0004_driver_init6, !1, !"__initcall__kmod_qm1d1b0004__290_262_qm1d1b0004_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_qm1d1b0004_driver_exit, !1, !"__exitcall_qm1d1b0004_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 264, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 265, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 255, i32 11}
!12 = !{ptr @qm1d1b0004_driver, !13, !"qm1d1b0004_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 253, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 225, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qm1d1b0004_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qm1d1b0004_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @qm1d1b0004_ops, !23, !"qm1d1b0004_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 185, i32 35}
!24 = !{ptr @cb_maps, !25, !"cb_maps", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 80, i32 39}
!26 = !{ptr @qm1d1b0004_id, !27, !"qm1d1b0004_id", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/qm1d1b0004.c", i32 246, i32 35}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
