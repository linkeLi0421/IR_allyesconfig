; ModuleID = '/llk/IR_all_yes/drivers/iio/potentiostat/lmp91000.c_pt.bc'
source_filename = "../drivers/iio/potentiostat/lmp91000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.lmp91000_data = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, i8, [4 x i32] }

@__initcall__kmod_lmp91000__288_426_lmp91000_driver_init6 = internal global ptr @lmp91000_driver_init, section ".initcall6.init", align 4
@lmp91000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lmp91000_probe, ptr @lmp91000_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lmp91000_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lmp91000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lmp91000_driver_exit = internal global ptr @lmp91000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"lmp91000.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [51 x i8] c"lmp91000.description=LMP91000 digital potentiostat\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [48 x i8] c"lmp91000.file=drivers/iio/potentiostat/lmp91000\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"lmp91000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lmp91000\00", [23 x i8] zeroinitializer }, align 32
@lmp91000_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lmp91000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lmp91002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lmp91000_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lmp91000\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lmp91002\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lmp91000_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @lmp91000_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@lmp91000_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 0, %struct.anon.86 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 7, i32 -1, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@lmp91000_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lmp91000_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lmp91000:316:(&lmp91000_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@lmp91000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lmp91000_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/potentiostat/lmp91000.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lmp91000_probe._entry_ptr = internal global ptr @lmp91000_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-mux%d\00", [23 x i8] zeroinitializer }, align 32
@lmp91000_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate iio trigger.\0A\00", [34 x i8] zeroinitializer }, align 32
@lmp91000_probe._entry_ptr.10 = internal global ptr @lmp91000_probe._entry.8, section ".printk_index", align 4
@lmp91000_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot set immutable trigger.\0A\00", [33 x i8] zeroinitializer }, align 32
@lmp91000_probe._entry_ptr.13 = internal global ptr @lmp91000_probe._entry.11, section ".printk_index", align 4
@lmp91000_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot register iio trigger.\0A\00", [34 x i8] zeroinitializer }, align 32
@lmp91000_probe._entry_ptr.16 = internal global ptr @lmp91000_probe._entry.14, section ".printk_index", align 4
@lmp91000_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @lmp91000_buffer_postenable, ptr @lmp91000_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@lmp91000_temp_lut = internal constant { [126 x i16], [36 x i8] } { [126 x i16] [i16 1875, i16 1867, i16 1860, i16 1852, i16 1844, i16 1836, i16 1828, i16 1821, i16 1813, i16 1805, i16 1797, i16 1789, i16 1782, i16 1774, i16 1766, i16 1758, i16 1750, i16 1742, i16 1734, i16 1727, i16 1719, i16 1711, i16 1703, i16 1695, i16 1687, i16 1679, i16 1671, i16 1663, i16 1656, i16 1648, i16 1640, i16 1632, i16 1624, i16 1616, i16 1608, i16 1600, i16 1592, i16 1584, i16 1576, i16 1568, i16 1560, i16 1552, i16 1544, i16 1536, i16 1528, i16 1520, i16 1512, i16 1504, i16 1496, i16 1488, i16 1480, i16 1472, i16 1464, i16 1456, i16 1448, i16 1440, i16 1432, i16 1424, i16 1415, i16 1407, i16 1399, i16 1391, i16 1383, i16 1375, i16 1367, i16 1359, i16 1351, i16 1342, i16 1334, i16 1326, i16 1318, i16 1310, i16 1302, i16 1293, i16 1285, i16 1277, i16 1269, i16 1261, i16 1253, i16 1244, i16 1236, i16 1228, i16 1220, i16 1212, i16 1203, i16 1195, i16 1187, i16 1179, i16 1170, i16 1162, i16 1154, i16 1146, i16 1137, i16 1129, i16 1121, i16 1112, i16 1104, i16 1096, i16 1087, i16 1079, i16 1071, i16 1063, i16 1054, i16 1046, i16 1038, i16 1029, i16 1021, i16 1012, i16 1004, i16 996, i16 987, i16 979, i16 971, i16 962, i16 954, i16 945, i16 937, i16 929, i16 920, i16 912, i16 903, i16 895, i16 886, i16 878, i16 870, i16 861], [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,tia-gain-ohm\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,external-tia-resistor\00", [39 x i8] zeroinitializer }, align 32
@lmp91000_read_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"no ti,tia-gain-ohm defined and external resistor not specified\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lmp91000_read_config\00", [43 x i8] zeroinitializer }, align 32
@lmp91000_read_config._entry_ptr = internal global ptr @lmp91000_read_config._entry, section ".printk_index", align 4
@lmp91000_read_config._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid ti,tia-gain-ohm %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lmp91000_read_config._entry_ptr.24 = internal global ptr @lmp91000_read_config._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,rload-ohm\00", [19 x i8] zeroinitializer }, align 32
@lmp91000_read_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.4, i32 237, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no ti,rload-ohm defined, default to %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lmp91000_read_config._entry_ptr.29 = internal global ptr @lmp91000_read_config._entry.26, section ".printk_index", align 4
@lmp91000_read_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.4, i32 250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid ti,rload-ohm %d\0A\00", [39 x i8] zeroinitializer }, align 32
@lmp91000_read_config._entry_ptr.32 = internal global ptr @lmp91000_read_config._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2750, i64 3500, i64 7000, i64 14000, i64 35000, i64 120000, i64 350000]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 33, i64 50, i64 100]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"lmp91000_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 417, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 419, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"lmp91000_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 403, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"lmp91000_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 410, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"lmp91000_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 201, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"lmp91000_channels\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 78, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"lmp91000_regmap_config\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 59, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 316, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 318, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 322, i32 43 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 326, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 339, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 345, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"lmp91000_buffer_setup_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 290, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"lmp91000_temp_lut\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 44, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 211, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 213, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 214, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 234, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 237, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [39 x i8] c"../drivers/iio/potentiostat/lmp91000.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 250, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lmp91000_driver_exit, ptr @__initcall__kmod_lmp91000__288_426_lmp91000_driver_init6, ptr @lmp91000_driver_exit, ptr @lmp91000_probe._entry, ptr @lmp91000_probe._entry.11, ptr @lmp91000_probe._entry.14, ptr @lmp91000_probe._entry.8, ptr @lmp91000_probe._entry_ptr, ptr @lmp91000_probe._entry_ptr.10, ptr @lmp91000_probe._entry_ptr.13, ptr @lmp91000_probe._entry_ptr.16, ptr @lmp91000_read_config._entry, ptr @lmp91000_read_config._entry.22, ptr @lmp91000_read_config._entry.26, ptr @lmp91000_read_config._entry.30, ptr @lmp91000_read_config._entry_ptr, ptr @lmp91000_read_config._entry_ptr.24, ptr @lmp91000_read_config._entry_ptr.29, ptr @lmp91000_read_config._entry_ptr.32, ptr @lmp91000_driver, ptr @.str, ptr @lmp91000_of_match, ptr @lmp91000_id, ptr @lmp91000_info, ptr @lmp91000_channels, ptr @lmp91000_probe._key, ptr @lmp91000_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @lmp91000_buffer_setup_ops, ptr @lmp91000_temp_lut, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.31], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_temp_lut to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_read_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_read_config._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_read_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmp91000_read_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lmp91000_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lmp91000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lmp91000_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 96) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @lmp91000_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @lmp91000_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %dev3 = getelementptr inbounds %struct.lmp91000_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lmp91000_regmap_config, ptr noundef nonnull @lmp91000_probe._key, ptr noundef nonnull @.str.1) #5
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %7, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %call12 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #5
  %call13 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %14, i32 noundef %call12) #5
  %trig = getelementptr inbounds %struct.lmp91000_data, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %trig, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %completion = getelementptr inbounds %struct.lmp91000_data, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.lmp91000_data, ptr %7, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #5
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i, align 4, !annotation !93
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %if.end20
  %call.i72.i = call zeroext i1 @device_property_present(ptr noundef %18, ptr noundef nonnull @.str.19) #5
  br i1 %call.i72.i, label %if.end4.thread.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20) #8
  br label %lmp91000_read_config.exit.thread

