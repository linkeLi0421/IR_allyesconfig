; ModuleID = '/llk/IR_all_yes/drivers/iio/light/as73211.c_pt.bc'
source_filename = "../drivers/iio/light/as73211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.as73211_data = type { ptr, i8, i8, i8, i8, %struct.mutex, %struct.completion, [30 x i32] }
%struct.anon.87 = type { [4 x i16], i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_as73211__373_795_as73211_driver_init6 = internal global ptr @as73211_driver_init, section ".initcall6.init", align 4
@as73211_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @as73211_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @as73211_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as73211_pm_ops, ptr null, ptr null }, ptr @as73211_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_as73211_driver_exit = internal global ptr @as73211_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author374 = internal constant [50 x i8] c"as73211.author=Christian Eggers <ceggers@arri.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description375 = internal constant [57 x i8] c"as73211.description=AS73211 XYZ True Color Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [39 x i8] c"as73211.file=drivers/iio/light/as73211\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [20 x i8] c"as73211.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"as73211\00", [24 x i8] zeroinitializer }, align 32
@as73211_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as73211\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@as73211_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @as73211_suspend, ptr @as73211_resume, ptr @as73211_suspend, ptr @as73211_resume, ptr @as73211_suspend, ptr @as73211_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@as73211_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"as73211\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@as73211_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@as73211_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @as73211_read_raw, ptr null, ptr @as73211_read_avail, ptr @as73211_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@as73211_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 1, i32 2, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 299008, i32 299008, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 2, i32 3, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 299008, i32 299008, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 3, i32 4, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 299008, i32 299008, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@as73211_req_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 267, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for READY IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as73211_req_data\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/as73211.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr = internal global ptr @as73211_req_data._entry, section ".printk_index", align 4
@as73211_req_data._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 285, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() Measurement has not stopped\0A\00", [62 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.10 = internal global ptr @as73211_req_data._entry.8, section ".printk_index", align 4
@as73211_req_data._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 289, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() Data is not ready\0A\00", [40 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.13 = internal global ptr @as73211_req_data._entry.11, section ".printk_index", align 4
@as73211_req_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s() No new data available\0A\00", [36 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.16 = internal global ptr @as73211_req_data._entry.14, section ".printk_index", align 4
@as73211_req_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 297, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s() Result buffer overrun\0A\00", [36 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.19 = internal global ptr @as73211_req_data._entry.17, section ".printk_index", align 4
@as73211_req_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s() ADC overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.22 = internal global ptr @as73211_req_data._entry.20, section ".printk_index", align 4
@as73211_req_data._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() Measurement result overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.25 = internal global ptr @as73211_req_data._entry.23, section ".printk_index", align 4
@as73211_req_data._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 309, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s() Timer overflow\0A\00", [43 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.28 = internal global ptr @as73211_req_data._entry.26, section ".printk_index", align 4
@as73211_req_data._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() Unexpected status value\0A\00", [34 x i8] zeroinitializer }, align 32
@as73211_req_data._entry_ptr.31 = internal global ptr @as73211_req_data._entry.29, section ".printk_index", align 4
@as73211_samp_freq_avail = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1024000, i32 2048000, i32 4096000, i32 8192000], [16 x i8] zeroinitializer }, align 32
@as73211_hardwaregain_avail = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048], [48 x i8] zeroinitializer }, align 32
@switch.table.as73211_read_raw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 277071108, i32 298384270, i32 160241927], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 12, i64 15, i64 18]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 15, i64 18]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 15, i64 18]
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"as73211_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 786, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 788, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"as73211_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 774, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"as73211_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 772, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"as73211_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 780, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 679, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"as73211_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 629, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"as73211_channels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 157, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 87, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 267, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 285, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 289, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 293, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 297, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 301, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 305, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 309, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 312, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"as73211_samp_freq_avail\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 76, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"as73211_hardwaregain_avail\00", align 1
@___asan_gen_.138 = private constant [31 x i8] c"../drivers/iio/light/as73211.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 83, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant [30 x i8] c"switch.table.as73211_read_raw\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description375, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__exitcall_as73211_driver_exit, ptr @__initcall__kmod_as73211__373_795_as73211_driver_init6, ptr @as73211_driver_exit, ptr @as73211_req_data._entry, ptr @as73211_req_data._entry.11, ptr @as73211_req_data._entry.14, ptr @as73211_req_data._entry.17, ptr @as73211_req_data._entry.20, ptr @as73211_req_data._entry.23, ptr @as73211_req_data._entry.26, ptr @as73211_req_data._entry.29, ptr @as73211_req_data._entry.8, ptr @as73211_req_data._entry_ptr, ptr @as73211_req_data._entry_ptr.10, ptr @as73211_req_data._entry_ptr.13, ptr @as73211_req_data._entry_ptr.16, ptr @as73211_req_data._entry_ptr.19, ptr @as73211_req_data._entry_ptr.22, ptr @as73211_req_data._entry_ptr.25, ptr @as73211_req_data._entry_ptr.28, ptr @as73211_req_data._entry_ptr.31, ptr @as73211_driver, ptr @.str, ptr @as73211_of_match, ptr @as73211_pm_ops, ptr @as73211_id, ptr @as73211_probe.__key, ptr @.str.1, ptr @as73211_info, ptr @as73211_channels, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @as73211_samp_freq_avail, ptr @as73211_hardwaregain_avail, ptr @switch.table.as73211_read_raw], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_req_data._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_samp_freq_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as73211_hardwaregain_avail to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as73211_read_raw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @as73211_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as73211_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @as73211_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 276) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @as73211_probe.__key) #9
  %completion = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #9
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @as73211_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @as73211_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %num_channels, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %osr = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 1
  %12 = trunc i32 %call5 to i8
  %conv10 = or i8 %12, 8
  %13 = ptrtoint ptr %osr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %osr, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 0, i8 noundef zeroext %conv10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end7.cleanup_crit_edge, label %if.end17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %conv24 = trunc i32 %call19 to i8
  %18 = ptrtoint ptr %osr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv24, ptr %osr, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %21 = and i32 %call27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %21)
  %22 = icmp eq i32 %21, 33
  br i1 %22, label %if.end69, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %if.end31
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.cleanup_crit_edge, label %if.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %conv76 = trunc i32 %call71 to i8
  %creg1 = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %creg1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv76, ptr %creg1, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call78 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end75.cleanup_crit_edge, label %if.end82

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  %conv83 = trunc i32 %call78 to i8
  %creg2 = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %creg2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv83, ptr %creg2, align 2
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call85 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end82.cleanup_crit_edge, label %if.end89

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end89:                                         ; preds = %if.end82
  %conv90 = trunc i32 %call85 to i8
  %creg3 = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %creg3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv90, ptr %creg3, align 1
  tail call fastcc void @as73211_integration_time_calc_avail(ptr noundef %1)
  %call91 = tail call fastcc i32 @as73211_power(ptr noundef nonnull %call, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end89.cleanup_crit_edge, label %if.end95

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end95:                                         ; preds = %if.end89
  %call96 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end99:                                         ; preds = %if.end95
  %call100 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @as73211_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end103:                                        ; preds = %if.end99
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool104.not = icmp eq i32 %33, 0
  br i1 %tobool104.not, label %if.end103.if.end113_crit_edge, label %if.then105

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then105:                                       ; preds = %if.end103
  %name108 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call109 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %33, ptr noundef null, ptr noundef nonnull @as73211_ready_handler, i32 noundef 8192, ptr noundef %name108, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then105.if.end113_crit_edge, label %if.then105.cleanup_crit_edge

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then105.if.end113_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end113:                                        ; preds = %if.then105.if.end113_crit_edge, %if.end103.if.end113_crit_edge
  %call114 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then105.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call114, %if.end113 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call13, %if.end7.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call27, %if.end23.cleanup_crit_edge ], [ -19, %if.end31.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ %call78, %if.end75.cleanup_crit_edge ], [ %call85, %if.end82.cleanup_crit_edge ], [ %call91, %if.end89.cleanup_crit_edge ], [ %call96, %if.end95.cleanup_crit_edge ], [ %call100, %if.end99.cleanup_crit_edge ], [ %call109, %if.then105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @as73211_integration_time_calc_avail(ptr nocapture noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %creg3.i = getelementptr inbounds %struct.as73211_data, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.012
  %0 = ptrtoint ptr %creg3.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %creg3.i, align 1
  %2 = and i8 %1, 3
  %3 = xor i8 %2, 3
  %sub.i = zext i8 %3 to i32
  %mul.i = shl i32 %shl, %sub.i
  %mul9.i = mul i32 %mul.i, 125
  %mul9.i.frozen = freeze i32 %mul9.i
  %div = udiv i32 %mul9.i.frozen, 1000000
  %mul = shl nuw nsw i32 %i.012, 1
  %arrayidx = getelementptr %struct.as73211_data, ptr %data, i32 0, i32 7, i32 %mul
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %arrayidx, align 4
  %5 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %mul9.i.frozen, %5
  %add3 = or i32 %mul, 1
  %arrayidx4 = getelementptr %struct.as73211_data, ptr %data, i32 0, i32 7, i32 %add3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem.decomposed, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as73211_power(ptr nocapture noundef readonly %indio_dev, i1 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %osr = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %osr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %osr, align 4
  %4 = and i8 %3, -65
  %masksel = select i1 %state, i8 0, i8 64
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %osr, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %.sink) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %7 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @as73211_power_disable, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #9
  %osr.i.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %osr.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %osr.i.i, align 4
  %.sink.i.i = or i8 %3, 64
  store i8 %.sink.i.i, ptr %osr.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %.sink.i.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @as73211_power_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %mutex.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %osr.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %osr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %osr.i, align 4
  %.sink.i = or i8 %3, 64
  store i8 %.sink.i, ptr %osr.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %.sink.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %scan = alloca %struct.anon.87, align 8
  %addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #9
  %4 = getelementptr inbounds [4 x i16], ptr %scan, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i16], ptr %scan, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i16], ptr %scan, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.as73211_data, ptr %3, i32 0, i32 5
  %7 = call ptr @memset(ptr %scan, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call2 = tail call fastcc i32 @as73211_req_data(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, -75
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp4 = icmp eq i32 %11, 15
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #9
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %13 = getelementptr inbounds i8, ptr %msgs, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 16)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %addr7 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %addr7 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr7, align 2
  %19 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %23 = load ptr, ptr %3, align 4
  %addr10 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %addr10 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr10, align 2
  %26 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayinit.element, align 4
  %flags11 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %27 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags11, align 2
  %len12 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %28 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 8, ptr %len12, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %29 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %scan, ptr %buf13, align 4
  %30 = load ptr, ptr %3, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %call15 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #9
  br i1 %cmp16, label %if.then5.done_crit_edge, label %if.then5.if.end28_crit_edge

if.then5.if.end28_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then5.done_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.else:                                          ; preds = %if.end
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef %4, i32 noundef 6, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp slt i32 %call.i, 0
  br i1 %cmp24, label %if.else.done_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then5.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end28.if.end36_crit_edge, label %if.then29

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then29:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %4, align 2
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %5, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %6, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end28.if.end36_crit_edge
  %call37 = call i64 @iio_get_time_ns(ptr noundef %1) #9
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %scan_timestamp.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.end36.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end36.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %41, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call37, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end36.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i59 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #9
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.else.done_crit_edge, %if.then5.done_crit_edge, %entry.done_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %44) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_ready_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %completion = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %completion) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup44_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb11
    i32 2, label %sw.bb12
    i32 12, label %do.end34
    i32 15, label %sw.bb36
    i32 18, label %sw.bb38
  ]

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup44_crit_edge, label %if.end

