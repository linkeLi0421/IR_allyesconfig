; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-n3000-nios.c_pt.bc'
source_filename = "../drivers/fpga/dfl-n3000-nios.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dfl_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_device_id = type { i16, i16, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.n3000_nios = type { ptr, ptr, ptr, ptr }
%struct.dfl_device = type { %struct.device, i32, i16, i16, i8, %struct.resource, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.altera_spi_platform_data = type { i16, i16, i32, i16, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__initcall__kmod_dfl_n3000_nios__490_584_n3000_nios_driver_init6 = internal global ptr @n3000_nios_driver_init, section ".initcall6.init", align 4
@n3000_nios_driver = internal global { %struct.dfl_driver, [40 x i8] } { %struct.dfl_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @n3000_nios_groups, ptr null, ptr null, ptr null }, ptr @n3000_nios_ids, ptr @n3000_nios_probe, ptr @n3000_nios_remove }, [40 x i8] zeroinitializer }, align 32
@__exitcall_n3000_nios_driver_exit = internal global ptr @n3000_nios_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description491 = internal constant [78 x i8] c"dfl_n3000_nios.description=Driver for Nios private feature on Intel PAC N3000\00", section ".modinfo", align 1
@__UNIQUE_ID_author492 = internal constant [40 x i8] c"dfl_n3000_nios.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file493 = internal constant [48 x i8] c"dfl_n3000_nios.file=drivers/fpga/dfl-n3000-nios\00", section ".modinfo", align 1
@__UNIQUE_ID_license494 = internal constant [30 x i8] c"dfl_n3000_nios.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfl-n3000-nios\00", [17 x i8] zeroinitializer }, align 32
@n3000_nios_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @n3000_nios_group, ptr null], [24 x i8] zeroinitializer }, align 32
@n3000_nios_ids = internal constant { [2 x %struct.dfl_device_id], [16 x i8] } { [2 x %struct.dfl_device_id] [%struct.dfl_device_id { i16 0, i16 13, i32 0 }, %struct.dfl_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@n3000_nios_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @n3000_nios_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@n3000_nios_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_nios_fw_version, ptr @dev_attr_retimer_A_mode, ptr @dev_attr_retimer_B_mode, ptr @dev_attr_fec_mode, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_nios_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nios_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_retimer_A_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @retimer_A_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_retimer_B_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @retimer_B_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fec_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fec_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nios_fw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%x.%x.%x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"retimer_A_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"retimer_B_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fec_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not supported\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kr\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rs\0A\00", [28 x i8] zeroinitializer }, align 32
@n3000_nios_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@n3000_nios_regbus_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @n3000_nios_reg_read, ptr @n3000_nios_reg_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"dfl_n3000_nios:544:(&n3000_nios_regbus_cfg)->lock\00", [46 x i8] zeroinitializer }, align 32
@n3000_nios_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 554, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"altera spi controller create failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"n3000_nios_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/fpga/dfl-n3000-nios.c\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@n3000_nios_probe._entry_ptr = internal global ptr @n3000_nios_probe._entry, section ".printk_index", align 4
@n3000_nios_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.14, i32 509, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to read reg 0x%x: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"n3000_nios_reg_read\00", [44 x i8] zeroinitializer }, align 32
@n3000_nios_reg_read._entry_ptr = internal global ptr @n3000_nios_reg_read._entry, section ".printk_index", align 4
@n3000_nios_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.14, i32 492, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail to write reg 0x%x val 0x%x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"n3000_nios_reg_write\00", [43 x i8] zeroinitializer }, align 32
@n3000_nios_reg_write._entry_ptr = internal global ptr @n3000_nios_reg_write._entry, section ".printk_index", align 4
@n3000_nios_init_done_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.14, i32 327, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Nios version reg = 0x%x, skip INIT_DONE check, but the retimer may be uninitialized\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"n3000_nios_init_done_check\00", [37 x i8] zeroinitializer }, align 32
@n3000_nios_init_done_check._entry_ptr = internal global ptr @n3000_nios_init_done_check._entry, section ".printk_index", align 4
@n3000_nios_init_done_check._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.14, i32 372, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NIOS_INIT_DONE %s\0A\00", [45 x i8] zeroinitializer }, align 32
@n3000_nios_init_done_check._entry_ptr.25 = internal global ptr @n3000_nios_init_done_check._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timed out\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"check error\00", [20 x i8] zeroinitializer }, align 32
@n3000_nios_init_done_check._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.14, i32 399, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NIOS_INIT_DONE OK, but err on retimer init\0A\00", [52 x i8] zeroinitializer }, align 32
@n3000_nios_init_done_check._entry_ptr.30 = internal global ptr @n3000_nios_init_done_check._entry.28, section ".printk_index", align 4
@n3000_nios_init_done_check._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.14, i32 402, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PKVL_A_MODE_STS 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@n3000_nios_init_done_check._entry_ptr.33 = internal global ptr @n3000_nios_init_done_check._entry.31, section ".printk_index", align 4
@n3000_nios_init_done_check._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.14, i32 403, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PKVL_B_MODE_STS 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@n3000_nios_init_done_check._entry_ptr.36 = internal global ptr @n3000_nios_init_done_check._entry.34, section ".printk_index", align 4
@m10_n3000_info = internal global { %struct.spi_board_info, [36 x i8] } { %struct.spi_board_info { [32 x i8] c"m10-n3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, i32 0, i32 12500000, i16 0, i16 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@create_altera_spi_controller.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.14, ptr @.str.39, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfl_n3000_nios\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"create_altera_spi_controller\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s cs %u bpm 0x%x mode 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"subdev_spi_altera\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5592320, i64 11184640]
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"n3000_nios_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 574, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 576, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"n3000_nios_groups\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"n3000_nios_ids\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 568, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"n3000_nios_group\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 294, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"n3000_nios_attrs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 287, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [25 x i8] c"dev_attr_nios_fw_version\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"dev_attr_retimer_A_mode\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"dev_attr_retimer_B_mode\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"dev_attr_fec_mode\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 180, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 175, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 221, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 219, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 236, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 285, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 251, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 277, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 279, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 281, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"n3000_nios_regbus_cfg\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 516, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 544, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 554, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 509, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 491, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 326, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 371, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 399, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 402, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 403, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"m10_n3000_info\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 408, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 437, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [33 x i8] c"../drivers/fpga/dfl-n3000-nios.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 441, i32 18 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author492, ptr @__UNIQUE_ID_description491, ptr @__UNIQUE_ID_file493, ptr @__UNIQUE_ID_license494, ptr @__exitcall_n3000_nios_driver_exit, ptr @__initcall__kmod_dfl_n3000_nios__490_584_n3000_nios_driver_init6, ptr @n3000_nios_driver_exit, ptr @n3000_nios_init_done_check._entry, ptr @n3000_nios_init_done_check._entry.23, ptr @n3000_nios_init_done_check._entry.28, ptr @n3000_nios_init_done_check._entry.31, ptr @n3000_nios_init_done_check._entry.34, ptr @n3000_nios_init_done_check._entry_ptr, ptr @n3000_nios_init_done_check._entry_ptr.25, ptr @n3000_nios_init_done_check._entry_ptr.30, ptr @n3000_nios_init_done_check._entry_ptr.33, ptr @n3000_nios_init_done_check._entry_ptr.36, ptr @n3000_nios_probe._entry, ptr @n3000_nios_probe._entry_ptr, ptr @n3000_nios_reg_read._entry, ptr @n3000_nios_reg_read._entry_ptr, ptr @n3000_nios_reg_write._entry, ptr @n3000_nios_reg_write._entry_ptr, ptr @n3000_nios_driver, ptr @.str, ptr @n3000_nios_groups, ptr @n3000_nios_ids, ptr @n3000_nios_group, ptr @n3000_nios_attrs, ptr @dev_attr_nios_fw_version, ptr @dev_attr_retimer_A_mode, ptr @dev_attr_retimer_B_mode, ptr @dev_attr_fec_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @n3000_nios_probe._key, ptr @n3000_nios_regbus_cfg, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @m10_n3000_info, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nios_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_retimer_A_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_retimer_B_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fec_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_regbus_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_init_done_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_init_done_check._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_init_done_check._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_init_done_check._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000_nios_init_done_check._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10_n3000_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @n3000_nios_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__dfl_driver_register(ptr noundef nonnull @n3000_nios_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @n3000_nios_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dfl_driver_unregister(ptr noundef nonnull @n3000_nios_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dfl_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n3000_nios_probe(ptr noundef %ddev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %state_a.i = alloca i32, align 4
  %state_b.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ddev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ddev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev3 = getelementptr inbounds %struct.n3000_nios, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ddev, ptr %dev3, align 4
  %mmio_res = getelementptr inbounds %struct.dfl_device, ptr %ddev, i32 0, i32 5
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %ddev, ptr noundef %mmio_res) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @__devm_regmap_init(ptr noundef %ddev, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @n3000_nios_regbus_cfg, ptr noundef nonnull @n3000_nios_probe._key, ptr noundef nonnull @.str.11) #6
  %regmap = getelementptr inbounds %struct.n3000_nios, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i50 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_a.i) #6
  %7 = ptrtoint ptr %state_a.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %state_a.i, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_b.i) #6
  %8 = ptrtoint ptr %state_b.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %state_b.i, align 4, !annotation !109
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  %call.i51 = call i32 @regmap_read(ptr noundef %call12, i32 noundef 4100, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.n3000_nios_init_done_check.exit.thread_crit_edge

if.end18.n3000_nios_init_done_check.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit.thread

if.end.i:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i52 = icmp eq i32 %12, 0
  br i1 %cmp.i52, label %do.end.i, label %do.end18.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  br label %n3000_nios_init_done_check.exit.thread56

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %12)
  %cmp19.i = icmp ugt i32 %12, 805306367
  br i1 %cmp19.i, label %if.then20.i, label %do.end18.i.nios_init_done.i_crit_edge

do.end18.i.nios_init_done.i_crit_edge:            ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nios_init_done.i

if.then20.i:                                      ; preds = %do.end18.i
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call22.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 4096, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.then20.i.n3000_nios_init_done_check.exit.thread_crit_edge

if.then20.i.n3000_nios_init_done_check.exit.thread_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit.thread

if.end25.i:                                       ; preds = %if.then20.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %and26.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.nios_init_done.i_crit_edge

if.end25.i.nios_init_done.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nios_init_done.i

if.end29.i:                                       ; preds = %if.end25.i
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 11184642, ptr %val.i, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call166.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 4096, i32 noundef 11184642) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %if.end29.i.nios_init_done.i_crit_edge, label %if.end29.i.n3000_nios_init_done_check.exit.thread_crit_edge

if.end29.i.n3000_nios_init_done_check.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit.thread

if.end29.i.nios_init_done.i_crit_edge:            ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nios_init_done.i

nios_init_done.i:                                 ; preds = %if.end29.i.nios_init_done.i_crit_edge, %if.end25.i.nios_init_done.i_crit_edge, %do.end18.i.nios_init_done.i_crit_edge
  %call171.i = call i64 @ktime_get() #6
  %add.i.i = add i64 %call171.i, 10000000000
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 369) #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call186329.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 4096, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186329.i)
  %tobool187.not330.i = icmp eq i32 %call186329.i, 0
  br i1 %tobool187.not330.i, label %nios_init_done.i.lor.lhs.false.i_crit_edge, label %nios_init_done.i.do.end215.i_crit_edge