if.end4.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val.i, align 4
  br label %if.end13.i

if.end4.i:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %val.i, align 4
  %22 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i, label %for.inc.7.i [
    i32 0, label %if.end4.i.if.end13.i_crit_edge
    i32 2750, label %if.end13.fold.split.i
    i32 3500, label %if.end13.fold.split87.i
    i32 7000, label %if.end13.fold.split88.i
    i32 14000, label %if.end13.fold.split89.i
    i32 35000, label %if.end13.fold.split90.i
    i32 120000, label %if.end13.fold.split91.i
    i32 350000, label %if.end13.fold.split92.i
  ]

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

for.inc.7.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %.pr.i) #8
  br label %lmp91000_read_config.exit.thread

if.end13.fold.split.i:                            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.fold.split87.i:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.fold.split88.i:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.fold.split89.i:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.fold.split90.i:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.fold.split91.i:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.fold.split92.i:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.fold.split92.i, %if.end13.fold.split91.i, %if.end13.fold.split90.i, %if.end13.fold.split89.i, %if.end13.fold.split88.i, %if.end13.fold.split87.i, %if.end13.fold.split.i, %if.end4.i.if.end13.i_crit_edge, %if.end4.thread.i
  %i.082.lcssa.i = phi i32 [ %.pr.i, %if.end4.i.if.end13.i_crit_edge ], [ 0, %if.end4.thread.i ], [ 4, %if.end13.fold.split.i ], [ 8, %if.end13.fold.split87.i ], [ 12, %if.end13.fold.split88.i ], [ 16, %if.end13.fold.split89.i ], [ 20, %if.end13.fold.split90.i ], [ 24, %if.end13.fold.split91.i ], [ 28, %if.end13.fold.split92.i ]
  %call.i73.i = call i32 @device_property_read_u32_array(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool15.not.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end20.i_crit_edge, label %if.then16.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef 100) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end20.i_crit_edge
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %25, label %for.inc28.3.i [
    i32 10, label %if.end20.i.if.end24_crit_edge
    i32 33, label %if.end36.fold.split.i
    i32 50, label %if.end36.fold.split93.i
    i32 100, label %if.end36.fold.split94.i
  ]