sw.bb.cleanup44_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end:                                           ; preds = %sw.bb
  %call2 = tail call fastcc i32 @as73211_req_data(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup44

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %conv = trunc i32 %6 to i8
  %call6 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %conv) #9
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup44_crit_edge, label %if.end10

if.end5.cleanup44_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %val, align 4
  br label %cleanup44

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -66, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 900000, ptr %val2, align 4
  br label %cleanup44

sw.bb12:                                          ; preds = %entry
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %11, label %sw.bb12.cleanup44_crit_edge [
    i32 9, label %sw.bb13
    i32 7, label %sw.bb14
  ]

sw.bb12.cleanup44_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

sw.bb13:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val, align 4
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50000, ptr %val2, align 4
  br label %cleanup44

sw.bb14:                                          ; preds = %sw.bb12
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %15 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel2, align 4
  %switch.tableidx = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 3
  br i1 %17, label %switch.lookup, label %sw.bb14.cleanup44_crit_edge

sw.bb14.cleanup44_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

switch.lookup:                                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.as73211_read_raw, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %creg1.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %creg1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %creg1.i, align 1
  %21 = lshr i8 %20, 4
  %shr.i = zext i8 %21 to i32
  %sub.i = sub nsw i32 11, %shr.i
  %div86 = lshr i32 %switch.load, %sub.i
  %22 = and i8 %20, 15
  %and.i = zext i8 %22 to i32
  %div2087 = lshr i32 %div86, %and.i
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div2087, ptr %val, align 4
  br label %cleanup44