nios_init_done.i.do.end215.i_crit_edge:           ; preds = %nios_init_done.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215.i

nios_init_done.i.lor.lhs.false.i_crit_edge:       ; preds = %nios_init_done.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then201.i.lor.lhs.false.i_crit_edge, %nios_init_done.i.lor.lhs.false.i_crit_edge
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %and188.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  br i1 %tobool189.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call193.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call193.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call193.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then201.i

if.then201.i:                                     ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 25001, i32 noundef 100000, i32 noundef 2) #6
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call186.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 4096, ptr noundef nonnull %val.i) #6
  %tobool187.not.i = icmp eq i32 %call186.i, 0
  br i1 %tobool187.not.i, label %if.then201.i.lor.lhs.false.i_crit_edge, label %if.then201.i.do.end215.i_crit_edge

if.then201.i.do.end215.i_crit_edge:               ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215.i

if.then201.i.lor.lhs.false.i_crit_edge:           ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call198.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 4096, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i)
  %tobool205.not.i = icmp eq i32 %call198.i, 0
  br i1 %tobool205.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end215.i_crit_edge

for.end.i.do.end215.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  %and206.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206.i)
  %tobool207.not.i = icmp eq i32 %and206.i, 0
  br i1 %tobool207.not.i, label %lor.rhs.i.do.end215.thread.i_crit_edge, label %lor.rhs.i.if.end218.i_crit_edge

