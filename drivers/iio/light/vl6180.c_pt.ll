; ModuleID = '/llk/IR_all_yes/drivers/iio/light/vl6180.c_pt.bc'
source_filename = "../drivers/iio/light/vl6180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.vl6180_chan_regs = type { i8, i16, i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.vl6180_data = type { ptr, %struct.mutex, i32, i32 }

@__initcall__kmod_vl6180__288_546_vl6180_driver_init6 = internal global ptr @vl6180_driver_init, section ".initcall6.init", align 4
@vl6180_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vl6180_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vl6180_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vl6180_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vl6180_driver_exit = internal global ptr @vl6180_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [57 x i8] c"vl6180.author=Peter Meerwald-Stadler <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"vl6180.author=Manivannan Sadhasivam <manivannanece23@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [73 x i8] c"vl6180.description=STMicro VL6180 ALS, range and proximity sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"vl6180.file=drivers/iio/light/vl6180\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"vl6180.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vl6180\00", [25 x i8] zeroinitializer }, align 32
@vl6180_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,vl6180\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vl6180_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"vl6180\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vl6180_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@vl6180_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @vl6180_attribute_group, ptr @vl6180_read_raw, ptr null, ptr null, ptr @vl6180_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vl6180_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 294917, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 22, i32 0, i32 0, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@vl6180_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vl6180_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@vl6180_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_als_gain_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_als_gain_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.2, %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"1 1.25 1.67 2.5 5 10 20 40\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"als_gain_available\00", [45 x i8] zeroinitializer }, align 32
@vl6180_chan_regs_table = internal constant { [3 x %struct.vl6180_chan_regs], [40 x i8] } { [3 x %struct.vl6180_chan_regs] [%struct.vl6180_chan_regs { i8 32, i16 56, i16 80, i8 1 }, %struct.vl6180_chan_regs { i8 4, i16 24, i16 98, i8 0 }, %struct.vl6180_chan_regs { i8 4, i16 24, i16 102, i8 1 }], [40 x i8] zeroinitializer }, align 32
@vl6180_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 182, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed writing register 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vl6180_write_byte\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/vl6180.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vl6180_write_byte._entry_ptr = internal global ptr @vl6180_write_byte._entry, section ".printk_index", align 4
@vl6180_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 140, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed reading register 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vl6180_read\00", [20 x i8] zeroinitializer }, align 32
@vl6180_read._entry_ptr = internal global ptr @vl6180_read._entry, section ".printk_index", align 4
@vl6180_write_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.6, i32 201, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vl6180_write_word\00", [46 x i8] zeroinitializer }, align 32
@vl6180_write_word._entry_ptr = internal global ptr @vl6180_write_word._entry, section ".printk_index", align 4
@vl6180_als_gain_tab = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1000, i32 1250, i32 1670, i32 2500, i32 5000, i32 10000, i32 20000, i32 40000], [32 x i8] zeroinitializer }, align 32
@vl6180_als_gain_tab_bits = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FEDCBA@G", [24 x i8] zeroinitializer }, align 32
@vl6180_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 452, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid model ID %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vl6180_init\00", [20 x i8] zeroinitializer }, align 32
@vl6180_init._entry_ptr = internal global ptr @vl6180_init._entry, section ".printk_index", align 4
@vl6180_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.6, i32 469, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device is not fresh out of reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vl6180_init._entry_ptr.17 = internal global ptr @vl6180_init._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 15, i64 18]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 22]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 18]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"vl6180_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 537, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 539, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"vl6180_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 525, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"vl6180_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 531, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 510, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"vl6180_info\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 436, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"vl6180_channels\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 258, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"vl6180_attribute_group\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 349, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"vl6180_attributes\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 344, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [34 x i8] c"iio_const_attr_als_gain_available\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 342, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"vl6180_chan_regs_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 107, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 182, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 140, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 201, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"vl6180_als_gain_tab\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 282, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"vl6180_als_gain_tab_bits\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 285, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 452, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [30 x i8] c"../drivers/iio/light/vl6180.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 469, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_vl6180_driver_exit, ptr @__initcall__kmod_vl6180__288_546_vl6180_driver_init6, ptr @vl6180_driver_exit, ptr @vl6180_init._entry, ptr @vl6180_init._entry.14, ptr @vl6180_init._entry_ptr, ptr @vl6180_init._entry_ptr.17, ptr @vl6180_read._entry, ptr @vl6180_read._entry_ptr, ptr @vl6180_write_byte._entry, ptr @vl6180_write_byte._entry_ptr, ptr @vl6180_write_word._entry, ptr @vl6180_write_word._entry_ptr, ptr @vl6180_driver, ptr @.str, ptr @vl6180_of_match, ptr @vl6180_id, ptr @vl6180_probe.__key, ptr @.str.1, ptr @vl6180_info, ptr @vl6180_channels, ptr @vl6180_attribute_group, ptr @vl6180_attributes, ptr @iio_const_attr_als_gain_available, ptr @.str.2, ptr @.str.3, ptr @vl6180_chan_regs_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vl6180_als_gain_tab, ptr @vl6180_als_gain_tab_bits, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_als_gain_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_chan_regs_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_write_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_als_gain_tab to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_als_gain_tab_bits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl6180_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vl6180_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vl6180_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vl6180_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @vl6180_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl6180_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i131.i = alloca [3 x i8], align 1
  %msgs.i.i132.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i118.i = alloca [3 x i8], align 1
  %msgs.i119.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i105.i = alloca [3 x i8], align 1
  %msgs.i106.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i93.i = alloca [2 x i16], align 2
  %msgs.i94.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [3 x i8], align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  %cmdbuf.i.i73.i = alloca i16, align 2
  %msgs.i.i74.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i75.i = alloca i8, align 1
  %buf.i.i65.i = alloca [3 x i8], align 1
  %msgs.i.i66.i = alloca [1 x %struct.i2c_msg], align 4
  %cmdbuf.i.i.i = alloca i16, align 2
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %lock = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @vl6180_probe.__key) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vl6180_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vl6180_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %data.i.i, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmdbuf.i.i.i) #5
  %12 = ptrtoint ptr %cmdbuf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %cmdbuf.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #5
  %13 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 16)
  %addr1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr1.i.i.i, align 2
  %17 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i.i, align 2
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %13, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmdbuf.i.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %21 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %16, ptr %arrayinit.element.i.i.i, align 4
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %22 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags5.i.i.i, align 2
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %23 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len6.i.i.i, align 4
  %buf7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %24 = ptrtoint ptr %buf7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i.i, ptr %buf7.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %vl6180_read_byte.exit.thread.i, label %vl6180_read_byte.exit.i