do.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %creg3 = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %creg3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %creg3, align 1
  %26 = and i8 %25, 3
  %and = zext i8 %26 to i32
  %mul = shl nuw nsw i32 1024000, %and
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %val, align 4
  br label %cleanup44

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %creg1.i78 = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %creg1.i78 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %creg1.i78, align 1
  %30 = lshr i8 %29, 4
  %shr.i79 = zext i8 %30 to i32
  %sub.i80 = sub nsw i32 11, %shr.i79
  %shl.i81 = shl nuw nsw i32 1, %sub.i80
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl.i81, ptr %val, align 4
  br label %cleanup44

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %creg1.i82 = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %creg1.i82 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %creg1.i82, align 1
  %34 = and i8 %33, 15
  %and.i83 = zext i8 %34 to i32
  %shl.i84 = shl nuw nsw i32 1, %and.i83
  %creg3.i = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %creg3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %creg3.i, align 1
  %37 = and i8 %36, 3
  %38 = xor i8 %37, 3
  %sub.i85 = zext i8 %38 to i32
  %mul.i = shl i32 %shl.i84, %sub.i85
  %mul9.i = mul nuw nsw i32 %mul.i, 125
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %div42 = udiv i32 %mul.i, 8000
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div42, ptr %val, align 4
  %rem = urem i32 %mul9.i, 1000000
  %40 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem, ptr %val2, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %sw.bb38, %sw.bb36, %do.end34, %switch.lookup, %sw.bb14.cleanup44_crit_edge, %sw.bb13, %sw.bb12.cleanup44_crit_edge, %sw.bb11, %if.end10, %if.end5.cleanup44_crit_edge, %if.then4, %sw.bb.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ 2, %sw.bb38 ], [ 1, %sw.bb36 ], [ 1, %do.end34 ], [ 1, %switch.lookup ], [ 2, %sw.bb13 ], [ 2, %sw.bb11 ], [ %call2, %if.then4 ], [ 1, %if.end10 ], [ %call1, %sw.bb.cleanup44_crit_edge ], [ %call6, %if.end5.cleanup44_crit_edge ], [ -22, %sw.bb14.cleanup44_crit_edge ], [ -22, %sw.bb12.cleanup44_crit_edge ], [ -22, %entry.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as73211_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 15, label %sw.bb1
    i32 18, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %length, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %length, align 4
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %length, align 4
  %int_time_avail = getelementptr inbounds %struct.as73211_data, ptr %4, i32 0, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %int_time_avail.sink = phi ptr [ %int_time_avail, %sw.bb2 ], [ @as73211_hardwaregain_avail, %sw.bb1 ], [ @as73211_samp_freq_avail, %sw.bb ]
  %.sink = phi i32 [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  %6 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %int_time_avail.sink, ptr %vals, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.error_unlock_crit_edge, label %if.end

entry.error_unlock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unlock

if.end:                                           ; preds = %entry
  %osr = getelementptr inbounds %struct.as73211_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %osr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %osr, align 4
  %4 = and i8 %3, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp14.not = icmp eq i8 %4, 2
  br i1 %cmp14.not, label %if.end.if.end46_crit_edge, label %if.then16

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then16:                                        ; preds = %if.end
  %and19 = and i8 %3, -8
  %5 = or i8 %and19, 2
  %6 = ptrtoint ptr %osr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %osr, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call41 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then16.error_release_crit_edge, label %if.then16.if.end46_crit_edge

if.then16.if.end46_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then16.error_release_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

if.end46:                                         ; preds = %if.then16.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %11 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mask, label %if.end46.error_release_crit_edge [
    i32 12, label %sw.bb.i
    i32 15, label %sw.bb65.i
    i32 18, label %sw.bb153.i
  ]

if.end46.error_release_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

sw.bb.i:                                          ; preds = %if.end46
  %div.i = udiv i32 %val, 1000
  %mul.i = mul nuw i32 %div.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %val)
  %cmp1.not.i = icmp ne i32 %mul.i, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %val)
  %12 = icmp slt i32 %val, 1000
  %13 = or i1 %12, %cmp1.not.i
  br i1 %13, label %sw.bb.i.error_release_crit_edge, label %is_power_of_2.exit.i