if.end20.i.if.end24_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.inc28.3.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31, i32 noundef %25) #8
  br label %lmp91000_read_config.exit.thread

if.end36.fold.split.i:                            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end36.fold.split93.i:                          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end36.fold.split94.i:                          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

lmp91000_read_config.exit.thread:                 ; preds = %for.inc28.3.i, %for.inc.7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %do.end.i ], [ -22, %for.inc28.3.i ], [ -22, %for.inc.7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end36.fold.split94.i, %if.end36.fold.split93.i, %if.end36.fold.split.i, %if.end20.i.if.end24_crit_edge
  %i.183.lcssa.i = phi i32 [ 0, %if.end20.i.if.end24_crit_edge ], [ 1, %if.end36.fold.split.i ], [ 2, %if.end36.fold.split93.i ], [ 3, %if.end36.fold.split94.i ]
  %or.i = or i32 %i.183.lcssa.i, %i.082.lcssa.i
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 8
  %call37.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 1, i32 noundef 0) #5
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 8
  %call39.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 16, i32 noundef %or.i) #5
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 8
  %call41.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 17, i32 noundef 160) #5
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 8
  %call43.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 1, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %cb_buffer = getelementptr inbounds %struct.lmp91000_data, ptr %7, i32 0, i32 3
  %35 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb_buffer, align 4
  %call25 = call ptr @iio_channel_cb_get_iio_dev(ptr noundef %36) #5
  %37 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trig, align 8
  %call27 = call i32 @iio_trigger_set_immutable(ptr noundef %call25, ptr noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %39 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trig, align 8
  %call35 = call i32 @__iio_trigger_register(ptr noundef %40, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %call42 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @lmp91000_buffer_handler, i32 noundef 0, ptr noundef nonnull @lmp91000_buffer_setup_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.error_unreg_trigger_crit_edge

if.end41.error_unreg_trigger_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unreg_trigger

if.end45:                                         ; preds = %if.end41
  %call46 = call ptr @iio_channel_get_all_cb(ptr noundef %dev1, ptr noundef nonnull @lmp91000_buffer_cb, ptr noundef nonnull %call) #5
  %41 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call46, ptr %cb_buffer, align 4
  %cmp.i117 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then50, label %if.end57

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %call46 to i32
  %cmp = icmp eq ptr %call46, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %42
  br label %error_unreg_buffer

if.end57:                                         ; preds = %if.end45
  %call59 = call ptr @iio_channel_cb_get_channels(ptr noundef %call46) #5
  %adc_chan = getelementptr inbounds %struct.lmp91000_data, ptr %7, i32 0, i32 4
  %43 = ptrtoint ptr %adc_chan to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call59, ptr %adc_chan, align 8
  %call60 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end57.cleanup_crit_edge, label %error_unreg_cb_buffer

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

error_unreg_cb_buffer:                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cb_buffer, align 4
  call void @iio_channel_release_all_cb(ptr noundef %45) #5
  br label %error_unreg_buffer

error_unreg_buffer:                               ; preds = %error_unreg_cb_buffer, %if.then50
  %ret.0 = phi i32 [ %call60, %error_unreg_cb_buffer ], [ %spec.select, %if.then50 ]
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #5
  br label %error_unreg_trigger

error_unreg_trigger:                              ; preds = %error_unreg_buffer, %if.end41.error_unreg_trigger_crit_edge
  %ret.1 = phi i32 [ %call42, %if.end41.error_unreg_trigger_crit_edge ], [ %ret.0, %error_unreg_buffer ]
  %46 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trig, align 8
  call void @iio_trigger_unregister(ptr noundef %47) #5
  br label %cleanup

cleanup:                                          ; preds = %error_unreg_trigger, %if.end57.cleanup_crit_edge, %do.end40, %do.end32, %lmp91000_read_config.exit.thread, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end ], [ %call27, %do.end32 ], [ %call35, %do.end40 ], [ %ret.1, %error_unreg_trigger ], [ -12, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ %retval.0.i.ph, %lmp91000_read_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %cb_buffer = getelementptr inbounds %struct.lmp91000_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_buffer, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %5) #5
  %6 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_buffer, align 4
  tail call void @iio_channel_release_all_cb(ptr noundef %7) #5
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #5
  %trig = getelementptr inbounds %struct.lmp91000_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_unregister(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_set_immutable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_cb_get_iio_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_buffer_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %buffer = getelementptr inbounds %struct.lmp91000_data, ptr %3, i32 0, i32 7
  %4 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #5
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %state.i, align 4, !annotation !93
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 18, ptr noundef nonnull %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lmp91000_read.exit.thread_crit_edge

entry.lmp91000_read.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lmp91000_read.exit.thread

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call2.i = call i32 @regmap_write(ptr noundef %9, i32 noundef 18, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.lmp91000_read.exit.thread_crit_edge

if.end.i.lmp91000_read.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lmp91000_read.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %chan_select.i = getelementptr inbounds %struct.lmp91000_data, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %chan_select.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %chan_select.i, align 4
  %trig.i = getelementptr inbounds %struct.lmp91000_data, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig.i, align 8
  call void @iio_trigger_poll_chained(ptr noundef %12) #5
  %completion.i = getelementptr inbounds %struct.lmp91000_data, ptr %3, i32 0, i32 5
  %call11.i = call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 100) #5
  %13 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end5.i.lmp91000_read.exit.thread_crit_edge, label %if.then

if.end5.i.lmp91000_read.exit.thread_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lmp91000_read.exit.thread

lmp91000_read.exit.thread:                        ; preds = %if.end5.i.lmp91000_read.exit.thread_crit_edge, %if.end.i.lmp91000_read.exit.thread_crit_edge, %entry.lmp91000_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #5
  br label %if.end

if.then:                                          ; preds = %if.end5.i
  %14 = ptrtoint ptr %chan_select.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chan_select.i, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr %struct.lmp91000_data, ptr %3, i32 0, i32 7, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #5
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buffer, align 8
  %call6 = call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_timestamp.i, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i14 = icmp eq i8 %20, 0
  br i1 %tobool.not.i14, label %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %22, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i15 = getelementptr i64, ptr %buffer, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call6, ptr %arrayidx.i15, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i16 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #5
  br label %if.end

if.end:                                           ; preds = %iio_push_to_buffers_with_timestamp.exit, %lmp91000_read.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %25) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_buffer_cb(ptr nocapture noundef readonly %val, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %chan_select = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chan_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chan_select, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.lmp91000_data, ptr %1, i32 0, i32 7, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %arrayidx, align 4
  %completion = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 5
  tail call void @complete_all(ptr noundef %completion) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_cb_get_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mask, label %entry.cleanup26_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge47
    i32 3, label %sw.bb20
    i32 2, label %sw.bb23
  ]

entry.sw.bb_crit_edge47:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge47
  %cb_buffer = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_buffer, align 4
  %call1 = tail call i32 @iio_channel_start_all_cb(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup26_crit_edge

sw.bb.cleanup26_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %call2 = tail call fastcc i32 @lmp91000_read(ptr noundef %1, i32 noundef %6, ptr noundef %val)
  %7 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb_buffer, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup26_crit_edge

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp = icmp eq i32 %mask, 1
  br i1 %cmp, label %if.then7, label %if.end6.cleanup26_crit_edge

if.end6.cleanup26_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.then7:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp, align 4, !annotation !93
  %adc_chan = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %adc_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adc_chan, align 8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %call8 = call i32 @iio_convert_raw_to_processed(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %tmp, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %cleanup19.critedge

for.cond.preheader:                               ; preds = %if.then7
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tmp, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.046 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [126 x i16], ptr @lmp91000_temp_lut, i32 0, i32 %i.046
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp13 = icmp sgt i32 %15, %conv
  br i1 %cmp13, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 126
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.046, %for.body.for.end_crit_edge ], [ 126, %for.inc.for.end_crit_edge ]
  %18 = mul i32 %i.0.lcssa, 1000
  %mul = add i32 %18, -40000
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  br label %cleanup26

cleanup19.critedge:                               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  br label %cleanup26

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %adc_chan21 = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %adc_chan21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adc_chan21, align 8
  %call22 = tail call i32 @iio_read_channel_offset(ptr noundef %21, ptr noundef %val, ptr noundef %val2) #5
  br label %cleanup26

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %adc_chan24 = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %adc_chan24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adc_chan24, align 8
  %call25 = tail call i32 @iio_read_channel_scale(ptr noundef %23, ptr noundef %val, ptr noundef %val2) #5
  br label %cleanup26

cleanup26:                                        ; preds = %sw.bb23, %sw.bb20, %cleanup19.critedge, %for.end, %if.end6.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %sw.bb.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ %call25, %sw.bb23 ], [ %call22, %sw.bb20 ], [ %call1, %sw.bb.cleanup26_crit_edge ], [ %call2, %if.end.cleanup26_crit_edge ], [ %call8, %cleanup19.critedge ], [ -22, %entry.cleanup26_crit_edge ], [ 1, %for.end ], [ 1, %if.end6.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_start_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmp91000_read(ptr noundef %data, i32 noundef %channel, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !93
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 18, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 18, i32 noundef %channel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %channel)
  %cmp6 = icmp eq i32 %channel, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %7 = icmp ne i32 %6, 7
  %8 = and i1 %cmp6, %7
  br i1 %8, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %channel)
  %cmp9 = icmp ne i32 %channel, 3
  %conv10 = zext i1 %cmp9 to i8
  %chan_select = getelementptr inbounds %struct.lmp91000_data, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %chan_select to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %chan_select, align 4
  %trig = getelementptr inbounds %struct.lmp91000_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trig, align 8
  call void @iio_trigger_poll_chained(ptr noundef %11) #5
  %completion = getelementptr inbounds %struct.lmp91000_data, ptr %data, i32 0, i32 5
  %call11 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 100) #5
  %12 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %completion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %chan_select to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chan_select, align 4
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr %struct.lmp91000_data, ptr %data, i32 0, i32 7, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -110, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_stop_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_convert_raw_to_processed(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cb_buffer = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_buffer, align 4
  %call1 = tail call i32 @iio_channel_start_all_cb(ptr noundef %3) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmp91000_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cb_buffer = getelementptr inbounds %struct.lmp91000_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cb_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_buffer, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_lmp91000__288_426_lmp91000_driver_init6, !1, !"__initcall__kmod_lmp91000__288_426_lmp91000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 426, i32 1}
!2 = !{ptr @__exitcall_lmp91000_driver_exit, !1, !"__exitcall_lmp91000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 428, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 429, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 430, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 419, i32 11}
!12 = !{ptr @lmp91000_driver, !13, !"lmp91000_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 417, i32 26}
!14 = !{ptr @lmp91000_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 316, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 318, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lmp91000_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lmp91000_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 322, i32 43}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 326, i32 3}
!29 = !{ptr @lmp91000_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lmp91000_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 339, i32 3}
!33 = !{ptr @lmp91000_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lmp91000_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 345, i32 3}
!37 = !{ptr @lmp91000_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lmp91000_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @lmp91000_info, !40, !"lmp91000_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 201, i32 30}
!41 = !{ptr @lmp91000_temp_lut, !42, !"lmp91000_temp_lut", i1 false, i1 false}
!42 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 44, i32 18}
!43 = !{ptr @lmp91000_channels, !44, !"lmp91000_channels", i1 false, i1 false}
!44 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 78, i32 35}
!45 = !{ptr @lmp91000_regmap_config, !46, !"lmp91000_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 59, i32 35}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 211, i32 38}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 213, i32 39}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 214, i32 4}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lmp91000_read_config._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @lmp91000_read_config._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 230, i32 3}
!61 = !{ptr @lmp91000_read_config._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @lmp91000_read_config._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 234, i32 38}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 237, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lmp91000_read_config._entry.26, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lmp91000_read_config._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 250, i32 3}
!72 = !{ptr @lmp91000_read_config._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lmp91000_read_config._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"lmp91000_tia_gain", i1 false, i1 false}
!75 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 37, i32 18}
!76 = distinct !{null, !77, !"lmp91000_rload", i1 false, i1 false}
!77 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 40, i32 18}
!78 = !{ptr @lmp91000_buffer_setup_ops, !79, !"lmp91000_buffer_setup_ops", i1 false, i1 false}
!79 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 290, i32 42}
!80 = !{ptr @lmp91000_of_match, !81, !"lmp91000_of_match", i1 false, i1 false}
!81 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 403, i32 34}
!82 = !{ptr @lmp91000_id, !83, !"lmp91000_id", i1 false, i1 false}
!83 = !{!"../drivers/iio/potentiostat/lmp91000.c", i32 410, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