lor.rhs.i.if.end218.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end218.i

lor.rhs.i.do.end215.thread.i_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215.thread.i

do.end215.i:                                      ; preds = %for.end.i.do.end215.i_crit_edge, %if.then201.i.do.end215.i_crit_edge, %nios_init_done.i.do.end215.i_crit_edge
  %tobool205.not322.ph.i = phi i32 [ %call186329.i, %nios_init_done.i.do.end215.i_crit_edge ], [ %call198.i, %for.end.i.do.end215.i_crit_edge ], [ %call186.i, %if.then201.i.do.end215.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool205.not322.ph.i)
  %cmp216.i = icmp eq i32 %tobool205.not322.ph.i, -110
  br i1 %cmp216.i, label %do.end215.i.do.end215.thread.i_crit_edge, label %do.end215.i._crit_edge

do.end215.i._crit_edge:                           ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %30

do.end215.i.do.end215.thread.i_crit_edge:         ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215.thread.i

do.end215.thread.i:                               ; preds = %do.end215.i.do.end215.thread.i_crit_edge, %lor.rhs.i.do.end215.thread.i_crit_edge
  br label %30

30:                                               ; preds = %do.end215.thread.i, %do.end215.i._crit_edge
  %tobool205.not322.ph340.i = phi i32 [ -110, %do.end215.thread.i ], [ %tobool205.not322.ph.i, %do.end215.i._crit_edge ]
  %31 = phi ptr [ @.str.26, %do.end215.thread.i ], [ @.str.27, %do.end215.i._crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull %31) #9
  br label %if.end218.i