sw.bb.i.error_release_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

is_power_of_2.exit.i:                             ; preds = %sw.bb.i
  %14 = tail call i32 @llvm.ctpop.i32(i32 %div.i) #9, !range !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp1.i.i = icmp ult i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not.i = icmp eq i32 %val2, 0
  %or.cond1.i = and i1 %tobool.not.i, %cmp1.i.i
  br i1 %or.cond1.i, label %cond.end9.i, label %is_power_of_2.exit.i.error_release_crit_edge

is_power_of_2.exit.i.error_release_crit_edge:     ; preds = %is_power_of_2.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

cond.end9.i:                                      ; preds = %is_power_of_2.exit.i
  %15 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #9, !range !84
  %sub11.i = sub nsw i32 21, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub11.i)
  %tobool24.not.i = icmp ult i32 %sub11.i, 4
  br i1 %tobool24.not.i, label %if.end27.i, label %cond.end9.i.error_release_crit_edge

cond.end9.i.error_release_crit_edge:              ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

if.end27.i:                                       ; preds = %cond.end9.i
  %creg3.i = getelementptr inbounds %struct.as73211_data, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %creg3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %creg3.i, align 1
  %18 = and i8 %17, -4
  %19 = trunc i32 %sub11.i to i8
  %conv57.i = or i8 %18, %19
  store i8 %conv57.i, ptr %creg3.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end27.i
  %i.012.i.i = phi i32 [ 0, %if.end27.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.012.i.i
  %20 = ptrtoint ptr %creg3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %creg3.i, align 1
  %22 = and i8 %21, 3
  %23 = xor i8 %22, 3
  %sub.i.i.i = zext i8 %23 to i32
  %mul.i.i.i = shl i32 %shl.i.i, %sub.i.i.i
  %mul9.i.i.i = mul i32 %mul.i.i.i, 125
  %mul9.i.i.i.frozen = freeze i32 %mul9.i.i.i
  %div.i.i = udiv i32 %mul9.i.i.i.frozen, 1000000
  %mul.i.i = shl nuw nsw i32 %i.012.i.i, 1
  %arrayidx.i.i = getelementptr %struct.as73211_data, ptr %10, i32 0, i32 7, i32 %mul.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.i.i, ptr %arrayidx.i.i, align 4
  %25 = mul i32 %div.i.i, 1000000
  %rem.i.i.decomposed = sub i32 %mul9.i.i.i.frozen, %25
  %add3.i.i = or i32 %mul.i.i, 1
  %arrayidx4.i.i = getelementptr %struct.as73211_data, ptr %10, i32 0, i32 7, i32 %add3.i.i
  %26 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rem.i.i.decomposed, ptr %arrayidx4.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %exitcond.not.i.i, label %as73211_integration_time_calc_avail.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

as73211_integration_time_calc_avail.exit.i:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %10, align 4
  %29 = ptrtoint ptr %creg3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %creg3.i, align 1
  %call59.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 8, i8 noundef zeroext %30) #9
  %31 = tail call i32 @llvm.smin.i32(i32 %call59.i, i32 0) #9
  br label %error_release

