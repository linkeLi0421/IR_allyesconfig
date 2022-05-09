; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/atlas-ezo-sensor.c_pt.bc'
source_filename = "../drivers/iio/chemical/atlas-ezo-sensor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atlas_ezo_device = type { ptr, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atlas_ezo_data = type { ptr, ptr, %struct.mutex, [8 x i8] }

@__initcall__kmod_atlas_ezo_sensor__288_242_atlas_ezo_driver_init6 = internal global ptr @atlas_ezo_driver_init, section ".initcall6.init", align 4
@atlas_ezo_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @atlas_ezo_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atlas_ezo_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @atlas_ezo_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_atlas_ezo_driver_exit = internal global ptr @atlas_ezo_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [67 x i8] c"atlas_ezo_sensor.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"atlas_ezo_sensor.description=Atlas Scientific EZO sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [60 x i8] c"atlas_ezo_sensor.file=drivers/iio/chemical/atlas-ezo-sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"atlas_ezo_sensor.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atlas-ezo-sensor\00", [47 x i8] zeroinitializer }, align 32
@atlas_ezo_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atlas,co2-ezo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atlas,o2-ezo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atlas,hum-ezo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@atlas_ezo_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"atlas-co2-ezo\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"atlas-o2-ezo\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"atlas-hum-ezo\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atlas_ezo_devices = internal global { [3 x %struct.atlas_ezo_device], [60 x i8] } { [3 x %struct.atlas_ezo_device] [%struct.atlas_ezo_device { ptr @atlas_co2_ezo_channels, i32 1, i32 950 }, %struct.atlas_ezo_device { ptr @atlas_o2_ezo_channels, i32 1, i32 950 }, %struct.atlas_ezo_device { ptr @atlas_hum_ezo_channels, i32 1, i32 350 }], [60 x i8] zeroinitializer }, align 32
@atlas_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @atlas_ezo_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@atlas_ezo_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@atlas_co2_ezo_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 0, i32 0, %struct.anon.86 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [40 x i8] zeroinitializer }, align 32
@atlas_o2_ezo_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 44, i32 0, i32 0, %struct.anon.86 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [40 x i8] zeroinitializer }, align 32
@atlas_hum_ezo_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 34, i64 44]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"atlas_ezo_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 234, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 236, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"atlas_ezo_dt_ids\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 194, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"atlas_ezo_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 186, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"atlas_ezo_devices\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 83, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"atlas_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 182, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 229, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"atlas_co2_ezo_channels\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 60, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"atlas_o2_ezo_channels\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 64, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"atlas_hum_ezo_channels\00", align 1
@___asan_gen_.34 = private constant [43 x i8] c"../drivers/iio/chemical/atlas-ezo-sensor.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 68, i32 35 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_atlas_ezo_driver_exit, ptr @__initcall__kmod_atlas_ezo_sensor__288_242_atlas_ezo_driver_init6, ptr @atlas_ezo_driver_exit, ptr @atlas_ezo_driver, ptr @.str, ptr @atlas_ezo_dt_ids, ptr @atlas_ezo_id, ptr @atlas_ezo_devices, ptr @atlas_info, ptr @atlas_ezo_probe.__key, ptr @.str.1, ptr @atlas_co2_ezo_channels, ptr @atlas_o2_ezo_channels, ptr @atlas_hum_ezo_channels], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_ezo_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_ezo_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_ezo_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_ezo_devices to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_ezo_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_co2_ezo_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_o2_ezo_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atlas_hum_ezo_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atlas_ezo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @atlas_ezo_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atlas_ezo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @atlas_ezo_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atlas_ezo_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 108) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @atlas_ezo_dt_ids, ptr noundef %dev) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data5 = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data5, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %.pn = phi i32 [ %4, %if.else ], [ %1, %if.then4 ]
  %chip.0 = getelementptr [3 x %struct.atlas_ezo_device], ptr @atlas_ezo_devices, i32 0, i32 %.pn
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atlas_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 8
  %7 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip.0, align 4
  %channels8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %channels8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %channels8, align 8
  %num_channels = getelementptr [3 x %struct.atlas_ezo_device], ptr @atlas_ezo_devices, i32 0, i32 %.pn, i32 1
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_channels, align 4
  %num_channels9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_channels9, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client, ptr %15, align 4
  %chip12 = getelementptr inbounds %struct.atlas_ezo_data, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %chip12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chip.0, ptr %chip12, align 4
  %lock = getelementptr inbounds %struct.atlas_ezo_data, ptr %15, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @atlas_ezo_probe.__key) #5
  %call14 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atlas_ezo_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %cmp.not = icmp eq i32 %5, 24
  br i1 %cmp.not, label %if.end, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.end:                                           ; preds = %entry
  %6 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.cleanup30_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.epilog
  ]

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %lock = getelementptr inbounds %struct.atlas_ezo_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call2 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 82) #5
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp, align 4
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %chip = getelementptr inbounds %struct.atlas_ezo_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %delay = getelementptr inbounds %struct.atlas_ezo_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  tail call void @msleep(i32 noundef %13) #5
  %buffer = getelementptr inbounds %struct.atlas_ezo_data, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %buffer, i32 noundef 8, i16 noundef zeroext 1) #5
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end6.if.then12_crit_edge, label %lor.lhs.false

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end6
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp10.not = icmp eq i8 %16, 1
  br i1 %cmp10.not, label %if.end14, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr %struct.atlas_ezo_data, ptr %1, i32 0, i32 3, i32 2
  %call.i48 = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 46) #5
  %tobool.not.i = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i, label %if.end14.atlas_ezo_sanitize.exit_crit_edge, label %if.end.i