vl6180_read_byte.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.9, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  br label %cleanup

vl6180_read_byte.exit.i:                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i.i) #5
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -76, i8 %28)
  %cmp2.not.i = icmp eq i8 %28, -76
  br i1 %cmp2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %vl6180_read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %28 to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %vl6180_read_byte.exit.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i65.i) #5
  %31 = getelementptr inbounds [3 x i8], ptr %buf.i.i65.i, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %buf.i.i65.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i66.i) #5
  %33 = getelementptr inbounds i8, ptr %msgs.i.i66.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 262143, ptr %33, align 4
  %addr1.i.i67.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %addr1.i.i67.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr1.i.i67.i, align 2
  %37 = ptrtoint ptr %msgs.i.i66.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i.i66.i, align 4
  %flags.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i68.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i68.i, align 2
  %buf2.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i.i65.i, ptr %buf2.i.i.i, align 4
  %40 = ptrtoint ptr %buf.i.i65.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %buf.i.i65.i, align 1
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 23, ptr %31, align 1
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %32, align 1
  %adapter.i.i69.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %43 = ptrtoint ptr %adapter.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i.i69.i, align 8
  %call.i.i70.i = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msgs.i.i66.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70.i)
  %cmp.i.i71.i = icmp slt i32 %call.i.i70.i, 0
  br i1 %cmp.i.i71.i, label %vl6180_hold.exit.thread.i, label %if.end8.i

vl6180_hold.exit.thread.i:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i72.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i72.i, ptr noundef nonnull @.str.4, i32 noundef 23) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i66.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i65.i) #5
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i66.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i65.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i75.i) #5
  %45 = ptrtoint ptr %data.i75.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %data.i75.i, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmdbuf.i.i73.i) #5
  %46 = ptrtoint ptr %cmdbuf.i.i73.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 22, ptr %cmdbuf.i.i73.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i74.i) #5
  %47 = getelementptr inbounds i8, ptr %msgs.i.i74.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 255, i32 16)
  %49 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %addr1.i.i.i, align 2
  %51 = ptrtoint ptr %msgs.i.i74.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %msgs.i.i74.i, align 4
  %flags.i.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i74.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i77.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i.i77.i, align 2
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 2, ptr %47, align 4
  %buf.i.i78.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i74.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cmdbuf.i.i73.i, ptr %buf.i.i78.i, align 4
  %arrayinit.element.i.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i74.i, i32 1
  %55 = ptrtoint ptr %arrayinit.element.i.i79.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %50, ptr %arrayinit.element.i.i79.i, align 4
  %flags5.i.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i74.i, i32 1, i32 1
  %56 = ptrtoint ptr %flags5.i.i80.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %flags5.i.i80.i, align 2
  %len6.i.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i74.i, i32 1, i32 2
  %57 = ptrtoint ptr %len6.i.i81.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %len6.i.i81.i, align 4
  %buf7.i.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i74.i, i32 1, i32 3
  %58 = ptrtoint ptr %buf7.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data.i75.i, ptr %buf7.i.i82.i, align 4
  %59 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i84.i = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msgs.i.i74.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84.i)
  %cmp.i.i85.i = icmp slt i32 %call.i.i84.i, 0
  br i1 %cmp.i.i85.i, label %vl6180_read_byte.exit91.thread.i, label %vl6180_read_byte.exit91.i

vl6180_read_byte.exit91.thread.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i86.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i86.i, ptr noundef nonnull @.str.9, i32 noundef 22) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i74.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i73.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i75.i) #5
  br label %cleanup

vl6180_read_byte.exit91.i:                        ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i74.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i73.i) #5
  %61 = ptrtoint ptr %data.i75.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %data.i75.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i75.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp13.not.i = icmp eq i8 %62, 1
  br i1 %cmp13.not.i, label %vl6180_read_byte.exit91.i.if.end19.i_crit_edge, label %do.end17.i

vl6180_read_byte.exit91.i.if.end19.i_crit_edge:   ; preds = %vl6180_read_byte.exit91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

do.end17.i:                                       ; preds = %vl6180_read_byte.exit91.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18.i, ptr noundef nonnull @.str.15) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end17.i, %vl6180_read_byte.exit91.i.if.end19.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #5
  %63 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %64 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #5
  %65 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 262143, ptr %65, align 4
  %67 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr1.i.i.i, align 2
  %69 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %72 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %buf.i.i, align 1
  %73 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 20, ptr %63, align 1
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 36, ptr %64, align 1
  %75 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %vl6180_write_byte.exit.thread.i, label %if.end23.i

vl6180_write_byte.exit.thread.i:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 20) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  br label %cleanup