sw.bb65.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %32 = icmp slt i32 %val, 1
  br i1 %32, label %sw.bb65.i.error_release_crit_edge, label %is_power_of_2.exit9.i

sw.bb65.i.error_release_crit_edge:                ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

is_power_of_2.exit9.i:                            ; preds = %sw.bb65.i
  %33 = tail call i32 @llvm.ctpop.i32(i32 %val) #9, !range !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp1.i7.i = icmp ult i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool72.not.i = icmp eq i32 %val2, 0
  %or.cond2.i = and i1 %cmp1.i7.i, %tobool72.not.i
  br i1 %or.cond2.i, label %cond.end87.i, label %is_power_of_2.exit9.i.error_release_crit_edge

is_power_of_2.exit9.i.error_release_crit_edge:    ; preds = %is_power_of_2.exit9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

cond.end87.i:                                     ; preds = %is_power_of_2.exit9.i
  %34 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #9, !range !84
  %sub89.i = shl nuw nsw i32 %34, 4
  %shl106.i = add nsw i32 %sub89.i, -320
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shl106.i)
  %tobool108.not.i = icmp ult i32 %shl106.i, 256
  br i1 %tobool108.not.i, label %if.end113.i, label %cond.end87.i.error_release_crit_edge

cond.end87.i.error_release_crit_edge:             ; preds = %cond.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

if.end113.i:                                      ; preds = %cond.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %creg1.i = getelementptr inbounds %struct.as73211_data, ptr %10, i32 0, i32 2
  %35 = ptrtoint ptr %creg1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %creg1.i, align 1
  %37 = and i8 %36, 15
  %38 = trunc i32 %shl106.i to i8
  %conv144.i = or i8 %37, %38
  store i8 %conv144.i, ptr %creg1.i, align 1
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %10, align 4
  %call147.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 6, i8 noundef zeroext %conv144.i) #9
  %41 = tail call i32 @llvm.smin.i32(i32 %call147.i, i32 0) #9
  br label %error_release