if.end218.i:                                      ; preds = %30, %lor.rhs.i.if.end218.i_crit_edge
  %tobool211.not336.i = phi i1 [ false, %30 ], [ true, %lor.rhs.i.if.end218.i_crit_edge ]
  %tobool205.not322334.i = phi i32 [ %tobool205.not322.ph340.i, %30 ], [ 0, %lor.rhs.i.if.end218.i_crit_edge ]
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call220.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 4128, ptr noundef nonnull %state_a.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.i)
  %tobool221.not.i = icmp eq i32 %call220.i, 0
  br i1 %tobool221.not.i, label %if.end223.i, label %if.end218.i.n3000_nios_init_done_check.exit.thread_crit_edge

if.end218.i.n3000_nios_init_done_check.exit.thread_crit_edge: ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit.thread

if.end223.i:                                      ; preds = %if.end218.i
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call225.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 4132, ptr noundef nonnull %state_b.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225.i)
  %tobool226.not.i = icmp eq i32 %call225.i, 0
  br i1 %tobool226.not.i, label %if.end228.i, label %if.end223.i.n3000_nios_init_done_check.exit.thread_crit_edge

if.end223.i.n3000_nios_init_done_check.exit.thread_crit_edge: ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit.thread

if.end228.i:                                      ; preds = %if.end223.i
  br i1 %tobool211.not336.i, label %do.end245.i, label %if.end228.i.n3000_nios_init_done_check.exit_crit_edge

if.end228.i.n3000_nios_init_done_check.exit_crit_edge: ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit

do.end245.i:                                      ; preds = %if.end228.i
  %36 = ptrtoint ptr %state_a.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state_a.i, align 4
  %38 = and i32 %37, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp249.i = icmp eq i32 %38, 0
  br i1 %cmp249.i, label %do.end265.i, label %do.end245.i.do.end274.i_crit_edge

do.end245.i.do.end274.i_crit_edge:                ; preds = %do.end245.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274.i

do.end265.i:                                      ; preds = %do.end245.i
  %39 = ptrtoint ptr %state_b.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state_b.i, align 4
  %41 = and i32 %40, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp269.i = icmp eq i32 %41, 0
  br i1 %cmp269.i, label %do.end265.i.n3000_nios_init_done_check.exit.thread56_crit_edge, label %do.end265.i.do.end274.i_crit_edge

do.end265.i.do.end274.i_crit_edge:                ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274.i

do.end265.i.n3000_nios_init_done_check.exit.thread56_crit_edge: ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %n3000_nios_init_done_check.exit.thread56

do.end274.i:                                      ; preds = %do.end265.i.do.end274.i_crit_edge, %do.end245.i.do.end274.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29) #9
  br label %n3000_nios_init_done_check.exit