if.end23.i:                                       ; preds = %if.end19.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  %als_it_ms.i = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 3
  %77 = ptrtoint ptr %als_it_ms.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 100, ptr %als_it_ms.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i93.i) #5
  %78 = getelementptr inbounds [2 x i16], ptr %buf.i93.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i94.i) #5
  %79 = getelementptr inbounds i8, ptr %msgs.i94.i, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 327679, ptr %79, align 4
  %81 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %addr1.i.i.i, align 2
  %83 = ptrtoint ptr %msgs.i94.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %msgs.i94.i, align 4
  %flags.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i94.i, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i96.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i96.i, align 2
  %buf2.i98.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i94.i, i32 0, i32 3
  %85 = ptrtoint ptr %buf2.i98.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i93.i, ptr %buf2.i98.i, align 4
  %86 = ptrtoint ptr %buf.i93.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 64, ptr %buf.i93.i, align 2
  %87 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 99, ptr %78, align 2
  %88 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i100.i = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msgs.i94.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i)
  %cmp.i101.i = icmp slt i32 %call.i100.i, 0
  br i1 %cmp.i101.i, label %vl6180_write_word.exit.thread.i, label %if.end27.i

vl6180_write_word.exit.thread.i:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i102.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i102.i, ptr noundef nonnull @.str.4, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i94.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i93.i) #5
  br label %cleanup

if.end27.i:                                       ; preds = %if.end23.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i94.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i93.i) #5
  %als_gain_milli.i = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 2
  %90 = ptrtoint ptr %als_gain_milli.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1000, ptr %als_gain_milli.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i105.i) #5
  %91 = getelementptr inbounds [3 x i8], ptr %buf.i105.i, i32 0, i32 1
  %92 = getelementptr inbounds [3 x i8], ptr %buf.i105.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i106.i) #5
  %93 = getelementptr inbounds i8, ptr %msgs.i106.i, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262143, ptr %93, align 4
  %95 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %addr1.i.i.i, align 2
  %97 = ptrtoint ptr %msgs.i106.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %msgs.i106.i, align 4
  %flags.i108.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i106.i, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i108.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i108.i, align 2
  %buf2.i110.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i106.i, i32 0, i32 3
  %99 = ptrtoint ptr %buf2.i110.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i105.i, ptr %buf2.i110.i, align 4
  %100 = ptrtoint ptr %buf.i105.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %buf.i105.i, align 1
  %101 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 63, ptr %91, align 1
  %102 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 70, ptr %92, align 1
  %103 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i112.i = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msgs.i106.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %cmp.i113.i = icmp slt i32 %call.i112.i, 0
  br i1 %cmp.i113.i, label %vl6180_write_byte.exit117.thread.i, label %if.end31.i

vl6180_write_byte.exit117.thread.i:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i114.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i114.i, ptr noundef nonnull @.str.4, i32 noundef 63) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i106.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i105.i) #5
  br label %cleanup

if.end31.i:                                       ; preds = %if.end27.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i106.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i105.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i118.i) #5
  %105 = getelementptr inbounds [3 x i8], ptr %buf.i118.i, i32 0, i32 1
  %106 = getelementptr inbounds [3 x i8], ptr %buf.i118.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i119.i) #5
  %107 = getelementptr inbounds i8, ptr %msgs.i119.i, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 262143, ptr %107, align 4
  %109 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %addr1.i.i.i, align 2
  %111 = ptrtoint ptr %msgs.i119.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %msgs.i119.i, align 4
  %flags.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 0, i32 1
  %112 = ptrtoint ptr %flags.i121.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %flags.i121.i, align 2
  %buf2.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 0, i32 3
  %113 = ptrtoint ptr %buf2.i123.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %buf.i118.i, ptr %buf2.i123.i, align 4
  %114 = ptrtoint ptr %buf.i118.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %buf.i118.i, align 1
  %115 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 22, ptr %105, align 1
  %116 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %106, align 1
  %117 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i125.i = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %msgs.i119.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %cmp.i126.i = icmp slt i32 %call.i125.i, 0
  br i1 %cmp.i126.i, label %vl6180_write_byte.exit130.thread.i, label %if.end35.i

vl6180_write_byte.exit130.thread.i:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i127.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i127.i, ptr noundef nonnull @.str.4, i32 noundef 22) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i119.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i118.i) #5
  br label %cleanup

if.end35.i:                                       ; preds = %if.end31.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i119.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i118.i) #5
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i131.i) #5
  %121 = getelementptr inbounds [3 x i8], ptr %buf.i.i131.i, i32 0, i32 1
  %122 = getelementptr inbounds [3 x i8], ptr %buf.i.i131.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i132.i) #5
  %123 = getelementptr inbounds i8, ptr %msgs.i.i132.i, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 262143, ptr %123, align 4
  %addr1.i.i133.i = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 1
  %125 = ptrtoint ptr %addr1.i.i133.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %addr1.i.i133.i, align 2
  %127 = ptrtoint ptr %msgs.i.i132.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %msgs.i.i132.i, align 4
  %flags.i.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i132.i, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i.i134.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %flags.i.i134.i, align 2
  %buf2.i.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i132.i, i32 0, i32 3
  %129 = ptrtoint ptr %buf2.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %buf.i.i131.i, ptr %buf2.i.i135.i, align 4
  %130 = ptrtoint ptr %buf.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %buf.i.i131.i, align 1
  %131 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 23, ptr %121, align 1
  %132 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %122, align 1
  %adapter.i.i136.i = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 3
  %133 = ptrtoint ptr %adapter.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter.i.i136.i, align 8
  %call.i.i137.i = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msgs.i.i132.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137.i)
  %cmp.i.i138.i = icmp slt i32 %call.i.i137.i, 0
  br i1 %cmp.i.i138.i, label %vl6180_init.exit.thread26, label %if.end5