sw.bb153.i:                                       ; preds = %if.end46
  %mul154.i = mul i32 %val, 1000000
  %add.i = add i32 %mul154.i, %val2
  %creg3172.i = getelementptr inbounds %struct.as73211_data, ptr %10, i32 0, i32 4
  %42 = ptrtoint ptr %creg3172.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %creg3172.i, align 1
  %44 = and i8 %43, 3
  %and174.i = zext i8 %44 to i32
  %mul176.i = shl i32 %add.i, %and174.i
  %div177.i = sdiv i32 %mul176.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul176.i)
  %45 = icmp slt i32 %mul176.i, 1000
  br i1 %45, label %sw.bb153.i.error_release_crit_edge, label %is_power_of_2.exit16.i

sw.bb153.i.error_release_crit_edge:               ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

is_power_of_2.exit16.i:                           ; preds = %sw.bb153.i
  %46 = tail call i32 @llvm.ctpop.i32(i32 %div177.i) #9, !range !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp1.i14.i = icmp ugt i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %div177.i)
  %cmp183.i = icmp ugt i32 %div177.i, 16384
  %or.cond4.i = or i1 %cmp183.i, %cmp1.i14.i
  br i1 %or.cond4.i, label %is_power_of_2.exit16.i.error_release_crit_edge, label %cond.false197.i

is_power_of_2.exit16.i.error_release_crit_edge:   ; preds = %is_power_of_2.exit16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

cond.false197.i:                                  ; preds = %is_power_of_2.exit16.i
  %47 = tail call i32 @llvm.ctlz.i32(i32 %div177.i, i1 true) #9, !range !84
  %sub.i.op.i18.i = xor i32 %47, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.op.i18.i)
  %tobool219.not.i = icmp ult i32 %sub.i.op.i18.i, 16
  br i1 %tobool219.not.i, label %if.end224.i, label %cond.false197.i.error_release_crit_edge

cond.false197.i.error_release_crit_edge:          ; preds = %cond.false197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

if.end224.i:                                      ; preds = %cond.false197.i
  call void @__sanitizer_cov_trace_pc() #11
  %creg1225.i = getelementptr inbounds %struct.as73211_data, ptr %10, i32 0, i32 2
  %48 = ptrtoint ptr %creg1225.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %creg1225.i, align 1
  %50 = and i8 %49, -16
  %51 = trunc i32 %sub.i.op.i18.i to i8
  %conv256.i = or i8 %50, %51
  store i8 %conv256.i, ptr %creg1225.i, align 1
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %10, align 4
  %call259.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 6, i8 noundef zeroext %conv256.i) #9
  %54 = tail call i32 @llvm.smin.i32(i32 %call259.i, i32 0) #9
  br label %error_release