n3000_nios_init_done_check.exit.thread:           ; preds = %if.end223.i.n3000_nios_init_done_check.exit.thread_crit_edge, %if.end218.i.n3000_nios_init_done_check.exit.thread_crit_edge, %if.end29.i.n3000_nios_init_done_check.exit.thread_crit_edge, %if.then20.i.n3000_nios_init_done_check.exit.thread_crit_edge, %if.end18.n3000_nios_init_done_check.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call225.i, %if.end223.i.n3000_nios_init_done_check.exit.thread_crit_edge ], [ %call220.i, %if.end218.i.n3000_nios_init_done_check.exit.thread_crit_edge ], [ %call166.i, %if.end29.i.n3000_nios_init_done_check.exit.thread_crit_edge ], [ %call22.i, %if.then20.i.n3000_nios_init_done_check.exit.thread_crit_edge ], [ %call.i51, %if.end18.n3000_nios_init_done_check.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_b.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_a.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

n3000_nios_init_done_check.exit.thread56:         ; preds = %do.end265.i.n3000_nios_init_done_check.exit.thread56_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_b.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_a.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end22

n3000_nios_init_done_check.exit:                  ; preds = %do.end274.i, %if.end228.i.n3000_nios_init_done_check.exit_crit_edge
  %42 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev3, align 4
  %44 = ptrtoint ptr %state_a.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state_a.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.32, i32 noundef %45) #9
  %46 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev3, align 4
  %48 = ptrtoint ptr %state_b.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state_b.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.35, i32 noundef %49) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_b.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_a.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool205.not322334.i)
  %tobool20.not = icmp eq i32 %tobool205.not322334.i, 0
  br i1 %tobool20.not, label %n3000_nios_init_done_check.exit.if.end22_crit_edge, label %n3000_nios_init_done_check.exit.cleanup_crit_edge

n3000_nios_init_done_check.exit.cleanup_crit_edge: ; preds = %n3000_nios_init_done_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

n3000_nios_init_done_check.exit.if.end22_crit_edge: ; preds = %n3000_nios_init_done_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %n3000_nios_init_done_check.exit.if.end22_crit_edge, %n3000_nios_init_done_check.exit.thread56
  %call23 = call fastcc i32 @create_altera_spi_controller(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %do.end

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %ddev, ptr noundef nonnull @.str.12, i32 noundef %call23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end22.cleanup_crit_edge, %n3000_nios_init_done_check.exit.cleanup_crit_edge, %n3000_nios_init_done_check.exit.thread, %if.then15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then8 ], [ %5, %if.then15 ], [ -12, %entry.cleanup_crit_edge ], [ %tobool205.not322334.i, %n3000_nios_init_done_check.exit.cleanup_crit_edge ], [ %call23, %do.end ], [ 0, %if.end22.cleanup_crit_edge ], [ %retval.0.i.ph, %n3000_nios_init_done_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n3000_nios_remove(ptr nocapture noundef readonly %ddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ddev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %altera_spi.i = getelementptr inbounds %struct.n3000_nios, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %altera_spi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %altera_spi.i, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nios_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !109
  %regmap = getelementptr inbounds %struct.n3000_nios, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4100, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %shr = lshr i32 %6, 28
  %and31 = lshr i32 %6, 24
  %conv33 = and i32 %and31, 15
  %and51 = lshr i32 %6, 20
  %conv53 = and i32 %and51, 15
  %call55 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %shr, i32 noundef %conv33, i32 noundef %conv53) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @retimer_A_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !109
  %regmap.i = getelementptr inbounds %struct.n3000_nios, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 4128, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end12.i, label %entry.get_retimer_mode.exit.thread_crit_edge

entry.get_retimer_mode.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit.thread

do.end12.i:                                       ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = and i32 %6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.end, label %do.end12.i.get_retimer_mode.exit.thread_crit_edge

do.end12.i.get_retimer_mode.exit.thread_crit_edge: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit.thread

get_retimer_mode.exit.thread:                     ; preds = %do.end12.i.get_retimer_mode.exit.thread_crit_edge, %entry.get_retimer_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %do.end12.i.get_retimer_mode.exit.thread_crit_edge ], [ %call.i, %entry.get_retimer_mode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %and31.i = and i32 %6, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %and31.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_retimer_mode.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i.ph, %get_retimer_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @retimer_B_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !109
  %regmap.i = getelementptr inbounds %struct.n3000_nios, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 4132, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end12.i, label %entry.get_retimer_mode.exit.thread_crit_edge

entry.get_retimer_mode.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit.thread

do.end12.i:                                       ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = and i32 %6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.end, label %do.end12.i.get_retimer_mode.exit.thread_crit_edge

do.end12.i.get_retimer_mode.exit.thread_crit_edge: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit.thread

get_retimer_mode.exit.thread:                     ; preds = %do.end12.i.get_retimer_mode.exit.thread_crit_edge, %entry.get_retimer_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %do.end12.i.get_retimer_mode.exit.thread_crit_edge ], [ %call.i, %entry.get_retimer_mode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %and31.i = and i32 %6, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %and31.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_retimer_mode.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i.ph, %get_retimer_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i480 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !109
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.n3000_nios, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4100, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %6)
  %cmp = icmp ult i32 %6, 805306368
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end16:                                         ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !109
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 4128, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end12.i, label %if.end16.get_retimer_mode.exit.thread_crit_edge