vl6180_init.exit.thread26:                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i139.i = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i139.i, ptr noundef nonnull @.str.4, i32 noundef 23) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i132.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i131.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i132.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i131.i) #5
  %call7 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %vl6180_init.exit.thread26, %vl6180_write_byte.exit130.thread.i, %vl6180_write_byte.exit117.thread.i, %vl6180_write_word.exit.thread.i, %vl6180_write_byte.exit.thread.i, %vl6180_read_byte.exit91.thread.i, %vl6180_hold.exit.thread.i, %do.end.i, %vl6180_read_byte.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i137.i, %vl6180_init.exit.thread26 ], [ %call.i125.i, %vl6180_write_byte.exit130.thread.i ], [ %call.i112.i, %vl6180_write_byte.exit117.thread.i ], [ %call.i100.i, %vl6180_write_word.exit.thread.i ], [ %call.i.i, %vl6180_write_byte.exit.thread.i ], [ %call.i.i84.i, %vl6180_read_byte.exit91.thread.i ], [ %call.i.i70.i, %vl6180_hold.exit.thread.i ], [ %call.i.i.i, %vl6180_read_byte.exit.thread.i ], [ -19, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl6180_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i91.i = alloca [3 x i8], align 1
  %msgs.i92.i = alloca [1 x %struct.i2c_msg], align 4
  %cmdbuf.i.i71.i = alloca i16, align 2
  %msgs.i.i72.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i73.i = alloca i8, align 1
  %cmdbuf.i.i53.i = alloca i16, align 2
  %msgs.i.i54.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i55.i = alloca i16, align 2
  %cmdbuf.i.i.i = alloca i16, align 2
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i.i = alloca i8, align 1
  %buf.i.i = alloca [3 x i8], align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 18, label %sw.bb2
    i32 2, label %sw.bb3
    i32 15, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %lock.i = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %arrayidx.i = getelementptr [3 x %struct.vl6180_chan_regs], ptr @vl6180_chan_regs_table, i32 0, i32 %4
  %start_reg.i = getelementptr [3 x %struct.vl6180_chan_regs], ptr @vl6180_chan_regs_table, i32 0, i32 %4, i32 1
  %7 = ptrtoint ptr %start_reg.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %start_reg.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #5
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #5
  %11 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1.i.i, align 2
  %15 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %18 = lshr i16 %8, 8
  %conv3.i.i = trunc i16 %18 to i8
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.i.i, ptr %buf.i.i, align 1
  %conv5.i.i = trunc i16 %8 to i8
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.i.i, ptr %9, align 1
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %10, align 1
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %vl6180_write_byte.exit.thread.i, label %vl6180_write_byte.exit.i

vl6180_write_byte.exit.thread.i:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i16 %8 to i32
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  br label %vl6180_measure.exit.thread

vl6180_write_byte.exit.i:                         ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  %24 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %buf7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %vl6180_write_byte.exit.i
  %dec117.i = phi i32 [ 19, %vl6180_write_byte.exit.i ], [ %dec.i, %if.end9.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %data.i.i, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmdbuf.i.i.i) #5
  %26 = ptrtoint ptr %cmdbuf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 79, ptr %cmdbuf.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #5
  %27 = call ptr @memset(ptr %24, i32 255, i32 16)
  %28 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr1.i.i, align 2
  %30 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msgs.i.i.i, align 4
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i.i, align 2
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %24, align 4
  %33 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cmdbuf.i.i.i, ptr %buf.i.i.i, align 4
  %34 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %29, ptr %arrayinit.element.i.i.i, align 4
  %35 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags5.i.i.i, align 2
  %36 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %len6.i.i.i, align 4
  %37 = ptrtoint ptr %buf7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i.i, ptr %buf7.i.i.i, align 4
  %38 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %vl6180_read_byte.exit.thread.i, label %vl6180_read_byte.exit.i

vl6180_read_byte.exit.thread.i:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.9, i32 noundef 79) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  br label %vl6180_measure.exit.thread

vl6180_read_byte.exit.i:                          ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i.i) #5
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 2
  %and113.i = and i8 %43, %41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and113.i)
  %tobool7.not.i = icmp eq i8 %and113.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %while.end.i

if.end9.i:                                        ; preds = %vl6180_read_byte.exit.i
  call void @msleep(i32 noundef 20) #5
  %dec.i = add nsw i32 %dec117.i, -1
  %tobool.not.i = icmp eq i32 %dec117.i, 0
  br i1 %tobool.not.i, label %if.end9.i.vl6180_measure.exit.thread_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end9.i.vl6180_measure.exit.thread_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vl6180_measure.exit.thread

while.end.i:                                      ; preds = %vl6180_read_byte.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec117.i)
  %cmp10.i = icmp slt i32 %dec117.i, 0
  br i1 %cmp10.i, label %while.end.i.vl6180_measure.exit.thread_crit_edge, label %if.end13.i

while.end.i.vl6180_measure.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vl6180_measure.exit.thread

if.end13.i:                                       ; preds = %while.end.i
  %44 = and i32 %4, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %tobool15.not.i = icmp eq i32 %44, 1
  %value_reg20.i = getelementptr [3 x %struct.vl6180_chan_regs], ptr @vl6180_chan_regs_table, i32 0, i32 %4, i32 2
  %45 = ptrtoint ptr %value_reg20.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %value_reg20.i, align 2
  br i1 %tobool15.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i55.i) #5
  %47 = ptrtoint ptr %data.i55.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %data.i55.i, align 2, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmdbuf.i.i53.i) #5
  %48 = ptrtoint ptr %cmdbuf.i.i53.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %46, ptr %cmdbuf.i.i53.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i54.i) #5
  %49 = getelementptr inbounds i8, ptr %msgs.i.i54.i, i32 4
  %50 = call ptr @memset(ptr %49, i32 255, i32 16)
  %51 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr1.i.i, align 2
  %53 = ptrtoint ptr %msgs.i.i54.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %msgs.i.i54.i, align 4
  %flags.i.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i54.i, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i.i57.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i.i57.i, align 2
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %49, align 4
  %buf.i.i58.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i54.i, i32 0, i32 3
  %56 = ptrtoint ptr %buf.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cmdbuf.i.i53.i, ptr %buf.i.i58.i, align 4
  %arrayinit.element.i.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i54.i, i32 1
  %57 = ptrtoint ptr %arrayinit.element.i.i59.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %52, ptr %arrayinit.element.i.i59.i, align 4
  %flags5.i.i60.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i54.i, i32 1, i32 1
  %58 = ptrtoint ptr %flags5.i.i60.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags5.i.i60.i, align 2
  %len6.i.i61.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i54.i, i32 1, i32 2
  %59 = ptrtoint ptr %len6.i.i61.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2, ptr %len6.i.i61.i, align 4
  %buf7.i.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i54.i, i32 1, i32 3
  %60 = ptrtoint ptr %buf7.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %data.i55.i, ptr %buf7.i.i62.i, align 4
  %61 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i64.i = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msgs.i.i54.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i)
  %cmp.i.i65.i = icmp slt i32 %call.i.i64.i, 0
  br i1 %cmp.i.i65.i, label %vl6180_read.exit.thread.i67.i, label %if.end.i69.i