error_release:                                    ; preds = %if.end224.i, %cond.false197.i.error_release_crit_edge, %is_power_of_2.exit16.i.error_release_crit_edge, %sw.bb153.i.error_release_crit_edge, %if.end113.i, %cond.end87.i.error_release_crit_edge, %is_power_of_2.exit9.i.error_release_crit_edge, %sw.bb65.i.error_release_crit_edge, %as73211_integration_time_calc_avail.exit.i, %cond.end9.i.error_release_crit_edge, %is_power_of_2.exit.i.error_release_crit_edge, %sw.bb.i.error_release_crit_edge, %if.end46.error_release_crit_edge, %if.then16.error_release_crit_edge
  %ret.0 = phi i32 [ %call41, %if.then16.error_release_crit_edge ], [ -22, %is_power_of_2.exit.i.error_release_crit_edge ], [ -22, %sw.bb.i.error_release_crit_edge ], [ -22, %cond.end9.i.error_release_crit_edge ], [ -22, %is_power_of_2.exit9.i.error_release_crit_edge ], [ -22, %sw.bb65.i.error_release_crit_edge ], [ -22, %cond.end87.i.error_release_crit_edge ], [ %41, %if.end113.i ], [ -22, %is_power_of_2.exit16.i.error_release_crit_edge ], [ -22, %sw.bb153.i.error_release_crit_edge ], [ -22, %cond.false197.i.error_release_crit_edge ], [ -22, %if.end46.error_release_crit_edge ], [ %31, %as73211_integration_time_calc_avail.exit.i ], [ %54, %if.end224.i ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %error_unlock

error_unlock:                                     ; preds = %error_release, %entry.error_unlock_crit_edge
  %ret.1 = phi i32 [ %call1, %entry.error_unlock_crit_edge ], [ %ret.0, %error_release ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as73211_req_data(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %smbus_data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %creg1.i = getelementptr inbounds %struct.as73211_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %creg1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %creg1.i, align 1
  %2 = and i8 %1, 15
  %and.i = zext i8 %2 to i32
  %shl.i = shl nuw nsw i32 1, %and.i
  %creg3.i = getelementptr inbounds %struct.as73211_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %creg3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %creg3.i, align 1
  %5 = and i8 %4, 3
  %6 = xor i8 %5, 3
  %sub.i = zext i8 %6 to i32
  %mul.i = shl i32 %shl.i, %sub.i
  %mul9.i = mul nuw nsw i32 %mul.i, 125
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %smbus_data) #9
  %9 = call ptr @memset(ptr %smbus_data, i32 255, i32 34)
  %irq = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %completion = getelementptr inbounds %struct.as73211_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %completion, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_ops.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %14, i32 noundef 2) #9
  %osr = getelementptr inbounds %struct.as73211_data, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %osr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %osr, align 4
  %21 = and i8 %20, 120
  %22 = or i8 %21, -125
  store i8 %22, ptr %osr, align 4
  %23 = ptrtoint ptr %smbus_data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %smbus_data, align 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %adapter24 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %adapter24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter24, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr, align 2
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %25, align 8
  %call27 = call i32 @__i2c_smbus_xfer(ptr noundef %27, i16 noundef zeroext %29, i16 noundef zeroext %31, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %smbus_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %adapter31 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %adapter31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter31, align 8
  %lock_ops.i189 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %lock_ops.i189 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock_ops.i189, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %unlock_bus.i, align 4
  call void %39(ptr noundef %35, i32 noundef 2) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %40 = ptrtoint ptr %osr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %osr, align 4
  %42 = and i8 %41, 127
  store i8 %42, ptr %osr, align 4
  %div = udiv i32 %mul9.i, 3
  %add = add nuw nsw i32 %div, %mul9.i
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %irq38 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool39.not = icmp eq i32 %46, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end32
  %completion41 = getelementptr inbounds %struct.as73211_data, ptr %data, i32 0, i32 6
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %add) #9
  %call43 = call i32 @wait_for_completion_timeout(ptr noundef %completion41, i32 noundef %call3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.then40.if.end52_crit_edge

if.then40.if.end52_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end48:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.3) #12
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %adapter50 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %adapter50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter50, align 8
  %lock_ops.i190 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %lock_ops.i190 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock_ops.i190, align 8
  %unlock_bus.i191 = getelementptr inbounds %struct.i2c_lock_operations, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %unlock_bus.i191 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unlock_bus.i191, align 4
  call void %54(ptr noundef %50, i32 noundef 2) #9
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl nuw i32 %add, 1
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul, i32 noundef 2) #9
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then40.if.end52_crit_edge
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %adapter54 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %adapter54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter54, align 8
  %lock_ops.i192 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %lock_ops.i192 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock_ops.i192, align 8
  %unlock_bus.i193 = getelementptr inbounds %struct.i2c_lock_operations, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %unlock_bus.i193 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %unlock_bus.i193, align 4
  call void %62(ptr noundef %58, i32 noundef 2) #9
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %call56 = call i32 @i2c_smbus_read_word_data(ptr noundef %64, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end52.cleanup_crit_edge, label %if.end60

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %conv62 = and i32 %call56, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2051, i32 %conv62)
  %cmp80.not = icmp eq i32 %conv62, 2051
  br i1 %cmp80.not, label %if.end60.cleanup_crit_edge, label %if.then82

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then82:                                        ; preds = %if.end60
  %and84 = and i32 %call56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end90, label %do.end89

do.end89:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end90:                                         ; preds = %if.then82
  %and92 = and i32 %call56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end98, label %do.end97

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end98:                                         ; preds = %if.end90
  %and100 = and i32 %call56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.end105, label %if.end106

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end106:                                        ; preds = %if.end98
  %and108 = and i32 %call56, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end114, label %do.end113

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end114:                                        ; preds = %if.end106
  %and116 = and i32 %call56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end122, label %do.end121

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end122:                                        ; preds = %if.end114
  %and124 = and i32 %call56, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end130, label %do.end129

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end130:                                        ; preds = %if.end122
  %and132 = and i32 %call56, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.end141, label %do.end137