if.end16.get_retimer_mode.exit.thread_crit_edge:  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit.thread

do.end12.i:                                       ; preds = %if.end16
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %12 = and i32 %11, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.end20, label %do.end12.i.get_retimer_mode.exit.thread_crit_edge

do.end12.i.get_retimer_mode.exit.thread_crit_edge: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit.thread

get_retimer_mode.exit.thread:                     ; preds = %do.end12.i.get_retimer_mode.exit.thread_crit_edge, %if.end16.get_retimer_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %do.end12.i.get_retimer_mode.exit.thread_crit_edge ], [ %call.i, %if.end16.get_retimer_mode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end20:                                         ; preds = %do.end12.i
  %and31.i = and i32 %11, 254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i480) #6
  %13 = ptrtoint ptr %val.i480 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i480, align 4, !annotation !109
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i482 = call i32 @regmap_read(ptr noundef %15, i32 noundef 4132, ptr noundef nonnull %val.i480) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i482)
  %tobool.not.i483 = icmp eq i32 %call.i482, 0
  br i1 %tobool.not.i483, label %do.end12.i485, label %if.end20.get_retimer_mode.exit489.thread_crit_edge

if.end20.get_retimer_mode.exit489.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit489.thread

do.end12.i485:                                    ; preds = %if.end20
  %16 = ptrtoint ptr %val.i480 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i480, align 4
  %18 = and i32 %17, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i484 = icmp eq i32 %18, 0
  br i1 %cmp.i484, label %if.end24, label %do.end12.i485.get_retimer_mode.exit489.thread_crit_edge

do.end12.i485.get_retimer_mode.exit489.thread_crit_edge: ; preds = %do.end12.i485
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_retimer_mode.exit489.thread

get_retimer_mode.exit489.thread:                  ; preds = %do.end12.i485.get_retimer_mode.exit489.thread_crit_edge, %if.end20.get_retimer_mode.exit489.thread_crit_edge
  %retval.0.i488.ph = phi i32 [ -14, %do.end12.i485.get_retimer_mode.exit489.thread_crit_edge ], [ %call.i482, %if.end20.get_retimer_mode.exit489.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i480) #6
  br label %cleanup