vl6180_read.exit.thread.i67.i:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i66.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv9.i.i.i = zext i16 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i66.i, ptr noundef nonnull @.str.9, i32 noundef %conv9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i54.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i53.i) #5
  br label %vl6180_read_word.exit.i

if.end.i69.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i54.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i53.i) #5
  %63 = ptrtoint ptr %data.i55.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %data.i55.i, align 2
  %conv.i68.i = zext i16 %64 to i32
  br label %vl6180_read_word.exit.i

vl6180_read_word.exit.i:                          ; preds = %if.end.i69.i, %vl6180_read.exit.thread.i67.i
  %retval.0.i70.i = phi i32 [ %conv.i68.i, %if.end.i69.i ], [ %call.i.i64.i, %vl6180_read.exit.thread.i67.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i55.i) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i73.i) #5
  %65 = ptrtoint ptr %data.i73.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %data.i73.i, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmdbuf.i.i71.i) #5
  %66 = ptrtoint ptr %cmdbuf.i.i71.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %46, ptr %cmdbuf.i.i71.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i72.i) #5
  %67 = getelementptr inbounds i8, ptr %msgs.i.i72.i, i32 4
  %68 = call ptr @memset(ptr %67, i32 255, i32 16)
  %69 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %addr1.i.i, align 2
  %71 = ptrtoint ptr %msgs.i.i72.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %msgs.i.i72.i, align 4
  %flags.i.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i72.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i.i75.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i.i75.i, align 2
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2, ptr %67, align 4
  %buf.i.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i72.i, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %cmdbuf.i.i71.i, ptr %buf.i.i76.i, align 4
  %arrayinit.element.i.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i72.i, i32 1
  %75 = ptrtoint ptr %arrayinit.element.i.i77.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %70, ptr %arrayinit.element.i.i77.i, align 4
  %flags5.i.i78.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i72.i, i32 1, i32 1
  %76 = ptrtoint ptr %flags5.i.i78.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %flags5.i.i78.i, align 2
  %len6.i.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i72.i, i32 1, i32 2
  %77 = ptrtoint ptr %len6.i.i79.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %len6.i.i79.i, align 4
  %buf7.i.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i72.i, i32 1, i32 3
  %78 = ptrtoint ptr %buf7.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %data.i73.i, ptr %buf7.i.i80.i, align 4
  %79 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i82.i = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msgs.i.i72.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i)
  %cmp.i.i83.i = icmp slt i32 %call.i.i82.i, 0
  br i1 %cmp.i.i83.i, label %vl6180_read.exit.thread.i86.i, label %if.end.i88.i

vl6180_read.exit.thread.i86.i:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i84.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv9.i.i85.i = zext i16 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i84.i, ptr noundef nonnull @.str.9, i32 noundef %conv9.i.i85.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i72.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i71.i) #5
  br label %vl6180_read_byte.exit90.i

if.end.i88.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i72.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdbuf.i.i71.i) #5
  %81 = ptrtoint ptr %data.i73.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %data.i73.i, align 1
  %conv.i87.i = zext i8 %82 to i32
  br label %vl6180_read_byte.exit90.i

vl6180_read_byte.exit90.i:                        ; preds = %if.end.i88.i, %vl6180_read.exit.thread.i86.i
  %retval.0.i89.i = phi i32 [ %conv.i87.i, %if.end.i88.i ], [ %call.i.i82.i, %vl6180_read.exit.thread.i86.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i73.i) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %vl6180_read_byte.exit90.i, %vl6180_read_word.exit.i
  %cond.i = phi i32 [ %retval.0.i70.i, %vl6180_read_word.exit.i ], [ %retval.0.i89.i, %vl6180_read_byte.exit90.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp22.i = icmp slt i32 %cond.i, 0
  br i1 %cmp22.i, label %cond.end.i.vl6180_measure.exit.thread_crit_edge, label %if.end25.i

cond.end.i.vl6180_measure.exit.thread_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vl6180_measure.exit.thread

if.end25.i:                                       ; preds = %cond.end.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i91.i) #5
  %83 = getelementptr inbounds [3 x i8], ptr %buf.i91.i, i32 0, i32 1
  %84 = getelementptr inbounds [3 x i8], ptr %buf.i91.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i92.i) #5
  %85 = getelementptr inbounds i8, ptr %msgs.i92.i, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 262143, ptr %85, align 4
  %87 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %addr1.i.i, align 2
  %89 = ptrtoint ptr %msgs.i92.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %msgs.i92.i, align 4
  %flags.i94.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i92.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i94.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i94.i, align 2
  %buf2.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i92.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf2.i96.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i91.i, ptr %buf2.i96.i, align 4
  %92 = ptrtoint ptr %buf.i91.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %buf.i91.i, align 1
  %93 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 21, ptr %83, align 1
  %94 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 7, ptr %84, align 1
  %95 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i.i, align 8
  %call.i98.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msgs.i92.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %cmp.i99.i = icmp slt i32 %call.i98.i, 0
  br i1 %cmp.i99.i, label %97, label %if.end