do.end137:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4) #12
  br label %cleanup

do.end141:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end141, %do.end137, %do.end129, %do.end121, %do.end113, %do.end105, %do.end97, %do.end89, %if.end60.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end48, %if.then29
  %retval.0 = phi i32 [ %call27, %if.then29 ], [ -62, %do.end89 ], [ -61, %do.end97 ], [ -105, %do.end113 ], [ -75, %do.end121 ], [ -75, %do.end129 ], [ -75, %do.end137 ], [ -5, %do.end141 ], [ -61, %do.end105 ], [ -110, %do.end48 ], [ %call56, %if.end52.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %smbus_data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %mutex.i = getelementptr inbounds %struct.as73211_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %osr.i = getelementptr inbounds %struct.as73211_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %osr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %osr.i, align 4
  %.sink.i = or i8 %5, 64
  store i8 %.sink.i, ptr %osr.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext %.sink.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %8 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as73211_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %mutex.i = getelementptr inbounds %struct.as73211_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %osr.i = getelementptr inbounds %struct.as73211_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %osr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %osr.i, align 4
  %6 = and i8 %5, -65
  store i8 %6, ptr %osr.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %6) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %9 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0) #9
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_as73211__373_795_as73211_driver_init6, !1, !"__initcall__kmod_as73211__373_795_as73211_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/as73211.c", i32 795, i32 1}
!2 = !{ptr @__exitcall_as73211_driver_exit, !1, !"__exitcall_as73211_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author374, !4, !"__UNIQUE_ID_author374", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/as73211.c", i32 797, i32 1}
!5 = !{ptr @__UNIQUE_ID_description375, !6, !"__UNIQUE_ID_description375", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/as73211.c", i32 798, i32 1}
!7 = !{ptr @__UNIQUE_ID_file376, !8, !"__UNIQUE_ID_file376", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/as73211.c", i32 799, i32 1}
!9 = !{ptr @__UNIQUE_ID_license377, !8, !"__UNIQUE_ID_license377", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/as73211.c", i32 788, i32 21}
!12 = !{ptr @as73211_driver, !13, !"as73211_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/as73211.c", i32 786, i32 26}
!14 = !{ptr @as73211_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/as73211.c", i32 679, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @init_completion.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/completion.h", i32 87, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @as73211_info, !21, !"as73211_info", i1 false, i1 false}
!21 = !{!"../drivers/iio/light/as73211.c", i32 629, i32 30}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/as73211.c", i32 267, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @as73211_req_data._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @as73211_req_data._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/as73211.c", i32 285, i32 4}
!32 = !{ptr @as73211_req_data._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @as73211_req_data._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/as73211.c", i32 289, i32 4}
!36 = !{ptr @as73211_req_data._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @as73211_req_data._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/as73211.c", i32 293, i32 4}
!40 = !{ptr @as73211_req_data._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @as73211_req_data._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/as73211.c", i32 297, i32 4}
!44 = !{ptr @as73211_req_data._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @as73211_req_data._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/as73211.c", i32 301, i32 4}
!48 = !{ptr @as73211_req_data._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @as73211_req_data._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/as73211.c", i32 305, i32 4}
!52 = !{ptr @as73211_req_data._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @as73211_req_data._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/as73211.c", i32 309, i32 4}
!56 = !{ptr @as73211_req_data._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @as73211_req_data._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/as73211.c", i32 312, i32 3}
!60 = !{ptr @as73211_req_data._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @as73211_req_data._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @as73211_samp_freq_avail, !63, !"as73211_samp_freq_avail", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/as73211.c", i32 76, i32 18}
!64 = !{ptr @as73211_hardwaregain_avail, !65, !"as73211_hardwaregain_avail", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/as73211.c", i32 83, i32 18}
!66 = !{ptr @as73211_channels, !67, !"as73211_channels", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/as73211.c", i32 157, i32 35}
!68 = !{ptr @as73211_of_match, !69, !"as73211_of_match", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/as73211.c", i32 774, i32 34}
!70 = !{ptr @as73211_pm_ops, !71, !"as73211_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/as73211.c", i32 772, i32 8}
!72 = !{ptr @as73211_id, !73, !"as73211_id", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/as73211.c", i32 780, i32 35}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{i32 0, i32 33}