if.end24:                                         ; preds = %do.end12.i485
  %and31.i486 = and i32 %17, 254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i480) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %switch = icmp eq i32 %and31.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i486)
  %switch479 = icmp eq i32 %and31.i486, 0
  %or.cond = select i1 %switch, i1 %switch479, i1 false
  br i1 %or.cond, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_read(ptr noundef %20, i32 noundef 4096, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and39 = and i32 %22, 16776960
  %23 = zext i32 %and39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and39, label %if.end38.cleanup_crit_edge [
    i32 0, label %if.then175
    i32 5592320, label %if.then313
    i32 11184640, label %if.then452
  ]

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then175:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call176 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.then313:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call314 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.then452:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call453 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then452, %if.then313, %if.then175, %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then31, %get_retimer_mode.exit489.thread, %get_retimer_mode.exit.thread, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %call176, %if.then175 ], [ %call314, %if.then313 ], [ %call453, %if.then452 ], [ %call32, %if.then31 ], [ %call1, %entry.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ -14, %if.end38.cleanup_crit_edge ], [ %retval.0.i.ph, %get_retimer_mode.exit.thread ], [ %retval.0.i488.ph, %get_retimer_mode.exit489.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_altera_spi_controller(ptr nocapture noundef %nn) unnamed_addr #2 align 64 {
entry:
  %pdata = alloca %struct.altera_spi_platform_data, align 4
  %pdevinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdata) #6
  %0 = getelementptr inbounds i8, ptr %pdata, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #6
  %2 = call ptr @memset(ptr %pdevinfo, i32 0, i32 56)
  %3 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nn, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %7 = call i32 @llvm.bswap.i32(i32 %5)
  %8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not, i16 4, i16 6
  %9 = trunc i32 %7 to i16
  %10 = lshr i16 %9, 15
  %11 = or i16 %10, %spec.select
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %pdata, align 4
  %13 = lshr i16 %9, 8
  %conv59 = and i16 %13, 63
  %num_chipselect = getelementptr inbounds %struct.altera_spi_platform_data, ptr %pdata, i32 0, i32 1
  %14 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv59, ptr %num_chipselect, align 2
  %15 = lshr i32 %7, 2
  %16 = and i32 %15, 63
  %sh_prom = sub nsw i32 32, %16
  %shr79 = lshr i32 -1, %sh_prom
  %bits_per_word_mask = getelementptr inbounds %struct.altera_spi_platform_data, ptr %pdata, i32 0, i32 2
  %17 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr79, ptr %bits_per_word_mask, align 4
  %num_devices = getelementptr inbounds %struct.altera_spi_platform_data, ptr %pdata, i32 0, i32 3
  %18 = ptrtoint ptr %num_devices to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %num_devices, align 4
  %devices = getelementptr inbounds %struct.altera_spi_platform_data, ptr %pdata, i32 0, i32 4
  %19 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @m10_n3000_info, ptr %devices, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_altera_spi_controller.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_altera_spi_controller, %if.then87)) #6
          to label %do.end95 [label %if.then87], !srcloc !113

if.then87:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.n3000_nios, ptr %nn, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_chipselect, align 2
  %conv89 = zext i16 %23 to i32
  %24 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_word_mask, align 4
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pdata, align 4
  %conv92 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_altera_spi_controller.__UNIQUE_ID_ddebug459, ptr noundef %21, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %conv89, i32 noundef %25, i32 noundef %conv92) #6
  br label %do.end95

do.end95:                                         ; preds = %if.then87, %entry
  %name = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.40, ptr %name, align 4
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -2, ptr %id, align 8
  %dev96 = getelementptr inbounds %struct.n3000_nios, ptr %nn, i32 0, i32 2
  %30 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev96, align 4
  %32 = ptrtoint ptr %pdevinfo to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %pdevinfo, align 8
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdata, ptr %data, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8
  %34 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %size_data, align 8
  %call97 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #6
  %altera_spi = getelementptr inbounds %struct.n3000_nios, ptr %nn, i32 0, i32 3
  %35 = ptrtoint ptr %altera_spi to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call97, ptr %altera_spi, align 4
  %cmp.i.i = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call97 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %36, i32 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata) #6
  ret i32 %spec.select.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n3000_nios_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, 8191
  %1 = or i32 %0, 1073741824
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !115
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %add.ptr.i63 = getelementptr i8, ptr %6, i32 24
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %entry
  %loops.011.i = phi i32 [ 10000, %entry ], [ %dec.i, %do.end.i.for.body.i_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %9 = zext i32 %8 to i64
  %10 = zext i32 %7 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or i64 %11, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #6
  %and.i = and i64 %13, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.end51

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !118
  %dec.i = add nsw i32 %loops.011.i, -1
  %cmp.i = icmp ugt i32 %loops.011.i, 1
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end36

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end36:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.n3000_nios, ptr %context, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef %reg, i32 noundef -110) #9
  br label %if.end55

do.end51:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv54 = trunc i64 %13 to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv54, ptr %val, align 4
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %do.end36
  %cond.i66 = phi i32 [ 0, %do.end51 ], [ -110, %do.end36 ]
  ret i32 %cond.i66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n3000_nios_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, 8191
  %1 = or i32 %0, -2147483648
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !115
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %add.ptr.i75 = getelementptr i8, ptr %7, i32 24
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %entry
  %loops.011.i = phi i32 [ 10000, %entry ], [ %dec.i, %do.end.i.for.body.i_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end.i, label %for.body.i.if.end64_crit_edge

for.body.i.if.end64_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !118
  %dec.i = add nsw i32 %loops.011.i, -1
  %cmp.i = icmp ugt i32 %loops.011.i, 1
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end63

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end63:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.n3000_nios, ptr %context, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19, i32 noundef %reg, i32 noundef %val, i32 noundef -110) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %for.body.i.if.end64_crit_edge
  %cond.i78 = phi i32 [ -110, %do.end63 ], [ 0, %for.body.i.if.end64_crit_edge ]
  ret i32 %cond.i78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_dfl_n3000_nios__490_584_n3000_nios_driver_init6, !1, !"__initcall__kmod_dfl_n3000_nios__490_584_n3000_nios_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 584, i32 1}