97:                                               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i100.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i100.i, ptr noundef nonnull @.str.4, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i92.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i91.i) #5
  br label %vl6180_measure.exit.thread

vl6180_measure.exit.thread:                       ; preds = %97, %cond.end.i.vl6180_measure.exit.thread_crit_edge, %while.end.i.vl6180_measure.exit.thread_crit_edge, %if.end9.i.vl6180_measure.exit.thread_crit_edge, %vl6180_read_byte.exit.thread.i, %vl6180_write_byte.exit.thread.i
  %ret.0.i.ph = phi i32 [ %call.i98.i, %97 ], [ %call.i.i.i, %vl6180_read_byte.exit.thread.i ], [ %call.i.i, %vl6180_write_byte.exit.thread.i ], [ -5, %while.end.i.vl6180_measure.exit.thread_crit_edge ], [ %cond.i, %cond.end.i.vl6180_measure.exit.thread_crit_edge ], [ -5, %if.end9.i.vl6180_measure.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i92.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i91.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cond.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %als_it_ms = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 3
  %99 = ptrtoint ptr %als_it_ms to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %als_it_ms, align 4
  %101 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %val, align 4
  %102 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %103 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %chan, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %104, label %sw.bb3.cleanup_crit_edge [
    i32 6, label %sw.bb4
    i32 22, label %sw.bb6
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 32000, ptr %val, align 4
  %als_gain_milli = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 2
  %107 = ptrtoint ptr %als_gain_milli to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %als_gain_milli, align 4
  %als_it_ms5 = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %als_it_ms5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %als_it_ms5, align 4
  %mul = mul i32 %110, %108
  %111 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %val, align 4
  %113 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %als_gain_milli8 = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 2
  %114 = ptrtoint ptr %als_gain_milli8 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %als_gain_milli8, align 4
  %116 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %val, align 4
  %117 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb3.cleanup_crit_edge, %sw.bb2, %if.end, %vl6180_measure.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %sw.bb7 ], [ 2, %sw.bb6 ], [ 10, %sw.bb4 ], [ 10, %sw.bb2 ], [ 1, %if.end ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i.ph, %vl6180_measure.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl6180_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i.i65.i = alloca [3 x i8], align 1
  %msgs.i.i66.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i.i7 = alloca [3 x i8], align 1
  %msgs.i.i8 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i.i.i9 = alloca [3 x i8], align 1
  %msgs.i.i.i10 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i.i46.i = alloca [3 x i8], align 1
  %msgs.i.i47.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i16], align 2
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i.i.i = alloca [3 x i8], align 1
  %msgs.i.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 18, label %sw.bb
    i32 15, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp.i = icmp sgt i32 %val2, 0
  %cond.in.v.i = select i1 %cmp.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %val2
  %cond.i = sdiv i32 %cond.in.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp8.not.i = icmp ne i32 %val, 0
  %3 = add i32 %cond.in.i, -513000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512000, i32 %3)
  %4 = icmp ult i32 %3, -512000
  %5 = or i1 %cmp8.not.i, %4
  br i1 %5, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i) #5
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i.i) #5
  %10 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262143, ptr %10, align 4
  %addr1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i.i.i, align 2
  %14 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf2.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i.i, ptr %buf2.i.i.i, align 4
  %17 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %buf.i.i.i, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 23, ptr %8, align 1
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %9, align 1
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %vl6180_hold.exit.thread.i, label %if.end18.i

vl6180_hold.exit.thread.i:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.4, i32 noundef 23) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #5
  br label %fail.i

if.end18.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = trunc i32 %cond.i to i16
  %conv20.i = add i16 %24, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #5
  %25 = getelementptr inbounds [2 x i16], ptr %buf.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #5
  %26 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327679, ptr %26, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr1.i.i, align 2
  %30 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %33 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 64, ptr %buf.i.i, align 2
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv20.i, ptr %25, align 2
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %vl6180_write_word.exit.i, label %if.then24.i

vl6180_write_word.exit.i:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #5
  br label %fail.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #5
  %als_it_ms.i = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %als_it_ms.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.i, ptr %als_it_ms.i, align 4
  br label %fail.i

fail.i:                                           ; preds = %if.then24.i, %vl6180_write_word.exit.i, %vl6180_hold.exit.thread.i
  %ret.0.i = phi i32 [ 0, %if.then24.i ], [ %call.i.i, %vl6180_write_word.exit.i ], [ %call.i.i.i, %vl6180_hold.exit.thread.i ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i46.i) #5
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i.i46.i, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i.i46.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i47.i) #5
  %42 = getelementptr inbounds i8, ptr %msgs.i.i47.i, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 262143, ptr %42, align 4
  %addr1.i.i48.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %addr1.i.i48.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr1.i.i48.i, align 2
  %46 = ptrtoint ptr %msgs.i.i47.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %msgs.i.i47.i, align 4
  %flags.i.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i47.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i.i49.i, align 2
  %buf2.i.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i47.i, i32 0, i32 3
  %48 = ptrtoint ptr %buf2.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i.i46.i, ptr %buf2.i.i50.i, align 4
  %49 = ptrtoint ptr %buf.i.i46.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %buf.i.i46.i, align 1
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 23, ptr %40, align 1
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %41, align 1
  %adapter.i.i51.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %52 = ptrtoint ptr %adapter.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i.i51.i, align 8
  %call.i.i52.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msgs.i.i47.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52.i)
  %cmp.i.i53.i = icmp slt i32 %call.i.i52.i, 0
  br i1 %cmp.i.i53.i, label %do.end.i.i55.i, label %fail.i.vl6180_hold.exit57.i_crit_edge

fail.i.vl6180_hold.exit57.i_crit_edge:            ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vl6180_hold.exit57.i

