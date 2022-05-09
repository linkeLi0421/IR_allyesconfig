; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/vz89x.c_pt.bc'
source_filename = "../drivers/iio/chemical/vz89x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.vz89x_chip_data = type { ptr, ptr, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vz89x_data = type { ptr, ptr, %struct.mutex, ptr, i8, i32, [7 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_vz89x__288_408_vz89x_driver_init6 = internal global ptr @vz89x_driver_init, section ".initcall6.init", align 4
@vz89x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vz89x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vz89x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vz89x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vz89x_driver_exit = internal global ptr @vz89x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"vz89x.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"vz89x.description=SGX Sensortech MiCS VZ89X VOC sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [38 x i8] c"vz89x.file=drivers/iio/chemical/vz89x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"vz89x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vz89x\00", [26 x i8] zeroinitializer }, align 32
@vz89x_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sgx,vz89x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sgx,vz89te\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@vz89x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"vz89x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"vz89te\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@vz89x_chips = internal constant { [2 x %struct.vz89x_chip_data], [40 x i8] } { [2 x %struct.vz89x_chip_data] [%struct.vz89x_chip_data { ptr @vz89x_measurement_is_valid, ptr @vz89x_channels, i8 4, i8 9, i8 6, i8 3 }, %struct.vz89x_chip_data { ptr @vz89te_measurement_is_valid, ptr @vz89te_channels, i8 3, i8 12, i8 7, i8 6 }], [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vz89x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@vz89x_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @vz89x_attrs_group, ptr @vz89x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vz89x_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.2, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 3, i32 -1, %struct.anon.86 { i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@vz89te_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 2, i32 -1, %struct.anon.86 { i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@vz89x_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vz89x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@vz89x_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_concentration_co2_scale, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_concentration_voc_scale, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_concentration_co2_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.3, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_concentration_voc_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.5, %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0.00000698689\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_concentration_co2_scale\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.00000000436681223\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_concentration_voc_scale\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 25]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 34, i64 35]
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"vz89x_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 400, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 402, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"vz89x_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 344, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"vz89x_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 393, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"vz89x_chips\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 321, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 381, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"vz89x_info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 316, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"vz89x_channels\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 63, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"vz89te_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 100, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 78, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"vz89x_attrs_group\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 139, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"vz89x_attributes\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 133, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_concentration_co2_scale\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_concentration_voc_scale\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 130, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [32 x i8] c"../drivers/iio/chemical/vz89x.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 131, i32 8 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_vz89x_driver_exit, ptr @__initcall__kmod_vz89x__288_408_vz89x_driver_init6, ptr @vz89x_driver_exit, ptr @vz89x_driver, ptr @.str, ptr @vz89x_dt_ids, ptr @vz89x_id, ptr @vz89x_chips, ptr @vz89x_probe.__key, ptr @.str.1, ptr @vz89x_info, ptr @vz89x_channels, ptr @vz89te_channels, ptr @.str.2, ptr @vz89x_attrs_group, ptr @vz89x_attributes, ptr @iio_const_attr_in_concentration_co2_scale, ptr @iio_const_attr_in_concentration_voc_scale, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_chips to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89te_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vz89x_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_concentration_co2_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_concentration_voc_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vz89x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vz89x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vz89x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @vz89x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vz89x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 120) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %algo.i.i53 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %algo.i.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %algo.i.i53, align 8
  %functionality.i.i54 = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %functionality.i.i54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functionality.i.i54, align 4
  %call.i.i55 = tail call i32 %13(ptr noundef %9) #7
  %and.i56 = and i32 %call.i.i55, 6684672
  call void @__sanitizer_cov_trace_const_cmp4(i32 6684672, i32 %and.i56)
  %cmp.i57.not = icmp eq i32 %and.i56, 6684672
  br i1 %cmp.i57.not, label %if.else.if.end13_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %vz89x_smbus_xfer.sink = phi ptr [ @vz89x_i2c_xfer, %if.end.if.end13_crit_edge ], [ @vz89x_smbus_xfer, %if.else.if.end13_crit_edge ]
  %xfer10 = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %xfer10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vz89x_smbus_xfer.sink, ptr %xfer10, align 4
  %call14 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  br label %if.end19

if.else17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %17 = ptrtoint ptr %call18 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16
  %chip_id.0 = phi i32 [ %17, %if.else17 ], [ %16, %if.then16 ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %1, align 4
  %arrayidx = getelementptr [2 x %struct.vz89x_chip_data], ptr @vz89x_chips, i32 0, i32 %chip_id.0
  %chip = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %chip, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %21, -100
  %last_update = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %last_update, align 4
  %lock = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @vz89x_probe.__key) #7
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vz89x_info, ptr %info, align 8
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %if.end19.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i, ptr %name, align 8
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call, align 8
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %channels = getelementptr inbounds %struct.vz89x_chip_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channels, align 4
  %channels23 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %34 = ptrtoint ptr %channels23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %channels23, align 8
  %35 = load ptr, ptr %chip, align 4
  %num_channels = getelementptr inbounds %struct.vz89x_chip_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %37 to i32
  %num_channels25 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %38 = ptrtoint ptr %num_channels25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %num_channels25, align 4
  %call26 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vz89x_i2c_xfer(ptr noundef %data, i8 noundef zeroext %cmd) #2 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.vz89x_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cmd, ptr %buf, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -13, ptr %7, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 8
  %flags9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %16 = ptrtoint ptr %flags9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags9, align 2
  %write_size = getelementptr inbounds %struct.vz89x_chip_data, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %write_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_size, align 1
  %conv = zext i8 %18 to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %len, align 4
  %buf12 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf12, align 4
  %21 = load i16, ptr %addr, align 2
  %arrayidx14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx14, align 4
  %23 = load i16, ptr %3, align 8
  %24 = or i16 %23, 1
  %flags20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %flags20 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %flags20, align 2
  %read_size = getelementptr inbounds %struct.vz89x_chip_data, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %read_size to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %read_size, align 2
  %conv21 = zext i8 %27 to i16
  %len23 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %len23 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv21, ptr %len23, align 4
  %buffer = getelementptr inbounds %struct.vz89x_data, ptr %data, i32 0, i32 6
  %buf25 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %buf25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buffer, ptr %buf25, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  %spec.select = select i1 %cmp, i32 0, i32 %call
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vz89x_smbus_xfer(ptr nocapture noundef %data, i8 noundef zeroext %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %chip = getelementptr inbounds %struct.vz89x_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %read_size21 = getelementptr inbounds %struct.vz89x_chip_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %read_size21 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_size21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp223.not = icmp eq i8 %5, 0
  br i1 %cmp223.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call4 = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %conv9 = trunc i32 %call4 to i8
  %arrayidx = getelementptr %struct.vz89x_data, ptr %data, i32 0, i32 6, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.024, 1
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %read_size = getelementptr inbounds %struct.vz89x_chip_data, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %read_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %read_size, align 2
  %conv = zext i8 %10 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vz89x_measurement_is_valid(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vz89x_data, ptr %data, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip = getelementptr inbounds %struct.vz89x_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %read_size = getelementptr inbounds %struct.vz89x_chip_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %read_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_size, align 2
  %conv3 = zext i8 %5 to i32
  %sub = add nsw i32 %conv3, -1
  %arrayidx4 = getelementptr %struct.vz89x_data, ptr %data, i32 0, i32 6, i32 %sub
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp6 = icmp ne i8 %7, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp6, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vz89te_measurement_is_valid(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.vz89x_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %read_size = getelementptr inbounds %struct.vz89x_chip_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %read_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_size, align 2
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp28 = icmp ugt i8 %3, 1
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %crc.029 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vz89x_data, ptr %data, i32 0, i32 6, i32 %i.030
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %5 to i32
  %add = add nuw nsw i32 %crc.029, %conv3
  %div27 = lshr i32 %add, 8
  %add6 = add nuw nsw i32 %div27, %add
  %inc = add nuw nsw i32 %i.030, 1
  %phi.cast = and i32 %add6, 255
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = xor i32 %phi.cast, 255
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %crc.0.lcssa = phi i32 [ 255, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx15 = getelementptr %struct.vz89x_data, ptr %data, i32 0, i32 6, i32 %sub
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.0.lcssa, i32 %conv16)
  %cmp17 = icmp ne i32 %crc.0.lcssa, %conv16
  ret i1 %cmp17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vz89x_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %chip1.i = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip1.i, align 4
  %last_update.i = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %is_valid2.i = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 4
  br i1 %cmp.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %8 = ptrtoint ptr %is_valid2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_valid2.i, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i.vz89x_get_measurement.exit.thread_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.vz89x_get_measurement.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vz89x_get_measurement.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %is_valid2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_valid2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_update.i, align 4
  %xfer.i = getelementptr inbounds %struct.vz89x_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xfer.i, align 4
  %cmd.i = getelementptr inbounds %struct.vz89x_chip_data, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd.i, align 1
  %call.i = tail call i32 %14(ptr noundef %1, i8 noundef zeroext %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end.i.vz89x_get_measurement.exit.thread_crit_edge, label %if.end6.i

if.end.i.vz89x_get_measurement.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vz89x_get_measurement.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %call7.i = tail call zeroext i1 %18(ptr noundef %1) #7
  br i1 %call7.i, label %if.end6.i.vz89x_get_measurement.exit.thread_crit_edge, label %if.end10.i

if.end6.i.vz89x_get_measurement.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vz89x_get_measurement.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %is_valid2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_valid2.i, align 4
  br label %if.end

vz89x_get_measurement.exit.thread:                ; preds = %if.end6.i.vz89x_get_measurement.exit.thread_crit_edge, %if.end.i.vz89x_get_measurement.exit.thread_crit_edge, %if.then.i.vz89x_get_measurement.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %if.end6.i.vz89x_get_measurement.exit.thread_crit_edge ], [ %call.i, %if.end.i.vz89x_get_measurement.exit.thread_crit_edge ], [ -11, %if.then.i.vz89x_get_measurement.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %if.end10.i, %if.then.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %21, label %if.end.cleanup_crit_edge [
    i32 24, label %sw.bb3
    i32 25, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %23 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %address, align 4
  %arrayidx = getelementptr %struct.vz89x_data, ptr %1, i32 0, i32 6, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %26 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address.i, align 4
  %arrayidx.i = getelementptr %struct.vz89x_data, ptr %1, i32 0, i32 6, i32 %29
  %endianness.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 5
  %30 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %endianness.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %31, label %sw.bb4.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %35 = and i32 %34, -256
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  br label %vz89x_get_resistance_reading.exit.thread

sw.bb1.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %38, 8
  br label %vz89x_get_resistance_reading.exit.thread

vz89x_get_resistance_reading.exit.thread:         ; preds = %sw.bb1.i, %sw.bb.i
  %storemerge.i = phi i32 [ %shr.i, %sw.bb1.i ], [ %36, %sw.bb.i ]
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %41)
  %cond = icmp eq i32 %41, 25
  br i1 %cond, label %sw.bb11, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 10, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %43 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channel2, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %44, label %sw.bb13.cleanup_crit_edge [
    i32 34, label %sw.bb14
    i32 35, label %sw.bb15
  ]

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 44, ptr %val, align 4
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 250000, ptr %val2, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -13, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb14, %sw.bb13.cleanup_crit_edge, %sw.bb11, %sw.bb9.cleanup_crit_edge, %vz89x_get_resistance_reading.exit.thread, %sw.bb4.cleanup_crit_edge, %sw.bb3, %if.end.cleanup_crit_edge, %vz89x_get_measurement.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb15 ], [ 2, %sw.bb14 ], [ 1, %sw.bb11 ], [ 1, %sw.bb3 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ %retval.0.i.ph, %vz89x_get_measurement.exit.thread ], [ 1, %vz89x_get_resistance_reading.exit.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_vz89x__288_408_vz89x_driver_init6, !1, !"__initcall__kmod_vz89x__288_408_vz89x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/vz89x.c", i32 408, i32 1}
!2 = !{ptr @__exitcall_vz89x_driver_exit, !1, !"__exitcall_vz89x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/vz89x.c", i32 410, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/vz89x.c", i32 411, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/vz89x.c", i32 412, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/vz89x.c", i32 402, i32 11}
!12 = !{ptr @vz89x_driver, !13, !"vz89x_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/vz89x.c", i32 400, i32 26}
!14 = !{ptr @vz89x_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/vz89x.c", i32 381, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vz89x_chips, !18, !"vz89x_chips", i1 false, i1 false}
!18 = !{!"../drivers/iio/chemical/vz89x.c", i32 321, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/chemical/vz89x.c", i32 78, i32 18}
!21 = !{ptr @vz89x_channels, !22, !"vz89x_channels", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/vz89x.c", i32 63, i32 35}
!23 = !{ptr @vz89te_channels, !24, !"vz89te_channels", i1 false, i1 false}
!24 = !{!"../drivers/iio/chemical/vz89x.c", i32 100, i32 35}
!25 = !{ptr @vz89x_info, !26, !"vz89x_info", i1 false, i1 false}
!26 = !{!"../drivers/iio/chemical/vz89x.c", i32 316, i32 30}
!27 = !{ptr @vz89x_attrs_group, !28, !"vz89x_attrs_group", i1 false, i1 false}
!28 = !{!"../drivers/iio/chemical/vz89x.c", i32 139, i32 37}
!29 = !{ptr @vz89x_attributes, !30, !"vz89x_attributes", i1 false, i1 false}
!30 = !{!"../drivers/iio/chemical/vz89x.c", i32 133, i32 26}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/vz89x.c", i32 130, i32 8}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iio_const_attr_in_concentration_co2_scale, !32, !"iio_const_attr_in_concentration_co2_scale", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/chemical/vz89x.c", i32 131, i32 8}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iio_const_attr_in_concentration_voc_scale, !36, !"iio_const_attr_in_concentration_voc_scale", i1 false, i1 false}
!39 = !{ptr @vz89x_dt_ids, !40, !"vz89x_dt_ids", i1 false, i1 false}
!40 = !{!"../drivers/iio/chemical/vz89x.c", i32 344, i32 34}
!41 = !{ptr @vz89x_id, !42, !"vz89x_id", i1 false, i1 false}
!42 = !{!"../drivers/iio/chemical/vz89x.c", i32 393, i32 35}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