if.end14.atlas_ezo_sanitize.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %atlas_ezo_sanitize.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %call.i48, i32 1
  %call1.i = tail call i32 @strlen(ptr noundef nonnull %call.i48) #8
  %17 = call ptr @memmove(ptr %call.i48, ptr %add.ptr.i, i32 %call1.i)
  br label %atlas_ezo_sanitize.exit

atlas_ezo_sanitize.exit:                          ; preds = %if.end.i, %if.end14.atlas_ezo_sanitize.exit_crit_edge
  %add.ptr19 = getelementptr %struct.atlas_ezo_data, ptr %1, i32 0, i32 3, i32 1
  %call.i49 = call i32 @_kstrtol(ptr noundef %add.ptr19, i32 noundef 10, ptr noundef nonnull %tmp) #5
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not = icmp eq i32 %call.i49, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %call.i49
  br label %cleanup

cleanup:                                          ; preds = %atlas_ezo_sanitize.exit, %if.then12, %if.then4
  %retval.0 = phi i32 [ %9, %if.then4 ], [ -16, %if.then12 ], [ %spec.select, %atlas_ezo_sanitize.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  br label %cleanup30

sw.epilog:                                        ; preds = %if.end
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %21 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel2, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %22, label %sw.epilog.cleanup30_crit_edge [
    i32 34, label %sw.bb26
    i32 44, label %sw.bb27
  ]

sw.epilog.cleanup30_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

sw.bb26:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 100, ptr %val2, align 4
  br label %cleanup30

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 100, ptr %val, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %sw.bb27, %sw.bb26, %sw.epilog.cleanup30_crit_edge, %cleanup, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.1 = phi i32 [ 1, %sw.bb27 ], [ 2, %sw.bb26 ], [ %retval.0, %cleanup ], [ -22, %entry.cleanup30_crit_edge ], [ -22, %sw.epilog.cleanup30_crit_edge ], [ 0, %if.end.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_atlas_ezo_sensor__288_242_atlas_ezo_driver_init6, !1, !"__initcall__kmod_atlas_ezo_sensor__288_242_atlas_ezo_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 242, i32 1}
!2 = !{ptr @__exitcall_atlas_ezo_driver_exit, !1, !"__exitcall_atlas_ezo_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 244, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 245, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 246, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 236, i32 11}
!12 = !{ptr @atlas_ezo_driver, !13, !"atlas_ezo_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 234, i32 26}
!14 = !{ptr @atlas_ezo_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 229, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @atlas_ezo_devices, !18, !"atlas_ezo_devices", i1 false, i1 false}
!18 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 83, i32 32}
!19 = !{ptr @atlas_co2_ezo_channels, !20, !"atlas_co2_ezo_channels", i1 false, i1 false}
!20 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 60, i32 35}
!21 = !{ptr @atlas_o2_ezo_channels, !22, !"atlas_o2_ezo_channels", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 64, i32 35}
!23 = !{ptr @atlas_hum_ezo_channels, !24, !"atlas_hum_ezo_channels", i1 false, i1 false}
!24 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 68, i32 35}
!25 = !{ptr @atlas_info, !26, !"atlas_info", i1 false, i1 false}
!26 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 182, i32 30}
!27 = !{ptr @atlas_ezo_dt_ids, !28, !"atlas_ezo_dt_ids", i1 false, i1 false}
!28 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 194, i32 34}
!29 = !{ptr @atlas_ezo_id, !30, !"atlas_ezo_id", i1 false, i1 false}
!30 = !{!"../drivers/iio/chemical/atlas-ezo-sensor.c", i32 186, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