do.end.i.i55.i:                                   ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i54.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i54.i, ptr noundef nonnull @.str.4, i32 noundef 23) #8
  br label %vl6180_hold.exit57.i

vl6180_hold.exit57.i:                             ; preds = %do.end.i.i55.i, %fail.i.vl6180_hold.exit57.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i47.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i46.i) #5
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %54 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %55)
  %cmp.not = icmp ne i32 %55, 6
  %56 = add i32 %val, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -40, i32 %56)
  %57 = icmp ult i32 %56, -40
  %or.cond = or i1 %57, %cmp.not
  br i1 %or.cond, label %sw.bb2.cleanup_crit_edge, label %if.end.i11

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i11:                                       ; preds = %sw.bb2
  %mul.i = mul nuw nsw i32 %val, 1000000
  %add.i = add i32 %mul.i, %val2
  %58 = add i32 %add.i, -40001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -40000000, i32 %58)
  %59 = icmp ult i32 %58, -40000000
  br i1 %59, label %if.end.i11.cleanup_crit_edge, label %for.cond.preheader.i

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1125999, i32 %add.i)
  %cmp21.not.i = icmp ugt i32 %add.i, 1125999
  br i1 %cmp21.not.i, label %for.cond.1.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1460999, i32 %add.i)
  %cmp21.not.1.i = icmp ugt i32 %add.i, 1460999
  br i1 %cmp21.not.1.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2085999, i32 %add.i)
  %cmp21.not.2.i = icmp ugt i32 %add.i, 2085999
  br i1 %cmp21.not.2.i, label %for.cond.3.i, label %for.cond.2.i.for.end.i_crit_edge

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3750999, i32 %add.i)
  %cmp21.not.3.i = icmp ugt i32 %add.i, 3750999
  br i1 %cmp21.not.3.i, label %for.cond.4.i, label %for.cond.3.i.for.end.i_crit_edge

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500999, i32 %add.i)
  %cmp21.not.4.i = icmp ugt i32 %add.i, 7500999
  br i1 %cmp21.not.4.i, label %for.cond.5.i, label %for.cond.4.i.for.end.i_crit_edge

for.cond.4.i.for.end.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000999, i32 %add.i)
  %cmp21.not.5.i = icmp ugt i32 %add.i, 15000999
  br i1 %cmp21.not.5.i, label %for.cond.6.i, label %for.cond.5.i.for.end.i_crit_edge

for.cond.5.i.for.end.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000999, i32 %add.i)
  %cmp21.not.6.i = icmp ugt i32 %add.i, 30000999
  %spec.select.i = select i1 %cmp21.not.6.i, i32 7, i32 6
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.6.i, %for.cond.5.i.for.end.i_crit_edge, %for.cond.4.i.for.end.i_crit_edge, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %__fc_i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 1, %for.cond.1.i.for.end.i_crit_edge ], [ 2, %for.cond.2.i.for.end.i_crit_edge ], [ 3, %for.cond.3.i.for.end.i_crit_edge ], [ 4, %for.cond.4.i.for.end.i_crit_edge ], [ 5, %for.cond.5.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.6.i ]
  %lock.i12 = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i12, i32 noundef 0) #5
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i9) #5
  %62 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i9, i32 0, i32 1
  %63 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i.i10) #5
  %64 = getelementptr inbounds i8, ptr %msgs.i.i.i10, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 262143, ptr %64, align 4
  %addr1.i.i.i13 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %addr1.i.i.i13 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr1.i.i.i13, align 2
  %68 = ptrtoint ptr %msgs.i.i.i10 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %msgs.i.i.i10, align 4
  %flags.i.i.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i10, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i.i.i14 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i.i.i14, align 2
  %buf2.i.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i10, i32 0, i32 3
  %70 = ptrtoint ptr %buf2.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i.i.i9, ptr %buf2.i.i.i15, align 4
  %71 = ptrtoint ptr %buf.i.i.i9 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %buf.i.i.i9, align 1
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 23, ptr %62, align 1
  %73 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %63, align 1
  %adapter.i.i.i16 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %74 = ptrtoint ptr %adapter.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter.i.i.i16, align 8
  %call.i.i.i17 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msgs.i.i.i10, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i17)
  %cmp.i.i.i18 = icmp slt i32 %call.i.i.i17, 0
  br i1 %cmp.i.i.i18, label %vl6180_hold.exit.thread.i20, label %if.end29.i

vl6180_hold.exit.thread.i20:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i.i19 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i19, ptr noundef nonnull @.str.4, i32 noundef 23) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i.i10) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i9) #5
  br label %fail.i29

if.end29.i:                                       ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i.i10) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i9) #5
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %arrayidx30.i = getelementptr [8 x i8], ptr @vl6180_als_gain_tab_bits, i32 0, i32 %__fc_i.0.lcssa.i
  %78 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx30.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i7) #5
  %80 = getelementptr inbounds [3 x i8], ptr %buf.i.i7, i32 0, i32 1
  %81 = getelementptr inbounds [3 x i8], ptr %buf.i.i7, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i8) #5
  %82 = getelementptr inbounds i8, ptr %msgs.i.i8, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 262143, ptr %82, align 4
  %addr1.i.i21 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 1
  %84 = ptrtoint ptr %addr1.i.i21 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr1.i.i21, align 2
  %86 = ptrtoint ptr %msgs.i.i8 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %msgs.i.i8, align 4
  %flags.i.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i.i22 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i22, align 2
  %buf2.i.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 0, i32 3
  %88 = ptrtoint ptr %buf2.i.i23 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i.i7, ptr %buf2.i.i23, align 4
  %89 = ptrtoint ptr %buf.i.i7 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %buf.i.i7, align 1
  %90 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 63, ptr %80, align 1
  %91 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %79, ptr %81, align 1
  %adapter.i.i24 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 3
  %92 = ptrtoint ptr %adapter.i.i24 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i.i24, align 8
  %call.i.i25 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msgs.i.i8, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp.i.i26 = icmp slt i32 %call.i.i25, 0
  br i1 %cmp.i.i26, label %vl6180_write_byte.exit.i, label %if.then34.i