!2 = !{ptr @__exitcall_n3000_nios_driver_exit, !1, !"__exitcall_n3000_nios_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description491, !4, !"__UNIQUE_ID_description491", i1 false, i1 false}
!4 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 586, i32 1}
!5 = !{ptr @__UNIQUE_ID_author492, !6, !"__UNIQUE_ID_author492", i1 false, i1 false}
!6 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 587, i32 1}
!7 = !{ptr @__UNIQUE_ID_file493, !8, !"__UNIQUE_ID_file493", i1 false, i1 false}
!8 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 588, i32 1}
!9 = !{ptr @__UNIQUE_ID_license494, !8, !"__UNIQUE_ID_license494", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 576, i32 17}
!12 = !{ptr @n3000_nios_driver, !13, !"n3000_nios_driver", i1 false, i1 false}
!13 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 574, i32 26}
!14 = !{ptr @n3000_nios_groups, !15, !"n3000_nios_groups", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 294, i32 1}
!16 = !{ptr @n3000_nios_group, !15, !"n3000_nios_group", i1 false, i1 false}
!17 = !{ptr @n3000_nios_attrs, !18, !"n3000_nios_attrs", i1 false, i1 false}
!18 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 287, i32 26}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 180, i32 8}
!21 = !{ptr @dev_attr_nios_fw_version, !20, !"dev_attr_nios_fw_version", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 175, i32 25}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 221, i32 8}
!26 = !{ptr @dev_attr_retimer_A_mode, !25, !"dev_attr_retimer_A_mode", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 219, i32 25}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 236, i32 8}
!31 = !{ptr @dev_attr_retimer_B_mode, !30, !"dev_attr_retimer_B_mode", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 285, i32 8}
!34 = !{ptr @dev_attr_fec_mode, !33, !"dev_attr_fec_mode", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 251, i32 26}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 277, i32 26}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 279, i32 26}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 281, i32 26}
!43 = !{ptr @n3000_nios_ids, !44, !"n3000_nios_ids", i1 false, i1 false}
!44 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 568, i32 35}
!45 = !{ptr @n3000_nios_probe._key, !46, !"_key", i1 false, i1 false}
!46 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 544, i32 15}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 554, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @n3000_nios_probe._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @n3000_nios_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @n3000_nios_regbus_cfg, !57, !"n3000_nios_regbus_cfg", i1 false, i1 false}
!57 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 516, i32 35}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 509, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @n3000_nios_reg_read._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @n3000_nios_reg_read._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 491, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @n3000_nios_reg_write._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @n3000_nios_reg_write._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 326, i32 3}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @n3000_nios_init_done_check._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @n3000_nios_init_done_check._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 371, i32 3}
!75 = !{ptr @n3000_nios_init_done_check._entry.23, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @n3000_nios_init_done_check._entry_ptr.25, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 399, i32 3}
!81 = !{ptr @n3000_nios_init_done_check._entry.28, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @n3000_nios_init_done_check._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 402, i32 2}
!85 = !{ptr @n3000_nios_init_done_check._entry.31, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @n3000_nios_init_done_check._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 403, i32 2}
!89 = !{ptr @n3000_nios_init_done_check._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @n3000_nios_init_done_check._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 437, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @create_altera_spi_controller.__UNIQUE_ID_ddebug459, !92, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 441, i32 18}
!98 = !{ptr @m10_n3000_info, !99, !"m10_n3000_info", i1 false, i1 false}
!99 = !{!"../drivers/fpga/dfl-n3000-nios.c", i32 408, i32 30}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 4846793}
!111 = !{i64 2152407411}
!112 = !{i64 2152407849}
!113 = !{i64 2148340384, i64 2148340389, i64 2148340402, i64 2148340446, i64 2148340480, i64 2148340501}
!114 = !{i64 2152408219}
!115 = !{i64 4846375}
!116 = !{i64 2152408592}
!117 = !{i64 2156239869}
!118 = !{i64 2156239711}