vl6180_write_byte.exit.i:                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i27 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i27, ptr noundef nonnull @.str.4, i32 noundef 63) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i7) #5
  br label %fail.i29

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i7) #5
  %arrayidx35.i = getelementptr [8 x i32], ptr @vl6180_als_gain_tab, i32 0, i32 %__fc_i.0.lcssa.i
  %94 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx35.i, align 4
  %als_gain_milli.i = getelementptr inbounds %struct.vl6180_data, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %als_gain_milli.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %als_gain_milli.i, align 4
  br label %fail.i29

fail.i29:                                         ; preds = %if.then34.i, %vl6180_write_byte.exit.i, %vl6180_hold.exit.thread.i20
  %ret.0.i28 = phi i32 [ 0, %if.then34.i ], [ %call.i.i25, %vl6180_write_byte.exit.i ], [ %call.i.i.i17, %vl6180_hold.exit.thread.i20 ]
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i65.i) #5
  %99 = getelementptr inbounds [3 x i8], ptr %buf.i.i65.i, i32 0, i32 1
  %100 = getelementptr inbounds [3 x i8], ptr %buf.i.i65.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i66.i) #5
  %101 = getelementptr inbounds i8, ptr %msgs.i.i66.i, i32 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 262143, ptr %101, align 4
  %addr1.i.i67.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %addr1.i.i67.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %addr1.i.i67.i, align 2
  %105 = ptrtoint ptr %msgs.i.i66.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %msgs.i.i66.i, align 4
  %flags.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i.i68.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i.i68.i, align 2
  %buf2.i.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf2.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i.i65.i, ptr %buf2.i.i69.i, align 4
  %108 = ptrtoint ptr %buf.i.i65.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %buf.i.i65.i, align 1
  %109 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 23, ptr %99, align 1
  %110 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %100, align 1
  %adapter.i.i70.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %111 = ptrtoint ptr %adapter.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter.i.i70.i, align 8
  %call.i.i71.i = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msgs.i.i66.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71.i)
  %cmp.i.i72.i = icmp slt i32 %call.i.i71.i, 0
  br i1 %cmp.i.i72.i, label %do.end.i.i74.i, label %fail.i29.vl6180_hold.exit76.i_crit_edge

fail.i29.vl6180_hold.exit76.i_crit_edge:          ; preds = %fail.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %vl6180_hold.exit76.i

do.end.i.i74.i:                                   ; preds = %fail.i29
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i73.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i73.i, ptr noundef nonnull @.str.4, i32 noundef 23) #8
  br label %vl6180_hold.exit76.i

vl6180_hold.exit76.i:                             ; preds = %do.end.i.i74.i, %fail.i29.vl6180_hold.exit76.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i66.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i65.i) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %vl6180_hold.exit76.i, %vl6180_hold.exit57.i
  %lock.i12.sink = phi ptr [ %lock.i12, %vl6180_hold.exit76.i ], [ %lock.i, %vl6180_hold.exit57.i ]
  %retval.0.ph = phi i32 [ %ret.0.i28, %vl6180_hold.exit76.i ], [ %ret.0.i, %vl6180_hold.exit57.i ]
  call void @mutex_unlock(ptr noundef %lock.i12.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i11.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_vl6180__288_546_vl6180_driver_init6, !1, !"__initcall__kmod_vl6180__288_546_vl6180_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/vl6180.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_vl6180_driver_exit, !1, !"__exitcall_vl6180_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/vl6180.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/vl6180.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/vl6180.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/light/vl6180.c", i32 551, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/vl6180.c", i32 539, i32 13}
!14 = !{ptr @vl6180_driver, !15, !"vl6180_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/vl6180.c", i32 537, i32 26}
!16 = !{ptr @vl6180_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/vl6180.c", i32 510, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vl6180_info, !20, !"vl6180_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/vl6180.c", i32 436, i32 30}
!21 = !{ptr @vl6180_attribute_group, !22, !"vl6180_attribute_group", i1 false, i1 false}
!22 = !{!"../drivers/iio/light/vl6180.c", i32 349, i32 37}
!23 = !{ptr @vl6180_attributes, !24, !"vl6180_attributes", i1 false, i1 false}
!24 = !{!"../drivers/iio/light/vl6180.c", i32 344, i32 26}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/vl6180.c", i32 342, i32 8}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iio_const_attr_als_gain_available, !26, !"iio_const_attr_als_gain_available", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/vl6180.c", i32 182, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vl6180_write_byte._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @vl6180_write_byte._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @vl6180_chan_regs_table, !38, !"vl6180_chan_regs_table", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/vl6180.c", i32 107, i32 38}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/vl6180.c", i32 140, i32 3}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vl6180_read._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vl6180_read._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/vl6180.c", i32 201, i32 3}
!46 = !{ptr @vl6180_write_word._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vl6180_write_word._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @vl6180_als_gain_tab, !49, !"vl6180_als_gain_tab", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/vl6180.c", i32 282, i32 18}
!50 = !{ptr @vl6180_als_gain_tab_bits, !51, !"vl6180_als_gain_tab_bits", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/vl6180.c", i32 285, i32 17}
!52 = !{ptr @vl6180_channels, !53, !"vl6180_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/vl6180.c", i32 258, i32 35}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/vl6180.c", i32 452, i32 3}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vl6180_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @vl6180_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/vl6180.c", i32 469, i32 3}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vl6180_init._entry.14, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @vl6180_init._entry_ptr.17, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @vl6180_of_match, !65, !"vl6180_of_match", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/vl6180.c", i32 525, i32 34}
!66 = !{ptr @vl6180_id, !67, !"vl6180_id", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/vl6180.c", i32 531, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
