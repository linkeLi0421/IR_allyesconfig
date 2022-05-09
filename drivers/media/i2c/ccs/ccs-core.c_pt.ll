; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ccs/ccs-core.c_pt.bc'
source_filename = "../drivers/media/i2c/ccs/ccs-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ccs_limit = type { i32, i16, i16, ptr }
%struct.ccs_limit_offset = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccs_csi_data_format = type { i32, i8, i8, i8 }
%struct.ccs_module_ident = type { i16, i16, i8, i8, i8, ptr, ptr }
%struct.ccs_quirk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.ccs_device = type { i8 }
%struct.ccs_sensor = type { %struct.mutex, [3 x %struct.ccs_subdev], i32, ptr, ptr, ptr, ptr, %struct.ccs_hwconfig, ptr, ptr, ptr, ptr, ptr, i8, [64 x %struct.ccs_binning_subtype], i32, ptr, ptr, i32, i32, %struct.ccs_data_container, %struct.ccs_data_container, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, %struct.ccs_module_info, %struct.ccs_pll, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ccs_subdev = type { %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_rect, [2 x %struct.v4l2_rect], %struct.v4l2_rect, i16, i16, i32, ptr, %struct.v4l2_ctrl_handler }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ccs_hwconfig = type { i16, i16, i32, i32, i32, ptr, i32, ptr }
%struct.ccs_binning_subtype = type { i8 }
%struct.ccs_data_container = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i8, ptr }
%struct.ccs_module_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ccs_pll = type { i8, i8, i8, %struct.anon.92, i8, i8, i8, i8, i8, i8, i16, i32, i32, %struct.ccs_pll_branch_fr, %struct.ccs_pll_branch_bk, %struct.ccs_pll_branch_fr, %struct.ccs_pll_branch_bk, i32, i32 }
%struct.anon.92 = type { i8 }
%struct.ccs_pll_branch_fr = type { i16, i16, i32, i32 }
%struct.ccs_pll_branch_bk = type { i16, i16, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.102, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.102 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%struct.ccs_flash_strobe_parms = type { i8, i32, i16, i16, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.ccs_pll_limits = type { i32, i32, %struct.ccs_pll_branch_limits_fr, %struct.ccs_pll_branch_limits_bk, %struct.ccs_pll_branch_limits_fr, %struct.ccs_pll_branch_limits_bk, i32, i32 }
%struct.ccs_pll_branch_limits_fr = type { i16, i16, i32, i32, i16, i16, i32, i32 }
%struct.ccs_pll_branch_limits_bk = type { i16, i16, i32, i32, i16, i16, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@ccs_limits = external dso_local local_unnamed_addr constant [0 x %struct.ccs_limit], align 4
@ccs_limit_offsets = internal global { [229 x %struct.ccs_limit_offset], [236 x i8] } zeroinitializer, align 32
@ccs_replace_limit.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ccs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccs_replace_limit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/i2c/ccs/ccs-core.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"quirk: 0x%8.8x \22%s\22 %u = %d, 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__initcall__kmod_ccs__404_3762_ccs_module_init6 = internal global ptr @ccs_module_init, section ".initcall6.init", align 4
@__exitcall_ccs_module_cleanup = internal global ptr @ccs_module_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author405 = internal constant [55 x i8] c"ccs.author=Sakari Ailus <sakari.ailus@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description406 = internal constant [66 x i8] c"ccs.description=Generic MIPI CCS/SMIA/SMIA++ camera sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file407 = internal constant [35 x i8] c"ccs.file=drivers/media/i2c/ccs/ccs\00", section ".modinfo", align 1
@__UNIQUE_ID_license408 = internal constant [19 x i8] c"ccs.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias409 = internal constant [17 x i8] c"ccs.alias=smiapp\00", section ".modinfo", align 1
@ccs_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ccs_remove, ptr @ccs_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ccs_of_table, ptr @ccs_acpi_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccs_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ccs_of_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mipi-ccs-1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccs_device }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mipi-ccs-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccs_device }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mipi-ccs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccs_device }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,smia\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @smia_device }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ccs_acpi_table = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"MIPI0200\00", i32 ptrtoint (ptr @ccs_device to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ccs_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ccs_suspend, ptr @ccs_resume, ptr @ccs_suspend, ptr @ccs_resume, ptr @ccs_suspend, ptr @ccs_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccs_power_off, ptr @ccs_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nvm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nvm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ident = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ident_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nvm\00", [28 x i8] zeroinitializer }, align 32
@nvm_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2738, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvm read failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvm_show\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvm_show._entry_ptr = internal global ptr @nvm_show._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ident\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%4.4x%4.4x%2.2x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%2.2x%4.4x%2.2x\0A\00", [47 x i8] zeroinitializer }, align 32
@ccs_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ccs_video_ops, ptr null, ptr null, ptr @ccs_sensor_ops, ptr @ccs_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ccs_internal_src_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @ccs_registered, ptr @ccs_unregistered, ptr @ccs_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ccs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 3316, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccs_probe\00", [22 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr = internal global ptr @ccs_probe._entry, section ".printk_index", align 4
@ccs_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 3322, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no clock defined, continuing...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.17 = internal global ptr @ccs_probe._entry.14, section ".printk_index", align 4
@ccs_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 3326, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not get clock (%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.20 = internal global ptr @ccs_probe._entry.18, section ".printk_index", align 4
@ccs_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 3339, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to set clock freq to %u\0A\00", [32 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.23 = internal global ptr @ccs_probe._entry.21, section ".printk_index", align 4
@ccs_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 3347, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can't set clock freq, asked for %u but got %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.26 = internal global ptr @ccs_probe._entry.24, section ".printk_index", align 4
@ccs_probe.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.27, i8 3, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"obtained clock freq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@ccs_probe.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.28, i8 3, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"assuming clock freq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@ccs_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.2, i32 3359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to obtain clock freq\0A\00", [35 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.31 = internal global ptr @ccs_probe._entry.29, section ".printk_index", align 4
@ccs_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.2, i32 3364, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot work with xclk frequency 0\0A\00", [61 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.34 = internal global ptr @ccs_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xshutdown\00", [22 x i8] zeroinitializer }, align 32
@ccs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sensor->mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ccs/ccs-sensor-%4.4x-%4.4x-%4.4x.fw\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ccs/ccs-module-%4.4x-%4.4x-%4.4x.fw\00", [60 x i8] zeroinitializer }, align 32
@ccs_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.13, ptr @.str.2, i32 3461, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"limits quirks failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.42 = internal global ptr @ccs_probe._entry.40, section ".printk_index", align 4
@ccs_probe.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.43, i8 3, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"binning %xx%x\0A\00", [17 x i8] zeroinitializer }, align 32
@ccs_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.13, ptr @.str.2, i32 3487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sysfs ident entry creation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.46 = internal global ptr @ccs_probe._entry.44, section ".printk_index", align 4
@ccs_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.13, ptr @.str.2, i32 3496, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sysfs nvm entry failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.49 = internal global ptr @ccs_probe._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" scaler\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" binner\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" pixel_array\00", [19 x i8] zeroinitializer }, align 32
@ccs_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.13, ptr @.str.2, i32 3612, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update mode failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ccs_probe._entry_ptr.55 = internal global ptr @ccs_probe._entry.53, section ".printk_index", align 4
@ccs_get_hwconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 3220, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unsupported bus %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ccs_get_hwconfig\00", [47 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry_ptr = internal global ptr @ccs_get_hwconfig._entry, section ".printk_index", align 4
@ccs_get_hwconfig.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 3, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lanes %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.2, i32 3237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid rotation %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry_ptr.62 = internal global ptr @ccs_get_hwconfig._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 3246, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't get clock-frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry_ptr.66 = internal global ptr @ccs_get_hwconfig._entry.64, section ".printk_index", align 4
@ccs_get_hwconfig.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.67, i8 3, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk %d, mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.57, ptr @.str.2, i32 3252, ptr @.str.70, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no link frequencies defined\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ccs_get_hwconfig._entry_ptr.71 = internal global ptr @ccs_get_hwconfig._entry.68, section ".printk_index", align 4
@ccs_get_hwconfig.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.72, i8 3, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"freq %d: %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@ccs_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccs_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccs_pre_streamon, ptr @ccs_post_streamoff }, [48 x i8] zeroinitializer }, align 32
@ccs_sensor_ops = internal constant { %struct.v4l2_subdev_sensor_ops, [24 x i8] } { %struct.v4l2_subdev_sensor_ops { ptr @ccs_get_skip_top_lines, ptr @ccs_get_skip_frames }, [24 x i8] zeroinitializer }, align 32
@ccs_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ccs_enum_mbus_code, ptr null, ptr null, ptr @ccs_get_format, ptr @ccs_set_format, ptr @ccs_get_selection, ptr @ccs_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ccs_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1867, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"post_streamoff quirks failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ccs_stop_streaming\00", [45 x i8] zeroinitializer }, align 32
@ccs_stop_streaming._entry_ptr = internal global ptr @ccs_stop_streaming._entry, section ".printk_index", align 4
@ccs_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1843, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pre_streamon quirks failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccs_start_streaming\00", [44 x i8] zeroinitializer }, align 32
@ccs_start_streaming._entry_ptr = internal global ptr @ccs_start_streaming._entry, section ".printk_index", align 4
@ccs_enum_mbus_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2004, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"subdev %s, pad %d, index %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ccs_enum_mbus_code\00", [45 x i8] zeroinitializer }, align 32
@ccs_enum_mbus_code._entry_ptr = internal global ptr @ccs_enum_mbus_code._entry, section ".printk_index", align 4
@ccs_csi_data_formats = internal constant { [24 x %struct.ccs_csi_data_format], [32 x i8] } { [24 x %struct.ccs_csi_data_format] [%struct.ccs_csi_data_format { i32 12319, i8 16, i8 16, i8 0 }, %struct.ccs_csi_data_format { i32 12320, i8 16, i8 16, i8 1 }, %struct.ccs_csi_data_format { i32 12317, i8 16, i8 16, i8 2 }, %struct.ccs_csi_data_format { i32 12318, i8 16, i8 16, i8 3 }, %struct.ccs_csi_data_format { i32 12315, i8 14, i8 14, i8 0 }, %struct.ccs_csi_data_format { i32 12316, i8 14, i8 14, i8 1 }, %struct.ccs_csi_data_format { i32 12313, i8 14, i8 14, i8 2 }, %struct.ccs_csi_data_format { i32 12314, i8 14, i8 14, i8 3 }, %struct.ccs_csi_data_format { i32 12305, i8 12, i8 12, i8 0 }, %struct.ccs_csi_data_format { i32 12306, i8 12, i8 12, i8 1 }, %struct.ccs_csi_data_format { i32 12296, i8 12, i8 12, i8 2 }, %struct.ccs_csi_data_format { i32 12304, i8 12, i8 12, i8 3 }, %struct.ccs_csi_data_format { i32 12298, i8 10, i8 10, i8 0 }, %struct.ccs_csi_data_format { i32 12303, i8 10, i8 10, i8 1 }, %struct.ccs_csi_data_format { i32 12295, i8 10, i8 10, i8 2 }, %struct.ccs_csi_data_format { i32 12302, i8 10, i8 10, i8 3 }, %struct.ccs_csi_data_format { i32 12297, i8 10, i8 8, i8 0 }, %struct.ccs_csi_data_format { i32 12301, i8 10, i8 8, i8 1 }, %struct.ccs_csi_data_format { i32 12299, i8 10, i8 8, i8 2 }, %struct.ccs_csi_data_format { i32 12300, i8 10, i8 8, i8 3 }, %struct.ccs_csi_data_format { i32 12290, i8 8, i8 8, i8 0 }, %struct.ccs_csi_data_format { i32 12308, i8 8, i8 8, i8 1 }, %struct.ccs_csi_data_format { i32 12289, i8 8, i8 8, i8 2 }, %struct.ccs_csi_data_format { i32 12307, i8 8, i8 8, i8 3 }], [32 x i8] zeroinitializer }, align 32
@ccs_enum_mbus_code._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 2022, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found index %d, i %d, code %x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccs_enum_mbus_code._entry_ptr.81 = internal global ptr @ccs_enum_mbus_code._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ccs_propagate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scaling_goodness.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 2, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scaling_goodness\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"w %d ask_w %d h %d ask_h %d goodness %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ccs_set_compose_scaler.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 2, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccs_set_compose_scaler\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scaling: a %d b %d max_m %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ccs_set_compose_scaler.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 2, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trying factor %d (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@ccs_register_subdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 2953, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"media_entity_pads_init failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccs_register_subdev\00", [44 x i8] zeroinitializer }, align 32
@ccs_register_subdev._entry_ptr = internal global ptr @ccs_register_subdev._entry, section ".printk_index", align 4
@ccs_register_subdev._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 2959, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"v4l2_device_register_subdev failed\0A\00", [60 x i8] zeroinitializer }, align 32
@ccs_register_subdev._entry_ptr.92 = internal global ptr @ccs_register_subdev._entry.90, section ".printk_index", align 4
@ccs_register_subdev._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 2967, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"media_create_pad_link failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ccs_register_subdev._entry_ptr.95 = internal global ptr @ccs_register_subdev._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcore\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vana\00", [27 x i8] zeroinitializer }, align 32
@ccs_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1552, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable vana regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccs_power_on\00", [19 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr = internal global ptr @ccs_power_on._entry, section ".printk_index", align 4
@ccs_power_on.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 1, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable xclk\0A\00", [41 x i8] zeroinitializer }, align 32
@ccs_power_on._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.100, ptr @.str.2, i32 1593, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"software reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.104 = internal global ptr @ccs_power_on._entry.102, section ".printk_index", align 4
@ccs_power_on._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.100, ptr @.str.2, i32 1613, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cci address change error\0A\00", [38 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.107 = internal global ptr @ccs_power_on._entry.105, section ".printk_index", align 4
@ccs_power_on._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.100, ptr @.str.2, i32 1621, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"compression mode set failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.110 = internal global ptr @ccs_power_on._entry.108, section ".printk_index", align 4
@ccs_power_on._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.100, ptr @.str.2, i32 1628, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"extclk frequency set failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.113 = internal global ptr @ccs_power_on._entry.111, section ".printk_index", align 4
@ccs_power_on._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.100, ptr @.str.2, i32 1634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csi lane mode set failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.116 = internal global ptr @ccs_power_on._entry.114, section ".printk_index", align 4
@ccs_power_on._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.100, ptr @.str.2, i32 1641, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fast standby set failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.119 = internal global ptr @ccs_power_on._entry.117, section ".printk_index", align 4
@ccs_power_on._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.100, ptr @.str.2, i32 1648, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"csi signalling mode set failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.122 = internal global ptr @ccs_power_on._entry.120, section ".printk_index", align 4
@ccs_power_on._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.100, ptr @.str.2, i32 1662, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"post_poweron quirks failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ccs_power_on._entry_ptr.125 = internal global ptr @ccs_power_on._entry.123, section ".printk_index", align 4
@ccs_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 2845, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sensor detection failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccs_identify_module\00", [44 x i8] zeroinitializer }, align 32
@ccs_identify_module._entry_ptr = internal global ptr @ccs_identify_module._entry, section ".printk_index", align 4
@ccs_identify_module.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.128, i8 2, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MIPI CCS module 0x%4.4x-0x%4.4x\0A\00", [63 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.129, i8 2, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SMIA module 0x%2.2x-0x%4.4x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.130, i8 2, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"module revision 0x%4.4x date %2.2d-%2.2d-%2.2d\0A\00", [48 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.131, i8 2, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MIPI CCS sensor 0x%4.4x-0x%4.4x\0A\00", [63 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.132, i8 2, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SMIA sensor 0x%2.2x-0x%4.4x\0A\00", [35 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.133, i8 2, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sensor revision 0x%2.2x firmware version 0x%2.2x\0A\00", [46 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.134, i8 2, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MIPI CCS version %u.%u\00", [41 x i8] zeroinitializer }, align 32
@ccs_identify_module.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.135, i8 2, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smia version %2.2d smiapp version %2.2d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smiapp\00", [25 x i8] zeroinitializer }, align 32
@ccs_module_idents = internal constant { [11 x %struct.ccs_module_ident], [48 x i8] } { [11 x %struct.ccs_module_ident] [%struct.ccs_module_ident { i16 0, i16 555, i8 1, i8 -1, i8 1, ptr @.str.141, ptr null }, %struct.ccs_module_ident { i16 0, i16 558, i8 1, i8 -1, i8 1, ptr @.str.142, ptr null }, %struct.ccs_module_ident { i16 0, i16 30360, i8 7, i8 -1, i8 1, ptr @.str.143, ptr null }, %struct.ccs_module_ident { i16 0, i16 16962, i8 11, i8 -1, i8 1, ptr @.str.144, ptr null }, %struct.ccs_module_ident { i16 0, i16 8330, i8 12, i8 -1, i8 1, ptr @.str.145, ptr null }, %struct.ccs_module_ident { i16 0, i16 8500, i8 12, i8 -1, i8 1, ptr @.str.146, ptr @smiapp_tcm8500md_quirk }, %struct.ccs_module_ident { i16 0, i16 8510, i8 12, i8 -1, i8 1, ptr @.str.147, ptr null }, %struct.ccs_module_ident { i16 0, i16 8580, i8 12, i8 -1, i8 1, ptr @.str.148, ptr null }, %struct.ccs_module_ident { i16 0, i16 22031, i8 12, i8 -1, i8 1, ptr @.str.149, ptr @smiapp_jt8ew9_quirk }, %struct.ccs_module_ident { i16 0, i16 16705, i8 16, i8 -1, i8 1, ptr @.str.150, ptr @smiapp_jt8ev1_quirk }, %struct.ccs_module_ident { i16 0, i16 16961, i8 16, i8 -1, i8 1, ptr @.str.151, ptr @smiapp_imx125es_quirk }], [48 x i8] zeroinitializer }, align 32
@ccs_identify_module._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.127, ptr @.str.2, i32 2929, ptr @.str.70, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"no quirks for this module; let's hope it's fully compliant\0A\00", [36 x i8] zeroinitializer }, align 32
@ccs_identify_module._entry_ptr.139 = internal global ptr @ccs_identify_module._entry.137, section ".printk_index", align 4
@ccs_identify_module.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.140, i8 2, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"the sensor is called %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vs6555\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vw6558\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ovm7698\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smiapp-003\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcm8330md\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcm8500md\00", [22 x i8] zeroinitializer }, align 32
@smiapp_tcm8500md_quirk = external dso_local constant %struct.ccs_quirk, align 4
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"et8en2\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcm8580md\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jt8ew9\00", [25 x i8] zeroinitializer }, align 32
@smiapp_jt8ew9_quirk = external dso_local constant %struct.ccs_quirk, align 4
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jt8ev1\00", [25 x i8] zeroinitializer }, align 32
@smiapp_jt8ev1_quirk = external dso_local constant %struct.ccs_quirk, align 4
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx125es\00", [23 x i8] zeroinitializer }, align 32
@smiapp_imx125es_quirk = external dso_local constant %struct.ccs_quirk, align 4
@ccs_read_all_limits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 183, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"internal error --- end of limit array\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccs_read_all_limits\00", [44 x i8] zeroinitializer }, align 32
@ccs_read_all_limits._entry_ptr = internal global ptr @ccs_read_all_limits._entry, section ".printk_index", align 4
@ccs_read_all_limits._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 198, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"internal error --- no room for regs\0A\00", [59 x i8] zeroinitializer }, align 32
@ccs_read_all_limits._entry_ptr.156 = internal global ptr @ccs_read_all_limits._entry.154, section ".printk_index", align 4
@ccs_read_all_limits.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.157, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%8.8x \22%s\22 = %u, 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@ccs_read_all_limits._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.2, i32 221, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"internal error --- insufficient limits\0A\00", [56 x i8] zeroinitializer }, align 32
@ccs_read_all_limits._entry_ptr.160 = internal global ptr @ccs_read_all_limits._entry.158, section ".printk_index", align 4
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.162, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ccs_read_frame_fmt\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"format_model_type %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2 byte\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4 byte\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"is simply bad\00", [18 x i8] zeroinitializer }, align 32
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.166, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%u column and %u row descriptors\0A\00", [62 x i8] zeroinitializer }, align 32
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.167, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid frame format model type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"columns\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rows\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"embedded\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"black\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dark\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"visible\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.176, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s pixels: %d %s (pixelcode %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.177, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"adjusting image start line to %u (was %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.178, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"embedded data from lines %d to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ccs_read_frame_fmt.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.179, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"image data starts at line %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ccs_update_phy_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 1529, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"manual PHY control not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccs_update_phy_ctrl\00", [44 x i8] zeroinitializer }, align 32
@ccs_update_phy_ctrl._entry_ptr = internal global ptr @ccs_update_phy_ctrl._entry, section ".printk_index", align 4
@ccs_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ccs_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ccs_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ccs_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.182 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ccs_core:806:(&sensor->pixel_array->ctrl_handler)->_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analogue Gain m0\00", [47 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analogue Gain c0\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analogue Gain m1\00", [47 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analogue Gain c1\00", [47 x i8] zeroinitializer }, align 32
@ccs_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ccs_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@__const.ccs_init_controls.ctrl_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @ccs_ctrl_ops, ptr null, i32 0, ptr null, i32 1, [4 x i8] zeroinitializer, i64 0, i64 0, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 4, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analogue Linear Gain\00", [43 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Analogue Exponential Gain\00", [38 x i8] zeroinitializer }, align 32
@__const.ccs_init_controls.ctrl_cfg.189 = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @ccs_ctrl_ops, ptr null, i32 0, ptr null, i32 1, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@.str.190 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Shading Correction\00", [45 x i8] zeroinitializer }, align 32
@__const.ccs_init_controls.ctrl_cfg.191 = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @ccs_ctrl_ops, ptr null, i32 9968120, ptr @.str.190, i32 2, [4 x i8] zeroinitializer, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@.str.192 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Luminance Correction Level\00", [37 x i8] zeroinitializer }, align 32
@__const.ccs_init_controls.ctrl_cfg.193 = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @ccs_ctrl_ops, ptr null, i32 9968121, ptr @.str.192, i32 2, [4 x i8] zeroinitializer, i64 0, i64 255, i64 1, i64 128, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@ccs_test_patterns = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213], [44 x i8] zeroinitializer }, align 32
@ccs_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 983, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pixel array controls initialization failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccs_init_controls\00", [46 x i8] zeroinitializer }, align 32
@ccs_init_controls._entry_ptr = internal global ptr @ccs_init_controls._entry, section ".printk_index", align 4
@ccs_init_controls._key.196 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.197 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ccs_core:992:(&sensor->src->ctrl_handler)->_lock\00", [47 x i8] zeroinitializer }, align 32
@ccs_init_controls._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.195, ptr @.str.2, i32 1005, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"src controls initialization failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@ccs_init_controls._entry_ptr.200 = internal global ptr @ccs_init_controls._entry.198, section ".printk_index", align 4
@ccs_update_mbus_formats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ccs_update_mbus_formats.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.201, ptr @.str.2, ptr @.str.202, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccs_update_mbus_formats\00", [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"new pixel order %s\0A\00", [44 x i8] zeroinitializer }, align 32
@pixel_order_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208], [16 x i8] zeroinitializer }, align 32
@ccs_pixel_order.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.203, ptr @.str.2, ptr @.str.204, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccs_pixel_order\00", [16 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flip %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GRBG\00", [27 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGGB\00", [27 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BGGR\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GBRG\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Solid Colour\00", [19 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Eight Vertical Colour Bars\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Colour Bars With Fade to Grey\00", [34 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pseudorandom Sequence (PN9)\00", [36 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.214, ptr @.str.2, ptr @.str.215, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccs_get_mbus_formats\00", [43 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data_format_model_type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.214, ptr @.str.2, ptr @.str.216, i8 1, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.216 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad pixel order %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.214, ptr @.str.2, ptr @.str.217, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pixel order %d (%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.214, ptr @.str.2, ptr @.str.218, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%u: bpp %u, compressed %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.214, ptr @.str.2, ptr @.str.219, i8 1, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jolly good! %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.214, ptr @.str.2, ptr @.str.220, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"link freq %u Hz, bpp %u %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"not ok\00", [25 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.214, ptr @.str.2, i32 1165, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no valid link frequencies for %u bpp\0A\00", [58 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats._entry_ptr = internal global ptr @ccs_get_mbus_formats._entry, section ".printk_index", align 4
@ccs_get_mbus_formats._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.214, ptr @.str.2, i32 1180, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no supported mbus code found\0A\00", [34 x i8] zeroinitializer }, align 32
@ccs_get_mbus_formats._entry_ptr.226 = internal global ptr @ccs_get_mbus_formats._entry.224, section ".printk_index", align 4
@ccs_pll_blanking_update.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.227, ptr @.str.2, ptr @.str.228, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.227 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccs_pll_blanking_update\00", [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vblank\09\09%d\0A\00", [20 x i8] zeroinitializer }, align 32
@ccs_pll_blanking_update.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.227, ptr @.str.2, ptr @.str.229, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hblank\09\09%d\0A\00", [20 x i8] zeroinitializer }, align 32
@ccs_pll_blanking_update.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.227, ptr @.str.2, ptr @.str.230, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"real timeperframe\09100/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ccs_device = internal constant { %struct.ccs_device, [31 x i8] } zeroinitializer, align 32
@smia_device = internal constant { %struct.ccs_device, [31 x i8] } { %struct.ccs_device { i8 1 }, [31 x i8] zeroinitializer }, align 32
@switch.table.ccs_read_frame_fmt = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.231 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.232 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 180]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.239 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 256, i64 258]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.242 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 256, i64 258]
@__sancov_gen_cov_switch_values.243 = internal global [7 x i64] [i64 5, i64 32, i64 9963796, i64 9963797, i64 10356993, i64 10422529, i64 10422531]
@__sancov_gen_cov_switch_values.244 = internal global [19 x i64] [i64 17, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 9968117, i64 9968118, i64 9968120, i64 9968121, i64 10356993, i64 10356994, i64 10356995, i64 10356996, i64 10356997, i64 10356998, i64 10356999, i64 10422530, i64 10422531, i64 10422533]
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"ccs_limit_offsets\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 43, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 125, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"ccs_i2c_driver\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3720, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"ccs_of_table\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3706, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"ccs_acpi_table\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3700, i32 36 }
@___asan_gen_.269 = private unnamed_addr constant [11 x i8] c"ccs_pm_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3715, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant [13 x i8] c"dev_attr_nvm\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"dev_attr_ident\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2751, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2738, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2769, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2761, i32 26 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2765, i32 26 }
@___asan_gen_.305 = private unnamed_addr constant [8 x i8] c"ccs_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3120, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"ccs_internal_src_ops\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3130, i32 46 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3316, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3322, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3325, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3337, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3345, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3352, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3356, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3359, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3364, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3368, i32 56 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3375, i32 12 }
@___asan_gen_.371 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3384, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3393, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3410, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3461, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3478, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3487, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3496, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3581, i32 44 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3583, i32 44 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3585, i32 49 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3612, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3220, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3225, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3227, i32 42 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3237, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3243, i32 51 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3246, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3248, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3252, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3267, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant [14 x i8] c"ccs_video_ops\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3101, i32 43 }
@___asan_gen_.467 = private unnamed_addr constant [15 x i8] c"ccs_sensor_ops\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3115, i32 44 }
@___asan_gen_.470 = private unnamed_addr constant [12 x i8] c"ccs_pad_ops\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3107, i32 41 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1867, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1843, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2003, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [21 x i8] c"ccs_csi_data_formats\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 527, i32 41 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2021, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 998, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2300, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2390, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2420, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2953, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2959, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2967, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 68, i32 48 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 68, i32 57 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 68, i32 64 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1552, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1561, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1593, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1613, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1621, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1628, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1634, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1641, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1648, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1662, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2845, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2850, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2853, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2856, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2862, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2866, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2870, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2875, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2881, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2884, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant [18 x i8] c"ccs_module_idents\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 48, i32 38 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2928, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 2931, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 49, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 50, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 51, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 52, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 53, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 54, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 55, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 56, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 57, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 58, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 59, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 182, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 197, i32 5 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 208, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 220, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 256, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 262, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 291, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 298, i32 12 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 300, i32 12 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 304, i32 11 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 307, i32 11 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 310, i32 11 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 313, i32 11 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 316, i32 11 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 319, i32 11 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 323, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 351, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 357, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 359, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1529, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant [15 x i8] c"ccs_entity_ops\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3126, i32 45 }
@___asan_gen_.791 = private unnamed_addr constant [17 x i8] c"ccs_internal_ops\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3136, i32 46 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 806, i32 9 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 819, i32 6 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 821, i32 6 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 823, i32 6 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 825, i32 6 }
@___asan_gen_.812 = private unnamed_addr constant [13 x i8] c"ccs_ctrl_ops\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 797, i32 35 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 863, i32 5 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 872, i32 5 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 904, i32 12 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 919, i32 12 }
@___asan_gen_.827 = private unnamed_addr constant [18 x i8] c"ccs_test_patterns\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 604, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 981, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 992, i32 9 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1003, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 600, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [16 x i8] c"pixel_order_str\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 554, i32 20 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 575, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 554, i32 42 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 554, i32 50 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 554, i32 58 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 554, i32 66 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 605, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 606, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 607, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 608, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 609, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1060, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1067, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1071, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1093, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1109, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1153, i32 4 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1163, i32 4 }
@___asan_gen_.926 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1180, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1239, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1240, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 1242, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant [11 x i8] c"ccs_device\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3698, i32 32 }
@___asan_gen_.947 = private unnamed_addr constant [12 x i8] c"smia_device\00", align 1
@___asan_gen_.948 = private constant [36 x i8] c"../drivers/media/i2c/ccs/ccs-core.c\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.948, i32 3694, i32 32 }
@___asan_gen_.950 = private unnamed_addr constant [32 x i8] c"switch.table.ccs_read_frame_fmt\00", align 1
@llvm.compiler.used = appending global [285 x ptr] [ptr @__UNIQUE_ID_alias409, ptr @__UNIQUE_ID_author405, ptr @__UNIQUE_ID_description406, ptr @__UNIQUE_ID_file407, ptr @__UNIQUE_ID_license408, ptr @__exitcall_ccs_module_cleanup, ptr @__initcall__kmod_ccs__404_3762_ccs_module_init6, ptr @ccs_enum_mbus_code._entry, ptr @ccs_enum_mbus_code._entry.79, ptr @ccs_enum_mbus_code._entry_ptr, ptr @ccs_enum_mbus_code._entry_ptr.81, ptr @ccs_get_hwconfig._entry, ptr @ccs_get_hwconfig._entry.60, ptr @ccs_get_hwconfig._entry.64, ptr @ccs_get_hwconfig._entry.68, ptr @ccs_get_hwconfig._entry_ptr, ptr @ccs_get_hwconfig._entry_ptr.62, ptr @ccs_get_hwconfig._entry_ptr.66, ptr @ccs_get_hwconfig._entry_ptr.71, ptr @ccs_get_mbus_formats._entry, ptr @ccs_get_mbus_formats._entry.224, ptr @ccs_get_mbus_formats._entry_ptr, ptr @ccs_get_mbus_formats._entry_ptr.226, ptr @ccs_identify_module._entry, ptr @ccs_identify_module._entry.137, ptr @ccs_identify_module._entry_ptr, ptr @ccs_identify_module._entry_ptr.139, ptr @ccs_init_controls._entry, ptr @ccs_init_controls._entry.198, ptr @ccs_init_controls._entry_ptr, ptr @ccs_init_controls._entry_ptr.200, ptr @ccs_power_on._entry, ptr @ccs_power_on._entry.102, ptr @ccs_power_on._entry.105, ptr @ccs_power_on._entry.108, ptr @ccs_power_on._entry.111, ptr @ccs_power_on._entry.114, ptr @ccs_power_on._entry.117, ptr @ccs_power_on._entry.120, ptr @ccs_power_on._entry.123, ptr @ccs_power_on._entry_ptr, ptr @ccs_power_on._entry_ptr.104, ptr @ccs_power_on._entry_ptr.107, ptr @ccs_power_on._entry_ptr.110, ptr @ccs_power_on._entry_ptr.113, ptr @ccs_power_on._entry_ptr.116, ptr @ccs_power_on._entry_ptr.119, ptr @ccs_power_on._entry_ptr.122, ptr @ccs_power_on._entry_ptr.125, ptr @ccs_probe._entry, ptr @ccs_probe._entry.14, ptr @ccs_probe._entry.18, ptr @ccs_probe._entry.21, ptr @ccs_probe._entry.24, ptr @ccs_probe._entry.29, ptr @ccs_probe._entry.32, ptr @ccs_probe._entry.40, ptr @ccs_probe._entry.44, ptr @ccs_probe._entry.47, ptr @ccs_probe._entry.53, ptr @ccs_probe._entry_ptr, ptr @ccs_probe._entry_ptr.17, ptr @ccs_probe._entry_ptr.20, ptr @ccs_probe._entry_ptr.23, ptr @ccs_probe._entry_ptr.26, ptr @ccs_probe._entry_ptr.31, ptr @ccs_probe._entry_ptr.34, ptr @ccs_probe._entry_ptr.42, ptr @ccs_probe._entry_ptr.46, ptr @ccs_probe._entry_ptr.49, ptr @ccs_probe._entry_ptr.55, ptr @ccs_read_all_limits._entry, ptr @ccs_read_all_limits._entry.154, ptr @ccs_read_all_limits._entry.158, ptr @ccs_read_all_limits._entry_ptr, ptr @ccs_read_all_limits._entry_ptr.156, ptr @ccs_read_all_limits._entry_ptr.160, ptr @ccs_register_subdev._entry, ptr @ccs_register_subdev._entry.90, ptr @ccs_register_subdev._entry.93, ptr @ccs_register_subdev._entry_ptr, ptr @ccs_register_subdev._entry_ptr.92, ptr @ccs_register_subdev._entry_ptr.95, ptr @ccs_start_streaming._entry, ptr @ccs_start_streaming._entry_ptr, ptr @ccs_stop_streaming._entry, ptr @ccs_stop_streaming._entry_ptr, ptr @ccs_update_phy_ctrl._entry, ptr @ccs_update_phy_ctrl._entry_ptr, ptr @nvm_show._entry, ptr @nvm_show._entry_ptr, ptr @ccs_limit_offsets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ccs_i2c_driver, ptr @ccs_of_table, ptr @ccs_acpi_table, ptr @ccs_pm_ops, ptr @dev_attr_nvm, ptr @dev_attr_ident, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ccs_ops, ptr @ccs_internal_src_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @ccs_probe.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @ccs_video_ops, ptr @ccs_sensor_ops, ptr @ccs_pad_ops, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @ccs_csi_data_formats, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @ccs_module_idents, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @ccs_entity_ops, ptr @ccs_internal_ops, ptr @ccs_init_controls._key, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @ccs_ctrl_ops, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.192, ptr @ccs_test_patterns, ptr @.str.194, ptr @.str.195, ptr @ccs_init_controls._key.196, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @pixel_order_str, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @ccs_device, ptr @smia_device, ptr @switch.table.ccs_read_frame_fmt], section "llvm.metadata"
@0 = internal global [236 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_limit_offsets to i32), i32 916, i32 1152, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_of_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_acpi_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nvm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ident to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvm_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_internal_src_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_get_hwconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_get_hwconfig._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_get_hwconfig._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_get_hwconfig._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_sensor_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_enum_mbus_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_csi_data_formats to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_enum_mbus_code._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_register_subdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_register_subdev._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_register_subdev._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_power_on._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_module_idents to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_identify_module._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_read_all_limits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_read_all_limits._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_read_all_limits._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_update_phy_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_test_patterns to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_init_controls._key.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_init_controls._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixel_order_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_get_mbus_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_get_mbus_formats._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_device to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smia_device to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccs_read_frame_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccs_replace_limit(ptr nocapture noundef readonly %sensor, i32 noundef %limit, i32 noundef %offset, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #10
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr, align 4, !annotation !501
  %call1 = call fastcc i32 @ccs_limit_ptr(ptr noundef %sensor, i32 noundef %limit, i32 noundef %offset, ptr noundef nonnull %ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %limit, i32 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %info, align 2
  %idxprom = zext i16 %6 to i32
  %arrayidx2 = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_replace_limit.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_replace_limit, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !502

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %name = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %idxprom, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_replace_limit.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %8, ptr noundef %10, i32 noundef %offset, i32 noundef %val, i32 noundef %val) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr, align 4
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %call10 = tail call i32 @ccs_reg_width(i32 noundef %14) #10
  %15 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %val to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %12, align 1
  br label %cleanup

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = trunc i32 %val to i16
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv2.i, ptr %12, align 2
  br label %cleanup

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_limit_ptr(ptr nocapture noundef readonly %sensor, i32 noundef %limit, i32 noundef %offset, ptr nocapture noundef writeonly %__ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 227, i32 %limit)
  %cmp = icmp ugt i32 %limit, 227
  br i1 %cmp, label %do.end, label %if.end21, !prof !503

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 96, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %entry
  %arrayidx = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %limit
  %ccs_limits = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 12
  %0 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccs_limits, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %do.end42, label %lor.lhs.false.critedge, !prof !503

do.end42:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 101, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %if.end21
  %info = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %limit, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %info, align 2
  %idxprom = zext i16 %3 to i32
  %arrayidx22 = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx22, align 4
  %call = tail call i32 @ccs_reg_width(i32 noundef %5) #10
  %add = add i32 %call, %offset
  %add58 = add nuw nsw i32 %limit, 1
  %arrayidx59 = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %add58
  %6 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx59, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp60 = icmp ugt i32 %add, %conv
  br i1 %cmp60, label %do.end77, label %if.end93, !prof !503

do.end77:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 103, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end93:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccs_limits, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv97 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv97
  %add.ptr98 = getelementptr i8, ptr %add.ptr, i32 %offset
  %12 = ptrtoint ptr %__ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr98, ptr %__ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %do.end77, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end93 ], [ -22, %do.end77 ], [ -22, %do.end42 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_reg_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef %limit, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #10
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr, align 4, !annotation !501
  %call = call fastcc i32 @ccs_limit_ptr(ptr noundef %sensor, i32 noundef %limit, i32 noundef %offset, ptr noundef nonnull %ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %limit, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %info, align 2
  %idxprom = zext i16 %2 to i32
  %arrayidx1 = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %call2 = tail call i32 @ccs_reg_width(i32 noundef %4) #10
  %5 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %call2, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv4 = zext i16 %13 to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 153, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb
  %val.0 = phi i32 [ %17, %sw.bb5 ], [ %conv4, %sw.bb3 ], [ %conv, %sw.bb ]
  %arrayidx23 = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %limit
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23, align 4
  %call25 = tail call i32 @ccs_reg_conv(ptr noundef %sensor, i32 noundef %19, i32 noundef %val.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call25, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_reg_conv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_module_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 0, i32 1) to i32))
  %0 = load i16, ptr getelementptr inbounds ([0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not115.not = icmp eq i16 %0, 0
  br i1 %tobool.not115.not, label %entry.do.end79_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi i16 [ %14, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %i.0117 = phi i32 [ %inc33.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %l.0116 = phi i32 [ %l.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %i.0117, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv119 = zext i16 %1 to i32
  %arrayidx5 = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %l.0116
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %6 to i32
  %add10 = add i32 %i.0117, 1
  %arrayidx11 = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %add10
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx11, align 4
  %call = tail call i32 @ccs_reg_width(i32 noundef %8) #10
  %sub = add nuw nsw i32 %conv119, 65535
  %add = add nuw nsw i32 %sub, %conv6
  %add12 = add i32 %add, %call
  %call16 = tail call i32 @ccs_reg_width(i32 noundef %8) #10
  %neg = sub i32 0, %call16
  %and18 = and i32 %add12, %neg
  %conv19 = trunc i32 %and18 to i16
  %add20 = add nuw nsw i32 %l.0116, 1
  %arrayidx21 = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %add20
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv19, ptr %arrayidx21, align 2
  %conv23 = trunc i32 %i.0117 to i16
  %info = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %l.0116, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv23, ptr %info, align 2
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx28 = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %l.0116
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx28, align 2
  %add31 = add i16 %12, %1
  store i16 %add31, ptr %arrayidx28, align 2
  %.pre = add i32 %i.0117, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc33.pre-phi = phi i32 [ %add10, %if.then ], [ %.pre, %if.else ]
  %l.1 = phi i32 [ %add20, %if.then ], [ %l.0116, %if.else ]
  %size = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %inc33.pre-phi, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp ne i16 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %l.1)
  %cmp = icmp ult i32 %l.1, 228
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %phi.cmp = icmp eq i16 %14, 0
  br i1 %phi.cmp, label %if.end60, label %do.end, !prof !504

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3748, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %l.1)
  %cmp62.not = icmp eq i32 %l.1, 228
  br i1 %cmp62.not, label %if.end95, label %if.end60.do.end79_crit_edge, !prof !504

if.end60.do.end79_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end79:                                         ; preds = %if.end60.do.end79_crit_edge, %entry.do.end79_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3751, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ccs_i2c_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.end79, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end79 ], [ %call96, %if.end95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccs_module_cleanup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_driver(ptr noundef nonnull @ccs_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor1, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @ccs_power_off(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  %ssds_used = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssds_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27.not = icmp eq i32 %7, 0
  br i1 %cmp27.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ccs_sensor, ptr %3, i32 0, i32 1, i32 %i.028
  tail call void @v4l2_device_unregister_subdev(ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.028, 1
  %8 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssds_used, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_nvm) #10
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_ident) #10
  %14 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssds_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp4.not.i.i, label %for.end.ccs_cleanup.exit_crit_edge, label %for.end.for.body.i.i_crit_edge

for.end.for.body.i.i_crit_edge:                   ; preds = %for.end
  br label %for.body.i.i

for.end.ccs_cleanup.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_cleanup.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.for.body.i.i_crit_edge ]
  %ctrl_handler.i.i = getelementptr %struct.ccs_sensor, ptr %3, i32 0, i32 1, i32 %i.05.i.i, i32 9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i.i) #10
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %16 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssds_used, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %17
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ccs_cleanup.exit_crit_edge

for.body.i.i.ccs_cleanup.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_cleanup.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

ccs_cleanup.exit:                                 ; preds = %for.body.i.i.ccs_cleanup.exit_crit_edge, %for.end.ccs_cleanup.exit_crit_edge
  tail call void @mutex_destroy(ptr noundef %3) #10
  %ccs_limits = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ccs_limits, align 4
  tail call void @kfree(ptr noundef %19) #10
  %backing = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 20, i32 18
  %20 = ptrtoint ptr %backing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %backing, align 4
  tail call void @kvfree(ptr noundef %21) #10
  %backing11 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 21, i32 18
  %22 = ptrtoint ptr %backing11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %backing11, align 4
  tail call void @kvfree(ptr noundef %23) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_probe(ptr noundef %client) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %filename = alloca [40 x i8], align 1
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !501
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %filename) #10
  %1 = call ptr @memset(ptr %filename, i32 255, i32 40)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2180, i32 noundef 3520) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup592_crit_edge, label %if.end

entry.cleanup592_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup592

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ccs_get_hwconfig(ptr noundef nonnull %call.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup592_crit_edge

if.end.cleanup592_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup592

if.end4:                                          ; preds = %if.end
  %ssds_used = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssds_used, align 4
  %arrayidx = getelementptr %struct.ccs_sensor, ptr %call.i, i32 0, i32 1, i32 %3
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %src, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef %arrayidx, ptr noundef %client, ptr noundef nonnull @ccs_ops) #10
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ccs_internal_src_ops, ptr %internal_ops, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #10
  %regulators = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %regulators, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %if.end4.cleanup592_crit_edge, label %for.body.preheader

if.end4.cleanup592_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup592

for.body.preheader:                               ; preds = %if.end4
  %9 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regulators, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.96, ptr %10, align 4
  %12 = load ptr, ptr %regulators, align 4
  %arrayidx17.1 = getelementptr %struct.regulator_bulk_data, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.97, ptr %arrayidx17.1, align 4
  %14 = load ptr, ptr %regulators, align 4
  %arrayidx17.2 = getelementptr %struct.regulator_bulk_data, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.98, ptr %arrayidx17.2, align 4
  %16 = load ptr, ptr %regulators, align 4
  %call20 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %cleanup592

if.end24:                                         ; preds = %for.body.preheader
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %ext_clk = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %ext_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call26, ptr %ext_clk, align 4
  %18 = ptrtoint ptr %call26 to i32
  %cmp29 = icmp eq ptr %call26, inttoptr (i32 -2 to ptr)
  br i1 %cmp29, label %if.end46.thread, label %if.else

if.end46.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  %19 = ptrtoint ptr %ext_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ext_clk, align 4
  br label %if.else97

if.else:                                          ; preds = %if.end24
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end46

do.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %18) #13
  br label %cleanup592

if.end46:                                         ; preds = %if.else
  %tobool48.not = icmp eq ptr %call26, null
  br i1 %tobool48.not, label %if.end46.if.else97_crit_edge, label %if.then49

if.end46.if.else97_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else97

if.then49:                                        ; preds = %if.end46
  %ext_clk50 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %ext_clk50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ext_clk50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool51.not = icmp eq i32 %21, 0
  br i1 %tobool51.not, label %if.else79, label %if.then52

if.then52:                                        ; preds = %if.then49
  %call56 = tail call i32 @clk_set_rate(ptr noundef nonnull %call26, i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end65

do.end61:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ext_clk50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ext_clk50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %23) #13
  br label %cleanup592

if.end65:                                         ; preds = %if.then52
  %24 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext_clk, align 4
  %call67 = tail call i32 @clk_get_rate(ptr noundef %25) #10
  %26 = ptrtoint ptr %ext_clk50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ext_clk50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call67, i32 %27)
  %cmp70.not = icmp eq i32 %call67, %27
  br i1 %cmp70.not, label %if.end65.if.end127_crit_edge, label %do.end74

if.end65.if.end127_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %27, i32 noundef %call67) #13
  br label %cleanup592

if.else79:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = tail call i32 @clk_get_rate(ptr noundef nonnull %call26) #10
  %28 = ptrtoint ptr %ext_clk50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call81, ptr %ext_clk50, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_probe.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_probe, %if.then89)) #10
          to label %if.end127 [label %if.then89], !srcloc !502

if.then89:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %ext_clk50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ext_clk50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_probe.__UNIQUE_ID_ddebug399, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %30) #10
  br label %if.end127

if.else97:                                        ; preds = %if.end46.if.else97_crit_edge, %if.end46.thread
  %ext_clk99 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %ext_clk99 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ext_clk99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool100.not = icmp eq i32 %32, 0
  br i1 %tobool100.not, label %do.end124, label %do.body102

do.body102:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_probe.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_probe, %if.then114)) #10
          to label %if.end127 [label %if.then114], !srcloc !502

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %ext_clk99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ext_clk99, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_probe.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %34) #10
  br label %if.end127

do.end124:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %cleanup592

if.end127:                                        ; preds = %if.then114, %do.body102, %if.then89, %if.else79, %if.end65.if.end127_crit_edge
  %ext_clk129 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %ext_clk129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext_clk129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool130.not = icmp eq i32 %36, 0
  br i1 %tobool130.not, label %do.end134, label %if.end136

do.end134:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %cleanup592

if.end136:                                        ; preds = %if.end127
  %call138 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef 7) #10
  %reset = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 11
  %37 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call138, ptr %reset, align 4
  %cmp.i844 = icmp ugt ptr %call138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i844, label %if.then141, label %if.end144

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call138 to i32
  br label %cleanup592

if.end144:                                        ; preds = %if.end136
  %tobool146.not = icmp eq ptr %call138, null
  br i1 %tobool146.not, label %if.then147, label %if.end144.if.end150_crit_edge

if.end144.if.end150_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %call149 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef 3) #10
  %xshutdown = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 10
  %39 = ptrtoint ptr %xshutdown to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call149, ptr %xshutdown, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %if.end144.if.end150_crit_edge
  %xshutdown151 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 10
  %40 = ptrtoint ptr %xshutdown151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xshutdown151, align 4
  %cmp.i845 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i845, label %if.then153, label %if.end156

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup592

if.end156:                                        ; preds = %if.end150
  %call158 = tail call i32 @ccs_power_on(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.end156.cleanup592_crit_edge, label %do.body162

if.end156.cleanup592_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup592

do.body162:                                       ; preds = %if.end156
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @ccs_probe.__key) #10
  %call165 = tail call fastcc i32 @ccs_identify_module(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %do.body162.out_power_off_crit_edge

do.body162.out_power_off_crit_edge:               ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_power_off

if.end168:                                        ; preds = %do.body162
  %sensor_mipi_manufacturer_id = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 8
  %43 = ptrtoint ptr %sensor_mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sensor_mipi_manufacturer_id, align 4
  %sensor_model_id = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 9
  %45 = ptrtoint ptr %sensor_model_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sensor_model_id, align 4
  %sensor_revision_number = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 10
  %47 = ptrtoint ptr %sensor_revision_number to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sensor_revision_number, align 4
  %call171 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename, i32 noundef 40, ptr noundef nonnull @.str.38, i32 noundef %44, i32 noundef %46, i32 noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call171)
  %cmp172 = icmp ugt i32 %call171, 39
  br i1 %cmp172, label %if.end168.out_power_off_crit_edge, label %if.end174

if.end168.out_power_off_crit_edge:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_power_off

if.end174:                                        ; preds = %if.end168
  %call177 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then179, label %if.end174.if.end182_crit_edge

if.end174.if.end182_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then179:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  %sdata = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 20
  %49 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %call181 = call i32 @ccs_data_parse(ptr noundef %sdata, ptr noundef %52, i32 noundef %54, ptr noundef %dev, i1 noundef zeroext true) #10
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %56) #10
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end174.if.end182_crit_edge
  %mipi_manufacturer_id = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 1
  %57 = ptrtoint ptr %mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mipi_manufacturer_id, align 4
  %model_id = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 2
  %59 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %model_id, align 4
  %revision_number = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 3
  %61 = ptrtoint ptr %revision_number to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %revision_number, align 4
  %call187 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename, i32 noundef 40, ptr noundef nonnull @.str.39, i32 noundef %58, i32 noundef %60, i32 noundef %62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call187)
  %cmp188 = icmp ugt i32 %call187, 39
  br i1 %cmp188, label %if.end182.out_release_sdata_crit_edge, label %if.end190

if.end182.out_release_sdata_crit_edge:            ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release_sdata

if.end190:                                        ; preds = %if.end182
  %call193 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then195, label %if.end190.if.end200_crit_edge

if.end190.if.end200_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then195:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  %mdata = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 21
  %63 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw, align 4
  %data196 = getelementptr inbounds %struct.firmware, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %data196 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data196, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  %call199 = call i32 @ccs_data_parse(ptr noundef %mdata, ptr noundef %66, i32 noundef %68, ptr noundef %dev, i1 noundef zeroext true) #10
  %69 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %70) #10
  br label %if.end200

if.end200:                                        ; preds = %if.then195, %if.end190.if.end200_crit_edge
  %call201 = call fastcc i32 @ccs_read_all_limits(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %if.end200.out_release_mdata_crit_edge

if.end200.out_release_mdata_crit_edge:            ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release_mdata

if.end204:                                        ; preds = %if.end200
  %call205 = call fastcc i32 @ccs_read_frame_fmt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %if.end204.out_free_ccs_limits_crit_edge

if.end204.out_free_ccs_limits_crit_edge:          ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_ccs_limits

if.end208:                                        ; preds = %if.end204
  %call209 = call fastcc i32 @ccs_update_phy_ctrl(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp slt i32 %call209, 0
  br i1 %cmp210, label %if.end208.out_free_ccs_limits_crit_edge, label %if.end212

if.end208.out_free_ccs_limits_crit_edge:          ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_ccs_limits

if.end212:                                        ; preds = %if.end208
  %module_board_orient = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 7, i32 6
  %71 = ptrtoint ptr %module_board_orient to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %module_board_orient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp214 = icmp eq i32 %72, 1
  br i1 %cmp214, label %if.then215, label %if.end212.if.end216_crit_edge

if.end212.if.end216_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

if.then215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %hvflip_inv_mask = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 26
  %73 = ptrtoint ptr %hvflip_inv_mask to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %hvflip_inv_mask, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %if.end212.if.end216_crit_edge
  %quirk = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 16
  %74 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %quirk, align 4
  %tobool218.not = icmp eq ptr %75, null
  br i1 %tobool218.not, label %if.end216.if.end232_crit_edge, label %land.lhs.true

if.end216.if.end232_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

land.lhs.true:                                    ; preds = %if.end216
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool221.not = icmp eq ptr %77, null
  br i1 %tobool221.not, label %land.lhs.true.if.end232_crit_edge, label %cond.end

land.lhs.true.if.end232_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

cond.end:                                         ; preds = %land.lhs.true
  %call225 = call i32 %77(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %cond.end.if.end232_crit_edge, label %do.end230

cond.end.if.end232_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

do.end230:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %out_free_ccs_limits

if.end232:                                        ; preds = %cond.end.if.end232_crit_edge, %land.lhs.true.if.end232_crit_edge, %if.end216.if.end232_crit_edge
  %call233 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 201, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end232.if.end295_crit_edge, label %if.then235

if.end232.if.end295_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

if.then235:                                       ; preds = %if.end232
  %call236 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 203, i32 noundef 0)
  %conv238 = and i32 %call236, 255
  %78 = call i32 @llvm.umin.i32(i32 %conv238, i32 63)
  %conv248 = trunc i32 %78 to i8
  %nbinning_subtypes = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 13
  %79 = ptrtoint ptr %nbinning_subtypes to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv248, ptr %nbinning_subtypes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp252861.not = icmp eq i32 %78, 0
  br i1 %cmp252861.not, label %if.then235.if.end295_crit_edge, label %if.then235.for.body254_crit_edge

if.then235.for.body254_crit_edge:                 ; preds = %if.then235
  br label %for.body254

if.then235.if.end295_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

for.body254:                                      ; preds = %for.inc292.for.body254_crit_edge, %if.then235.for.body254_crit_edge
  %i.1862 = phi i32 [ %inc293, %for.inc292.for.body254_crit_edge ], [ 0, %if.then235.for.body254_crit_edge ]
  %call255 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 204, i32 noundef %i.1862)
  %80 = trunc i32 %call255 to i8
  %81 = and i8 %80, -16
  %arrayidx257 = getelementptr %struct.ccs_sensor, ptr %call.i, i32 0, i32 14, i32 %i.1862
  %82 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load = load i8, ptr %arrayidx257, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %81
  store i8 %bf.set, ptr %arrayidx257, align 1
  %call258 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 204, i32 noundef %i.1862)
  %83 = trunc i32 %call258 to i8
  %conv259 = and i8 %83, 15
  %84 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load262 = load i8, ptr %arrayidx257, align 1
  %bf.clear264 = and i8 %bf.load262, -16
  %bf.set265 = or i8 %bf.clear264, %conv259
  store i8 %bf.set265, ptr %arrayidx257, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_probe.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_probe, %if.then278)) #10
          to label %for.inc292 [label %if.then278], !srcloc !502

if.then278:                                       ; preds = %for.body254
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load282 = load i8, ptr %arrayidx257, align 1
  %bf.lshr = lshr i8 %bf.load282, 4
  %conv283 = zext i8 %bf.lshr to i32
  %bf.clear287 = and i8 %bf.load282, 15
  %conv288 = zext i8 %bf.clear287 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_probe.__UNIQUE_ID_ddebug403, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv283, i32 noundef %conv288) #10
  br label %for.inc292

for.inc292:                                       ; preds = %if.then278, %for.body254
  %inc293 = add nuw nsw i32 %i.1862, 1
  %86 = ptrtoint ptr %nbinning_subtypes to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nbinning_subtypes, align 4
  %conv251 = zext i8 %87 to i32
  %cmp252 = icmp ult i32 %inc293, %conv251
  br i1 %cmp252, label %for.inc292.for.body254_crit_edge, label %for.inc292.if.end295_crit_edge

for.inc292.if.end295_crit_edge:                   ; preds = %for.inc292
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

for.inc292.for.body254_crit_edge:                 ; preds = %for.inc292
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body254

if.end295:                                        ; preds = %for.inc292.if.end295_crit_edge, %if.then235.if.end295_crit_edge, %if.end232.if.end295_crit_edge
  %binning_horizontal = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 22
  %88 = ptrtoint ptr %binning_horizontal to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %binning_horizontal, align 4
  %binning_vertical = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 23
  %89 = ptrtoint ptr %binning_vertical to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %binning_vertical, align 1
  %call297 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ident) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %cmp298.not = icmp eq i32 %call297, 0
  br i1 %cmp298.not, label %if.end305, label %do.end303

do.end303:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #13
  br label %out_free_ccs_limits

if.end305:                                        ; preds = %if.end295
  %smiapp_version = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 35, i32 13
  %90 = ptrtoint ptr %smiapp_version to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %smiapp_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool307.not = icmp eq i32 %91, 0
  br i1 %tobool307.not, label %if.end305.if.end323_crit_edge, label %land.lhs.true308

if.end305.if.end323_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end323

land.lhs.true308:                                 ; preds = %if.end305
  %call309 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 208, i32 noundef 0)
  %and310 = and i32 %call309, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310)
  %tobool311.not = icmp eq i32 %and310, 0
  br i1 %tobool311.not, label %land.lhs.true308.if.end323_crit_edge, label %if.then312

land.lhs.true308.if.end323_crit_edge:             ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end323

if.then312:                                       ; preds = %land.lhs.true308
  %call314 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_nvm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %cmp315.not = icmp eq i32 %call314, 0
  br i1 %cmp315.not, label %if.then312.if.end323_crit_edge, label %do.end320

if.then312.if.end323_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end323

do.end320:                                        ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #13
  br label %out_cleanup

if.end323:                                        ; preds = %if.then312.if.end323_crit_edge, %land.lhs.true308.if.end323_crit_edge, %if.end305.if.end323_crit_edge
  %call324 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 67, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.end323.if.then334_crit_edge, label %lor.lhs.false

if.end323.if.then334_crit_edge:                   ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then334

lor.lhs.false:                                    ; preds = %if.end323
  %call326 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 68, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %lor.lhs.false.if.then334_crit_edge, label %lor.lhs.false328

lor.lhs.false.if.then334_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then334

lor.lhs.false328:                                 ; preds = %lor.lhs.false
  %call329 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 71, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %lor.lhs.false328.if.then334_crit_edge, label %lor.lhs.false331

lor.lhs.false328.if.then334_crit_edge:            ; preds = %lor.lhs.false328
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then334

lor.lhs.false331:                                 ; preds = %lor.lhs.false328
  %call332 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 72, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %lor.lhs.false331.if.then334_crit_edge, label %if.else337

lor.lhs.false331.if.then334_crit_edge:            ; preds = %lor.lhs.false331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then334

if.then334:                                       ; preds = %lor.lhs.false331.if.then334_crit_edge, %lor.lhs.false328.if.then334_crit_edge, %lor.lhs.false.if.then334_crit_edge, %if.end323.if.then334_crit_edge
  %flags = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags, align 2
  %94 = or i16 %93, 2
  store i16 %94, ptr %flags, align 2
  br label %if.end352

if.else337:                                       ; preds = %lor.lhs.false331
  %call338 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 122, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %cmp339.not = icmp eq i32 %call338, 0
  br i1 %cmp339.not, label %lor.lhs.false341, label %if.else337.if.then345_crit_edge

if.else337.if.then345_crit_edge:                  ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then345

lor.lhs.false341:                                 ; preds = %if.else337
  %call342 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 127, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call342)
  %cmp343 = icmp eq i32 %call342, 1
  br i1 %cmp343, label %lor.lhs.false341.if.then345_crit_edge, label %lor.lhs.false341.if.end352_crit_edge

lor.lhs.false341.if.end352_crit_edge:             ; preds = %lor.lhs.false341
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end352

lor.lhs.false341.if.then345_crit_edge:            ; preds = %lor.lhs.false341
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then345

if.then345:                                       ; preds = %lor.lhs.false341.if.then345_crit_edge, %if.else337.if.then345_crit_edge
  %95 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ssds_used, align 4
  %arrayidx348 = getelementptr %struct.ccs_sensor, ptr %call.i, i32 0, i32 1, i32 %96
  %scaler = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 5
  %97 = ptrtoint ptr %scaler to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx348, ptr %scaler, align 4
  %inc350 = add i32 %96, 1
  store i32 %inc350, ptr %ssds_used, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.then345, %lor.lhs.false341.if.end352_crit_edge, %if.then334
  %98 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ssds_used, align 4
  %arrayidx355 = getelementptr %struct.ccs_sensor, ptr %call.i, i32 0, i32 1, i32 %99
  %binner = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 4
  %100 = ptrtoint ptr %binner to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %arrayidx355, ptr %binner, align 4
  %inc357 = add i32 %99, 1
  %arrayidx360 = getelementptr %struct.ccs_sensor, ptr %call.i, i32 0, i32 1, i32 %inc357
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 6
  %101 = ptrtoint ptr %pixel_array to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx360, ptr %pixel_array, align 4
  %inc362 = add i32 %99, 2
  store i32 %inc362, ptr %ssds_used, align 4
  %call363 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 125, i32 noundef 0)
  %conv364 = trunc i32 %call363 to i8
  %scale_m = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 24
  %102 = ptrtoint ptr %scale_m to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv364, ptr %scale_m, align 2
  %pll365 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36
  %103 = ptrtoint ptr %pll365 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %pll365, align 4
  %lanes = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 7, i32 3
  %104 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lanes, align 4
  %conv367 = trunc i32 %105 to i8
  %csi2 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 3
  %106 = ptrtoint ptr %csi2 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv367, ptr %csi2, align 1
  %call370 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 52, i32 noundef 0)
  %and371 = and i32 %call370, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %if.end352.if.end407_crit_edge, label %if.then373

if.end352.if.end407_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end407

if.then373:                                       ; preds = %if.end352
  %flags375 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %107 = ptrtoint ptr %flags375 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags375, align 2
  %109 = or i16 %108, 4
  store i16 %109, ptr %flags375, align 2
  %call379 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 52, i32 noundef 0)
  %and380 = and i32 %call379, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380)
  %tobool381.not = icmp eq i32 %and380, 0
  br i1 %tobool381.not, label %if.else395, label %if.then382

if.then382:                                       ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #12
  %call383 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 53, i32 noundef 0)
  %110 = trunc i32 %call383 to i8
  %conv384 = add i8 %110, 1
  %vt_lanes = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 2
  %111 = ptrtoint ptr %vt_lanes to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv384, ptr %vt_lanes, align 2
  %call386 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 54, i32 noundef 0)
  %112 = trunc i32 %call386 to i8
  %conv388 = add i8 %112, 1
  %op_lanes = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 1
  %113 = ptrtoint ptr %op_lanes to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv388, ptr %op_lanes, align 1
  %114 = ptrtoint ptr %flags375 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flags375, align 2
  %116 = or i16 %115, 8
  store i16 %116, ptr %flags375, align 2
  br label %if.end407

if.else395:                                       ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %csi2 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %csi2, align 1
  %vt_lanes400 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 2
  %119 = ptrtoint ptr %vt_lanes400 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %vt_lanes400, align 2
  %op_lanes405 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 1
  %120 = ptrtoint ptr %op_lanes405 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %118, ptr %op_lanes405, align 1
  br label %if.end407

if.end407:                                        ; preds = %if.else395, %if.then382, %if.end352.if.end407_crit_edge
  %call408 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 100, i32 noundef 0)
  %and409 = and i32 %call408, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %if.end407.if.end417_crit_edge, label %if.then411

if.end407.if.end417_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end417

if.then411:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #12
  %flags413 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %121 = ptrtoint ptr %flags413 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %flags413, align 2
  %123 = or i16 %122, 16
  store i16 %123, ptr %flags413, align 2
  br label %if.end417

if.end417:                                        ; preds = %if.then411, %if.end407.if.end417_crit_edge
  %call418 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 100, i32 noundef 0)
  %and419 = and i32 %call418, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and419)
  %tobool420.not = icmp eq i32 %and419, 0
  br i1 %tobool420.not, label %if.end417.if.end427_crit_edge, label %if.then421

if.end417.if.end427_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end427

if.then421:                                       ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #12
  %flags423 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %124 = ptrtoint ptr %flags423 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %flags423, align 2
  %126 = or i16 %125, 32
  store i16 %126, ptr %flags423, align 2
  br label %if.end427

if.end427:                                        ; preds = %if.then421, %if.end417.if.end427_crit_edge
  %call428 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 155, i32 noundef 0)
  %and429 = and i32 %call428, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and429)
  %tobool430.not = icmp eq i32 %and429, 0
  br i1 %tobool430.not, label %if.end427.if.end437_crit_edge, label %if.then431

if.end427.if.end437_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end437

if.then431:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #12
  %flags433 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %127 = ptrtoint ptr %flags433 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %flags433, align 2
  %129 = or i16 %128, 64
  store i16 %129, ptr %flags433, align 2
  br label %if.end437

if.end437:                                        ; preds = %if.then431, %if.end427.if.end437_crit_edge
  %call438 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 155, i32 noundef 0)
  %and439 = and i32 %call438, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and439)
  %tobool440.not = icmp eq i32 %and439, 0
  br i1 %tobool440.not, label %if.end437.if.end447_crit_edge, label %if.then441

if.end437.if.end447_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end447

if.then441:                                       ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #12
  %flags443 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %130 = ptrtoint ptr %flags443 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %flags443, align 2
  %132 = or i16 %131, 192
  store i16 %132, ptr %flags443, align 2
  br label %if.end447

if.end447:                                        ; preds = %if.then441, %if.end437.if.end447_crit_edge
  %call448 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 100, i32 noundef 0)
  %and449 = and i32 %call448, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and449)
  %tobool450.not = icmp eq i32 %and449, 0
  br i1 %tobool450.not, label %if.end447.if.end499_crit_edge, label %if.then451

if.end447.if.end499_crit_edge:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end499

if.then451:                                       ; preds = %if.end447
  %call452 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 100, i32 noundef 0)
  %and453 = and i32 %call452, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and453)
  %tobool454.not = icmp eq i32 %and453, 0
  br i1 %tobool454.not, label %if.else472, label %if.then455

if.then455:                                       ; preds = %if.then451
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #10
  %133 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %v, align 4, !annotation !501
  %call456 = call i32 @ccs_read_addr(ptr noundef %call.i, i32 noundef 784, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call456)
  %tobool457.not = icmp eq i32 %call456, 0
  br i1 %tobool457.not, label %if.end459, label %cleanup469

if.end459:                                        ; preds = %if.then455
  %134 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp460 = icmp eq i32 %135, 1
  br i1 %cmp460, label %if.then462, label %if.end459.cleanup469.thread_crit_edge

if.end459.cleanup469.thread_crit_edge:            ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup469.thread

if.then462:                                       ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #12
  %flags464 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %136 = ptrtoint ptr %flags464 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %flags464, align 2
  %138 = or i16 %137, 256
  store i16 %138, ptr %flags464, align 2
  br label %cleanup469.thread

cleanup469.thread:                                ; preds = %if.then462, %if.end459.cleanup469.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #10
  br label %if.end478

cleanup469:                                       ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #10
  br label %out_cleanup

if.else472:                                       ; preds = %if.then451
  call void @__sanitizer_cov_trace_pc() #12
  %flags474 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %139 = ptrtoint ptr %flags474 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %flags474, align 2
  %141 = or i16 %140, 256
  store i16 %141, ptr %flags474, align 2
  br label %if.end478

if.end478:                                        ; preds = %if.else472, %cleanup469.thread
  %call479 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 52, i32 noundef 0)
  %and480 = and i32 %call479, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and480)
  %tobool481.not = icmp eq i32 %and480, 0
  br i1 %tobool481.not, label %if.end478.if.end488_crit_edge, label %if.then482

if.end478.if.end488_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end488

if.then482:                                       ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  %flags484 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %142 = ptrtoint ptr %flags484 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %flags484, align 2
  %144 = or i16 %143, 512
  store i16 %144, ptr %flags484, align 2
  br label %if.end488

if.end488:                                        ; preds = %if.then482, %if.end478.if.end488_crit_edge
  %call489 = call i32 @ccs_get_limit(ptr noundef %call.i, i32 noundef 52, i32 noundef 0)
  %and490 = and i32 %call489, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and490)
  %tobool491.not = icmp eq i32 %and490, 0
  br i1 %tobool491.not, label %if.end488.if.end499_crit_edge, label %if.then492

if.end488.if.end499_crit_edge:                    ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end499

if.then492:                                       ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  %flags494 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 10
  %145 = ptrtoint ptr %flags494 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %flags494, align 2
  %147 = or i16 %146, 1024
  store i16 %147, ptr %flags494, align 2
  br label %if.end499

if.end499:                                        ; preds = %if.then492, %if.end488.if.end499_crit_edge, %if.end447.if.end499_crit_edge
  %call500 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 55, i32 noundef 0)
  %conv501 = trunc i32 %call500 to i8
  %op_bits_per_lane = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 9
  %148 = ptrtoint ptr %op_bits_per_lane to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv501, ptr %op_bits_per_lane, align 1
  %149 = ptrtoint ptr %ext_clk129 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ext_clk129, align 4
  %ext_clk_freq_hz = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 12
  %151 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %ext_clk_freq_hz, align 4
  %call506 = call i32 @ccs_get_limit(ptr noundef nonnull %call.i, i32 noundef 125, i32 noundef 0)
  %conv507 = trunc i32 %call506 to i8
  %scale_n = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 36, i32 7
  %152 = ptrtoint ptr %scale_n to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv507, ptr %scale_n, align 1
  %scaler509 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 5
  %153 = ptrtoint ptr %scaler509 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %scaler509, align 4
  call fastcc void @ccs_create_subdev(ptr noundef %call.i, ptr noundef %154, ptr noundef nonnull @.str.50, i16 noundef zeroext 2, i32 noundef 16389)
  %155 = ptrtoint ptr %binner to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %binner, align 4
  call fastcc void @ccs_create_subdev(ptr noundef %call.i, ptr noundef %156, ptr noundef nonnull @.str.51, i16 noundef zeroext 2, i32 noundef 16389)
  %157 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pixel_array, align 4
  call fastcc void @ccs_create_subdev(ptr noundef %call.i, ptr noundef %158, ptr noundef nonnull @.str.52, i16 noundef zeroext 1, i32 noundef 131073)
  %call512 = call fastcc i32 @ccs_init_controls(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call512)
  %cmp513 = icmp slt i32 %call512, 0
  br i1 %cmp513, label %if.end499.out_cleanup_crit_edge, label %if.end516

if.end499.out_cleanup_crit_edge:                  ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup

if.end516:                                        ; preds = %if.end499
  %159 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %quirk, align 4
  %tobool519.not = icmp eq ptr %160, null
  br i1 %tobool519.not, label %if.end516.if.end534_crit_edge, label %land.lhs.true520

if.end516.if.end534_crit_edge:                    ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end534

land.lhs.true520:                                 ; preds = %if.end516
  %init = getelementptr inbounds %struct.ccs_quirk, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %init, align 4
  %tobool523.not = icmp eq ptr %162, null
  br i1 %tobool523.not, label %land.lhs.true520.if.end534_crit_edge, label %cond.end530

land.lhs.true520.if.end534_crit_edge:             ; preds = %land.lhs.true520
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end534

cond.end530:                                      ; preds = %land.lhs.true520
  %call528 = call i32 %162(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call528)
  %tobool532.not = icmp eq i32 %call528, 0
  br i1 %tobool532.not, label %cond.end530.if.end534_crit_edge, label %cond.end530.out_cleanup_crit_edge

cond.end530.out_cleanup_crit_edge:                ; preds = %cond.end530
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup

cond.end530.if.end534_crit_edge:                  ; preds = %cond.end530
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end534

if.end534:                                        ; preds = %cond.end530.if.end534_crit_edge, %land.lhs.true520.if.end534_crit_edge, %if.end516.if.end534_crit_edge
  %call535 = call fastcc i32 @ccs_get_mbus_formats(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call535)
  %tobool536.not = icmp eq i32 %call535, 0
  br i1 %tobool536.not, label %if.end538, label %if.end534.out_cleanup_crit_edge

if.end534.out_cleanup_crit_edge:                  ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup

if.end538:                                        ; preds = %if.end534
  %call539 = call fastcc i32 @ccs_init_late_controls(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call539)
  %tobool540.not = icmp eq i32 %call539, 0
  br i1 %tobool540.not, label %if.end542, label %if.end538.out_cleanup_crit_edge

if.end538.out_cleanup_crit_edge:                  ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup

if.end542:                                        ; preds = %if.end538
  call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #10
  %call544 = call fastcc i32 @ccs_pll_blanking_update(ptr noundef %call.i)
  call void @mutex_unlock(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call544)
  %tobool546.not = icmp eq i32 %call544, 0
  br i1 %tobool546.not, label %if.end552, label %do.end550

do.end550:                                        ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #13
  br label %out_cleanup

if.end552:                                        ; preds = %if.end542
  %streaming = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 32
  %163 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %streaming, align 2
  %dev_init_done = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 33
  %164 = ptrtoint ptr %dev_init_done to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %dev_init_done, align 1
  %165 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %src, align 4
  %pads = getelementptr inbounds %struct.ccs_subdev, ptr %166, i32 0, i32 1
  %call557 = call i32 @media_entity_pads_init(ptr noundef %166, i16 noundef zeroext 2, ptr noundef %pads) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %cmp558 = icmp slt i32 %call557, 0
  br i1 %cmp558, label %if.end552.out_cleanup_crit_edge, label %if.end561

if.end552.out_cleanup_crit_edge:                  ; preds = %if.end552
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup

if.end561:                                        ; preds = %if.end552
  %call562 = call fastcc i32 @ccs_write_msr_regs(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call562)
  %tobool563.not = icmp eq i32 %call562, 0
  br i1 %tobool563.not, label %if.end565, label %if.end561.out_cleanup_crit_edge

if.end561.out_cleanup_crit_edge:                  ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup

if.end565:                                        ; preds = %if.end561
  %call.i846 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %167 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !505
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %168 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %src, align 4
  %call572 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %169) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call572)
  %cmp573 = icmp slt i32 %call572, 0
  br i1 %cmp573, label %out_disable_runtime_pm, label %if.end576

if.end576:                                        ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #12
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i847 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  br label %cleanup592

out_disable_runtime_pm:                           ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %out_cleanup

out_cleanup:                                      ; preds = %out_disable_runtime_pm, %if.end561.out_cleanup_crit_edge, %if.end552.out_cleanup_crit_edge, %do.end550, %if.end538.out_cleanup_crit_edge, %if.end534.out_cleanup_crit_edge, %cond.end530.out_cleanup_crit_edge, %if.end499.out_cleanup_crit_edge, %cleanup469, %do.end320
  %rval.1 = phi i32 [ -16, %do.end320 ], [ %call456, %cleanup469 ], [ %call512, %if.end499.out_cleanup_crit_edge ], [ %call528, %cond.end530.out_cleanup_crit_edge ], [ %call544, %do.end550 ], [ -19, %if.end534.out_cleanup_crit_edge ], [ -19, %if.end538.out_cleanup_crit_edge ], [ %call557, %if.end552.out_cleanup_crit_edge ], [ %call562, %if.end561.out_cleanup_crit_edge ], [ %call572, %out_disable_runtime_pm ]
  call fastcc void @ccs_cleanup(ptr noundef %call.i)
  br label %out_release_mdata

out_release_mdata:                                ; preds = %out_cleanup, %if.end200.out_release_mdata_crit_edge
  %rval.2 = phi i32 [ %call201, %if.end200.out_release_mdata_crit_edge ], [ %rval.1, %out_cleanup ]
  %backing = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 21, i32 18
  %170 = ptrtoint ptr %backing to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %backing, align 4
  call void @kvfree(ptr noundef %171) #10
  br label %out_release_sdata

out_release_sdata:                                ; preds = %out_release_mdata, %if.end182.out_release_sdata_crit_edge
  %rval.3 = phi i32 [ %rval.2, %out_release_mdata ], [ -12, %if.end182.out_release_sdata_crit_edge ]
  %backing588 = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 20, i32 18
  %172 = ptrtoint ptr %backing588 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %backing588, align 4
  call void @kvfree(ptr noundef %173) #10
  br label %out_free_ccs_limits

out_free_ccs_limits:                              ; preds = %out_release_sdata, %do.end303, %do.end230, %if.end208.out_free_ccs_limits_crit_edge, %if.end204.out_free_ccs_limits_crit_edge
  %rval.4 = phi i32 [ %rval.3, %out_release_sdata ], [ %call209, %if.end208.out_free_ccs_limits_crit_edge ], [ %call225, %do.end230 ], [ -2, %do.end303 ], [ -19, %if.end204.out_free_ccs_limits_crit_edge ]
  %ccs_limits = getelementptr inbounds %struct.ccs_sensor, ptr %call.i, i32 0, i32 12
  %174 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ccs_limits, align 4
  call void @kfree(ptr noundef %175) #10
  br label %out_power_off

out_power_off:                                    ; preds = %out_free_ccs_limits, %if.end168.out_power_off_crit_edge, %do.body162.out_power_off_crit_edge
  %rval.5 = phi i32 [ %rval.4, %out_free_ccs_limits ], [ -19, %do.body162.out_power_off_crit_edge ], [ -12, %if.end168.out_power_off_crit_edge ]
  %call590 = call i32 @ccs_power_off(ptr noundef %dev)
  call void @mutex_destroy(ptr noundef %call.i) #10
  br label %cleanup592

cleanup592:                                       ; preds = %out_power_off, %if.end576, %if.end156.cleanup592_crit_edge, %if.then153, %if.then141, %do.end134, %do.end124, %do.end74, %do.end61, %do.end41, %do.end, %if.end4.cleanup592_crit_edge, %if.end.cleanup592_crit_edge, %entry.cleanup592_crit_edge
  %retval.2 = phi i32 [ %call20, %do.end ], [ %38, %if.then141 ], [ %42, %if.then153 ], [ %rval.5, %out_power_off ], [ 0, %if.end576 ], [ -22, %do.end134 ], [ -22, %do.end124 ], [ -517, %do.end41 ], [ -12, %entry.cleanup592_crit_edge ], [ %call2, %if.end.cleanup592_crit_edge ], [ -12, %if.end4.cleanup592_crit_edge ], [ %call158, %if.end156.cleanup592_crit_edge ], [ %call56, %do.end61 ], [ -22, %do.end74 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %filename) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_power_off(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c_addr_alt = getelementptr i8, ptr %1, i32 1582
  %2 = ptrtoint ptr %i2c_addr_alt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i2c_addr_alt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr3 = getelementptr i8, ptr %1, i32 -92
  %call4 = tail call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 259, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reset = getelementptr i8, ptr %1, i32 1620
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #10
  %xshutdown = getelementptr i8, ptr %1, i32 1616
  %6 = ptrtoint ptr %xshutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xshutdown, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #10
  %ext_clk = getelementptr i8, ptr %1, i32 1612
  %8 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5000, i32 noundef 2) #10
  %regulators = getelementptr i8, ptr %1, i32 1608
  %10 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulators, align 4
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %11) #10
  %streaming = getelementptr i8, ptr %1, i32 1882
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %streaming, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_cleanup(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_nvm) #10
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ident) #10
  %ssds_used.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 2
  %4 = ptrtoint ptr %ssds_used.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssds_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %entry.ccs_free_controls.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ccs_free_controls.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_free_controls.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ctrl_handler.i = getelementptr %struct.ccs_sensor, ptr %sensor, i32 0, i32 1, i32 %i.05.i, i32 9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #10
  %inc.i = add nuw i32 %i.05.i, 1
  %6 = ptrtoint ptr %ssds_used.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssds_used.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ccs_free_controls.exit_crit_edge

for.body.i.ccs_free_controls.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_free_controls.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ccs_free_controls.exit:                           ; preds = %for.body.i.ccs_free_controls.exit_crit_edge, %entry.ccs_free_controls.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_write_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %s.i.i = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %sensor5 = getelementptr inbounds %struct.ccs_subdev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sensor5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor5, align 4
  %dev_init_done = getelementptr inbounds %struct.ccs_sensor, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %dev_init_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_init_done, align 1, !range !506
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ccs_pm_get_init.exit.thread37, label %if.end.i

ccs_pm_get_init.exit.thread37:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i24.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 5) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp2.i, label %if.end.i.for.body.i.preheader_crit_edge, label %if.end4.i

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.end4.i:                                        ; preds = %if.end.i
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pixel_array.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ccs_subdev, ptr %13, i32 0, i32 9
  %call5.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end4.i.ccs_pm_get_init.exit_crit_edge

if.end4.i.ccs_pm_get_init.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

if.end7.i:                                        ; preds = %if.end4.i
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src.i, align 4
  %ctrl_handler9.i = getelementptr inbounds %struct.ccs_subdev, ptr %15, i32 0, i32 9
  %call10.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.for.body.i.preheader_crit_edge, label %if.end7.i.ccs_pm_get_init.exit_crit_edge

if.end7.i.ccs_pm_get_init.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

if.end7.i.for.body.i.preheader_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

ccs_pm_get_init.exit:                             ; preds = %if.end7.i.ccs_pm_get_init.exit_crit_edge, %if.end4.i.ccs_pm_get_init.exit_crit_edge
  %rval.0.i = phi i32 [ %call5.i, %if.end4.i.ccs_pm_get_init.exit_crit_edge ], [ %call10.i, %if.end7.i.ccs_pm_get_init.exit_crit_edge ]
  %call.i24.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i)
  %cmp = icmp slt i32 %rval.0.i, 0
  br i1 %cmp, label %ccs_pm_get_init.exit.cleanup_crit_edge, label %ccs_pm_get_init.exit.for.body.i.preheader_crit_edge

ccs_pm_get_init.exit.for.body.i.preheader_crit_edge: ; preds = %ccs_pm_get_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

ccs_pm_get_init.exit.cleanup_crit_edge:           ; preds = %ccs_pm_get_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.preheader:                             ; preds = %ccs_pm_get_init.exit.for.body.i.preheader_crit_edge, %if.end7.i.for.body.i.preheader_crit_edge, %if.end.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %ccs_read_nvm_page.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %p.07.i = phi i32 [ %inc.i, %ccs_read_nvm_page.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %nvm.addr.04.i = phi ptr [ %add.ptr.i, %ccs_read_nvm_page.exit.i.for.body.i_crit_edge ], [ %buf, %for.body.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i.i) #10
  %16 = ptrtoint ptr %s.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %s.i.i, align 4, !annotation !501
  %call.i.i30 = call i32 @ccs_write_addr(ptr noundef %5, i32 noundef 2562, i32 noundef %p.07.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i.i = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.ccs_read_nvm.exit.thread52_crit_edge

for.body.i.ccs_read_nvm.exit.thread52_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_read_nvm.exit.thread52

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = call i32 @ccs_write_addr(ptr noundef %5, i32 noundef 2560, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.ccs_read_nvm.exit.thread52_crit_edge

if.end.i.i.ccs_read_nvm.exit.thread52_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_read_nvm.exit.thread52

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @ccs_read_addr(ptr noundef %5, i32 noundef 2561, ptr noundef nonnull %s.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.ccs_read_nvm.exit.thread52_crit_edge

if.end4.i.i.ccs_read_nvm.exit.thread52_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_read_nvm.exit.thread52

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %17 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s.i.i, align 4
  %and.i.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %ccs_read_nvm.exit

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %call12.i.i = call i32 @ccs_get_limit(ptr noundef %5, i32 noundef 208, i32 noundef 0) #10
  %and13.i.i = and i32 %call12.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.for.body32.i.i.preheader_crit_edge, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  br label %for.body.i.i

if.end11.i.i.for.body32.i.i.preheader_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i.i.preheader

for.body32.i.i.preheader:                         ; preds = %for.body.i.i.for.body32.i.i.preheader_crit_edge, %if.end11.i.i.for.body32.i.i.preheader_crit_edge
  br label %for.body32.i.i

for.cond.i.i:                                     ; preds = %if.end20.i.i
  %dec.i.i = add nsw i32 %i.068.i.i, -1
  %cond.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cond.i.i, label %ccs_read_nvm.exit.thread52.thread, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

ccs_read_nvm.exit.thread52.thread:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i.i) #10
  %inc13.i5565 = add nuw nsw i32 %p.07.i, 1
  br label %ccs_read_nvm.exit.thread.thread

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end11.i.i.for.body.i.i_crit_edge
  %i.068.i.i = phi i32 [ %dec.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 1000, %if.end11.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s.i.i, align 4
  %and17.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %for.body.i.i.for.body32.i.i.preheader_crit_edge

for.body.i.i.for.body32.i.i.preheader_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i.i.preheader

if.end20.i.i:                                     ; preds = %for.body.i.i
  %call21.i.i = call i32 @ccs_read_addr(ptr noundef %5, i32 noundef 2561, ptr noundef nonnull %s.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %for.cond.i.i, label %if.end20.i.i.ccs_read_nvm.exit.thread52_crit_edge

if.end20.i.i.ccs_read_nvm.exit.thread52_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_read_nvm.exit.thread52

for.body32.i.i:                                   ; preds = %for.inc38.i.i.for.body32.i.i_crit_edge, %for.body32.i.i.preheader
  %i.170.i.i = phi i32 [ %inc.i.i, %for.inc38.i.i.for.body32.i.i_crit_edge ], [ 0, %for.body32.i.i.preheader ]
  %nvm.addr.069.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc38.i.i.for.body32.i.i_crit_edge ], [ %nvm.addr.04.i, %for.body32.i.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #10
  %21 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %v.i.i, align 4, !annotation !501
  %add.i.i = add nuw nsw i32 %i.170.i.i, 2564
  %call33.i.i = call i32 @ccs_read_addr(ptr noundef %5, i32 noundef %add.i.i, ptr noundef nonnull %v.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %for.inc38.i.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #10
  br label %ccs_read_nvm.exit.thread52

for.inc38.i.i:                                    ; preds = %for.body32.i.i
  %22 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v.i.i, align 4
  %conv37.i.i = trunc i32 %23 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %nvm.addr.069.i.i, i32 1
  %24 = ptrtoint ptr %nvm.addr.069.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv37.i.i, ptr %nvm.addr.069.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #10
  %inc.i.i = add nuw nsw i32 %i.170.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %ccs_read_nvm_page.exit.i, label %for.inc38.i.i.for.body32.i.i_crit_edge

for.inc38.i.i.for.body32.i.i_crit_edge:           ; preds = %for.inc38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i.i

ccs_read_nvm_page.exit.i:                         ; preds = %for.inc38.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i.i) #10
  %add.ptr.i = getelementptr i8, ptr %nvm.addr.04.i, i32 64
  %inc.i = add nuw nsw i32 %p.07.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not, label %ccs_read_nvm_page.exit.i.ccs_read_nvm.exit.thread.thread_crit_edge, label %ccs_read_nvm_page.exit.i.for.body.i_crit_edge

ccs_read_nvm_page.exit.i.for.body.i_crit_edge:    ; preds = %ccs_read_nvm_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ccs_read_nvm_page.exit.i.ccs_read_nvm.exit.thread.thread_crit_edge: ; preds = %ccs_read_nvm_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_read_nvm.exit.thread.thread

ccs_read_nvm.exit.thread52:                       ; preds = %cleanup.i.i, %if.end20.i.i.ccs_read_nvm.exit.thread52_crit_edge, %if.end4.i.i.ccs_read_nvm.exit.thread52_crit_edge, %if.end.i.i.ccs_read_nvm.exit.thread52_crit_edge, %for.body.i.ccs_read_nvm.exit.thread52_crit_edge
  %retval.2.i.ph.i.ph = phi i32 [ %call33.i.i, %cleanup.i.i ], [ %call21.i.i, %if.end20.i.i.ccs_read_nvm.exit.thread52_crit_edge ], [ %call5.i.i, %if.end4.i.i.ccs_read_nvm.exit.thread52_crit_edge ], [ %call1.i.i, %if.end.i.i.ccs_read_nvm.exit.thread52_crit_edge ], [ %call.i.i30, %for.body.i.ccs_read_nvm.exit.thread52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i.i) #10
  %inc13.i55 = add nuw nsw i32 %p.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.2.i.ph.i.ph)
  %cmp1.i56 = icmp eq i32 %retval.2.i.ph.i.ph, -61
  br i1 %cmp1.i56, label %ccs_read_nvm.exit.thread52._crit_edge, label %ccs_read_nvm.exit.thread52.ccs_read_nvm.exit.thread.thread_crit_edge

ccs_read_nvm.exit.thread52.ccs_read_nvm.exit.thread.thread_crit_edge: ; preds = %ccs_read_nvm.exit.thread52
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_read_nvm.exit.thread.thread

ccs_read_nvm.exit.thread52._crit_edge:            ; preds = %ccs_read_nvm.exit.thread52
  call void @__sanitizer_cov_trace_pc() #12
  br label %25

ccs_read_nvm.exit:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i.i) #10
  %inc13.i = add nuw nsw i32 %p.07.i, 1
  br label %25

25:                                               ; preds = %ccs_read_nvm.exit, %ccs_read_nvm.exit.thread52._crit_edge
  %26 = phi i32 [ -61, %ccs_read_nvm.exit.thread52._crit_edge ], [ 0, %ccs_read_nvm.exit ]
  %inc19.i4659 = phi i32 [ %inc13.i55, %ccs_read_nvm.exit.thread52._crit_edge ], [ %inc13.i, %ccs_read_nvm.exit ]
  br label %ccs_read_nvm.exit.thread.thread

ccs_read_nvm.exit.thread.thread:                  ; preds = %25, %ccs_read_nvm.exit.thread52.ccs_read_nvm.exit.thread.thread_crit_edge, %ccs_read_nvm_page.exit.i.ccs_read_nvm.exit.thread.thread_crit_edge, %ccs_read_nvm.exit.thread52.thread
  %inc19.i4658 = phi i32 [ %inc19.i4659, %25 ], [ %inc13.i55, %ccs_read_nvm.exit.thread52.ccs_read_nvm.exit.thread.thread_crit_edge ], [ %inc13.i5565, %ccs_read_nvm.exit.thread52.thread ], [ 64, %ccs_read_nvm_page.exit.i.ccs_read_nvm.exit.thread.thread_crit_edge ]
  %27 = phi i32 [ %26, %25 ], [ %retval.2.i.ph.i.ph, %ccs_read_nvm.exit.thread52.ccs_read_nvm.exit.thread.thread_crit_edge ], [ -110, %ccs_read_nvm.exit.thread52.thread ], [ 0, %ccs_read_nvm_page.exit.i.ccs_read_nvm.exit.thread.thread_crit_edge ]
  %call3.i = call i32 @ccs_write_addr(ptr noundef %5, i32 noundef 2560, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.i = icmp slt i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool7.not.i = icmp eq i32 %call3.i, 0
  %mul.i = shl i32 %inc19.i4658, 6
  %spec.select1.i = select i1 %tobool7.not.i, i32 %mul.i, i32 %call3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i)
  %cmp10 = icmp slt i32 %spec.select1.i, 0
  %or.cond = select i1 %cmp4.i, i1 true, i1 %cmp10
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br i1 %or.cond, label %if.then11, label %if.end15

if.then11:                                        ; preds = %ccs_read_nvm.exit.thread.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %dev12, i32 noundef 5) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end15:                                         ; preds = %ccs_read_nvm.exit.thread.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call.i33 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i33, ptr %last_busy.i, align 8
  %call.i34 = call i32 @__pm_runtime_suspend(ptr noundef %dev12, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %ccs_pm_get_init.exit.cleanup_crit_edge, %ccs_pm_get_init.exit.thread37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then11 ], [ %spec.select1.i, %if.end15 ], [ -16, %entry.cleanup_crit_edge ], [ -19, %ccs_pm_get_init.exit.cleanup_crit_edge ], [ -19, %ccs_pm_get_init.exit.thread37 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_read_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ident_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor4 = getelementptr inbounds %struct.ccs_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sensor4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor4, align 4
  %mipi_manufacturer_id = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35, i32 1
  %4 = ptrtoint ptr %mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mipi_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %model_id = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35, i32 2
  %6 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model_id, align 4
  %revision_number = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35, i32 3
  %8 = ptrtoint ptr %revision_number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %revision_number, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %minfo5 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35
  %10 = ptrtoint ptr %minfo5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minfo5, align 4
  %model_id8 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35, i32 2
  %12 = ptrtoint ptr %model_id8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %model_id8, align 4
  %revision_number9 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35, i32 3
  %14 = ptrtoint ptr %revision_number9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %revision_number9, align 4
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0.in = phi i32 [ %call7, %if.then ], [ %call10, %if.else ]
  %retval.0 = add i32 %retval.0.in, 1
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_get_hwconfig(ptr noundef %sensor, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #10
  %0 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #10
  %1 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rotation, align 4, !annotation !501
  %call2 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call2, ptr noundef nonnull %bus_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %bus_type = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %3, label %do.end [
    i32 5, label %sw.bb
    i32 6, label %sw.bb7
    i32 3, label %if.end6.sw.bb14_crit_edge
    i32 4, label %if.end6.sw.bb14_crit_edge158
  ]

if.end6.sw.bb14_crit_edge158:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

if.end6.sw.bb14_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %csi_signalling_mode = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 4
  %5 = ptrtoint ptr %csi_signalling_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %csi_signalling_mode, align 4
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 2, i32 3
  %6 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_data_lanes, align 1
  br label %do.body21

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %csi_signalling_mode8 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %csi_signalling_mode8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %csi_signalling_mode8, align 4
  %num_data_lanes11 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 2, i32 3
  %9 = ptrtoint ptr %num_data_lanes11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_data_lanes11, align 1
  br label %do.body21

sw.bb14:                                          ; preds = %if.end6.sw.bb14_crit_edge, %if.end6.sw.bb14_crit_edge158
  %mipi_csi1 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %mipi_csi1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %mipi_csi1, align 4
  %12 = lshr i8 %bf.load, 6
  %.lobit = and i8 %12, 1
  %13 = zext i8 %.lobit to i32
  %csi_signalling_mode18 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %csi_signalling_mode18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %csi_signalling_mode18, align 4
  br label %do.body21

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %3) #13
  br label %cleanup.sink.split

do.body21:                                        ; preds = %sw.bb14, %sw.bb7, %sw.bb
  %conv.sink.shrunk = phi i8 [ %7, %sw.bb ], [ %10, %sw.bb7 ], [ 1, %sw.bb14 ]
  %conv.sink = zext i8 %conv.sink.shrunk to i32
  %lanes = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.sink, ptr %lanes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_hwconfig.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_hwconfig, %if.then26)) #10
          to label %do.end30 [label %if.then26], !srcloc !502

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %lanes27 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %lanes27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lanes27, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_hwconfig.__UNIQUE_ID_ddebug396, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %17) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body21
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.59, ptr noundef nonnull %rotation, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.then33, label %do.end30.if.end40_crit_edge

do.end30.if.end40_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then33:                                        ; preds = %do.end30
  %18 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rotation, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %19, label %do.end38 [
    i32 180, label %sw.bb34
    i32 0, label %if.then33.if.end40_crit_edge
  ]

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

sw.bb34:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %module_board_orient = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 6
  %21 = ptrtoint ptr %module_board_orient to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %module_board_orient, align 4
  br label %if.end40

do.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %19) #13
  br label %cleanup.sink.split

if.end40:                                         ; preds = %sw.bb34, %if.then33.if.end40_crit_edge, %do.end30.if.end40_crit_edge
  %call41 = call ptr @dev_fwnode(ptr noundef %dev) #10
  %ext_clk = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 2
  %call.i148 = call i32 @fwnode_property_read_u32_array(ptr noundef %call41, ptr noundef nonnull @.str.63, ptr noundef %ext_clk, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool43.not = icmp eq i32 %call.i148, 0
  br i1 %tobool43.not, label %if.end40.do.body49_crit_edge, label %do.end47

if.end40.do.body49_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.65) #13
  br label %do.body49

do.body49:                                        ; preds = %do.end47, %if.end40.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_hwconfig.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_hwconfig, %if.then61)) #10
          to label %do.end66 [label %if.then61], !srcloc !502

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ext_clk, align 4
  %csi_signalling_mode63 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %csi_signalling_mode63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %csi_signalling_mode63, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_hwconfig.__UNIQUE_ID_ddebug397, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %23, i32 noundef %25) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body49
  %nr_of_link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 4
  %26 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_of_link_frequencies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool67.not = icmp eq i32 %27, 0
  br i1 %tobool67.not, label %do.end71, label %if.end72

do.end71:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69) #13
  br label %cleanup.sink.split

if.end72:                                         ; preds = %do.end66
  %add = add i32 %27, 1
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #10
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !503

devm_kcalloc.exit.thread:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %op_sys_clock152 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 5
  %30 = ptrtoint ptr %op_sys_clock152 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %op_sys_clock152, align 4
  br label %cleanup.sink.split

devm_kcalloc.exit:                                ; preds = %if.end72
  %31 = extractvalue { i32, i1 } %28, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %31, i32 noundef 3520) #10
  %op_sys_clock = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %op_sys_clock to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i, ptr %op_sys_clock, align 4
  %tobool76.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool76.not, label %devm_kcalloc.exit.cleanup.sink.split_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup.sink.split_crit_edge:   ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %33 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_of_link_frequencies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp155.not = icmp eq i32 %34, 0
  br i1 %cmp155.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %link_frequencies to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link_frequencies, align 4
  %arrayidx = getelementptr i64, ptr %36, i32 %i.0156
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx, align 8
  %39 = ptrtoint ptr %op_sys_clock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %op_sys_clock, align 4
  %arrayidx82 = getelementptr i64, ptr %40, i32 %i.0156
  %41 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %38, ptr %arrayidx82, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_hwconfig.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_hwconfig, %if.then95)) #10
          to label %for.inc [label %if.then95], !srcloc !502

if.then95:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %op_sys_clock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %op_sys_clock, align 4
  %arrayidx97 = getelementptr i64, ptr %43, i32 %i.0156
  %44 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx97, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_hwconfig.__UNIQUE_ID_ddebug398, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %i.0156, i64 noundef %45) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then95, %for.body
  %inc = add nuw i32 %i.0156, 1
  %46 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_of_link_frequencies, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup.sink.split_crit_edge

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %devm_kcalloc.exit.cleanup.sink.split_crit_edge, %devm_kcalloc.exit.thread, %do.end71, %do.end38, %do.end, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %call3, %if.end.cleanup.sink.split_crit_edge ], [ -22, %do.end ], [ -22, %do.end71 ], [ -22, %do.end38 ], [ -12, %devm_kcalloc.exit.cleanup.sink.split_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %for.inc.cleanup.sink.split_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg) #10
  call void @fwnode_handle_put(ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_power_on(ptr noundef %dev) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reset42 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -92
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev) #10
  %regulators = getelementptr i8, ptr %1, i32 1608
  %2 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulators, align 4
  %call5 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.99) #13
  br label %cleanup151

if.end:                                           ; preds = %entry
  %reset = getelementptr i8, ptr %1, i32 1620
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %xshutdown = getelementptr i8, ptr %1, i32 1616
  %6 = ptrtoint ptr %xshutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xshutdown, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %ext_clk = getelementptr i8, ptr %1, i32 1612
  %8 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext_clk, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %lor.lhs.false8.if.end36_crit_edge, label %lor.lhs.false8.if.then10_crit_edge

lor.lhs.false8.if.then10_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false8.if.end36_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then10:                                        ; preds = %lor.lhs.false8.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %ext_clk11 = getelementptr i8, ptr %1, i32 1612
  %10 = ptrtoint ptr %ext_clk11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext_clk11, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.clk_prepare_enable.exit_crit_edge

if.then10.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then10
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end24_crit_edge, label %if.then3.i

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then10.clk_prepare_enable.exit_crit_edge
  %retval.0.i216 = phi i32 [ %call.i, %if.then10.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i216)
  %cmp = icmp slt i32 %retval.0.i216, 0
  br i1 %cmp, label %do.body14, label %clk_prepare_enable.exit.if.end24_crit_edge

clk_prepare_enable.exit.if.end24_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body14:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_power_on.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_power_on, %if.then20)) #10
          to label %out_xclk_fail [label %if.then20], !srcloc !502

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_power_on.__UNIQUE_ID_ddebug335, ptr noundef %dev, ptr noundef nonnull @.str.101) #10
  br label %out_xclk_fail

if.end24:                                         ; preds = %clk_prepare_enable.exit.if.end24_crit_edge, %if.end.i.if.end24_crit_edge
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #10
  %xshutdown26 = getelementptr i8, ptr %1, i32 1616
  %14 = ptrtoint ptr %xshutdown26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xshutdown26, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #10
  %16 = ptrtoint ptr %call4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call4, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %if.end24.cleanup.thread_crit_edge, label %if.then28

if.end24.cleanup.thread_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %ext_clk29 = getelementptr i8, ptr %1, i32 1584
  %19 = ptrtoint ptr %ext_clk29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ext_clk29, align 4
  %div = udiv i32 %20, 1000
  %sub = add nuw nsw i32 %div, 2399999
  %div33 = udiv i32 %sub, %div
  %add34 = add nuw nsw i32 %div33, 1000
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then28, %if.end24.cleanup.thread_crit_edge
  %sleep.0 = phi i32 [ %add34, %if.then28 ], [ 5000, %if.end24.cleanup.thread_crit_edge ]
  tail call void @usleep_range_state(i32 noundef %sleep.0, i32 noundef %sleep.0, i32 noundef 2) #10
  br label %if.end36

if.end36:                                         ; preds = %cleanup.thread, %lor.lhs.false8.if.end36_crit_edge
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset, align 4
  %tobool38.not = icmp eq ptr %22, null
  br i1 %tobool38.not, label %land.lhs.true, label %if.end36.if.end69_crit_edge

if.end36.if.end69_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end36
  %xshutdown39 = getelementptr i8, ptr %1, i32 1616
  %23 = ptrtoint ptr %xshutdown39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xshutdown39, align 4
  %tobool40.not = icmp eq ptr %24, null
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then41:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset42) #10
  %25 = ptrtoint ptr %reset42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %reset42, align 4, !annotation !501
  %call43 = tail call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 259, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %cleanup65, label %if.then41.do.body51_crit_edge

if.then41.do.body51_crit_edge:                    ; preds = %if.then41
  br label %do.body51

do.body51:                                        ; preds = %if.end58.do.body51_crit_edge, %if.then41.do.body51_crit_edge
  %retry.0 = phi i8 [ %dec, %if.end58.do.body51_crit_edge ], [ 100, %if.then41.do.body51_crit_edge ]
  %call52 = call i32 @ccs_read_addr(ptr noundef %add.ptr3, i32 noundef 259, ptr noundef nonnull %reset42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.rhs, label %if.end58.critedge

land.rhs:                                         ; preds = %do.body51
  %26 = ptrtoint ptr %reset42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reset42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp54 = icmp eq i32 %27, 0
  %land.ext = zext i1 %cmp54 to i32
  %28 = ptrtoint ptr %reset42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %land.ext, ptr %reset42, align 4
  br i1 %cmp54, label %land.rhs.cleanup65.thread240_crit_edge, label %land.rhs.if.end58_crit_edge

land.rhs.if.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.rhs.cleanup65.thread240_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65.thread240

if.end58.critedge:                                ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %reset42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %reset42, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.critedge, %land.rhs.if.end58_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %dec = add nsw i8 %retry.0, -1
  %tobool60.not = icmp eq i8 %dec, 0
  br i1 %tobool60.not, label %do.end61, label %if.end58.do.body51_crit_edge

if.end58.do.body51_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.end61:                                         ; preds = %if.end58
  %30 = ptrtoint ptr %reset42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %reset42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool62.not = icmp eq i32 %.pr, 0
  br i1 %tobool62.not, label %cleanup65.thread, label %do.end61.cleanup65.thread240_crit_edge

do.end61.cleanup65.thread240_crit_edge:           ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65.thread240

cleanup65.thread240:                              ; preds = %do.end61.cleanup65.thread240_crit_edge, %land.rhs.cleanup65.thread240_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset42) #10
  br label %if.end69

cleanup65.thread:                                 ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset42) #10
  br label %cleanup151

cleanup65:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset42) #10
  br label %out_cci_addr_fail

if.end69:                                         ; preds = %cleanup65.thread240, %land.lhs.true.if.end69_crit_edge, %if.end36.if.end69_crit_edge
  %i2c_addr_alt = getelementptr i8, ptr %1, i32 1582
  %31 = ptrtoint ptr %i2c_addr_alt to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %i2c_addr_alt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool71.not = icmp eq i16 %32, 0
  br i1 %tobool71.not, label %if.end69.if.end80_crit_edge, label %if.then72

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then72:                                        ; preds = %if.end69
  %src.i = getelementptr i8, ptr %1, i32 1564
  %33 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val.i, align 4, !annotation !501
  %hwcfg.i = getelementptr i8, ptr %1, i32 1580
  %38 = ptrtoint ptr %hwcfg.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hwcfg.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %addr.i, align 2
  %41 = ptrtoint ptr %i2c_addr_alt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %i2c_addr_alt, align 2
  %conv.i = zext i16 %42 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %call2.i = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 263, i32 noundef %shl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i217 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i217, label %if.end.i218, label %if.then72.do.end78_crit_edge

if.then72.do.end78_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

if.end.i218:                                      ; preds = %if.then72
  %43 = ptrtoint ptr %i2c_addr_alt to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %i2c_addr_alt, align 2
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %addr.i, align 2
  %call6.i = call i32 @ccs_read_addr(ptr noundef %add.ptr3, i32 noundef 263, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i218.do.end78_crit_edge

if.end.i218.do.end78_crit_edge:                   ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

if.end9.i:                                        ; preds = %if.end.i218
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  %48 = ptrtoint ptr %i2c_addr_alt to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %i2c_addr_alt, align 2
  %conv12.i = zext i16 %49 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %shl13.i)
  %cmp.not.i = icmp eq i32 %47, %shl13.i
  br i1 %cmp.not.i, label %ccs_change_cci_addr.exit, label %if.end9.i.do.end78_crit_edge

if.end9.i.do.end78_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

ccs_change_cci_addr.exit:                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %if.end80

do.end78:                                         ; preds = %if.end9.i.do.end78_crit_edge, %if.end.i218.do.end78_crit_edge, %if.then72.do.end78_crit_edge
  %retval.0.i219.ph = phi i32 [ -19, %if.end9.i.do.end78_crit_edge ], [ %call6.i, %if.end.i218.do.end78_crit_edge ], [ %call2.i, %if.then72.do.end78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.106) #13
  br label %out_cci_addr_fail

if.end80:                                         ; preds = %ccs_change_cci_addr.exit, %if.end69.if.end80_crit_edge
  %call81 = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 66816, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end87, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.109) #13
  br label %out_cci_addr_fail

if.end87:                                         ; preds = %if.end80
  %ext_clk89 = getelementptr i8, ptr %1, i32 1584
  %50 = ptrtoint ptr %ext_clk89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ext_clk89, align 4
  %div90 = udiv i32 %51, 3906
  %call91 = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 590134, i32 noundef %div90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end97, label %do.end96

do.end96:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112) #13
  br label %out_cci_addr_fail

if.end97:                                         ; preds = %if.end87
  %lanes = getelementptr i8, ptr %1, i32 1588
  %52 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lanes, align 4
  %sub99 = add i32 %53, -1
  %call100 = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 276, i32 noundef %sub99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end106, label %do.end105

do.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.115) #13
  br label %out_cci_addr_fail

if.end106:                                        ; preds = %if.end97
  %call107 = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 262, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end113, label %do.end112

do.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.118) #13
  br label %out_cci_addr_fail

if.end113:                                        ; preds = %if.end106
  %csi_signalling_mode = getelementptr i8, ptr %1, i32 1592
  %54 = ptrtoint ptr %csi_signalling_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %csi_signalling_mode, align 4
  %call115 = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 273, i32 noundef %55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end121, label %do.end120

do.end120:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.121) #13
  br label %out_cci_addr_fail

if.end121:                                        ; preds = %if.end113
  %src.i220 = getelementptr i8, ptr %1, i32 1564
  %56 = ptrtoint ptr %src.i220 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %src.i220, align 4
  %dev_priv.i.i221 = getelementptr inbounds %struct.v4l2_subdev, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %dev_priv.i.i221 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i221, align 4
  %ccs_limits.i = getelementptr i8, ptr %1, i32 1624
  %60 = ptrtoint ptr %ccs_limits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ccs_limits.i, align 4
  %tobool.not.i222 = icmp eq ptr %61, null
  br i1 %tobool.not.i222, label %if.end121.if.end126_crit_edge, label %if.end.i225

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.end.i225:                                      ; preds = %if.end121
  %call1.i223 = call i32 @ccs_get_limit(ptr noundef %add.ptr3, i32 noundef 156, i32 noundef 0) #10
  %and.i = and i32 %call1.i223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i224 = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i224, label %if.else.i, label %if.end.i225.ccs_update_phy_ctrl.exit_crit_edge

if.end.i225.ccs_update_phy_ctrl.exit_crit_edge:   ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_update_phy_ctrl.exit

if.else.i:                                        ; preds = %if.end.i225
  %call4.i = call i32 @ccs_get_limit(ptr noundef %add.ptr3, i32 noundef 156, i32 noundef 0) #10
  %and5.i = and i32 %call4.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %ccs_update_phy_ctrl.exit.thread, label %if.else.i.ccs_update_phy_ctrl.exit_crit_edge

if.else.i.ccs_update_phy_ctrl.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_update_phy_ctrl.exit

ccs_update_phy_ctrl.exit.thread:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.180) #13
  br label %out_cci_addr_fail

ccs_update_phy_ctrl.exit:                         ; preds = %if.else.i.ccs_update_phy_ctrl.exit_crit_edge, %if.end.i225.ccs_update_phy_ctrl.exit_crit_edge
  %val.0.i = phi i32 [ 0, %if.end.i225.ccs_update_phy_ctrl.exit_crit_edge ], [ 1, %if.else.i.ccs_update_phy_ctrl.exit_crit_edge ]
  %call11.i = call i32 @ccs_write_addr(ptr noundef %add.ptr3, i32 noundef 2056, i32 noundef %val.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp123 = icmp slt i32 %call11.i, 0
  br i1 %cmp123, label %ccs_update_phy_ctrl.exit.out_cci_addr_fail_crit_edge, label %ccs_update_phy_ctrl.exit.if.end126_crit_edge

ccs_update_phy_ctrl.exit.if.end126_crit_edge:     ; preds = %ccs_update_phy_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

ccs_update_phy_ctrl.exit.out_cci_addr_fail_crit_edge: ; preds = %ccs_update_phy_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cci_addr_fail

if.end126:                                        ; preds = %ccs_update_phy_ctrl.exit.if.end126_crit_edge, %if.end121.if.end126_crit_edge
  %sensor_manufacturer_regs.i = getelementptr i8, ptr %1, i32 1732
  %62 = ptrtoint ptr %sensor_manufacturer_regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sensor_manufacturer_regs.i, align 4
  %num_sensor_manufacturer_regs.i = getelementptr i8, ptr %1, i32 1728
  %64 = ptrtoint ptr %num_sensor_manufacturer_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_sensor_manufacturer_regs.i, align 4
  %call.i227 = call i32 @ccs_write_data_regs(ptr noundef %add.ptr3, ptr noundef %63, i32 noundef %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %ccs_write_msr_regs.exit, label %if.end126.out_cci_addr_fail_crit_edge

if.end126.out_cci_addr_fail_crit_edge:            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cci_addr_fail

ccs_write_msr_regs.exit:                          ; preds = %if.end126
  %module_manufacturer_regs.i = getelementptr i8, ptr %1, i32 1832
  %66 = ptrtoint ptr %module_manufacturer_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %module_manufacturer_regs.i, align 4
  %num_module_manufacturer_regs.i = getelementptr i8, ptr %1, i32 1828
  %68 = ptrtoint ptr %num_module_manufacturer_regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_module_manufacturer_regs.i, align 4
  %call3.i = call i32 @ccs_write_data_regs(ptr noundef %add.ptr3, ptr noundef %67, i32 noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool128.not = icmp eq i32 %call3.i, 0
  br i1 %tobool128.not, label %if.end130, label %ccs_write_msr_regs.exit.out_cci_addr_fail_crit_edge

ccs_write_msr_regs.exit.out_cci_addr_fail_crit_edge: ; preds = %ccs_write_msr_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cci_addr_fail

if.end130:                                        ; preds = %ccs_write_msr_regs.exit
  %quirk = getelementptr i8, ptr %1, i32 1952
  %70 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %quirk, align 4
  %tobool131.not = icmp eq ptr %71, null
  br i1 %tobool131.not, label %if.end130.cleanup151_crit_edge, label %land.lhs.true132

if.end130.cleanup151_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup151

land.lhs.true132:                                 ; preds = %if.end130
  %post_poweron = getelementptr inbounds %struct.ccs_quirk, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %post_poweron to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %post_poweron, align 4
  %tobool135.not = icmp eq ptr %73, null
  br i1 %tobool135.not, label %land.lhs.true132.cleanup151_crit_edge, label %cond.end

land.lhs.true132.cleanup151_crit_edge:            ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup151

cond.end:                                         ; preds = %land.lhs.true132
  %call139 = call i32 %73(ptr noundef %add.ptr3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cond.end.cleanup151_crit_edge, label %do.end144

cond.end.cleanup151_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup151

do.end144:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.124) #13
  br label %out_cci_addr_fail

out_cci_addr_fail:                                ; preds = %do.end144, %ccs_write_msr_regs.exit.out_cci_addr_fail_crit_edge, %if.end126.out_cci_addr_fail_crit_edge, %ccs_update_phy_ctrl.exit.out_cci_addr_fail_crit_edge, %ccs_update_phy_ctrl.exit.thread, %do.end120, %do.end112, %do.end105, %do.end96, %do.end86, %do.end78, %cleanup65
  %rval.1 = phi i32 [ %retval.0.i219.ph, %do.end78 ], [ %call81, %do.end86 ], [ %call91, %do.end96 ], [ %call100, %do.end105 ], [ %call107, %do.end112 ], [ %call115, %do.end120 ], [ %call11.i, %ccs_update_phy_ctrl.exit.out_cci_addr_fail_crit_edge ], [ %call3.i, %ccs_write_msr_regs.exit.out_cci_addr_fail_crit_edge ], [ %call139, %do.end144 ], [ %call43, %cleanup65 ], [ -22, %ccs_update_phy_ctrl.exit.thread ], [ %call.i227, %if.end126.out_cci_addr_fail_crit_edge ]
  %74 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reset, align 4
  call void @gpiod_set_value(ptr noundef %75, i32 noundef 1) #10
  %xshutdown147 = getelementptr i8, ptr %1, i32 1616
  %76 = ptrtoint ptr %xshutdown147 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xshutdown147, align 4
  call void @gpiod_set_value(ptr noundef %77, i32 noundef 0) #10
  %ext_clk148 = getelementptr i8, ptr %1, i32 1612
  %78 = ptrtoint ptr %ext_clk148 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ext_clk148, align 4
  call void @clk_disable(ptr noundef %79) #10
  call void @clk_unprepare(ptr noundef %79) #10
  br label %out_xclk_fail

out_xclk_fail:                                    ; preds = %out_cci_addr_fail, %if.then20, %do.body14
  %rval.2 = phi i32 [ %rval.1, %out_cci_addr_fail ], [ %retval.0.i216, %if.then20 ], [ %retval.0.i216, %do.body14 ]
  %80 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regulators, align 4
  %call150 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %81) #10
  br label %cleanup151

cleanup151:                                       ; preds = %out_xclk_fail, %cond.end.cleanup151_crit_edge, %land.lhs.true132.cleanup151_crit_edge, %if.end130.cleanup151_crit_edge, %cleanup65.thread, %do.end
  %retval.1 = phi i32 [ %call5, %do.end ], [ %rval.2, %out_xclk_fail ], [ 0, %cond.end.cleanup151_crit_edge ], [ -5, %cleanup65.thread ], [ 0, %land.lhs.true132.cleanup151_crit_edge ], [ 0, %if.end130.cleanup151_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_identify_module(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  %rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %minfo1 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev) #10
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rev, align 4, !annotation !501
  %mipi_manufacturer_id = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 1
  %call2 = tail call i32 @ccs_read_addr(ptr noundef %sensor, i32 noundef 65550, ptr noundef %mipi_manufacturer_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mipi_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end:                                           ; preds = %land.lhs.true
  %call5 = tail call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 3, ptr noundef %minfo1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %model_id = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 2
  %call8 = tail call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 65536, ptr noundef %model_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end13, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end13:                                         ; preds = %if.end9
  %call12 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 2, ptr noundef nonnull %rev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end18, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end18:                                         ; preds = %if.end13
  %revision_number = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 3
  %call16 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 16, ptr noundef %revision_number) #10
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rev, align 4
  %shl = shl i32 %8, 8
  %9 = ptrtoint ptr %revision_number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revision_number, align 4
  %or = or i32 %10, %shl
  store i32 %or, ptr %revision_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool19.not = icmp eq i32 %call16, 0
  br i1 %tobool19.not, label %if.end22, label %if.end18.do.end_crit_edge

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end22:                                         ; preds = %if.end18
  %module_year = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 4
  %call21 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 18, ptr noundef %module_year) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end26, label %if.end22.do.end_crit_edge

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end26:                                         ; preds = %if.end22
  %module_month = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 5
  %call25 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 19, ptr noundef %module_month) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end30, label %if.end26.do.end_crit_edge

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end30:                                         ; preds = %if.end26
  %module_day = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 6
  %call29 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 20, ptr noundef %module_day) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %if.end34, label %if.end30.do.end_crit_edge

if.end30.do.end_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end34:                                         ; preds = %if.end30
  %sensor_mipi_manufacturer_id = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 8
  %call33 = call i32 @ccs_read_addr(ptr noundef %sensor, i32 noundef 65568, ptr noundef %sensor_mipi_manufacturer_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool35.not = icmp eq i32 %call33, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %if.end34.do.end_crit_edge

if.end34.do.end_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true36:                                  ; preds = %if.end34
  %11 = ptrtoint ptr %sensor_mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sensor_mipi_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool38.not = icmp eq i32 %12, 0
  br i1 %tobool38.not, label %if.end41, label %land.lhs.true36.if.end45_crit_edge

land.lhs.true36.if.end45_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end41:                                         ; preds = %land.lhs.true36
  %sensor_smia_manufacturer_id = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 7
  %call40 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 65568, ptr noundef %sensor_smia_manufacturer_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.end41.do.end_crit_edge

if.end41.do.end_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %if.end41.if.end45_crit_edge, %land.lhs.true36.if.end45_crit_edge
  %sensor_model_id = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 9
  %call44 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 65558, ptr noundef %sensor_model_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool46.not = icmp eq i32 %call44, 0
  br i1 %tobool46.not, label %if.end49, label %if.end45.do.end_crit_edge

if.end45.do.end_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end49:                                         ; preds = %if.end45
  %sensor_revision_number = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 10
  %call48 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 24, ptr noundef %sensor_revision_number) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool50.not = icmp eq i32 %call48, 0
  br i1 %tobool50.not, label %if.end53, label %if.end49.do.end_crit_edge

if.end49.do.end_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end53:                                         ; preds = %if.end49
  %sensor_firmware_version = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 11
  %call52 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 26, ptr noundef %sensor_firmware_version) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool54.not = icmp eq i32 %call52, 0
  br i1 %tobool54.not, label %if.end57, label %if.end53.do.end_crit_edge

if.end53.do.end_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end57:                                         ; preds = %if.end53
  %ccs_version = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 14
  %call56 = call i32 @ccs_read_addr(ptr noundef %sensor, i32 noundef 7, ptr noundef %ccs_version) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end57.do.end_crit_edge

if.end57.do.end_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true59:                                  ; preds = %if.end57
  %13 = ptrtoint ptr %ccs_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccs_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool61.not = icmp eq i32 %14, 0
  br i1 %tobool61.not, label %if.end64, label %land.lhs.true59.if.end74_crit_edge

land.lhs.true59.if.end74_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.end64:                                         ; preds = %land.lhs.true59
  %smia_version = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 12
  %call63 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 4, ptr noundef %smia_version) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool65.not = icmp eq i32 %call63, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.end64.do.end_crit_edge

if.end64.do.end_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true66:                                  ; preds = %if.end64
  %15 = ptrtoint ptr %ccs_version to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %ccs_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool68.not = icmp eq i32 %.pr, 0
  br i1 %tobool68.not, label %if.end71, label %land.lhs.true66.if.end74_crit_edge

land.lhs.true66.if.end74_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.end71:                                         ; preds = %land.lhs.true66
  %smiapp_version = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 13
  %call70 = call i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef 17, ptr noundef %smiapp_version) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.end71.do.end_crit_edge

if.end71.do.end_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.end:                                           ; preds = %if.end71.do.end_crit_edge, %if.end64.do.end_crit_edge, %if.end57.do.end_crit_edge, %if.end53.do.end_crit_edge, %if.end49.do.end_crit_edge, %if.end45.do.end_crit_edge, %if.end41.do.end_crit_edge, %if.end34.do.end_crit_edge, %if.end30.do.end_crit_edge, %if.end26.do.end_crit_edge, %if.end22.do.end_crit_edge, %if.end18.do.end_crit_edge, %if.end13.do.end_crit_edge, %if.end9.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.126) #13
  br label %cleanup

if.end74:                                         ; preds = %if.end71.if.end74_crit_edge, %land.lhs.true66.if.end74_crit_edge, %land.lhs.true59.if.end74_crit_edge
  %16 = ptrtoint ptr %mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mipi_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool76.not = icmp eq i32 %17, 0
  br i1 %tobool76.not, label %do.body90, label %do.body78

do.body78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then83)) #10
          to label %do.body110 [label %if.then83], !srcloc !502

if.then83:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %dev84 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mipi_manufacturer_id, align 4
  %20 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %model_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug387, ptr noundef %dev84, ptr noundef nonnull @.str.128, i32 noundef %19, i32 noundef %21) #10
  br label %do.body110

do.body90:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then102)) #10
          to label %do.body110 [label %if.then102], !srcloc !502

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  %dev103 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %minfo1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %minfo1, align 4
  %24 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %model_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug388, ptr noundef %dev103, ptr noundef nonnull @.str.129, i32 noundef %23, i32 noundef %25) #10
  br label %do.body110

do.body110:                                       ; preds = %if.then102, %do.body90, %if.then83, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then122)) #10
          to label %do.end130 [label %if.then122], !srcloc !502

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  %dev123 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %revision_number to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %revision_number, align 4
  %28 = ptrtoint ptr %module_year to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %module_year, align 4
  %30 = ptrtoint ptr %module_month to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %module_month, align 4
  %32 = ptrtoint ptr %module_day to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %module_day, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug389, ptr noundef %dev123, ptr noundef nonnull @.str.130, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #10
  br label %do.end130

do.end130:                                        ; preds = %if.then122, %do.body110
  %34 = ptrtoint ptr %sensor_mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sensor_mipi_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool132.not = icmp eq i32 %35, 0
  br i1 %tobool132.not, label %do.body154, label %do.body134

do.body134:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then146)) #10
          to label %do.body174 [label %if.then146], !srcloc !502

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  %dev147 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %sensor_mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sensor_mipi_manufacturer_id, align 4
  %38 = ptrtoint ptr %sensor_model_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sensor_model_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug390, ptr noundef %dev147, ptr noundef nonnull @.str.131, i32 noundef %37, i32 noundef %39) #10
  br label %do.body174

do.body154:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then166)) #10
          to label %do.body174 [label %if.then166], !srcloc !502

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  %dev167 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %sensor_smia_manufacturer_id168 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 7
  %40 = ptrtoint ptr %sensor_smia_manufacturer_id168 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sensor_smia_manufacturer_id168, align 4
  %42 = ptrtoint ptr %sensor_model_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sensor_model_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug391, ptr noundef %dev167, ptr noundef nonnull @.str.132, i32 noundef %41, i32 noundef %43) #10
  br label %do.body174

do.body174:                                       ; preds = %if.then166, %do.body154, %if.then146, %do.body134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then186)) #10
          to label %do.end192 [label %if.then186], !srcloc !502

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #12
  %dev187 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %sensor_revision_number to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sensor_revision_number, align 4
  %46 = ptrtoint ptr %sensor_firmware_version to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sensor_firmware_version, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug392, ptr noundef %dev187, ptr noundef nonnull @.str.133, i32 noundef %45, i32 noundef %47) #10
  br label %do.end192

do.end192:                                        ; preds = %if.then186, %do.body174
  %48 = ptrtoint ptr %ccs_version to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ccs_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool194.not = icmp eq i32 %49, 0
  br i1 %tobool194.not, label %do.body217, label %do.body196

do.body196:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then208)) #10
          to label %if.end237 [label %if.then208], !srcloc !502

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #12
  %dev209 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %50 = ptrtoint ptr %ccs_version to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ccs_version, align 4
  %and = lshr i32 %51, 4
  %shr = and i32 %and, 15
  %and212 = and i32 %51, 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug393, ptr noundef %dev209, ptr noundef nonnull @.str.134, i32 noundef %shr, i32 noundef %and212) #10
  br label %if.end237

do.body217:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then229)) #10
          to label %if.end237 [label %if.then229], !srcloc !502

if.then229:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #12
  %dev230 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %smia_version231 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 12
  %52 = ptrtoint ptr %smia_version231 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %smia_version231, align 4
  %smiapp_version232 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 13
  %54 = ptrtoint ptr %smiapp_version232 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %smiapp_version232, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug394, ptr noundef %dev230, ptr noundef nonnull @.str.135, i32 noundef %53, i32 noundef %55) #10
  br label %if.end237

if.end237:                                        ; preds = %if.then229, %do.body217, %if.then208, %do.body196
  %.str.136.sink = phi ptr [ @.str, %do.body196 ], [ @.str, %if.then208 ], [ @.str.136, %do.body217 ], [ @.str.136, %if.then229 ]
  %name236 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 15
  %56 = ptrtoint ptr %name236 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.str.136.sink, ptr %name236, align 4
  %sensor_smia_manufacturer_id238 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 7
  %57 = ptrtoint ptr %sensor_smia_manufacturer_id238 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sensor_smia_manufacturer_id238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool239.not = icmp eq i32 %58, 0
  br i1 %tobool239.not, label %if.end237.for.body.preheader_crit_edge, label %land.lhs.true240

if.end237.for.body.preheader_crit_edge:           ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

land.lhs.true240:                                 ; preds = %if.end237
  %59 = ptrtoint ptr %minfo1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %minfo1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool242.not = icmp eq i32 %60, 0
  br i1 %tobool242.not, label %land.lhs.true243, label %land.lhs.true240.for.body.preheader_crit_edge

land.lhs.true240.for.body.preheader_crit_edge:    ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

land.lhs.true243:                                 ; preds = %land.lhs.true240
  %61 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool245.not = icmp eq i32 %62, 0
  br i1 %tobool245.not, label %if.then246, label %land.lhs.true243.for.body.preheader_crit_edge

land.lhs.true243.for.body.preheader_crit_edge:    ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then246:                                       ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %minfo1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %minfo1, align 4
  %64 = ptrtoint ptr %sensor_model_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sensor_model_id, align 4
  %66 = ptrtoint ptr %model_id to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %model_id, align 4
  %67 = ptrtoint ptr %sensor_revision_number to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sensor_revision_number, align 4
  %69 = ptrtoint ptr %revision_number to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %revision_number, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then246, %land.lhs.true243.for.body.preheader_crit_edge, %land.lhs.true240.for.body.preheader_crit_edge, %if.end237.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0535 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [11 x %struct.ccs_module_ident], ptr @ccs_module_idents, i32 0, i32 %i.0535
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool255.not = icmp eq i16 %71, 0
  br i1 %tobool255.not, label %for.body.land.lhs.true269_crit_edge, label %land.lhs.true256

for.body.land.lhs.true269_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true269

land.lhs.true256:                                 ; preds = %for.body
  %conv = zext i16 %71 to i32
  %72 = ptrtoint ptr %mipi_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mipi_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv)
  %cmp261.not = icmp eq i32 %73, %conv
  br i1 %cmp261.not, label %land.lhs.true256.land.lhs.true269_crit_edge, label %land.lhs.true256.for.inc_crit_edge

land.lhs.true256.for.inc_crit_edge:               ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true256.land.lhs.true269_crit_edge:      ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true269

land.lhs.true269:                                 ; preds = %land.lhs.true256.land.lhs.true269_crit_edge, %for.body.land.lhs.true269_crit_edge
  %smia_manufacturer_id266 = getelementptr [11 x %struct.ccs_module_ident], ptr @ccs_module_idents, i32 0, i32 %i.0535, i32 2
  %74 = ptrtoint ptr %smia_manufacturer_id266 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %smia_manufacturer_id266, align 4
  %conv267 = zext i8 %75 to i32
  %76 = ptrtoint ptr %minfo1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %minfo1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %conv267)
  %cmp274.not = icmp eq i32 %77, %conv267
  br i1 %cmp274.not, label %if.end277, label %land.lhs.true269.for.inc_crit_edge

land.lhs.true269.for.inc_crit_edge:               ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end277:                                        ; preds = %land.lhs.true269
  %model_id279 = getelementptr [11 x %struct.ccs_module_ident], ptr @ccs_module_idents, i32 0, i32 %i.0535, i32 1
  %78 = ptrtoint ptr %model_id279 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %model_id279, align 2
  %conv280 = zext i16 %79 to i32
  %80 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %conv280)
  %cmp282.not = icmp eq i32 %81, %conv280
  br i1 %cmp282.not, label %if.then290, label %if.end277.for.inc_crit_edge

if.end277.for.inc_crit_edge:                      ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then290:                                       ; preds = %if.end277
  %revision_number_major = getelementptr [11 x %struct.ccs_module_ident], ptr @ccs_module_idents, i32 0, i32 %i.0535, i32 3
  %82 = ptrtoint ptr %revision_number_major to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %revision_number_major, align 1
  %conv292 = zext i8 %83 to i32
  %84 = ptrtoint ptr %revision_number to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %revision_number, align 4
  %shr294 = lshr i32 %85, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr294, i32 %conv292)
  %cmp295 = icmp ugt i32 %shr294, %conv292
  br i1 %cmp295, label %if.then290.for.inc_crit_edge, label %for.end

if.then290.for.inc_crit_edge:                     ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then290.for.inc_crit_edge, %if.end277.for.inc_crit_edge, %land.lhs.true269.for.inc_crit_edge, %land.lhs.true256.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0535, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %do.end320, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #12
  %name311 = getelementptr [11 x %struct.ccs_module_ident], ptr @ccs_module_idents, i32 0, i32 %i.0535, i32 5
  %86 = ptrtoint ptr %name311 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name311, align 4
  %name312 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 15
  %88 = ptrtoint ptr %name312 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %name312, align 4
  %quirk = getelementptr [11 x %struct.ccs_module_ident], ptr @ccs_module_idents, i32 0, i32 %i.0535, i32 6
  %89 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %quirk, align 4
  %quirk314 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 16
  %91 = ptrtoint ptr %quirk314 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %quirk314, align 4
  br label %do.body323

do.end320:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %dev321 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev321, ptr noundef nonnull @.str.138) #13
  br label %do.body323

do.body323:                                       ; preds = %do.end320, %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_identify_module.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_identify_module, %if.then335)) #10
          to label %cleanup [label %if.then335], !srcloc !502

if.then335:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #12
  %dev336 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name337 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 15
  %92 = ptrtoint ptr %name337 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name337, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_identify_module.__UNIQUE_ID_ddebug395, ptr noundef %dev336, ptr noundef nonnull @.str.140, ptr noundef %93) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then335, %do.body323, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then335 ], [ 0, %do.body323 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_data_parse(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_read_all_limits(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %ccs_limits = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 12
  %4 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccs_limits, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ccs_limits, align 4
  %7 = load i16, ptr getelementptr inbounds ([229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 228), align 2
  %conv = zext i16 %7 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup78_crit_edge, label %if.end

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end:                                           ; preds = %entry
  %8 = load i16, ptr getelementptr inbounds ([229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 228), align 2
  %conv3 = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %conv3
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 0, i32 1) to i32))
  %9 = load i16, ptr getelementptr inbounds ([0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not156 = icmp eq i16 %9, 0
  br i1 %tobool4.not156, label %if.end.do.end69_crit_edge, label %for.body.lr.ph

if.end.do.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

for.body.lr.ph:                                   ; preds = %if.end
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc61.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i16 [ %9, %for.body.lr.ph ], [ %30, %for.inc61.for.body_crit_edge ]
  %l.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %l.1.ph, %for.inc61.for.body_crit_edge ]
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc61.for.body_crit_edge ]
  %ptr.0157 = phi ptr [ %call9.i.i, %for.body.lr.ph ], [ %ptr.2.ph, %for.inc61.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %i.0158
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 @ccs_reg_width(i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %l.0161)
  %cmp = icmp eq i32 %l.0161, 228
  br i1 %cmp, label %do.end, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.body
  %conv14 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %conv14)
  %cmp15150.not = icmp ugt i32 %call7, %conv14
  br i1 %cmp15150.not, label %for.cond11.preheader.for.end_crit_edge, label %for.body17.lr.ph

for.cond11.preheader.for.end_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body17.lr.ph:                                 ; preds = %for.cond11.preheader
  %div = udiv i32 %conv14, %call7
  %name = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %i.0158, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body17

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.152) #13
  br label %out_err

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %j.0155 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %reg.0153 = phi i32 [ %12, %for.body17.lr.ph ], [ %add, %for.inc.for.body17_crit_edge ]
  %ptr.1151 = phi ptr [ %ptr.0157, %for.body17.lr.ph ], [ %add.ptr22, %for.inc.for.body17_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val, align 4, !annotation !501
  %call18 = call i32 @ccs_read_addr_noconv(ptr noundef %sensor, i32 noundef %reg.0153, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %for.body17.cleanup.thread_crit_edge

for.body17.cleanup.thread_crit_edge:              ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end21:                                         ; preds = %for.body17
  %add.ptr22 = getelementptr i8, ptr %ptr.1151, i32 %call7
  %cmp23 = icmp ugt ptr %add.ptr22, %add.ptr
  br i1 %cmp23, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.155) #13
  br label %cleanup.thread

if.end30:                                         ; preds = %if.end21
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool31.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0155)
  %tobool32.not = icmp eq i32 %j.0155, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %if.end34, label %cleanup.thread131

cleanup.thread131:                                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %for.end

if.end34:                                         ; preds = %if.end30
  %16 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %call7, label %if.end34.ccs_assign_limit.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

if.end34.ccs_assign_limit.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_assign_limit.exit

sw.bb.i:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %15 to i8
  %17 = ptrtoint ptr %ptr.1151 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %ptr.1151, align 1
  br label %ccs_assign_limit.exit

sw.bb1.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = trunc i32 %15 to i16
  %18 = ptrtoint ptr %ptr.1151 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv2.i, ptr %ptr.1151, align 2
  br label %ccs_assign_limit.exit

sw.bb3.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ptr.1151 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %ptr.1151, align 4
  br label %ccs_assign_limit.exit

ccs_assign_limit.exit:                            ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %if.end34.ccs_assign_limit.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_all_limits.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_all_limits, %cleanup.thread127)) #10
          to label %cleanup [label %cleanup.thread127], !srcloc !502

cleanup.thread127:                                ; preds = %ccs_assign_limit.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_all_limits.__UNIQUE_ID_ddebug294, ptr noundef %dev41, ptr noundef nonnull @.str.157, i32 noundef %reg.0153, ptr noundef %21, i32 noundef %23, i32 noundef %23) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end28, %for.body17.cleanup.thread_crit_edge
  %ret.2.ph = phi i32 [ -22, %do.end28 ], [ %call18, %for.body17.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %out_err

cleanup:                                          ; preds = %ccs_assign_limit.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %cleanup.thread127
  %inc = add nuw nsw i32 %j.0155, 1
  %add = add i32 %reg.0153, %call7
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread131, %for.cond11.preheader.for.end_crit_edge
  %ptr.1144 = phi ptr [ %ptr.1151, %cleanup.thread131 ], [ %ptr.0157, %for.cond11.preheader.for.end_crit_edge ], [ %add.ptr22, %for.inc.for.end_crit_edge ]
  %flags = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %i.0158, i32 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool49.not = icmp eq i16 %26, 0
  br i1 %tobool49.not, label %if.end51, label %for.end.for.inc61_crit_edge

for.end.for.inc61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61

if.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc52 = add i32 %l.0161, 1
  %arrayidx53 = getelementptr [229 x %struct.ccs_limit_offset], ptr @ccs_limit_offsets, i32 0, i32 %inc52
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %28 to i32
  %add.ptr55 = getelementptr i8, ptr %call9.i.i, i32 %conv54
  br label %for.inc61

for.inc61:                                        ; preds = %if.end51, %for.end.for.inc61_crit_edge
  %ptr.2.ph = phi ptr [ %ptr.1144, %for.end.for.inc61_crit_edge ], [ %add.ptr55, %if.end51 ]
  %l.1.ph = phi i32 [ %l.0161, %for.end.for.inc61_crit_edge ], [ %inc52, %if.end51 ]
  %inc62 = add i32 %i.0158, 1
  %size = getelementptr [0 x %struct.ccs_limit], ptr @ccs_limits, i32 0, i32 %inc62, i32 1
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size, align 4
  %tobool4.not = icmp eq i16 %30, 0
  br i1 %tobool4.not, label %for.end63, label %for.inc61.for.body_crit_edge

for.inc61.for.body_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end63:                                        ; preds = %for.inc61
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %l.1.ph)
  %cmp64.not = icmp eq i32 %l.1.ph, 228
  br i1 %cmp64.not, label %if.end71, label %for.end63.do.end69_crit_edge

for.end63.do.end69_crit_edge:                     ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

do.end69:                                         ; preds = %for.end63.do.end69_crit_edge, %if.end.do.end69_crit_edge
  %dev70 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.159) #13
  br label %out_err

if.end71:                                         ; preds = %for.end63
  %31 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i, ptr %ccs_limits, align 4
  %call73 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 125, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call73)
  %cmp74 = icmp ult i32 %call73, 16
  br i1 %cmp74, label %if.then76, label %if.end71.cleanup78_crit_edge

if.end71.cleanup78_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  call void @ccs_replace_limit(ptr noundef %sensor, i32 noundef 125, i32 noundef 0, i32 noundef 16)
  br label %cleanup78

out_err:                                          ; preds = %do.end69, %cleanup.thread, %do.end
  %ret.5 = phi i32 [ -22, %do.end69 ], [ -22, %do.end ], [ %ret.2.ph, %cleanup.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup78

cleanup78:                                        ; preds = %out_err, %if.then76, %if.end71.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.0 = phi i32 [ %ret.5, %out_err ], [ -12, %entry.cleanup78_crit_edge ], [ 0, %if.then76 ], [ 0, %if.end71.cleanup78_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_read_frame_fmt(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 0, i32 noundef 0)
  %call2 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 1, i32 noundef 0)
  %4 = trunc i32 %call2 to i8
  %5 = lshr i8 %4, 4
  %conv8 = and i8 %4, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then)) #10
          to label %do.body18 [label %if.then], !srcloc !502

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv12 = and i32 %call1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv12)
  %cmp = icmp eq i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv12)
  %cmp15 = icmp eq i32 %conv12, 2
  %cond = select i1 %cmp15, ptr @.str.164, ptr @.str.165
  %cond17 = select i1 %cmp, ptr @.str.163, ptr %cond
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.162, ptr noundef nonnull %cond17) #10
  br label %do.body18

do.body18:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then30)) #10
          to label %do.end36 [label %if.then30], !srcloc !502

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv32 = zext i8 %5 to i32
  %conv33 = zext i8 %conv8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug296, ptr noundef %dev31, ptr noundef nonnull @.str.166, i32 noundef %conv32, i32 noundef %conv33) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  %conv37 = zext i8 %5 to i32
  %narrow = add nuw nsw i8 %5, %conv8
  %add = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow)
  %cmp39293.not = icmp eq i8 %narrow, 0
  br i1 %cmp39293.not, label %do.end36.for.end_crit_edge, label %for.body.lr.ph

do.end36.for.end_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end36
  %trunc = trunc i32 %call1 to i8
  %dev102 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %image_start = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 30
  %embedded_end = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 29
  %embedded_start = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 28
  %visible_pixel_start = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 31
  %trunc.off = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %trunc.off)
  %switch = icmp ult i8 %trunc.off, 2
  br i1 %switch, label %for.body.preheader, label %do.body59

for.body.preheader:                               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %trunc)
  %cond299 = icmp eq i8 %trunc, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0297 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pixel_count.0296 = phi i32 [ %pixel_count.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %line_count.0294 = phi i32 [ %line_count.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  br i1 %cond299, label %if.then44, label %if.then52

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nuw i32 %i.0297, 1
  %call45 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 2, i32 noundef %mul)
  %and46 = lshr i32 %call45, 12
  %shr47 = and i32 %and46, 15
  %and48 = and i32 %call45, 4095
  br label %if.end78

if.then52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul53 = shl i32 %i.0297, 2
  %call54 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 3, i32 noundef %mul53)
  %shr56 = lshr i32 %call54, 28
  %and57 = and i32 %call54, 65535
  br label %if.end78

do.body59:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then71)) #10
          to label %cleanup204 [label %if.then71], !srcloc !502

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %conv41.le = and i32 %call1, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug297, ptr noundef %dev102, ptr noundef nonnull @.str.167, i32 noundef %conv41.le) #10
  br label %cleanup204

if.end78:                                         ; preds = %if.then52, %if.then44
  %pixels.0 = phi i32 [ %and48, %if.then44 ], [ %and57, %if.then52 ]
  %pixelcode.0 = phi i32 [ %shr47, %if.then44 ], [ %shr56, %if.then52 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0297, i32 %conv37)
  %cmp80 = icmp ult i32 %i.0297, %conv37
  %.str.168..str.169 = select i1 %cmp80, ptr @.str.168, ptr @.str.169
  %switch.tableidx = add nsw i32 %pixelcode.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.lookup, label %if.end78.do.body89_crit_edge

if.end78.do.body89_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body89

switch.lookup:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ccs_read_frame_fmt, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.body89

do.body89:                                        ; preds = %switch.lookup, %if.end78.do.body89_crit_edge
  %what.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.175, %if.end78.do.body89_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then101)) #10
          to label %do.end105 [label %if.then101], !srcloc !502

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug298, ptr noundef %dev102, ptr noundef nonnull @.str.176, ptr noundef nonnull %what.0, i32 noundef %pixels.0, ptr noundef nonnull %.str.168..str.169, i32 noundef %pixelcode.0) #10
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %do.body89
  br i1 %cmp80, label %if.then109, label %if.end116

if.then109:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pixelcode.0)
  %cmp110 = icmp eq i32 %pixelcode.0, 5
  br i1 %cmp110, label %if.then112, label %if.then109.if.end114_crit_edge

if.then109.if.end114_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then112:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %conv113 = trunc i32 %pixel_count.0296 to i16
  %8 = ptrtoint ptr %visible_pixel_start to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv113, ptr %visible_pixel_start, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then109.if.end114_crit_edge
  %add115 = add i32 %pixels.0, %pixel_count.0296
  br label %for.inc

if.end116:                                        ; preds = %do.end105
  %9 = zext i32 %pixelcode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %pixelcode.0, label %if.end116.sw.epilog127_crit_edge [
    i32 1, label %sw.bb117
    i32 5, label %sw.bb125
  ]

if.end116.sw.epilog127_crit_edge:                 ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog127

sw.bb117:                                         ; preds = %if.end116
  %10 = ptrtoint ptr %embedded_end to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %embedded_end, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool118.not = icmp eq i16 %11, 0
  br i1 %tobool118.not, label %if.end120, label %sw.bb117.sw.epilog127_crit_edge

sw.bb117.sw.epilog127_crit_edge:                  ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog127

if.end120:                                        ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  %conv121 = trunc i32 %line_count.0294 to i16
  %12 = ptrtoint ptr %embedded_start to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv121, ptr %embedded_start, align 2
  %add122 = add i32 %pixels.0, %line_count.0294
  %conv123 = trunc i32 %add122 to i16
  %13 = ptrtoint ptr %embedded_end to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv123, ptr %embedded_end, align 4
  br label %sw.epilog127

sw.bb125:                                         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %conv126 = trunc i32 %line_count.0294 to i16
  %14 = ptrtoint ptr %image_start to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv126, ptr %image_start, align 2
  br label %sw.epilog127

sw.epilog127:                                     ; preds = %sw.bb125, %if.end120, %sw.bb117.sw.epilog127_crit_edge, %if.end116.sw.epilog127_crit_edge
  %add128 = add i32 %pixels.0, %line_count.0294
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog127, %if.end114
  %line_count.1.ph = phi i32 [ %add128, %sw.epilog127 ], [ %line_count.0294, %if.end114 ]
  %pixel_count.1.ph = phi i32 [ %pixel_count.0296, %sw.epilog127 ], [ %add115, %if.end114 ]
  %inc = add nuw nsw i32 %i.0297, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end36.for.end_crit_edge
  %embedded_end133 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 29
  %15 = ptrtoint ptr %embedded_end133 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %embedded_end133, align 4
  %image_start135 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 30
  %17 = ptrtoint ptr %image_start135 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %image_start135, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp137 = icmp ugt i16 %16, %18
  br i1 %cmp137, label %do.body140, label %for.end.do.body164_crit_edge

for.end.do.body164_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body164

do.body140:                                       ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then152)) #10
          to label %do.end160 [label %if.then152], !srcloc !502

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  %dev153 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %embedded_end133 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %embedded_end133, align 4
  %conv155 = zext i16 %20 to i32
  %21 = ptrtoint ptr %image_start135 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %image_start135, align 2
  %conv157 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug299, ptr noundef %dev153, ptr noundef nonnull @.str.177, i32 noundef %conv155, i32 noundef %conv157) #10
  br label %do.end160

do.end160:                                        ; preds = %if.then152, %do.body140
  %23 = ptrtoint ptr %embedded_end133 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %embedded_end133, align 4
  %25 = ptrtoint ptr %image_start135 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %image_start135, align 2
  br label %do.body164

do.body164:                                       ; preds = %do.end160, %for.end.do.body164_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then176)) #10
          to label %do.body185 [label %if.then176], !srcloc !502

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #12
  %dev177 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %embedded_start178 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 28
  %26 = ptrtoint ptr %embedded_start178 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %embedded_start178, align 2
  %conv179 = zext i16 %27 to i32
  %28 = ptrtoint ptr %embedded_end133 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %embedded_end133, align 4
  %conv181 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug300, ptr noundef %dev177, ptr noundef nonnull @.str.178, i32 noundef %conv179, i32 noundef %conv181) #10
  br label %do.body185

do.body185:                                       ; preds = %if.then176, %do.body164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_read_frame_fmt, %if.then197)) #10
          to label %cleanup204 [label %if.then197], !srcloc !502

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  %dev198 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %image_start135 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %image_start135, align 2
  %conv200 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_read_frame_fmt.__UNIQUE_ID_ddebug301, ptr noundef %dev198, ptr noundef nonnull @.str.179, i32 noundef %conv200) #10
  br label %cleanup204

cleanup204:                                       ; preds = %if.then197, %do.body185, %if.then71, %do.body59
  %retval.2 = phi i32 [ 0, %if.then197 ], [ -22, %do.body59 ], [ -22, %if.then71 ], [ 0, %do.body185 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_update_phy_ctrl(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %ccs_limits = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 12
  %4 = ptrtoint ptr %ccs_limits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccs_limits, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 156, i32 noundef 0)
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 156, i32 noundef 0)
  %and5 = and i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.180) #13
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %val.0 = phi i32 [ 0, %if.end.if.end10_crit_edge ], [ 1, %if.else.if.end10_crit_edge ]
  %call11 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 2056, i32 noundef %val.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_create_subdev(ptr noundef %sensor, ptr noundef %ssd, ptr noundef %name, i16 noundef zeroext %num_pads, i32 noundef %function) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %tobool.not = icmp eq ptr %ssd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %1, %ssd
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_subdev_init(ptr noundef nonnull %ssd, ptr noundef nonnull @ccs_ops) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %ssd, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %flags, align 4
  %function7 = getelementptr inbounds %struct.media_entity, ptr %ssd, i32 0, i32 3
  %6 = ptrtoint ptr %function7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %function, ptr %function7, align 4
  %sensor8 = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 8
  %7 = ptrtoint ptr %sensor8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sensor, ptr %sensor8, align 4
  %conv = zext i16 %num_pads to i32
  %npads = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 7
  %8 = ptrtoint ptr %npads to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %npads, align 4
  %sub = add i16 %num_pads, -1
  %source_pad = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 6
  %9 = ptrtoint ptr %source_pad to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %sub, ptr %source_pad, align 2
  %name12 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 15
  %10 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name12, align 4
  tail call void @v4l2_i2c_subdev_set_name(ptr noundef nonnull %ssd, ptr noundef %3, ptr noundef %11, ptr noundef %name) #10
  %sink_fmt = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 2
  %top.i = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %top.i, align 4
  %13 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sink_fmt, align 4
  %14 = ptrtoint ptr %sensor8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sensor8, align 4
  %call.i = tail call i32 @ccs_get_limit(ptr noundef %15, i32 noundef 77, i32 noundef 0) #10
  %add.i = add i32 %call.i, 1
  %width.i = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %width.i, align 4
  %17 = ptrtoint ptr %sensor8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor8, align 4
  %call2.i = tail call i32 @ccs_get_limit(ptr noundef %18, i32 noundef 78, i32 noundef 0) #10
  %add3.i = add i32 %call2.i, 1
  %height.i = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add3.i, ptr %height.i, align 4
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i, align 4
  %compose = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 4
  %width14 = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width14, align 4
  %height17 = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add3.i, ptr %height17, align 4
  %24 = ptrtoint ptr %source_pad to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %source_pad, align 2
  %idxprom = zext i16 %25 to i32
  %arrayidx = getelementptr %struct.ccs_subdev, ptr %ssd, i32 0, i32 3, i32 %idxprom
  %26 = call ptr @memcpy(ptr %arrayidx, ptr %compose, i32 16)
  %27 = load i16, ptr %source_pad, align 2
  %idxprom21 = zext i16 %27 to i32
  %flags23 = getelementptr %struct.ccs_subdev, ptr %ssd, i32 0, i32 1, i32 %idxprom21, i32 4
  %28 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %flags23, align 4
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 6
  %29 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pixel_array, align 4
  %cmp24.not = icmp eq ptr %30, %ssd
  br i1 %cmp24.not, label %if.end4.if.end36_crit_edge, label %if.then26

if.end4.if.end36_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then26:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sink_pad = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 5
  %31 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sink_pad, align 4
  %idxprom28 = zext i16 %32 to i32
  %arrayidx29 = getelementptr %struct.ccs_subdev, ptr %ssd, i32 0, i32 3, i32 %idxprom28
  %33 = call ptr @memcpy(ptr %arrayidx29, ptr %compose, i32 16)
  %34 = load i16, ptr %sink_pad, align 4
  %idxprom33 = zext i16 %34 to i32
  %flags35 = getelementptr %struct.ccs_subdev, ptr %ssd, i32 0, i32 1, i32 %idxprom33, i32 4
  %35 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %flags35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %if.end4.if.end36_crit_edge
  %ops = getelementptr inbounds %struct.media_entity, ptr %ssd, i32 0, i32 11
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ccs_entity_ops, ptr %ops, align 4
  %37 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src, align 4
  %cmp40 = icmp eq ptr %38, %ssd
  br i1 %cmp40, label %if.end36.cleanup_crit_edge, label %if.end43

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %ssd, i32 0, i32 7
  %39 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ccs_internal_ops, ptr %internal_ops, align 4
  %owner = getelementptr inbounds %struct.v4l2_subdev, ptr %ssd, i32 0, i32 2
  %40 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %owner, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %dev47 = getelementptr inbounds %struct.v4l2_subdev, ptr %ssd, i32 0, i32 14
  %41 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %dev47, align 4
  %dev_priv.i88 = getelementptr inbounds %struct.v4l2_subdev, ptr %ssd, i32 0, i32 11
  %42 = ptrtoint ptr %dev_priv.i88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %3, ptr %dev_priv.i88, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_init_controls(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  %ctrl_cfg = alloca %struct.v4l2_ctrl_config, align 8
  %ctrl_cfg83 = alloca %struct.v4l2_ctrl_config, align 8
  %ctrl_cfg117 = alloca %struct.v4l2_ctrl_config, align 8
  %ctrl_cfg126 = alloca %struct.v4l2_ctrl_config, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 6
  %4 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler = getelementptr inbounds %struct.ccs_subdev, ptr %5, i32 0, i32 9
  %call1 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 17, ptr noundef nonnull @ccs_init_controls._key, ptr noundef nonnull @.str.182) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pixel_array, align 4
  %lock = getelementptr inbounds %struct.ccs_subdev, ptr %7, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sensor, ptr %lock, align 4
  %call4 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 4, i32 noundef 0)
  %9 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %call4, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb44
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 9, i32 noundef 0)
  %call9 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 10, i32 noundef 0)
  %call14 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 11, i32 noundef 0)
  %call19 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 12, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %ctrl_cfg) #10
  %10 = call ptr @memcpy(ptr %ctrl_cfg, ptr @__const.ccs_init_controls.ctrl_cfg, i32 112)
  %name21 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg, i32 0, i32 3
  %id24 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg, i32 0, i32 2
  %def = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg, i32 0, i32 8
  %max = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg, i32 0, i32 6
  %min = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg, i32 0, i32 5
  %11 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.183, ptr %name21, align 4
  %12 = ptrtoint ptr %id24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9968113, ptr %id24, align 8
  %conv = sext i32 %call5 to i64
  %13 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %def, align 8
  %14 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %max, align 8
  %15 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %min, align 8
  %16 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler28 = getelementptr inbounds %struct.ccs_subdev, ptr %17, i32 0, i32 9
  %call29 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler28, ptr noundef nonnull %ctrl_cfg, ptr noundef null) #10
  %18 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.184, ptr %name21, align 4
  %19 = ptrtoint ptr %id24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 9968114, ptr %id24, align 8
  %conv.1 = sext i32 %call9 to i64
  %20 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.1, ptr %def, align 8
  %21 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.1, ptr %max, align 8
  %22 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.1, ptr %min, align 8
  %23 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler28.1 = getelementptr inbounds %struct.ccs_subdev, ptr %24, i32 0, i32 9
  %call29.1 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler28.1, ptr noundef nonnull %ctrl_cfg, ptr noundef null) #10
  %25 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.185, ptr %name21, align 4
  %26 = ptrtoint ptr %id24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 9968115, ptr %id24, align 8
  %conv.2 = sext i32 %call14 to i64
  %27 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv.2, ptr %def, align 8
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv.2, ptr %max, align 8
  %29 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.2, ptr %min, align 8
  %30 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler28.2 = getelementptr inbounds %struct.ccs_subdev, ptr %31, i32 0, i32 9
  %call29.2 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler28.2, ptr noundef nonnull %ctrl_cfg, ptr noundef null) #10
  %32 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.186, ptr %name21, align 4
  %33 = ptrtoint ptr %id24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9968116, ptr %id24, align 8
  %conv.3 = sext i32 %call19 to i64
  %34 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.3, ptr %def, align 8
  %35 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.3, ptr %max, align 8
  %36 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv.3, ptr %min, align 8
  %37 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler28.3 = getelementptr inbounds %struct.ccs_subdev, ptr %38, i32 0, i32 9
  %call29.3 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler28.3, ptr noundef nonnull %ctrl_cfg, ptr noundef null) #10
  %39 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler31 = getelementptr inbounds %struct.ccs_subdev, ptr %40, i32 0, i32 9
  %call32 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 5, i32 noundef 0)
  %conv33 = zext i32 %call32 to i64
  %call34 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 6, i32 noundef 0)
  %conv35 = zext i32 %call34 to i64
  %call36 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 7, i32 noundef 0)
  %41 = call i32 @llvm.umax.i32(i32 %call36, i32 1)
  %conv40 = zext i32 %41 to i64
  %call41 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 5, i32 noundef 0)
  %conv42 = zext i32 %call41 to i64
  %call43 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler31, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356995, i64 noundef %conv33, i64 noundef %conv35, i64 noundef %conv40, i64 noundef %conv42) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %ctrl_cfg) #10
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 13, i32 noundef 0)
  %call53 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 14, i32 noundef 0)
  %call55 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 15, i32 noundef 0)
  %42 = tail call i32 @llvm.umax.i32(i32 %call55, i32 1)
  %call68 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 16, i32 noundef 0)
  %call71 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 17, i32 noundef 0)
  %call74 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 18, i32 noundef 0)
  %43 = tail call i32 @llvm.umax.i32(i32 %call74, i32 1)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %ctrl_cfg83) #10
  %44 = call ptr @memcpy(ptr %ctrl_cfg83, ptr @__const.ccs_init_controls.ctrl_cfg.189, i32 112)
  %name91 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg83, i32 0, i32 3
  %def95 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg83, i32 0, i32 8
  %min96 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg83, i32 0, i32 5
  %max100 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg83, i32 0, i32 6
  %step104 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg83, i32 0, i32 7
  %id107 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %ctrl_cfg83, i32 0, i32 2
  %45 = ptrtoint ptr %name91 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.187, ptr %name91, align 4
  %conv51.mask = and i32 %call50, 65535
  %conv94 = zext i32 %conv51.mask to i64
  %46 = ptrtoint ptr %def95 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv94, ptr %def95, align 8
  %47 = ptrtoint ptr %min96 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv94, ptr %min96, align 8
  %conv54.mask = and i32 %call53, 65535
  %conv99 = zext i32 %conv54.mask to i64
  %48 = ptrtoint ptr %max100 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv99, ptr %max100, align 8
  %.mask = and i32 %42, 65535
  %conv103 = zext i32 %.mask to i64
  %49 = ptrtoint ptr %step104 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv103, ptr %step104, align 8
  %50 = ptrtoint ptr %id107 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 9968117, ptr %id107, align 8
  %51 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler109 = getelementptr inbounds %struct.ccs_subdev, ptr %52, i32 0, i32 9
  %call110 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler109, ptr noundef nonnull %ctrl_cfg83, ptr noundef null) #10
  %53 = ptrtoint ptr %name91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.188, ptr %name91, align 4
  %conv69.mask = and i32 %call68, 65535
  %conv94.1 = zext i32 %conv69.mask to i64
  %54 = ptrtoint ptr %def95 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv94.1, ptr %def95, align 8
  %55 = ptrtoint ptr %min96 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv94.1, ptr %min96, align 8
  %conv72.mask = and i32 %call71, 65535
  %conv99.1 = zext i32 %conv72.mask to i64
  %56 = ptrtoint ptr %max100 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv99.1, ptr %max100, align 8
  %.mask335 = and i32 %43, 65535
  %conv103.1 = zext i32 %.mask335 to i64
  %57 = ptrtoint ptr %step104 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv103.1, ptr %step104, align 8
  %58 = ptrtoint ptr %id107 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9968118, ptr %id107, align 8
  %59 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler109.1 = getelementptr inbounds %struct.ccs_subdev, ptr %60, i32 0, i32 9
  %call110.1 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler109.1, ptr noundef nonnull %ctrl_cfg83, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %ctrl_cfg83) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb, %if.end.sw.epilog_crit_edge
  %call114 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 209, i32 noundef 0)
  %and = and i32 %call114, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  br i1 %tobool115.not, label %sw.epilog.if.end121_crit_edge, label %if.then116

sw.epilog.if.end121_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then116:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %ctrl_cfg117) #10
  %61 = call ptr @memcpy(ptr %ctrl_cfg117, ptr @__const.ccs_init_controls.ctrl_cfg.191, i32 112)
  %62 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler119 = getelementptr inbounds %struct.ccs_subdev, ptr %63, i32 0, i32 9
  %call120 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler119, ptr noundef nonnull %ctrl_cfg117, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %ctrl_cfg117) #10
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %sw.epilog.if.end121_crit_edge
  %call122 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 209, i32 noundef 0)
  %and123 = and i32 %call122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end121.if.end130_crit_edge, label %if.then125

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %ctrl_cfg126) #10
  %64 = call ptr @memcpy(ptr %ctrl_cfg126, ptr @__const.ccs_init_controls.ctrl_cfg.193, i32 112)
  %65 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler128 = getelementptr inbounds %struct.ccs_subdev, ptr %66, i32 0, i32 9
  %call129 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler128, ptr noundef nonnull %ctrl_cfg126, ptr noundef null) #10
  %luminance_level = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 44
  %67 = ptrtoint ptr %luminance_level to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call129, ptr %luminance_level, align 4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %ctrl_cfg126) #10
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %if.end121.if.end130_crit_edge
  %call131 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 27, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call131)
  %cmp132 = icmp eq i32 %call131, 2
  br i1 %cmp132, label %if.end130.if.then137_crit_edge, label %lor.lhs.false

if.end130.if.then137_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

lor.lhs.false:                                    ; preds = %if.end130
  %call134 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 27, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call134)
  %cmp135 = icmp eq i32 %call134, 1
  br i1 %cmp135, label %lor.lhs.false.if.then137_crit_edge, label %lor.lhs.false.if.end154_crit_edge

lor.lhs.false.if.end154_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

lor.lhs.false.if.then137_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

if.then137:                                       ; preds = %lor.lhs.false.if.then137_crit_edge, %if.end130.if.then137_crit_edge
  %68 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler139 = getelementptr inbounds %struct.ccs_subdev, ptr %69, i32 0, i32 9
  %call140 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 28, i32 noundef 0)
  %conv141 = zext i32 %call140 to i64
  %call142 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 29, i32 noundef 0)
  %conv143 = zext i32 %call142 to i64
  %call144 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 30, i32 noundef 0)
  %70 = call i32 @llvm.umax.i32(i32 %call144, i32 1)
  %conv152 = zext i32 %70 to i64
  %call153 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler139, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10422533, i64 noundef %conv141, i64 noundef %conv143, i64 noundef %conv152, i64 noundef 256) #10
  br label %if.end154

if.end154:                                        ; preds = %if.then137, %lor.lhs.false.if.end154_crit_edge
  %71 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler156 = getelementptr inbounds %struct.ccs_subdev, ptr %72, i32 0, i32 9
  %call157 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler156, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 0) #10
  %exposure = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 38
  %73 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call157, ptr %exposure, align 4
  %74 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler159 = getelementptr inbounds %struct.ccs_subdev, ptr %75, i32 0, i32 9
  %call160 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler159, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %hflip = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 39
  %76 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call160, ptr %hflip, align 4
  %77 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler162 = getelementptr inbounds %struct.ccs_subdev, ptr %78, i32 0, i32 9
  %call163 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler162, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %vflip = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 40
  %79 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call163, ptr %vflip, align 4
  %80 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler165 = getelementptr inbounds %struct.ccs_subdev, ptr %81, i32 0, i32 9
  %call166 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler165, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356993, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %vblank = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 41
  %82 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call166, ptr %vblank, align 4
  %tobool168.not = icmp eq ptr %call166, null
  br i1 %tobool168.not, label %if.end154.if.end171_crit_edge, label %if.then169

if.end154.if.end171_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then169:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call166, i32 0, i32 20
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  %or = or i32 %84, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end154.if.end171_crit_edge
  %85 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler173 = getelementptr inbounds %struct.ccs_subdev, ptr %86, i32 0, i32 9
  %call174 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler173, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356994, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %hblank = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 42
  %87 = ptrtoint ptr %hblank to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call174, ptr %hblank, align 4
  %tobool176.not = icmp eq ptr %call174, null
  br i1 %tobool176.not, label %if.end171.if.end181_crit_edge, label %if.then177

if.end171.if.end181_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end181

if.then177:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  %flags179 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call174, i32 0, i32 20
  %88 = ptrtoint ptr %flags179 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags179, align 4
  %or180 = or i32 %89, 8
  store i32 %or180, ptr %flags179, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then177, %if.end171.if.end181_crit_edge
  %90 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler183 = getelementptr inbounds %struct.ccs_subdev, ptr %91, i32 0, i32 9
  %call184 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler183, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #10
  %pixel_rate_parray = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 43
  %92 = ptrtoint ptr %pixel_rate_parray to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call184, ptr %pixel_rate_parray, align 4
  %93 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler186 = getelementptr inbounds %struct.ccs_subdev, ptr %94, i32 0, i32 9
  %call187 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler186, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ccs_test_patterns) #10
  %95 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pixel_array, align 4
  %error = getelementptr inbounds %struct.ccs_subdev, ptr %96, i32 0, i32 9, i32 9
  %97 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool190.not = icmp eq i32 %98, 0
  br i1 %tobool190.not, label %if.end198, label %do.end

do.end:                                           ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.194, i32 noundef %98) #13
  %99 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pixel_array, align 4
  %error197 = getelementptr inbounds %struct.ccs_subdev, ptr %100, i32 0, i32 9, i32 9
  %101 = ptrtoint ptr %error197 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %error197, align 4
  br label %cleanup

if.end198:                                        ; preds = %if.end181
  %ctrl_handler189 = getelementptr inbounds %struct.ccs_subdev, ptr %96, i32 0, i32 9
  %ctrl_handler203 = getelementptr inbounds %struct.v4l2_subdev, ptr %96, i32 0, i32 8
  %103 = ptrtoint ptr %ctrl_handler203 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %ctrl_handler189, ptr %ctrl_handler203, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %hflip) #10
  %104 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %src, align 4
  %ctrl_handler207 = getelementptr inbounds %struct.ccs_subdev, ptr %105, i32 0, i32 9
  %call208 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler207, i32 noundef 0, ptr noundef nonnull @ccs_init_controls._key.196, ptr noundef nonnull @.str.197) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %if.end198.cleanup_crit_edge

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end211:                                        ; preds = %if.end198
  %106 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %src, align 4
  %lock215 = getelementptr inbounds %struct.ccs_subdev, ptr %107, i32 0, i32 9, i32 1
  %108 = ptrtoint ptr %lock215 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %sensor, ptr %lock215, align 4
  %109 = load ptr, ptr %src, align 4
  %ctrl_handler217 = getelementptr inbounds %struct.ccs_subdev, ptr %109, i32 0, i32 9
  %call218 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler217, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #10
  %pixel_rate_csi = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 46
  %110 = ptrtoint ptr %pixel_rate_csi to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call218, ptr %pixel_rate_csi, align 4
  %111 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %src, align 4
  %error221 = getelementptr inbounds %struct.ccs_subdev, ptr %112, i32 0, i32 9, i32 9
  %113 = ptrtoint ptr %error221 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %error221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool222.not = icmp eq i32 %114, 0
  br i1 %tobool222.not, label %if.end234, label %do.end226

do.end226:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %dev227 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev227, ptr noundef nonnull @.str.199, i32 noundef %114) #13
  %115 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %src, align 4
  %error233 = getelementptr inbounds %struct.ccs_subdev, ptr %116, i32 0, i32 9, i32 9
  %117 = ptrtoint ptr %error233 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %error233, align 4
  br label %cleanup

if.end234:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_handler220 = getelementptr inbounds %struct.ccs_subdev, ptr %112, i32 0, i32 9
  %ctrl_handler239 = getelementptr inbounds %struct.v4l2_subdev, ptr %112, i32 0, i32 8
  %119 = ptrtoint ptr %ctrl_handler239 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %ctrl_handler220, ptr %ctrl_handler239, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %do.end226, %if.end198.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %102, %do.end ], [ %118, %do.end226 ], [ 0, %if.end234 ], [ %call1, %entry.cleanup_crit_edge ], [ %call208, %if.end198.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_get_mbus_formats(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  %pixel_order = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %pll1 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixel_order) #10
  %4 = ptrtoint ptr %pixel_order to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pixel_order, align 4, !annotation !501
  %call2 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 19, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_mbus_formats, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !502

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_mbus_formats.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.215, i32 noundef %call2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call i32 @ccs_read_addr(ptr noundef %sensor, i32 noundef 6, ptr noundef nonnull %pixel_order) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup263_crit_edge

do.end.cleanup263_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup263

if.end9:                                          ; preds = %do.end
  %5 = ptrtoint ptr %pixel_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixel_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ugt i32 %6, 3
  br i1 %cmp, label %do.body11, label %do.body29

do.body11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_mbus_formats, %if.then23)) #10
          to label %cleanup263 [label %if.then23], !srcloc !502

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %pixel_order to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixel_order, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_mbus_formats.__UNIQUE_ID_ddebug315, ptr noundef %dev24, ptr noundef nonnull @.str.216, i32 noundef %8) #10
  br label %cleanup263

do.body29:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_mbus_formats, %if.then41)) #10
          to label %do.end45 [label %if.then41], !srcloc !502

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %pixel_order to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixel_order, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @pixel_order_str, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_mbus_formats.__UNIQUE_ID_ddebug316, ptr noundef %dev42, ptr noundef nonnull @.str.217, i32 noundef %10, ptr noundef %12) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %13 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %call2, label %do.end45.cleanup263_crit_edge [
    i32 1, label %do.end45.sw.epilog_crit_edge
    i32 2, label %sw.bb46
  ]

do.end45.sw.epilog_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end45.cleanup263_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup263

sw.bb46:                                          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb46, %do.end45.sw.epilog_crit_edge
  %n.0 = phi i32 [ 16, %sw.bb46 ], [ 8, %do.end45.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %pixel_order to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_order, align 4
  %default_pixel_order = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 19
  %16 = ptrtoint ptr %default_pixel_order to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %default_pixel_order, align 4
  %mbus_frame_fmts = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 15
  %17 = ptrtoint ptr %mbus_frame_fmts to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mbus_frame_fmts, align 4
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %default_mbus_frame_fmts = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %sw.epilog
  %i.0382 = phi i32 [ 0, %sw.epilog ], [ %inc105, %for.end.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0382, 1
  %call48 = call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 21, i32 noundef %mul)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_mbus_formats, %if.then61)) #10
          to label %do.end66 [label %if.then61], !srcloc !502

if.then61:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %call48, 8
  %conv63 = and i32 %call48, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_mbus_formats.__UNIQUE_ID_ddebug317, ptr noundef %dev62, ptr noundef nonnull @.str.218, i32 noundef %i.0382, i32 noundef %shr, i32 noundef %conv63) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %for.body
  %shr79 = lshr i32 %call48, 8
  %18 = trunc i32 %call48 to i8
  br label %for.body70

for.body70:                                       ; preds = %cleanup.for.body70_crit_edge, %do.end66
  %j.0380 = phi i32 [ 0, %do.end66 ], [ %inc, %cleanup.for.body70_crit_edge ]
  %19 = lshr i32 1118481, %j.0380
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp74.not.not = icmp eq i32 %20, 0
  br i1 %cmp74.not.not, label %for.body70.cleanup_crit_edge, label %if.end77

for.body70.cleanup_crit_edge:                     ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end77:                                         ; preds = %for.body70
  %width = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %j.0380, i32 1
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %width, align 4
  %conv78 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr79, i32 %conv78)
  %cmp80.not = icmp eq i32 %shr79, %conv78
  br i1 %cmp80.not, label %lor.lhs.false, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end77
  %compressed = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %j.0380, i32 2
  %23 = ptrtoint ptr %compressed to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %compressed, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %18)
  %cmp83.not = icmp eq i8 %24, %18
  br i1 %cmp83.not, label %do.body87, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body87:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_mbus_formats, %if.then99)) #10
          to label %do.end103 [label %if.then99], !srcloc !502

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_mbus_formats.__UNIQUE_ID_ddebug318, ptr noundef %dev62, ptr noundef nonnull @.str.219, i32 noundef %j.0380) #10
  br label %do.end103

do.end103:                                        ; preds = %if.then99, %do.body87
  %shl = shl nuw nsw i32 1, %j.0380
  %25 = ptrtoint ptr %default_mbus_frame_fmts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %default_mbus_frame_fmts, align 4
  %or = or i32 %26, %shl
  store i32 %or, ptr %default_mbus_frame_fmts, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %lor.lhs.false.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %for.body70.cleanup_crit_edge
  %inc = add nuw nsw i32 %j.0380, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body70_crit_edge

cleanup.for.body70_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body70

for.end:                                          ; preds = %cleanup
  %inc105 = add nuw nsw i32 %i.0382, 1
  %exitcond394.not = icmp eq i32 %inc105, %n.0
  br i1 %exitcond394.not, label %for.end106, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end106:                                       ; preds = %for.end
  %binning_horizontal = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 4
  %27 = ptrtoint ptr %binning_horizontal to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %binning_horizontal, align 4
  %binning_vertical = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 5
  %28 = ptrtoint ptr %binning_vertical to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %binning_vertical, align 1
  %scale_m = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 24
  %29 = ptrtoint ptr %scale_m to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scale_m, align 2
  %scale_m107 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 6
  %31 = ptrtoint ptr %scale_m107 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %scale_m107, align 2
  %compressed_min_bpp = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 34
  br label %for.body111

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %for.end106
  %i.1384 = phi i32 [ 0, %for.end106 ], [ %inc138, %for.body111.for.body111_crit_edge ]
  %compressed113 = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %i.1384, i32 2
  %32 = ptrtoint ptr %compressed113 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %compressed113, align 1
  %34 = ptrtoint ptr %compressed_min_bpp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %compressed_min_bpp, align 4
  %36 = call i8 @llvm.umin.i8(i8 %33, i8 %35)
  %37 = ptrtoint ptr %compressed_min_bpp to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %compressed_min_bpp, align 4
  %inc138 = add nuw nsw i32 %i.1384, 1
  %exitcond395.not = icmp eq i32 %inc138, 24
  br i1 %exitcond395.not, label %for.end139, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body111

for.end139:                                       ; preds = %for.body111
  %38 = ptrtoint ptr %compressed_min_bpp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %compressed_min_bpp, align 4
  %conv143 = zext i8 %39 to i32
  %add = sub nsw i32 17, %conv143
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #10
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !503

devm_kcalloc.exit.thread:                         ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #12
  %valid_link_freqs377 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 37
  %42 = ptrtoint ptr %valid_link_freqs377 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %valid_link_freqs377, align 4
  br label %cleanup263

devm_kcalloc.exit:                                ; preds = %for.end139
  %43 = extractvalue { i32, i1 } %40, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev62, i32 noundef %43, i32 noundef 3520) #10
  %valid_link_freqs = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 37
  %44 = ptrtoint ptr %valid_link_freqs to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i, ptr %valid_link_freqs, align 4
  %tobool146.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool146.not, label %devm_kcalloc.exit.cleanup263_crit_edge, label %for.cond149.preheader

devm_kcalloc.exit.cleanup263_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup263

for.cond149.preheader:                            ; preds = %devm_kcalloc.exit
  %bits_per_pixel = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 8
  %op_sys_clock = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 5
  %link_freq = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 11
  %csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 16
  %internal_csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 17
  br label %for.body152

for.body152:                                      ; preds = %cleanup247.for.body152_crit_edge, %for.cond149.preheader
  %i.2390 = phi i32 [ 0, %for.cond149.preheader ], [ %inc253, %cleanup247.for.body152_crit_edge ]
  %arrayidx154 = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %i.2390
  %45 = ptrtoint ptr %valid_link_freqs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %valid_link_freqs, align 4
  %compressed157 = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %i.2390, i32 2
  %47 = ptrtoint ptr %compressed157 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %compressed157, align 1
  %conv158 = zext i8 %48 to i32
  %49 = ptrtoint ptr %compressed_min_bpp to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %compressed_min_bpp, align 4
  %conv160 = zext i8 %50 to i32
  %sub161 = sub nsw i32 %conv158, %conv160
  %arrayidx162 = getelementptr i32, ptr %46, i32 %sub161
  %51 = ptrtoint ptr %default_mbus_frame_fmts to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %default_mbus_frame_fmts, align 4
  %shl165 = shl nuw nsw i32 1, %i.2390
  %and166 = and i32 %52, %shl165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %for.body152.cleanup247_crit_edge, label %if.end169

for.body152.cleanup247_crit_edge:                 ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

if.end169:                                        ; preds = %for.body152
  %53 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %48, ptr %bits_per_pixel, align 4
  %54 = ptrtoint ptr %op_sys_clock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %op_sys_clock, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %55, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool173.not387 = icmp eq i64 %57, 0
  br i1 %tobool173.not387, label %if.end169.for.end207_crit_edge, label %for.body174.preheader

if.end169.for.end207_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end207

for.body174.preheader:                            ; preds = %if.end169
  %extract.t393 = trunc i64 %57 to i32
  br label %for.body174

for.body174:                                      ; preds = %for.inc205.for.body174_crit_edge, %for.body174.preheader
  %.off0 = phi i32 [ %extract.t, %for.inc205.for.body174_crit_edge ], [ %extract.t393, %for.body174.preheader ]
  %j163.0388 = phi i32 [ %inc206, %for.inc205.for.body174_crit_edge ], [ 0, %for.body174.preheader ]
  %58 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.off0, ptr %link_freq, align 4
  %call179 = call fastcc i32 @ccs_pll_try(ptr noundef %sensor, ptr noundef %pll1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_get_mbus_formats, %if.then192)) #10
          to label %do.end201 [label %if.then192], !srcloc !502

if.then192:                                       ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %link_freq, align 4
  %61 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bits_per_pixel, align 4
  %conv196 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool197.not = icmp eq i32 %call179, 0
  %cond198 = select i1 %tobool197.not, ptr @.str.222, ptr @.str.221
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_get_mbus_formats.__UNIQUE_ID_ddebug323, ptr noundef %dev62, ptr noundef nonnull @.str.220, i32 noundef %60, i32 noundef %conv196, ptr noundef nonnull %cond198) #10
  br label %do.end201

do.end201:                                        ; preds = %if.then192, %for.body174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool202.not = icmp eq i32 %call179, 0
  br i1 %tobool202.not, label %if.end204, label %do.end201.for.inc205_crit_edge

do.end201.for.inc205_crit_edge:                   ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc205

if.end204:                                        ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %j163.0388, ptr noundef %arrayidx162) #10
  br label %for.inc205

for.inc205:                                       ; preds = %if.end204, %do.end201.for.inc205_crit_edge
  %inc206 = add i32 %j163.0388, 1
  %63 = ptrtoint ptr %op_sys_clock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %op_sys_clock, align 4
  %arrayidx172 = getelementptr i64, ptr %64, i32 %inc206
  %65 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx172, align 8
  %tobool173.not = icmp eq i64 %66, 0
  %extract.t = trunc i64 %66 to i32
  br i1 %tobool173.not, label %for.inc205.for.end207_crit_edge, label %for.inc205.for.body174_crit_edge

for.inc205.for.body174_crit_edge:                 ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body174

for.inc205.for.end207_crit_edge:                  ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end207

for.end207:                                       ; preds = %for.inc205.for.end207_crit_edge, %if.end169.for.end207_crit_edge
  %67 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool208.not = icmp eq i32 %68, 0
  br i1 %tobool208.not, label %do.end212, label %if.end219

do.end212:                                        ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef nonnull @.str.223, i32 noundef %conv158) #13
  %neg = xor i32 %shl165, -1
  %69 = ptrtoint ptr %default_mbus_frame_fmts to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %default_mbus_frame_fmts, align 4
  %and218 = and i32 %70, %neg
  store i32 %and218, ptr %default_mbus_frame_fmts, align 4
  br label %cleanup247

if.end219:                                        ; preds = %for.end207
  %71 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %csi_format, align 4
  %tobool220.not = icmp eq ptr %72, null
  br i1 %tobool220.not, label %if.end219.if.then244_crit_edge, label %lor.lhs.false221

if.end219.if.then244_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then244

lor.lhs.false221:                                 ; preds = %if.end219
  %width222 = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %i.2390, i32 1
  %73 = ptrtoint ptr %width222 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %width222, align 4
  %width225 = getelementptr inbounds %struct.ccs_csi_data_format, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %width225 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %width225, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp227 = icmp ugt i8 %74, %76
  br i1 %cmp227, label %lor.lhs.false221.if.then244_crit_edge, label %lor.lhs.false229

lor.lhs.false221.if.then244_crit_edge:            ; preds = %lor.lhs.false221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then244

lor.lhs.false229:                                 ; preds = %lor.lhs.false221
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp235 = icmp eq i8 %74, %76
  br i1 %cmp235, label %land.lhs.true, label %lor.lhs.false229.cleanup247_crit_edge

lor.lhs.false229.cleanup247_crit_edge:            ; preds = %lor.lhs.false229
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

land.lhs.true:                                    ; preds = %lor.lhs.false229
  %compressed240 = getelementptr inbounds %struct.ccs_csi_data_format, ptr %72, i32 0, i32 2
  %77 = ptrtoint ptr %compressed240 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %compressed240, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %78)
  %cmp242 = icmp ugt i8 %48, %78
  br i1 %cmp242, label %land.lhs.true.if.then244_crit_edge, label %land.lhs.true.cleanup247_crit_edge

land.lhs.true.cleanup247_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

land.lhs.true.if.then244_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then244

if.then244:                                       ; preds = %land.lhs.true.if.then244_crit_edge, %lor.lhs.false221.if.then244_crit_edge, %if.end219.if.then244_crit_edge
  %79 = ptrtoint ptr %csi_format to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx154, ptr %csi_format, align 4
  %80 = ptrtoint ptr %internal_csi_format to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx154, ptr %internal_csi_format, align 4
  br label %cleanup247

cleanup247:                                       ; preds = %if.then244, %land.lhs.true.cleanup247_crit_edge, %lor.lhs.false229.cleanup247_crit_edge, %do.end212, %for.body152.cleanup247_crit_edge
  %inc253 = add nuw nsw i32 %i.2390, 1
  %exitcond396.not = icmp eq i32 %inc253, 24
  br i1 %exitcond396.not, label %for.end254, label %cleanup247.for.body152_crit_edge

cleanup247.for.body152_crit_edge:                 ; preds = %cleanup247
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body152

for.end254:                                       ; preds = %cleanup247
  %81 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %csi_format, align 4
  %tobool256.not = icmp eq ptr %82, null
  br i1 %tobool256.not, label %do.end260, label %if.end262

do.end260:                                        ; preds = %for.end254
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.225) #13
  br label %cleanup263

if.end262:                                        ; preds = %for.end254
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ccs_update_mbus_formats(ptr noundef %sensor)
  br label %cleanup263

cleanup263:                                       ; preds = %if.end262, %do.end260, %devm_kcalloc.exit.cleanup263_crit_edge, %devm_kcalloc.exit.thread, %do.end45.cleanup263_crit_edge, %if.then23, %do.body11, %do.end.cleanup263_crit_edge
  %retval.0 = phi i32 [ 0, %if.end262 ], [ -22, %do.end260 ], [ %call6, %do.end.cleanup263_crit_edge ], [ -22, %if.then23 ], [ -22, %do.end45.cleanup263_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup263_crit_edge ], [ -22, %do.body11 ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixel_order) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_init_late_controls(ptr nocapture noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %valid_link_freqs1 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 37
  %0 = ptrtoint ptr %valid_link_freqs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %valid_link_freqs1, align 4
  %csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 16
  %2 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csi_format, align 4
  %compressed = getelementptr inbounds %struct.ccs_csi_data_format, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %compressed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %compressed, align 1
  %compressed_min_bpp = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 34
  %6 = ptrtoint ptr %compressed_min_bpp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compressed_min_bpp, align 4
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 6
  %width = getelementptr inbounds %struct.ccs_csi_data_format, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 4
  %conv5 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv5
  %sub6 = xor i32 %notmask, -1
  %10 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler = getelementptr inbounds %struct.ccs_subdev, ptr %11, i32 0, i32 9
  %conv7 = sext i32 %sub6 to i64
  %call = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356996, i64 noundef 0, i64 noundef %conv7, i64 noundef 1, i64 noundef %conv7) #10
  %arrayidx9 = getelementptr %struct.ccs_sensor, ptr %sensor, i32 0, i32 47, i32 0
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %arrayidx9, align 4
  %13 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csi_format, align 4
  %width.1 = getelementptr inbounds %struct.ccs_csi_data_format, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %width.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %width.1, align 4
  %conv5.1 = zext i8 %16 to i32
  %notmask.1 = shl nsw i32 -1, %conv5.1
  %sub6.1 = xor i32 %notmask.1, -1
  %17 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler.1 = getelementptr inbounds %struct.ccs_subdev, ptr %18, i32 0, i32 9
  %conv7.1 = sext i32 %sub6.1 to i64
  %call.1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.1, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356997, i64 noundef 0, i64 noundef %conv7.1, i64 noundef 1, i64 noundef %conv7.1) #10
  %arrayidx9.1 = getelementptr %struct.ccs_sensor, ptr %sensor, i32 0, i32 47, i32 1
  %19 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.1, ptr %arrayidx9.1, align 4
  %20 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csi_format, align 4
  %width.2 = getelementptr inbounds %struct.ccs_csi_data_format, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %width.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width.2, align 4
  %conv5.2 = zext i8 %23 to i32
  %notmask.2 = shl nsw i32 -1, %conv5.2
  %sub6.2 = xor i32 %notmask.2, -1
  %24 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler.2 = getelementptr inbounds %struct.ccs_subdev, ptr %25, i32 0, i32 9
  %conv7.2 = sext i32 %sub6.2 to i64
  %call.2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.2, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356998, i64 noundef 0, i64 noundef %conv7.2, i64 noundef 1, i64 noundef %conv7.2) #10
  %arrayidx9.2 = getelementptr %struct.ccs_sensor, ptr %sensor, i32 0, i32 47, i32 2
  %26 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.2, ptr %arrayidx9.2, align 4
  %27 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csi_format, align 4
  %width.3 = getelementptr inbounds %struct.ccs_csi_data_format, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %width.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %width.3, align 4
  %conv5.3 = zext i8 %30 to i32
  %notmask.3 = shl nsw i32 -1, %conv5.3
  %sub6.3 = xor i32 %notmask.3, -1
  %31 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pixel_array, align 4
  %ctrl_handler.3 = getelementptr inbounds %struct.ccs_subdev, ptr %32, i32 0, i32 9
  %conv7.3 = sext i32 %sub6.3 to i64
  %call.3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.3, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10356999, i64 noundef 0, i64 noundef %conv7.3, i64 noundef 1, i64 noundef %conv7.3) #10
  %arrayidx9.3 = getelementptr %struct.ccs_sensor, ptr %sensor, i32 0, i32 47, i32 3
  %33 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.3, ptr %arrayidx9.3, align 4
  %conv = zext i8 %5 to i32
  %conv2 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx = getelementptr i32, ptr %1, i32 %sub
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %34 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src, align 4
  %ctrl_handler10 = getelementptr inbounds %struct.ccs_subdev, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %38 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 false) #10, !range !507
  %39 = trunc i32 %38 to i8
  %conv12 = sub nsw i8 31, %39
  %40 = tail call i32 @llvm.cttz.i32(i32 %37, i1 false) #10, !range !507
  %conv14 = trunc i32 %40 to i8
  %op_sys_clock = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 5
  %41 = ptrtoint ptr %op_sys_clock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %op_sys_clock, align 4
  %call15 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler10, ptr noundef nonnull @ccs_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext %conv12, i8 noundef zeroext %conv14, ptr noundef %42) #10
  %link_freq = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 45
  %43 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call15, ptr %link_freq, align 4
  %44 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src, align 4
  %error = getelementptr inbounds %struct.ccs_subdev, ptr %45, i32 0, i32 9, i32 9
  %46 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error, align 4
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_pll_blanking_update(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %pll1.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36
  %binning_horizontal.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 22
  %4 = ptrtoint ptr %binning_horizontal.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %binning_horizontal.i, align 4
  %binning_horizontal2.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 4
  %6 = ptrtoint ptr %binning_horizontal2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %binning_horizontal2.i, align 4
  %binning_vertical.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 23
  %7 = ptrtoint ptr %binning_vertical.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %binning_vertical.i, align 1
  %binning_vertical3.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 5
  %9 = ptrtoint ptr %binning_vertical3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %binning_vertical3.i, align 1
  %link_freq.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 45
  %10 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_freq.i, align 4
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 19
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %arrayidx.i = getelementptr i64, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %18 to i32
  %link_freq5.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 11
  %19 = ptrtoint ptr %link_freq5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %link_freq5.i, align 4
  %scale_m.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 24
  %20 = ptrtoint ptr %scale_m.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scale_m.i, align 2
  %scale_m6.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 6
  %22 = ptrtoint ptr %scale_m6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %scale_m6.i, align 2
  %csi_format.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 16
  %23 = ptrtoint ptr %csi_format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csi_format.i, align 4
  %compressed.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %compressed.i, align 1
  %bits_per_pixel.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 8
  %27 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %bits_per_pixel.i, align 4
  %call.i = tail call fastcc i32 @ccs_pll_try(ptr noundef %sensor, ptr noundef %pll1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_rate_parray.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 43
  %28 = ptrtoint ptr %pixel_rate_parray.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pixel_rate_parray.i, align 4
  %pixel_rate_pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 18
  %30 = ptrtoint ptr %pixel_rate_pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pixel_rate_pixel_array.i, align 4
  %conv8.i = zext i32 %31 to i64
  %call9.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %29, i64 noundef %conv8.i) #10
  %pixel_rate_csi.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 46
  %32 = ptrtoint ptr %pixel_rate_csi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pixel_rate_csi.i, align 4
  %pixel_rate_csi10.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 17
  %34 = ptrtoint ptr %pixel_rate_csi10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pixel_rate_csi10.i, align 4
  %conv11.i = zext i32 %35 to i64
  %call12.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %33, i64 noundef %conv11.i) #10
  %vblank1.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 41
  %36 = ptrtoint ptr %vblank1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vblank1.i, align 4
  %hblank2.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 42
  %38 = ptrtoint ptr %hblank2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hblank2.i, align 4
  %40 = ptrtoint ptr %binning_vertical.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %binning_vertical.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp.i72 = icmp ugt i8 %41, 1
  br i1 %cmp.i72, label %if.end.ccs_update_blanking.exit_crit_edge, label %lor.lhs.false.i

if.end.ccs_update_blanking.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_update_blanking.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %42 = ptrtoint ptr %binning_horizontal.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %binning_horizontal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp5.i = icmp ugt i8 %43, 1
  br i1 %cmp5.i, label %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge, label %if.else.i

lor.lhs.false.i.ccs_update_blanking.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_update_blanking.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_update_blanking.exit

ccs_update_blanking.exit:                         ; preds = %if.else.i, %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge, %if.end.ccs_update_blanking.exit_crit_edge
  %.sink96.i = phi i32 [ 56, %if.else.i ], [ 194, %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge ], [ 194, %if.end.ccs_update_blanking.exit_crit_edge ]
  %.sink95.i = phi i32 [ 57, %if.else.i ], [ 195, %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge ], [ 195, %if.end.ccs_update_blanking.exit_crit_edge ]
  %.sink94.i = phi i32 [ 58, %if.else.i ], [ 196, %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge ], [ 196, %if.end.ccs_update_blanking.exit_crit_edge ]
  %.sink93.i = phi i32 [ 59, %if.else.i ], [ 197, %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge ], [ 197, %if.end.ccs_update_blanking.exit_crit_edge ]
  %.sink.i = phi i32 [ 60, %if.else.i ], [ 198, %lor.lhs.false.i.ccs_update_blanking.exit_crit_edge ], [ 198, %if.end.ccs_update_blanking.exit_crit_edge ]
  %call16.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef %.sink96.i, i32 noundef 0) #10
  %call18.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef %.sink95.i, i32 noundef 0) #10
  %call20.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef %.sink94.i, i32 noundef 0) #10
  %call22.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef %.sink93.i, i32 noundef 0) #10
  %call24.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef %.sink.i, i32 noundef 0) #10
  %call26.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 61, i32 noundef 0) #10
  %conv27.i = and i32 %call16.i, 65535
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 6
  %44 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pixel_array.i, align 4
  %height.i = getelementptr inbounds %struct.ccs_subdev, ptr %45, i32 0, i32 3, i32 0, i32 3
  %46 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %conv27.i, %47
  %48 = tail call i32 @llvm.smax.i32(i32 %call26.i, i32 %sub.i) #10
  %conv30.i = and i32 %call18.i, 65535
  %sub35.i = sub i32 %conv30.i, %47
  %conv36.i = sext i32 %48 to i64
  %conv37.i = sext i32 %sub35.i to i64
  %49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 18
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %call39.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %37, i64 noundef %conv36.i, i64 noundef %conv37.i, i64 noundef %51, i64 noundef %conv36.i) #10
  %conv40.i = and i32 %call20.i, 65535
  %52 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pixel_array.i, align 4
  %width.i = getelementptr inbounds %struct.ccs_subdev, ptr %53, i32 0, i32 3, i32 0, i32 2
  %54 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width.i, align 4
  %sub44.i = sub i32 %conv40.i, %55
  %conv45.i = and i32 %call24.i, 65535
  %56 = tail call i32 @llvm.smax.i32(i32 %sub44.i, i32 %conv45.i) #10
  %conv53.i = and i32 %call22.i, 65535
  %sub58.i = sub i32 %conv53.i, %55
  %conv5992.i = zext i32 %56 to i64
  %conv60.i = sext i32 %sub58.i to i64
  %57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 18
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %call62.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %39, i64 noundef %conv5992.i, i64 noundef %conv60.i, i64 noundef %59, i64 noundef %conv5992.i) #10
  %exposure.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 38
  %60 = ptrtoint ptr %exposure.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %exposure.i.i, align 4
  %62 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pixel_array.i, align 4
  %height.i.i = getelementptr inbounds %struct.ccs_subdev, ptr %63, i32 0, i32 3, i32 0, i32 3
  %64 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height.i.i, align 4
  %66 = ptrtoint ptr %vblank1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vblank1.i, align 4
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %67, i32 0, i32 22
  %68 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val.i.i, align 4
  %add.i.i = add i32 %69, %65
  %call.i.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 24, i32 noundef 0) #10
  %sub.i.i = sub i32 %add.i.i, %call.i.i
  %minimum.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 11
  %70 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %minimum.i.i, align 8
  %conv.i.i = sext i32 %sub.i.i to i64
  %72 = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 18
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %72, align 8
  %call2.i.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %61, i64 noundef %71, i64 noundef %conv.i.i, i64 noundef %74, i64 noundef %conv.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_blanking_update.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_blanking_update, %if.then5)) #10
          to label %do.body7 [label %if.then5], !srcloc !502

if.then5:                                         ; preds = %ccs_update_blanking.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %75 = ptrtoint ptr %vblank1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vblank1.i, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %76, i32 0, i32 22
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_blanking_update.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.228, i32 noundef %78) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %ccs_update_blanking.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_blanking_update.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_blanking_update, %if.then19)) #10
          to label %do.body25 [label %if.then19], !srcloc !502

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %79 = ptrtoint ptr %hblank2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hblank2.i, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %80, i32 0, i32 22
  %81 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_blanking_update.__UNIQUE_ID_ddebug329, ptr noundef %dev20, ptr noundef nonnull @.str.229, i32 noundef %82) #10
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_blanking_update.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_blanking_update, %if.then37)) #10
          to label %cleanup [label %if.then37], !srcloc !502

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %83 = ptrtoint ptr %pixel_rate_pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pixel_rate_pixel_array.i, align 4
  %85 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pixel_array.i, align 4
  %width = getelementptr inbounds %struct.ccs_subdev, ptr %86, i32 0, i32 3, i32 0, i32 2
  %87 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %width, align 4
  %89 = ptrtoint ptr %hblank2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hblank2.i, align 4
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %90, i32 0, i32 22
  %91 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val40, align 4
  %add = add i32 %92, %88
  %height = getelementptr inbounds %struct.ccs_subdev, ptr %86, i32 0, i32 3, i32 0, i32 3
  %93 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height, align 4
  %95 = ptrtoint ptr %vblank1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vblank1.i, align 4
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %96, i32 0, i32 22
  %97 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val45, align 4
  %add46 = add i32 %98, %94
  %mul = mul i32 %add46, %add
  %div = udiv i32 %mul, 100
  %div47 = udiv i32 %84, %div
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_blanking_update.__UNIQUE_ID_ddebug330, ptr noundef %dev38, ptr noundef nonnull @.str.230, i32 noundef %div47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then37 ], [ 0, %do.body25 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_write_msr_regs(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_manufacturer_regs = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 20, i32 4
  %0 = ptrtoint ptr %sensor_manufacturer_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor_manufacturer_regs, align 4
  %num_sensor_manufacturer_regs = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %num_sensor_manufacturer_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sensor_manufacturer_regs, align 4
  %call = tail call i32 @ccs_write_data_regs(ptr noundef %sensor, ptr noundef %1, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %module_manufacturer_regs = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 21, i32 10
  %4 = ptrtoint ptr %module_manufacturer_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_manufacturer_regs, align 4
  %num_module_manufacturer_regs = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 21, i32 9
  %6 = ptrtoint ptr %num_module_manufacturer_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_module_manufacturer_regs, align 4
  %call3 = tail call i32 @ccs_write_data_regs(ptr noundef %sensor, ptr noundef %5, i32 noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !508
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !509
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !510
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_set_stream(ptr nocapture noundef readonly %subdev, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %streaming = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streaming, align 2, !range !506
  %8 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %enable)
  %cmp = icmp eq i32 %8, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %call1.i = tail call i32 @ccs_write_addr(ptr noundef %1, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.ccs_stop_streaming.exit_crit_edge

if.then4.ccs_stop_streaming.exit_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

if.end.i:                                         ; preds = %if.then4
  %quirk.i = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 35, i32 16
  %9 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %quirk.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.ccs_stop_streaming.exit_crit_edge, label %land.lhs.true.i

if.end.i.ccs_stop_streaming.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %post_streamoff.i = getelementptr inbounds %struct.ccs_quirk, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %post_streamoff.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %post_streamoff.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.ccs_stop_streaming.exit_crit_edge, label %cond.true.i

land.lhs.true.i.ccs_stop_streaming.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

cond.true.i:                                      ; preds = %land.lhs.true.i
  %call9.i = tail call i32 %12(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %phi.cmp.i = icmp eq i32 %call9.i, 0
  br i1 %phi.cmp.i, label %cond.true.i.ccs_stop_streaming.exit_crit_edge, label %do.end.i

cond.true.i.ccs_stop_streaming.exit_crit_edge:    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

do.end.i:                                         ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.73) #13
  br label %ccs_stop_streaming.exit

ccs_stop_streaming.exit:                          ; preds = %do.end.i, %cond.true.i.ccs_stop_streaming.exit_crit_edge, %land.lhs.true.i.ccs_stop_streaming.exit_crit_edge, %if.end.i.ccs_stop_streaming.exit_crit_edge, %if.then4.ccs_stop_streaming.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #10
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %streaming, align 2
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i40 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev.i43 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i43, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end9.ccs_pm_get_init.exit_crit_edge, label %if.end.i44

if.end9.ccs_pm_get_init.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

if.end.i44:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp2.i, label %if.end.i44.if.end13_crit_edge, label %if.end4.i

if.end.i44.if.end13_crit_edge:                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end4.i:                                        ; preds = %if.end.i44
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pixel_array.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ccs_subdev, ptr %16, i32 0, i32 9
  %call5.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i45 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i45, label %if.end7.i, label %if.end4.i.ccs_pm_get_init.exit_crit_edge

if.end4.i.ccs_pm_get_init.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

if.end7.i:                                        ; preds = %if.end4.i
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src, align 4
  %ctrl_handler9.i = getelementptr inbounds %struct.ccs_subdev, ptr %18, i32 0, i32 9
  %call10.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.if.end13_crit_edge, label %if.end7.i.ccs_pm_get_init.exit_crit_edge

if.end7.i.ccs_pm_get_init.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

if.end7.i.if.end13_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

ccs_pm_get_init.exit:                             ; preds = %if.end7.i.ccs_pm_get_init.exit_crit_edge, %if.end4.i.ccs_pm_get_init.exit_crit_edge, %if.end9.ccs_pm_get_init.exit_crit_edge
  %rval.0.i = phi i32 [ %call.i.i, %if.end9.ccs_pm_get_init.exit_crit_edge ], [ %call5.i, %if.end4.i.ccs_pm_get_init.exit_crit_edge ], [ %call10.i, %if.end7.i.ccs_pm_get_init.exit_crit_edge ]
  %call.i24.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i43, i32 noundef 5) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.if.end13_crit_edge, %if.end.i44.if.end13_crit_edge
  %19 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %streaming, align 2
  %call15 = tail call fastcc i32 @ccs_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %streaming, align 2
  %call.i46 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i47 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i47 to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i46, ptr %last_busy.i47, align 8
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev.i43, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end13.cleanup_crit_edge, %ccs_pm_get_init.exit, %ccs_stop_streaming.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ccs_stop_streaming.exit ], [ 0, %entry.cleanup_crit_edge ], [ %rval.0.i, %ccs_pm_get_init.exit ], [ %call15, %if.then18 ], [ %call15, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_pre_streamon(ptr nocapture noundef readonly %subdev, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %csi_signalling_mode = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 7, i32 4
  %6 = ptrtoint ptr %csi_signalling_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csi_signalling_mode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %7, label %if.then.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %call2 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 173, i32 noundef 0)
  %and3 = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6:                                           ; preds = %if.then
  %call7 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 173, i32 noundef 0)
  %and8 = and i32 %call7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.if.end12_crit_edge

sw.bb6.if.end12_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %sw.bb6.if.end12_crit_edge, %sw.bb.if.end12_crit_edge, %entry.if.end12_crit_edge
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end12.cleanup.sink.split_crit_edge, label %if.end.i

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp2.i, label %if.end.i.ccs_pm_get_init.exit_crit_edge, label %if.end4.i

if.end.i.ccs_pm_get_init.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

if.end4.i:                                        ; preds = %if.end.i
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pixel_array.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ccs_subdev, ptr %14, i32 0, i32 9
  %call5.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end4.i.cleanup.sink.split_crit_edge

if.end4.i.cleanup.sink.split_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7.i:                                        ; preds = %if.end4.i
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 4
  %ctrl_handler9.i = getelementptr inbounds %struct.ccs_subdev, ptr %16, i32 0, i32 9
  %call10.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.ccs_pm_get_init.exit_crit_edge, label %if.end7.i.cleanup.sink.split_crit_edge

if.end7.i.cleanup.sink.split_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7.i.ccs_pm_get_init.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_pm_get_init.exit

ccs_pm_get_init.exit:                             ; preds = %if.end7.i.ccs_pm_get_init.exit_crit_edge, %if.end.i.ccs_pm_get_init.exit_crit_edge
  br i1 %tobool.not, label %ccs_pm_get_init.exit.cleanup_crit_edge, label %if.then19

ccs_pm_get_init.exit.cleanup_crit_edge:           ; preds = %ccs_pm_get_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %ccs_pm_get_init.exit
  %call20 = tail call i32 @ccs_write_addr(ptr noundef %1, i32 noundef 2089, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.cleanup_crit_edge, label %if.then22

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then22, %if.end7.i.cleanup.sink.split_crit_edge, %if.end4.i.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge
  %dev.i.sink = phi ptr [ %dev, %if.then22 ], [ %dev.i, %if.end12.cleanup.sink.split_crit_edge ], [ %dev.i, %if.end4.i.cleanup.sink.split_crit_edge ], [ %dev.i, %if.end7.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call20, %if.then22 ], [ %call.i.i, %if.end12.cleanup.sink.split_crit_edge ], [ %call5.i, %if.end4.i.cleanup.sink.split_crit_edge ], [ %call10.i, %if.end7.i.cleanup.sink.split_crit_edge ]
  %call.i24.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i.sink, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then19.cleanup_crit_edge, %ccs_pm_get_init.exit.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %sw.bb.cleanup_crit_edge ], [ -13, %sw.bb6.cleanup_crit_edge ], [ -13, %if.then.cleanup_crit_edge ], [ 0, %ccs_pm_get_init.exit.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_post_streamoff(ptr nocapture noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_start_streaming(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %sensor, i32 noundef 0) #10
  %csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 16
  %4 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi_format, align 4
  %width = getelementptr inbounds %struct.ccs_csi_data_format, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %compressed = getelementptr inbounds %struct.ccs_csi_data_format, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %compressed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %compressed, align 1
  %conv2 = zext i8 %9 to i32
  %or = or i32 %shl, %conv2
  %call3 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 65810, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %binning_horizontal = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 22
  %10 = ptrtoint ptr %binning_horizontal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %binning_horizontal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %binning_vertical = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 23
  %12 = ptrtoint ptr %binning_vertical to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %binning_vertical, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp7 = icmp eq i8 %13, 1
  br i1 %cmp7, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %shl12 = shl i8 %11, 4
  %binning_vertical13 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 23
  %14 = ptrtoint ptr %binning_vertical13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %binning_vertical13, align 1
  %or15 = or i8 %15, %shl12
  %conv17 = zext i8 %or15 to i32
  %call18 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 2305, i32 noundef %conv17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.else.out_crit_edge, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge
  %binning_mode.1 = phi i32 [ 1, %if.else.if.end23_crit_edge ], [ 0, %land.lhs.true.if.end23_crit_edge ]
  %call24 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 2304, i32 noundef %binning_mode.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.out_crit_edge, label %if.end28

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end28:                                         ; preds = %if.end23
  %pix_clk_div.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 14, i32 1
  %16 = ptrtoint ptr %pix_clk_div.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pix_clk_div.i, align 2
  %conv.i = zext i16 %17 to i32
  %call.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66304, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end28.out_crit_edge, label %if.end.i

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.end28
  %vt_bk.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 14
  %18 = ptrtoint ptr %vt_bk.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vt_bk.i, align 4
  %conv4.i = zext i16 %19 to i32
  %call5.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66306, i32 noundef %conv4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.out_crit_edge, label %if.end9.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9.i:                                        ; preds = %if.end.i
  %vt_fr.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 13
  %20 = ptrtoint ptr %vt_fr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vt_fr.i, align 4
  %conv10.i = zext i16 %21 to i32
  %call11.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66308, i32 noundef %conv10.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end9.i.out_crit_edge, label %if.end15.i

if.end9.i.out_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15.i:                                       ; preds = %if.end9.i
  %pll_multiplier.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 13, i32 1
  %22 = ptrtoint ptr %pll_multiplier.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pll_multiplier.i, align 2
  %conv17.i = zext i16 %23 to i32
  %call18.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66310, i32 noundef %conv17.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end15.i.out_crit_edge, label %if.end22.i

if.end15.i.out_crit_edge:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22.i:                                       ; preds = %if.end15.i
  %call23.i = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 156, i32 noundef 0) #10
  %and.i = and i32 %call23.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then24.i, label %if.end22.i.if.end40.i_crit_edge

if.end22.i.if.end40.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then24.i:                                      ; preds = %if.end22.i
  %sys_clk_freq_hz.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 16, i32 2
  %24 = ptrtoint ptr %sys_clk_freq_hz.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sys_clk_freq_hz.i, align 4
  %sub.i = add i32 %25, 14
  %div.i = udiv i32 %sub.i, 15
  %flags.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 10
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags.i, align 2
  %28 = and i16 %27, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool27.not.i = icmp eq i16 %28, 0
  br i1 %tobool27.not.i, label %if.then24.i.cond.end.i_crit_edge, label %cond.true.i

if.then24.i.cond.end.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %csi2.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 3
  %29 = ptrtoint ptr %csi2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %csi2.i, align 1
  %conv29.i = zext i8 %30 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then24.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv29.i, %cond.true.i ], [ 1, %if.then24.i.cond.end.i_crit_edge ]
  %mul.i = mul i32 %cond.i, %div.i
  %31 = lshr i16 %27, 9
  %.lobit.i = and i16 %31, 1
  %32 = zext i16 %.lobit.i to i32
  %shl.i = shl i32 %mul.i, %32
  %call35.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 133152, i32 noundef %shl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %cond.end.i.out_crit_edge, label %cond.end.i.if.end40.i_crit_edge

cond.end.i.if.end40.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

cond.end.i.out_crit_edge:                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end40.i:                                       ; preds = %cond.end.i.if.end40.i_crit_edge, %if.end22.i.if.end40.i_crit_edge
  %flags42.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 10
  %33 = ptrtoint ptr %flags42.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags42.i, align 2
  %35 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool45.not.i = icmp eq i16 %35, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end40.i.if.end32_crit_edge

if.end40.i.if.end32_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end47.i:                                       ; preds = %if.end40.i
  %pix_clk_div49.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 16, i32 1
  %36 = ptrtoint ptr %pix_clk_div49.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pix_clk_div49.i, align 2
  %conv50.i = zext i16 %37 to i32
  %call51.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66312, i32 noundef %conv50.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end47.i.out_crit_edge, label %if.end55.i

if.end47.i.out_crit_edge:                         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end55.i:                                       ; preds = %if.end47.i
  %op_bk48.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 16
  %38 = ptrtoint ptr %op_bk48.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %op_bk48.i, align 4
  %conv58.i = zext i16 %39 to i32
  %call59.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66314, i32 noundef %conv58.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end55.i.out_crit_edge, label %if.end63.i

if.end55.i.out_crit_edge:                         ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end63.i:                                       ; preds = %if.end55.i
  %40 = ptrtoint ptr %flags42.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags42.i, align 2
  %42 = and i16 %41, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool67.not.i = icmp eq i16 %42, 0
  br i1 %tobool67.not.i, label %if.end63.i.if.end32_crit_edge, label %if.end69.i

if.end63.i.if.end32_crit_edge:                    ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end69.i:                                       ; preds = %if.end63.i
  %call70.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 784, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp71.i = icmp slt i32 %call70.i, 0
  br i1 %cmp71.i, label %if.end69.i.out_crit_edge, label %if.end74.i

if.end69.i.out_crit_edge:                         ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end74.i:                                       ; preds = %if.end69.i
  %op_fr.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 15
  %43 = ptrtoint ptr %op_fr.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %op_fr.i, align 4
  %conv76.i = zext i16 %44 to i32
  %call77.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66316, i32 noundef %conv76.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %if.end74.i.out_crit_edge, label %ccs_pll_configure.exit

if.end74.i.out_crit_edge:                         ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ccs_pll_configure.exit:                           ; preds = %if.end74.i
  %pll_multiplier83.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 15, i32 1
  %45 = ptrtoint ptr %pll_multiplier83.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pll_multiplier83.i, align 2
  %conv84.i = zext i16 %46 to i32
  %call85.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66318, i32 noundef %conv84.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool30.not = icmp eq i32 %call85.i, 0
  br i1 %tobool30.not, label %ccs_pll_configure.exit.if.end32_crit_edge, label %ccs_pll_configure.exit.out_crit_edge

ccs_pll_configure.exit.out_crit_edge:             ; preds = %ccs_pll_configure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ccs_pll_configure.exit.if.end32_crit_edge:        ; preds = %ccs_pll_configure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end32:                                         ; preds = %ccs_pll_configure.exit.if.end32_crit_edge, %if.end63.i.if.end32_crit_edge, %if.end40.i.if.end32_crit_edge
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 6
  %47 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pixel_array, align 4
  %crop = getelementptr inbounds %struct.ccs_subdev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crop, align 4
  %call33 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66372, i32 noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.out_crit_edge, label %if.end37

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end37:                                         ; preds = %if.end32
  %51 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pixel_array, align 4
  %top = getelementptr inbounds %struct.ccs_subdev, ptr %52, i32 0, i32 3, i32 0, i32 1
  %53 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %top, align 4
  %call41 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66374, i32 noundef %54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end37.out_crit_edge, label %if.end45

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end45:                                         ; preds = %if.end37
  %55 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pixel_array, align 4
  %crop47 = getelementptr inbounds %struct.ccs_subdev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %crop47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crop47, align 4
  %width53 = getelementptr inbounds %struct.ccs_subdev, ptr %56, i32 0, i32 3, i32 0, i32 2
  %59 = ptrtoint ptr %width53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %width53, align 4
  %add = add i32 %58, -1
  %sub = add i32 %add, %60
  %call54 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66376, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end45.out_crit_edge, label %if.end58

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end58:                                         ; preds = %if.end45
  %61 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pixel_array, align 4
  %top62 = getelementptr inbounds %struct.ccs_subdev, ptr %62, i32 0, i32 3, i32 0, i32 1
  %63 = ptrtoint ptr %top62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %top62, align 4
  %height = getelementptr inbounds %struct.ccs_subdev, ptr %62, i32 0, i32 3, i32 0, i32 3
  %65 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height, align 4
  %add66 = add i32 %64, -1
  %sub67 = add i32 %add66, %66
  %call68 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66378, i32 noundef %sub67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end58.out_crit_edge, label %if.end72

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end72:                                         ; preds = %if.end58
  %call73 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 127, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 1
  br i1 %cmp74, label %if.then76, label %if.end72.if.end112_crit_edge

if.end72.if.end112_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then76:                                        ; preds = %if.end72
  %scaler = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 5
  %67 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scaler, align 4
  %crop77 = getelementptr inbounds %struct.ccs_subdev, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %crop77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crop77, align 4
  %call80 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66568, i32 noundef %70) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then76.out_crit_edge, label %if.end84

if.then76.out_crit_edge:                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end84:                                         ; preds = %if.then76
  %71 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %scaler, align 4
  %top88 = getelementptr inbounds %struct.ccs_subdev, ptr %72, i32 0, i32 3, i32 0, i32 1
  %73 = ptrtoint ptr %top88 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %top88, align 4
  %call89 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66570, i32 noundef %74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end84.out_crit_edge, label %if.end93

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end93:                                         ; preds = %if.end84
  %75 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scaler, align 4
  %width97 = getelementptr inbounds %struct.ccs_subdev, ptr %76, i32 0, i32 3, i32 0, i32 2
  %77 = ptrtoint ptr %width97 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %width97, align 4
  %call98 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66572, i32 noundef %78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end93.out_crit_edge, label %if.end102

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end102:                                        ; preds = %if.end93
  %79 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scaler, align 4
  %height106 = getelementptr inbounds %struct.ccs_subdev, ptr %80, i32 0, i32 3, i32 0, i32 3
  %81 = ptrtoint ptr %height106 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height106, align 4
  %call107 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66574, i32 noundef %82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.end102.out_crit_edge, label %if.end102.if.end112_crit_edge

if.end102.if.end112_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end112:                                        ; preds = %if.end102.if.end112_crit_edge, %if.end72.if.end112_crit_edge
  %call113 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 122, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114.not = icmp eq i32 %call113, 0
  br i1 %cmp114.not, label %if.end112.if.end129_crit_edge, label %if.then116

if.end112.if.end129_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then116:                                       ; preds = %if.end112
  %scaling_mode = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 25
  %83 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %scaling_mode, align 1
  %conv117 = zext i8 %84 to i32
  %call118 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66560, i32 noundef %conv117) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then116.out_crit_edge, label %if.end122

if.then116.out_crit_edge:                         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end122:                                        ; preds = %if.then116
  %scale_m = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 24
  %85 = ptrtoint ptr %scale_m to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %scale_m, align 2
  %conv123 = zext i8 %86 to i32
  %call124 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66564, i32 noundef %conv123) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.end122.out_crit_edge, label %if.end122.if.end129_crit_edge

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end129:                                        ; preds = %if.end122.if.end129_crit_edge, %if.end112.if.end129_crit_edge
  %87 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %src, align 4
  %width133 = getelementptr %struct.ccs_subdev, ptr %88, i32 0, i32 3, i32 1, i32 2
  %89 = ptrtoint ptr %width133 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %width133, align 4
  %call134 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66380, i32 noundef %90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.end129.out_crit_edge, label %if.end138

if.end129.out_crit_edge:                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end138:                                        ; preds = %if.end129
  %91 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %src, align 4
  %height142 = getelementptr %struct.ccs_subdev, ptr %92, i32 0, i32 3, i32 1, i32 3
  %93 = ptrtoint ptr %height142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height142, align 4
  %call143 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 66382, i32 noundef %94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.end138.out_crit_edge, label %if.end147

if.end138.out_crit_edge:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end147:                                        ; preds = %if.end138
  %call148 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 219, i32 noundef 0)
  %and = and i32 %call148, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool149.not = icmp eq i32 %and, 0
  br i1 %tobool149.not, label %if.end147.if.end164_crit_edge, label %land.lhs.true150

if.end147.if.end164_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

land.lhs.true150:                                 ; preds = %if.end147
  %strobe_setup = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 7
  %95 = ptrtoint ptr %strobe_setup to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %strobe_setup, align 4
  %cmp151.not = icmp eq ptr %96, null
  br i1 %cmp151.not, label %land.lhs.true150.if.end164_crit_edge, label %land.lhs.true153

land.lhs.true150.if.end164_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

land.lhs.true153:                                 ; preds = %land.lhs.true150
  %trigger = getelementptr inbounds %struct.ccs_flash_strobe_parms, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %trigger, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp157.not = icmp eq i8 %98, 0
  br i1 %cmp157.not, label %land.lhs.true153.if.end164_crit_edge, label %if.then159

land.lhs.true153.if.end164_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then159:                                       ; preds = %land.lhs.true153
  %call160 = tail call fastcc i32 @ccs_setup_flash_strobe(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then159.if.end164_crit_edge, label %if.then159.out_crit_edge

if.then159.out_crit_edge:                         ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then159.if.end164_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.end164:                                        ; preds = %if.then159.if.end164_crit_edge, %land.lhs.true153.if.end164_crit_edge, %land.lhs.true150.if.end164_crit_edge, %if.end147.if.end164_crit_edge
  %quirk = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 16
  %99 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %quirk, align 4
  %tobool165.not = icmp eq ptr %100, null
  br i1 %tobool165.not, label %if.end164.if.end176_crit_edge, label %land.lhs.true166

if.end164.if.end176_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

land.lhs.true166:                                 ; preds = %if.end164
  %pre_streamon = getelementptr inbounds %struct.ccs_quirk, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %pre_streamon to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pre_streamon, align 4
  %tobool169.not = icmp eq ptr %102, null
  br i1 %tobool169.not, label %land.lhs.true166.if.end176_crit_edge, label %cond.end

land.lhs.true166.if.end176_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

cond.end:                                         ; preds = %land.lhs.true166
  %call173 = tail call i32 %102(ptr noundef %sensor) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %cond.end.if.end176_crit_edge, label %do.end

cond.end.if.end176_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #13
  br label %out

if.end176:                                        ; preds = %cond.end.if.end176_crit_edge, %land.lhs.true166.if.end176_crit_edge, %if.end164.if.end176_crit_edge
  %call177 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 256, i32 noundef 1) #10
  br label %out

out:                                              ; preds = %if.end176, %do.end, %if.then159.out_crit_edge, %if.end138.out_crit_edge, %if.end129.out_crit_edge, %if.end122.out_crit_edge, %if.then116.out_crit_edge, %if.end102.out_crit_edge, %if.end93.out_crit_edge, %if.end84.out_crit_edge, %if.then76.out_crit_edge, %if.end58.out_crit_edge, %if.end45.out_crit_edge, %if.end37.out_crit_edge, %if.end32.out_crit_edge, %ccs_pll_configure.exit.out_crit_edge, %if.end74.i.out_crit_edge, %if.end69.i.out_crit_edge, %if.end55.i.out_crit_edge, %if.end47.i.out_crit_edge, %cond.end.i.out_crit_edge, %if.end15.i.out_crit_edge, %if.end9.i.out_crit_edge, %if.end.i.out_crit_edge, %if.end28.out_crit_edge, %if.end23.out_crit_edge, %if.else.out_crit_edge, %entry.out_crit_edge
  %rval.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call24, %if.end23.out_crit_edge ], [ %call85.i, %ccs_pll_configure.exit.out_crit_edge ], [ %call33, %if.end32.out_crit_edge ], [ %call41, %if.end37.out_crit_edge ], [ %call54, %if.end45.out_crit_edge ], [ %call68, %if.end58.out_crit_edge ], [ %call80, %if.then76.out_crit_edge ], [ %call89, %if.end84.out_crit_edge ], [ %call98, %if.end93.out_crit_edge ], [ %call107, %if.end102.out_crit_edge ], [ %call118, %if.then116.out_crit_edge ], [ %call124, %if.end122.out_crit_edge ], [ %call134, %if.end129.out_crit_edge ], [ %call143, %if.end138.out_crit_edge ], [ %call160, %if.then159.out_crit_edge ], [ %call173, %do.end ], [ %call177, %if.end176 ], [ %call18, %if.else.out_crit_edge ], [ %call77.i, %if.end74.i.out_crit_edge ], [ %call70.i, %if.end69.i.out_crit_edge ], [ %call59.i, %if.end55.i.out_crit_edge ], [ %call51.i, %if.end47.i.out_crit_edge ], [ %call35.i, %cond.end.i.out_crit_edge ], [ %call18.i, %if.end15.i.out_crit_edge ], [ %call11.i, %if.end9.i.out_crit_edge ], [ %call5.i, %if.end.i.out_crit_edge ], [ %call.i, %if.end28.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sensor) #10
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_setup_flash_strobe(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_clk = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ext_clk, align 4
  %strobe_setup2 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %strobe_setup2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %strobe_setup2, align 4
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 16711424000001) #15, !srcloc !511
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t116 = trunc i64 %asmresult1.i.i.i to i32
  %strobe_width_high_us = getelementptr inbounds %struct.ccs_flash_strobe_parms, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %strobe_width_high_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %strobe_width_high_us, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %extract.t116)
  %9 = ptrtoint ptr %strobe_width_high_us to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %strobe_width_high_us, align 4
  %conv14 = zext i32 %8 to i64
  %conv15 = zext i32 %1 to i64
  %mul = mul nuw i64 %conv14, %conv15
  %sub = add nuw i64 %mul, 999999
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub) #15, !srcloc !512
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub, i64 %10, i32 0) #15, !srcloc !513
  %asmresult10.i.i.i103 = extractvalue { i64, i32 } %11, 0
  %div158.i.i108113 = lshr i64 %asmresult10.i.i.i103, 18
  %conv17 = trunc i64 %div158.i.i108113 to i32
  %sub20 = add i32 %conv17, 65534
  %div = udiv i32 %sub20, 65535
  %add21 = add i32 %conv17, -1
  %sub22 = add i32 %add21, %div
  %div23 = udiv i32 %sub22, %div
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 4
  %conv24 = zext i8 %13 to i32
  %call25 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 3098, i32 noundef %conv24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call28 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 3090, i32 noundef %div) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end.out_crit_edge, label %if.end32

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end32:                                         ; preds = %if.end
  %call33 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 68632, i32 noundef %div23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.out_crit_edge, label %if.end37

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end37:                                         ; preds = %if.end32
  %strobe_delay = getelementptr inbounds %struct.ccs_flash_strobe_parms, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %strobe_delay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %strobe_delay, align 4
  %conv38 = zext i16 %15 to i32
  %call39 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 68630, i32 noundef %conv38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end37.out_crit_edge, label %if.end43

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end43:                                         ; preds = %if.end37
  %stobe_start_point = getelementptr inbounds %struct.ccs_flash_strobe_parms, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %stobe_start_point to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %stobe_start_point, align 2
  %conv44 = zext i16 %17 to i32
  %call45 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 68628, i32 noundef %conv44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.out_crit_edge, label %if.end49

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %trigger = getelementptr inbounds %struct.ccs_flash_strobe_parms, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %trigger, align 4
  %conv50 = zext i8 %19 to i32
  %call51 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 3099, i32 noundef %conv50) #10
  br label %out

out:                                              ; preds = %if.end49, %if.end43.out_crit_edge, %if.end37.out_crit_edge, %if.end32.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rval.0 = phi i32 [ %call25, %entry.out_crit_edge ], [ %call28, %if.end.out_crit_edge ], [ %call33, %if.end32.out_crit_edge ], [ %call39, %if.end37.out_crit_edge ], [ %call45, %if.end43.out_crit_edge ], [ %call51, %if.end49 ]
  %20 = ptrtoint ptr %strobe_setup2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %strobe_setup2, align 4
  %trigger54 = getelementptr inbounds %struct.ccs_flash_strobe_parms, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %trigger54 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %trigger54, align 4
  ret i32 %rval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccs_get_skip_top_lines(ptr nocapture noundef readonly %subdev, ptr nocapture noundef writeonly %lines) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %image_start = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %image_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %image_start, align 2
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %lines to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %lines, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccs_get_skip_frames(ptr nocapture noundef readonly %subdev, ptr nocapture noundef writeonly %frames) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %frame_skip = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %frame_skip to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frame_skip, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_enum_mbus_code(ptr noundef %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %2 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor1, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %5, i32 noundef %7) #13
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 4
  %cmp.not = icmp eq ptr %9, %subdev
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3.not = icmp eq i32 %11, 1
  br i1 %cmp3.not, label %for.cond.preheader, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.preheader:                               ; preds = %lor.lhs.false
  %mbus_frame_fmts = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %mbus_frame_fmts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbus_frame_fmts, align 4
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = and i32 %13, 1
  %spec.select = add nsw i32 %16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %15)
  %cmp14 = icmp eq i32 %spec.select, %15
  br i1 %cmp14, label %for.cond.preheader.if.then15_crit_edge, label %for.inc

for.cond.preheader.if.then15_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %internal_csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 17
  %19 = ptrtoint ptr %internal_csi_format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %internal_csi_format, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %code7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %23 = ptrtoint ptr %code7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code7, align 4
  br label %out

if.then15:                                        ; preds = %for.inc.22.if.then15_crit_edge, %for.inc.21.if.then15_crit_edge, %for.inc.20.if.then15_crit_edge, %for.inc.19.if.then15_crit_edge, %for.inc.18.if.then15_crit_edge, %for.inc.17.if.then15_crit_edge, %for.inc.16.if.then15_crit_edge, %for.inc.15.if.then15_crit_edge, %for.inc.14.if.then15_crit_edge, %for.inc.13.if.then15_crit_edge, %for.inc.12.if.then15_crit_edge, %for.inc.11.if.then15_crit_edge, %for.inc.10.if.then15_crit_edge, %for.inc.9.if.then15_crit_edge, %for.inc.8.if.then15_crit_edge, %for.inc.7.if.then15_crit_edge, %for.inc.6.if.then15_crit_edge, %for.inc.5.if.then15_crit_edge, %for.inc.4.if.then15_crit_edge, %for.inc.3.if.then15_crit_edge, %for.inc.2.if.then15_crit_edge, %for.inc.1.if.then15_crit_edge, %for.inc.if.then15_crit_edge, %for.cond.preheader.if.then15_crit_edge
  %i.049.lcssa = phi i32 [ 0, %for.cond.preheader.if.then15_crit_edge ], [ 1, %for.inc.if.then15_crit_edge ], [ 2, %for.inc.1.if.then15_crit_edge ], [ 3, %for.inc.2.if.then15_crit_edge ], [ 4, %for.inc.3.if.then15_crit_edge ], [ 5, %for.inc.4.if.then15_crit_edge ], [ 6, %for.inc.5.if.then15_crit_edge ], [ 7, %for.inc.6.if.then15_crit_edge ], [ 8, %for.inc.7.if.then15_crit_edge ], [ 9, %for.inc.8.if.then15_crit_edge ], [ 10, %for.inc.9.if.then15_crit_edge ], [ 11, %for.inc.10.if.then15_crit_edge ], [ 12, %for.inc.11.if.then15_crit_edge ], [ 13, %for.inc.12.if.then15_crit_edge ], [ 14, %for.inc.13.if.then15_crit_edge ], [ 15, %for.inc.14.if.then15_crit_edge ], [ 16, %for.inc.15.if.then15_crit_edge ], [ 17, %for.inc.16.if.then15_crit_edge ], [ 18, %for.inc.17.if.then15_crit_edge ], [ 19, %for.inc.18.if.then15_crit_edge ], [ 20, %for.inc.19.if.then15_crit_edge ], [ 21, %for.inc.20.if.then15_crit_edge ], [ 22, %for.inc.21.if.then15_crit_edge ], [ 23, %for.inc.22.if.then15_crit_edge ]
  %arrayidx = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %i.049.lcssa
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %code17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %26 = ptrtoint ptr %code17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %15, i32 noundef %i.049.lcssa, i32 noundef %25) #13
  br label %out

for.inc:                                          ; preds = %for.cond.preheader
  %27 = lshr i32 %13, 1
  %28 = and i32 %27, 1
  %spec.select.1 = add nsw i32 %28, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.1, i32 %15)
  %cmp14.1 = icmp eq i32 %spec.select.1, %15
  br i1 %cmp14.1, label %for.inc.if.then15_crit_edge, label %for.inc.1

for.inc.if.then15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.1:                                        ; preds = %for.inc
  %29 = lshr i32 %13, 2
  %30 = and i32 %29, 1
  %spec.select.2 = add nsw i32 %30, %spec.select.1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2, i32 %15)
  %cmp14.2 = icmp eq i32 %spec.select.2, %15
  br i1 %cmp14.2, label %for.inc.1.if.then15_crit_edge, label %for.inc.2

for.inc.1.if.then15_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.2:                                        ; preds = %for.inc.1
  %31 = lshr i32 %13, 3
  %32 = and i32 %31, 1
  %spec.select.3 = add nsw i32 %32, %spec.select.2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.3, i32 %15)
  %cmp14.3 = icmp eq i32 %spec.select.3, %15
  br i1 %cmp14.3, label %for.inc.2.if.then15_crit_edge, label %for.inc.3

for.inc.2.if.then15_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.3:                                        ; preds = %for.inc.2
  %33 = lshr i32 %13, 4
  %34 = and i32 %33, 1
  %spec.select.4 = add nsw i32 %34, %spec.select.3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.4, i32 %15)
  %cmp14.4 = icmp eq i32 %spec.select.4, %15
  br i1 %cmp14.4, label %for.inc.3.if.then15_crit_edge, label %for.inc.4

for.inc.3.if.then15_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.4:                                        ; preds = %for.inc.3
  %35 = lshr i32 %13, 5
  %36 = and i32 %35, 1
  %spec.select.5 = add nsw i32 %36, %spec.select.4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.5, i32 %15)
  %cmp14.5 = icmp eq i32 %spec.select.5, %15
  br i1 %cmp14.5, label %for.inc.4.if.then15_crit_edge, label %for.inc.5

for.inc.4.if.then15_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.5:                                        ; preds = %for.inc.4
  %37 = lshr i32 %13, 6
  %38 = and i32 %37, 1
  %spec.select.6 = add nsw i32 %38, %spec.select.5
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.6, i32 %15)
  %cmp14.6 = icmp eq i32 %spec.select.6, %15
  br i1 %cmp14.6, label %for.inc.5.if.then15_crit_edge, label %for.inc.6

for.inc.5.if.then15_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.6:                                        ; preds = %for.inc.5
  %39 = lshr i32 %13, 7
  %40 = and i32 %39, 1
  %spec.select.7 = add nsw i32 %40, %spec.select.6
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.7, i32 %15)
  %cmp14.7 = icmp eq i32 %spec.select.7, %15
  br i1 %cmp14.7, label %for.inc.6.if.then15_crit_edge, label %for.inc.7

for.inc.6.if.then15_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.7:                                        ; preds = %for.inc.6
  %41 = lshr i32 %13, 8
  %42 = and i32 %41, 1
  %spec.select.8 = add nsw i32 %42, %spec.select.7
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.8, i32 %15)
  %cmp14.8 = icmp eq i32 %spec.select.8, %15
  br i1 %cmp14.8, label %for.inc.7.if.then15_crit_edge, label %for.inc.8

for.inc.7.if.then15_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.8:                                        ; preds = %for.inc.7
  %43 = lshr i32 %13, 9
  %44 = and i32 %43, 1
  %spec.select.9 = add nsw i32 %44, %spec.select.8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.9, i32 %15)
  %cmp14.9 = icmp eq i32 %spec.select.9, %15
  br i1 %cmp14.9, label %for.inc.8.if.then15_crit_edge, label %for.inc.9

for.inc.8.if.then15_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.9:                                        ; preds = %for.inc.8
  %45 = lshr i32 %13, 10
  %46 = and i32 %45, 1
  %spec.select.10 = add nsw i32 %46, %spec.select.9
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.10, i32 %15)
  %cmp14.10 = icmp eq i32 %spec.select.10, %15
  br i1 %cmp14.10, label %for.inc.9.if.then15_crit_edge, label %for.inc.10

for.inc.9.if.then15_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.10:                                       ; preds = %for.inc.9
  %47 = lshr i32 %13, 11
  %48 = and i32 %47, 1
  %spec.select.11 = add nsw i32 %48, %spec.select.10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.11, i32 %15)
  %cmp14.11 = icmp eq i32 %spec.select.11, %15
  br i1 %cmp14.11, label %for.inc.10.if.then15_crit_edge, label %for.inc.11

for.inc.10.if.then15_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.11:                                       ; preds = %for.inc.10
  %49 = lshr i32 %13, 12
  %50 = and i32 %49, 1
  %spec.select.12 = add nsw i32 %50, %spec.select.11
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.12, i32 %15)
  %cmp14.12 = icmp eq i32 %spec.select.12, %15
  br i1 %cmp14.12, label %for.inc.11.if.then15_crit_edge, label %for.inc.12

for.inc.11.if.then15_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.12:                                       ; preds = %for.inc.11
  %51 = lshr i32 %13, 13
  %52 = and i32 %51, 1
  %spec.select.13 = add nsw i32 %52, %spec.select.12
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.13, i32 %15)
  %cmp14.13 = icmp eq i32 %spec.select.13, %15
  br i1 %cmp14.13, label %for.inc.12.if.then15_crit_edge, label %for.inc.13

for.inc.12.if.then15_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.13:                                       ; preds = %for.inc.12
  %53 = lshr i32 %13, 14
  %54 = and i32 %53, 1
  %spec.select.14 = add nsw i32 %54, %spec.select.13
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.14, i32 %15)
  %cmp14.14 = icmp eq i32 %spec.select.14, %15
  br i1 %cmp14.14, label %for.inc.13.if.then15_crit_edge, label %for.inc.14

for.inc.13.if.then15_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.14:                                       ; preds = %for.inc.13
  %55 = lshr i32 %13, 15
  %56 = and i32 %55, 1
  %spec.select.15 = add nsw i32 %56, %spec.select.14
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.15, i32 %15)
  %cmp14.15 = icmp eq i32 %spec.select.15, %15
  br i1 %cmp14.15, label %for.inc.14.if.then15_crit_edge, label %for.inc.15

for.inc.14.if.then15_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.15:                                       ; preds = %for.inc.14
  %57 = lshr i32 %13, 16
  %58 = and i32 %57, 1
  %spec.select.16 = add nsw i32 %58, %spec.select.15
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.16, i32 %15)
  %cmp14.16 = icmp eq i32 %spec.select.16, %15
  br i1 %cmp14.16, label %for.inc.15.if.then15_crit_edge, label %for.inc.16

for.inc.15.if.then15_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.16:                                       ; preds = %for.inc.15
  %59 = lshr i32 %13, 17
  %60 = and i32 %59, 1
  %spec.select.17 = add nsw i32 %60, %spec.select.16
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.17, i32 %15)
  %cmp14.17 = icmp eq i32 %spec.select.17, %15
  br i1 %cmp14.17, label %for.inc.16.if.then15_crit_edge, label %for.inc.17

for.inc.16.if.then15_crit_edge:                   ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.17:                                       ; preds = %for.inc.16
  %61 = lshr i32 %13, 18
  %62 = and i32 %61, 1
  %spec.select.18 = add nsw i32 %62, %spec.select.17
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.18, i32 %15)
  %cmp14.18 = icmp eq i32 %spec.select.18, %15
  br i1 %cmp14.18, label %for.inc.17.if.then15_crit_edge, label %for.inc.18

for.inc.17.if.then15_crit_edge:                   ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.18:                                       ; preds = %for.inc.17
  %63 = lshr i32 %13, 19
  %64 = and i32 %63, 1
  %spec.select.19 = add nsw i32 %64, %spec.select.18
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.19, i32 %15)
  %cmp14.19 = icmp eq i32 %spec.select.19, %15
  br i1 %cmp14.19, label %for.inc.18.if.then15_crit_edge, label %for.inc.19

for.inc.18.if.then15_crit_edge:                   ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.19:                                       ; preds = %for.inc.18
  %65 = lshr i32 %13, 20
  %66 = and i32 %65, 1
  %spec.select.20 = add nsw i32 %66, %spec.select.19
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.20, i32 %15)
  %cmp14.20 = icmp eq i32 %spec.select.20, %15
  br i1 %cmp14.20, label %for.inc.19.if.then15_crit_edge, label %for.inc.20

for.inc.19.if.then15_crit_edge:                   ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.20:                                       ; preds = %for.inc.19
  %67 = lshr i32 %13, 21
  %68 = and i32 %67, 1
  %spec.select.21 = add nsw i32 %68, %spec.select.20
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.21, i32 %15)
  %cmp14.21 = icmp eq i32 %spec.select.21, %15
  br i1 %cmp14.21, label %for.inc.20.if.then15_crit_edge, label %for.inc.21

for.inc.20.if.then15_crit_edge:                   ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.21:                                       ; preds = %for.inc.20
  %69 = lshr i32 %13, 22
  %70 = and i32 %69, 1
  %spec.select.22 = add nsw i32 %70, %spec.select.21
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.22, i32 %15)
  %cmp14.22 = icmp eq i32 %spec.select.22, %15
  br i1 %cmp14.22, label %for.inc.21.if.then15_crit_edge, label %for.inc.22

for.inc.21.if.then15_crit_edge:                   ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

for.inc.22:                                       ; preds = %for.inc.21
  %71 = lshr i32 %13, 23
  %72 = and i32 %71, 1
  %spec.select.23 = add nsw i32 %72, %spec.select.22
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.23, i32 %15)
  %cmp14.23 = icmp eq i32 %spec.select.23, %15
  br i1 %cmp14.23, label %for.inc.22.if.then15_crit_edge, label %for.inc.22.out_crit_edge

for.inc.22.out_crit_edge:                         ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.22.if.then15_crit_edge:                   ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

out:                                              ; preds = %for.inc.22.out_crit_edge, %if.then15, %if.end, %if.then.out_crit_edge
  %rval.0 = phi i32 [ -22, %if.then.out_crit_edge ], [ 0, %if.end ], [ 0, %if.then15 ], [ -22, %for.inc.22.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_get_format(ptr noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad.i, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !504

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  %10 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %__ccs_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pad1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %11 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad1.i, align 4
  %source_pad.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 6
  %13 = ptrtoint ptr %source_pad.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %source_pad.i, align 2
  %conv.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp2.i = icmp eq i32 %12, %conv.i
  %arrayidx.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %conv.i
  %sink_fmt.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2
  %r.0.i = select i1 %cmp2.i, ptr %arrayidx.i, ptr %sink_fmt.i
  %15 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sensor1, align 4
  %src.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src.i.i, align 4
  %cmp.i.i = icmp eq ptr %18, %subdev
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp2.i.i = icmp eq i32 %12, 1
  %or.cond.i.i = and i1 %cmp2.i.i, %cmp.i.i
  %csi_format.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %16, i32 0, i32 16
  %internal_csi_format.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %16, i32 0, i32 17
  %retval.0.in.in.i.i = select i1 %or.cond.i.i, ptr %csi_format.i.i, ptr %internal_csi_format.i.i
  %19 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %retval.0.in.i.i = load ptr, ptr %retval.0.in.in.i.i, align 4
  %20 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %format9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.i, ptr %code.i, align 4
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %r.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i, align 4
  %24 = ptrtoint ptr %format9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %format9.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %r.0.i, i32 0, i32 3
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %height13.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %height13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height13.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field.i, align 4
  br label %__ccs_get_format.exit

__ccs_get_format.exit:                            ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_set_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %crops = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crops) #10
  %2 = ptrtoint ptr %crops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %crops, align 4, !annotation !501
  %3 = getelementptr inbounds [2 x ptr], ptr %crops, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !501
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  %source_pad = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 6
  %7 = ptrtoint ptr %source_pad to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %source_pad, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp = icmp eq i32 %6, %conv
  %9 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor1, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %csi_format2.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %csi_format2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csi_format2.i, align 4
  %code3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code3.i, align 4
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  %format.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i.i, align 4
  %conv.i.i.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %6, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !504

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %6, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge ]
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %spec.select.i.i.i
  %21 = call ptr @memcpy(ptr %format.i.i, ptr %arrayidx.i.i.i, i32 48)
  br label %__ccs_get_format.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %src.i.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %23, %subdev
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2.i.i.i = icmp eq i32 %6, 1
  %or.cond.i.i.i = and i1 %cmp2.i.i.i, %cmp.i.i.i
  %internal_csi_format.i.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 17
  %retval.0.in.in.i.i.i = select i1 %or.cond.i.i.i, ptr %csi_format2.i, ptr %internal_csi_format.i.i.i
  %24 = ptrtoint ptr %retval.0.in.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %retval.0.in.i.i.i = load ptr, ptr %retval.0.in.in.i.i.i, align 4
  %25 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %format9.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %26 = ptrtoint ptr %code3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i.i.i, ptr %code3.i, align 4
  %width.i.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %6, i32 2
  %27 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width.i.i, align 4
  %29 = ptrtoint ptr %format9.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %format9.i.i, align 4
  %height.i.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %6, i32 3
  %30 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.i.i, align 4
  %height13.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %height13.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height13.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %field.i.i, align 4
  br label %__ccs_get_format.exit.i

__ccs_get_format.exit.i:                          ; preds = %if.else.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 3
  %34 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src.i, align 4
  %cmp.not.i = icmp eq ptr %35, %subdev
  br i1 %cmp.not.i, label %if.end5.i, label %__ccs_get_format.exit.i.cleanup_crit_edge

__ccs_get_format.exit.i.cleanup_crit_edge:        ; preds = %__ccs_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %__ccs_get_format.exit.i
  %mbus_frame_fmts.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 15
  %36 = ptrtoint ptr %mbus_frame_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mbus_frame_fmts.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end5.i
  %i.09.i.i = phi i32 [ 0, %if.end5.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.09.i.i
  %and.i.i = and i32 %shl.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx.i77.i = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %i.09.i.i
  %38 = ptrtoint ptr %arrayidx.i77.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i77.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %14)
  %cmp2.i78.i = icmp eq i32 %39, %14
  br i1 %cmp2.i78.i, label %land.lhs.true.i.i.ccs_validate_csi_data_format.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.ccs_validate_csi_data_format.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_validate_csi_data_format.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 24
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %csi_format2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csi_format2.i, align 4
  br label %ccs_validate_csi_data_format.exit.i

ccs_validate_csi_data_format.exit.i:              ; preds = %for.end.i.i, %land.lhs.true.i.i.ccs_validate_csi_data_format.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %41, %for.end.i.i ], [ %arrayidx.i77.i, %land.lhs.true.i.i.ccs_validate_csi_data_format.exit.i_crit_edge ]
  %42 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i.i, align 4
  %44 = ptrtoint ptr %code3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %code3.i, align 4
  %45 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp10.not.i = icmp eq i32 %46, 1
  br i1 %cmp10.not.i, label %if.end12.i, label %ccs_validate_csi_data_format.exit.i.cleanup_crit_edge

ccs_validate_csi_data_format.exit.i.cleanup_crit_edge: ; preds = %ccs_validate_csi_data_format.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.i:                                       ; preds = %ccs_validate_csi_data_format.exit.i
  %47 = ptrtoint ptr %csi_format2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i.i, ptr %csi_format2.i, align 4
  %width.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %retval.0.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %width.i, align 4
  %width14.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %12, i32 0, i32 1
  %50 = ptrtoint ptr %width14.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %width14.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp16.not.i = icmp eq i8 %49, %51
  br i1 %cmp16.not.i, label %if.end12.i.if.end25.i_crit_edge, label %for.body.preheader.i

if.end12.i.if.end25.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

for.body.preheader.i:                             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.ccs_sensor, ptr %10, i32 0, i32 47, i32 0
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %conv22.i = zext i8 %49 to i32
  %notmask.i = shl nsw i32 -1, %conv22.i
  %sub.i = xor i32 %notmask.i, -1
  %conv23.i = sext i32 %sub.i to i64
  %call24.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %53, i64 noundef 0, i64 noundef %conv23.i, i64 noundef 1, i64 noundef 0) #10
  %arrayidx.1.i = getelementptr %struct.ccs_sensor, ptr %10, i32 0, i32 47, i32 1
  %54 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.1.i, align 4
  %56 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %width.i, align 4
  %conv22.1.i = zext i8 %57 to i32
  %notmask.1.i = shl nsw i32 -1, %conv22.1.i
  %sub.1.i = xor i32 %notmask.1.i, -1
  %conv23.1.i = sext i32 %sub.1.i to i64
  %call24.1.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %55, i64 noundef 0, i64 noundef %conv23.1.i, i64 noundef 1, i64 noundef 0) #10
  %arrayidx.2.i = getelementptr %struct.ccs_sensor, ptr %10, i32 0, i32 47, i32 2
  %58 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.2.i, align 4
  %60 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %width.i, align 4
  %conv22.2.i = zext i8 %61 to i32
  %notmask.2.i = shl nsw i32 -1, %conv22.2.i
  %sub.2.i = xor i32 %notmask.2.i, -1
  %conv23.2.i = sext i32 %sub.2.i to i64
  %call24.2.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %59, i64 noundef 0, i64 noundef %conv23.2.i, i64 noundef 1, i64 noundef 0) #10
  %arrayidx.3.i = getelementptr %struct.ccs_sensor, ptr %10, i32 0, i32 47, i32 3
  %62 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.3.i, align 4
  %64 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %width.i, align 4
  %conv22.3.i = zext i8 %65 to i32
  %notmask.3.i = shl nsw i32 -1, %conv22.3.i
  %sub.3.i = xor i32 %notmask.3.i, -1
  %conv23.3.i = sext i32 %sub.3.i to i64
  %call24.3.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %63, i64 noundef 0, i64 noundef %conv23.3.i, i64 noundef 1, i64 noundef 0) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %for.body.preheader.i, %if.end12.i.if.end25.i_crit_edge
  %compressed.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %retval.0.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %compressed.i, align 1
  %compressed27.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %12, i32 0, i32 2
  %68 = ptrtoint ptr %compressed27.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %compressed27.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp29.i = icmp eq i8 %67, %69
  br i1 %cmp29.i, label %if.end25.i.cleanup_crit_edge, label %if.end32.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32.i:                                       ; preds = %if.end25.i
  %valid_link_freqs33.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 37
  %70 = ptrtoint ptr %valid_link_freqs33.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %valid_link_freqs33.i, align 4
  %72 = ptrtoint ptr %csi_format2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %csi_format2.i, align 4
  %compressed35.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %compressed35.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %compressed35.i, align 1
  %conv36.i = zext i8 %75 to i32
  %compressed_min_bpp.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 34
  %76 = ptrtoint ptr %compressed_min_bpp.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %compressed_min_bpp.i, align 4
  %conv37.i = zext i8 %77 to i32
  %sub38.i = sub nsw i32 %conv36.i, %conv37.i
  %arrayidx39.i = getelementptr i32, ptr %71, i32 %sub38.i
  %link_freq.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 45
  %78 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %link_freq.i, align 4
  %80 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx39.i, align 4
  %82 = tail call i32 @llvm.ctlz.i32(i32 %81, i1 false) #10, !range !507
  %sub.i.i = sub nsw i32 31, %82
  %conv41.i = zext i32 %sub.i.i to i64
  %neg.i = xor i32 %81, -1
  %conv42.i = zext i32 %neg.i to i64
  %83 = tail call i32 @llvm.cttz.i32(i32 %81, i1 false) #10, !range !507
  %conv44.i = zext i32 %83 to i64
  %call45.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %79, i64 noundef 0, i64 noundef %conv41.i, i64 noundef %conv42.i, i64 noundef %conv44.i) #10
  %pll1.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36
  %binning_horizontal.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 22
  %84 = ptrtoint ptr %binning_horizontal.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %binning_horizontal.i.i, align 4
  %binning_horizontal2.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 4
  %86 = ptrtoint ptr %binning_horizontal2.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %binning_horizontal2.i.i, align 4
  %binning_vertical.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 23
  %87 = ptrtoint ptr %binning_vertical.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %binning_vertical.i.i, align 1
  %binning_vertical3.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 5
  %89 = ptrtoint ptr %binning_vertical3.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %binning_vertical3.i.i, align 1
  %90 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %link_freq.i, align 4
  %92 = getelementptr inbounds %struct.v4l2_ctrl, ptr %91, i32 0, i32 19
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %91, i32 0, i32 22
  %95 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val.i.i, align 4
  %arrayidx.i79.i = getelementptr i64, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx.i79.i, align 8
  %conv.i80.i = trunc i64 %98 to i32
  %link_freq5.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 11
  %99 = ptrtoint ptr %link_freq5.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv.i80.i, ptr %link_freq5.i.i, align 4
  %scale_m.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 24
  %100 = ptrtoint ptr %scale_m.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %scale_m.i.i, align 2
  %scale_m6.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 6
  %102 = ptrtoint ptr %scale_m6.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %scale_m6.i.i, align 2
  %103 = ptrtoint ptr %csi_format2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %csi_format2.i, align 4
  %compressed.i.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %compressed.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %compressed.i.i, align 1
  %bits_per_pixel.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 8
  %107 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %bits_per_pixel.i.i, align 4
  %call.i.i = tail call fastcc i32 @ccs_pll_try(ptr noundef %10, ptr noundef %pll1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i82.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i82.i, label %if.end32.i.cleanup_crit_edge, label %if.end.i.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_rate_parray.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 43
  %108 = ptrtoint ptr %pixel_rate_parray.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pixel_rate_parray.i.i, align 4
  %pixel_rate_pixel_array.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 18
  %110 = ptrtoint ptr %pixel_rate_pixel_array.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pixel_rate_pixel_array.i.i, align 4
  %conv8.i.i = zext i32 %111 to i64
  %call9.i.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %109, i64 noundef %conv8.i.i) #10
  %pixel_rate_csi.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 46
  %112 = ptrtoint ptr %pixel_rate_csi.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pixel_rate_csi.i.i, align 4
  %pixel_rate_csi10.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 36, i32 17
  %114 = ptrtoint ptr %pixel_rate_csi10.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pixel_rate_csi10.i.i, align 4
  %conv11.i.i = zext i32 %115 to i64
  %call12.i.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %113, i64 noundef %conv11.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.i121 = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 3
  %116 = ptrtoint ptr %src.i121 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %src.i121, align 4
  %cmp.i = icmp eq ptr %117, %subdev
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2.i = icmp eq i32 %6, 1
  %or.cond.i = and i1 %cmp2.i, %cmp.i
  %csi_format.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 16
  %internal_csi_format.i = getelementptr inbounds %struct.ccs_sensor, ptr %10, i32 0, i32 17
  %retval.0.in.in.i = select i1 %or.cond.i, ptr %csi_format.i, ptr %internal_csi_format.i
  %118 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %retval.0.in.i = load ptr, ptr %retval.0.in.in.i, align 4
  %119 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %retval.0.i122 = load i32, ptr %retval.0.in.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %120 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %retval.0.i122, ptr %code, align 4
  %121 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %format, align 4
  %and = and i32 %122, -2
  store i32 %and, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %height, align 4
  %and11 = and i32 %124, -2
  store i32 %and11, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %125 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %field, align 4
  %call15 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 79, i32 noundef 0)
  %126 = tail call i32 @llvm.umax.i32(i32 %and, i32 %call15)
  %call19 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 81, i32 noundef 0)
  %127 = tail call i32 @llvm.umin.i32(i32 %126, i32 %call19)
  %128 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %format, align 4
  %129 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %height, align 4
  %call31 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 80, i32 noundef 0)
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 %call31)
  %call39 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 82, i32 noundef 0)
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 %call39)
  %133 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %height, align 4
  %134 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.i123 = icmp eq i32 %135, 1
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %136 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp255.not.i = icmp eq i16 %137, 0
  br i1 %cmp.i123, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  br i1 %cmp255.not.i, label %if.then.i.ccs_get_crop_compose.exit_crit_edge, label %for.body.i.preheader

if.then.i.ccs_get_crop_compose.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_get_crop_compose.exit

for.body.i.preheader:                             ; preds = %if.then.i
  %conv.i = zext i16 %137 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i124 = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %i.056.i
  %arrayidx4.i = getelementptr ptr, ptr %crops, i32 %i.056.i
  %138 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arrayidx.i124, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond128.not = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond128.not, label %for.body.i.ccs_get_crop_compose.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.ccs_get_crop_compose.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_get_crop_compose.exit

if.else.i:                                        ; preds = %if.end
  br i1 %cmp255.not.i, label %if.else.i.ccs_get_crop_compose.exit_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.preheader

if.else.i.ccs_get_crop_compose.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_get_crop_compose.exit

v4l2_subdev_get_try_crop.exit.i.preheader:        ; preds = %if.else.i
  %139 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sd_state, align 4
  %conv13.i = zext i16 %137 to i32
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, %v4l2_subdev_get_try_crop.exit.i.preheader
  %i.153.i = phi i32 [ %inc19.i, %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ], [ 0, %v4l2_subdev_get_try_crop.exit.i.preheader ]
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %140, i32 %i.153.i, i32 1
  %arrayidx17.i = getelementptr ptr, ptr %crops, i32 %i.153.i
  %141 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %try_crop.i.i, ptr %arrayidx17.i, align 4
  %inc19.i = add nuw nsw i32 %i.153.i, 1
  %exitcond.not = icmp eq i32 %inc19.i, %conv13.i
  br i1 %exitcond.not, label %v4l2_subdev_get_try_crop.exit.i.ccs_get_crop_compose.exit_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge

v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i.ccs_get_crop_compose.exit_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_get_crop_compose.exit

ccs_get_crop_compose.exit:                        ; preds = %v4l2_subdev_get_try_crop.exit.i.ccs_get_crop_compose.exit_crit_edge, %if.else.i.ccs_get_crop_compose.exit_crit_edge, %for.body.i.ccs_get_crop_compose.exit_crit_edge, %if.then.i.ccs_get_crop_compose.exit_crit_edge
  %sink_pad = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 5
  %142 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %sink_pad, align 4
  %idxprom = zext i16 %143 to i32
  %arrayidx = getelementptr [2 x ptr], ptr %crops, i32 0, i32 %idxprom
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %145, align 4
  %147 = load i16, ptr %sink_pad, align 4
  %idxprom50 = zext i16 %147 to i32
  %arrayidx51 = getelementptr [2 x ptr], ptr %crops, i32 0, i32 %idxprom50
  %148 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx51, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %top, align 4
  %151 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %format, align 4
  %153 = load i16, ptr %sink_pad, align 4
  %idxprom55 = zext i16 %153 to i32
  %arrayidx56 = getelementptr [2 x ptr], ptr %crops, i32 0, i32 %idxprom55
  %154 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx56, align 4
  %width57 = getelementptr inbounds %struct.v4l2_rect, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %width57 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %152, ptr %width57, align 4
  %157 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %height, align 4
  %159 = load i16, ptr %sink_pad, align 4
  %idxprom61 = zext i16 %159 to i32
  %arrayidx62 = getelementptr [2 x ptr], ptr %crops, i32 0, i32 %idxprom61
  %160 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx62, align 4
  %height63 = getelementptr inbounds %struct.v4l2_rect, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %height63 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %158, ptr %height63, align 4
  %163 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp65 = icmp eq i32 %164, 1
  br i1 %cmp65, label %if.then67, label %ccs_get_crop_compose.exit.if.end71_crit_edge

ccs_get_crop_compose.exit.if.end71_crit_edge:     ; preds = %ccs_get_crop_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then67:                                        ; preds = %ccs_get_crop_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sink_fmt = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2
  %165 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %sink_pad, align 4
  %idxprom69 = zext i16 %166 to i32
  %arrayidx70 = getelementptr [2 x ptr], ptr %crops, i32 0, i32 %idxprom69
  %167 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx70, align 4
  %169 = call ptr @memcpy(ptr %sink_fmt, ptr %168, i32 16)
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %ccs_get_crop_compose.exit.if.end71_crit_edge
  %170 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fmt, align 4
  tail call fastcc void @ccs_propagate(ptr noundef %subdev, ptr noundef %sd_state, i32 noundef %171, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end.i.i, %if.end32.i.cleanup_crit_edge, %if.end25.i.cleanup_crit_edge, %ccs_validate_csi_data_format.exit.i.cleanup_crit_edge, %__ccs_get_format.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ 0, %__ccs_get_format.exit.i.cleanup_crit_edge ], [ 0, %ccs_validate_csi_data_format.exit.i.cleanup_crit_edge ], [ 0, %if.end25.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ %call.i.i, %if.end32.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crops) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_get_selection(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %crops.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %2 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crops.i) #10
  %4 = ptrtoint ptr %crops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %crops.i, align 4, !annotation !501
  %5 = getelementptr inbounds [2 x ptr], ptr %crops.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !501
  %call.i = tail call fastcc i32 @__ccs_sel_supported(ptr noundef %subdev, ptr noundef %sel) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ccs_get_selection.exit_crit_edge

entry.__ccs_get_selection.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ccs_get_selection.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 1
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp255.not.i.i = icmp eq i16 %10, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  br i1 %cmp255.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %for.body.i.preheader.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.i.preheader.i:                           ; preds = %if.then.i.i
  %conv.i.i = zext i16 %10 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.056.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %i.056.i.i
  %arrayidx4.i.i = getelementptr ptr, ptr %crops.i, i32 %i.056.i.i
  %11 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i.i, ptr %arrayidx4.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond66.not.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond66.not.i, label %for.body.i.i.if.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %compose.i.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 4
  br label %ccs_get_crop_compose.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  br i1 %cmp255.not.i.i, label %do.end.i49.i.i, label %v4l2_subdev_get_try_crop.exit.i.preheader.i

v4l2_subdev_get_try_crop.exit.i.preheader.i:      ; preds = %if.else.i.i
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  %conv13.i.i = zext i16 %10 to i32
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, %v4l2_subdev_get_try_crop.exit.i.preheader.i
  %i.153.i.i = phi i32 [ %inc19.i.i, %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge ], [ 0, %v4l2_subdev_get_try_crop.exit.i.preheader.i ]
  %try_crop.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %13, i32 %i.153.i.i, i32 1
  %arrayidx17.i.i = getelementptr ptr, ptr %crops.i, i32 %i.153.i.i
  %14 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %try_crop.i.i.i, ptr %arrayidx17.i.i, align 4
  %inc19.i.i = add nuw nsw i32 %i.153.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i.i, %conv13.i.i
  br i1 %exitcond.not.i, label %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_compose.exit.i.i_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge

v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_compose.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit.i.i

do.end.i49.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit.i.i

v4l2_subdev_get_try_compose.exit.i.i:             ; preds = %do.end.i49.i.i, %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_compose.exit.i.i_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 2
  br label %ccs_get_crop_compose.exit.i

ccs_get_crop_compose.exit.i:                      ; preds = %v4l2_subdev_get_try_compose.exit.i.i, %if.end.i.i
  %try_compose.i.sink.i.i = phi ptr [ %try_compose.i.i.i, %v4l2_subdev_get_try_compose.exit.i.i ], [ %compose.i.i, %if.end.i.i ]
  %17 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %ccs_get_crop_compose.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sink_fmt7.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2
  %19 = ptrtoint ptr %sink_fmt7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %sink_fmt.sroa.0.0.copyload.i = load i32, ptr %sink_fmt7.i, align 4
  %sink_fmt.sroa.6.0.sink_fmt7.sroa_idx.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %sink_fmt.sroa.6.0.sink_fmt7.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %sink_fmt.sroa.6.0.copyload.i = load i32, ptr %sink_fmt.sroa.6.0.sink_fmt7.sroa_idx.i, align 4
  %sink_fmt.sroa.8.0.sink_fmt7.sroa_idx.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2, i32 2
  %sink_fmt.sroa.10.0.sink_fmt7.sroa_idx.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2, i32 3
  br label %if.end11.i

if.else.i:                                        ; preds = %ccs_get_crop_compose.exit.i
  %sink_pad.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 5
  %21 = ptrtoint ptr %sink_pad.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sink_pad.i, align 4
  %conv.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %22)
  %cmp.not.i.i = icmp ugt i16 %24, %22
  br i1 %cmp.not.i.i, label %if.else.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !504

if.else.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.else.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %conv.i, %if.else.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %arrayidx.i63.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i63.i, i32 0, i32 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %v4l2_subdev_get_try_format.exit.i, %if.then6.i
  %sink_fmt.sroa.10.0.in.i = phi ptr [ %sink_fmt.sroa.10.0.sink_fmt7.sroa_idx.i, %if.then6.i ], [ %height.i, %v4l2_subdev_get_try_format.exit.i ]
  %sink_fmt.sroa.8.0.in.i = phi ptr [ %sink_fmt.sroa.8.0.sink_fmt7.sroa_idx.i, %if.then6.i ], [ %arrayidx.i63.i, %v4l2_subdev_get_try_format.exit.i ]
  %sink_fmt.sroa.6.0.i = phi i32 [ %sink_fmt.sroa.6.0.copyload.i, %if.then6.i ], [ 0, %v4l2_subdev_get_try_format.exit.i ]
  %sink_fmt.sroa.0.0.i = phi i32 [ %sink_fmt.sroa.0.0.copyload.i, %if.then6.i ], [ 0, %v4l2_subdev_get_try_format.exit.i ]
  %27 = ptrtoint ptr %sink_fmt.sroa.8.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %sink_fmt.sroa.8.0.i = load i32, ptr %sink_fmt.sroa.8.0.in.i, align 4
  %28 = ptrtoint ptr %sink_fmt.sroa.10.0.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %sink_fmt.sroa.10.0.i = load i32, ptr %sink_fmt.sroa.10.0.in.i, align 4
  %target.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %29 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %target.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %30, label %if.end11.i.__ccs_get_selection.exit_crit_edge [
    i32 2, label %if.end11.i.sw.bb.i_crit_edge
    i32 3, label %if.end11.i.sw.bb.i_crit_edge5
    i32 0, label %if.end11.i.sw.bb26.i_crit_edge
    i32 258, label %if.end11.i.sw.bb26.i_crit_edge6
    i32 256, label %sw.bb29.i
  ]

if.end11.i.sw.bb26.i_crit_edge6:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26.i

if.end11.i.sw.bb26.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26.i

if.end11.i.sw.bb.i_crit_edge5:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end11.i.sw.bb.i_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end11.i.__ccs_get_selection.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ccs_get_selection.exit

sw.bb.i:                                          ; preds = %if.end11.i.sw.bb.i_crit_edge, %if.end11.i.sw.bb.i_crit_edge5
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pixel_array.i, align 4
  %cmp12.i = icmp eq ptr %33, %subdev
  br i1 %cmp12.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %r.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top.i.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %top.i.i, align 4
  %35 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %r.i, align 4
  %36 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sensor1, align 4
  %call.i.i = tail call i32 @ccs_get_limit(ptr noundef %37, i32 noundef 77, i32 noundef 0) #10
  %add.i.i = add i32 %call.i.i, 1
  %width.i.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i.i, ptr %width.i.i, align 4
  %39 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sensor1, align 4
  %call2.i.i = tail call i32 @ccs_get_limit(ptr noundef %40, i32 noundef 78, i32 noundef 0) #10
  %add3.i.i = add i32 %call2.i.i, 1
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add3.i.i, ptr %height.i.i, align 4
  br label %__ccs_get_selection.exit

if.else15.i:                                      ; preds = %sw.bb.i
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %42 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pad.i, align 4
  %sink_pad16.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 5
  %44 = ptrtoint ptr %sink_pad16.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sink_pad16.i, align 4
  %conv17.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv17.i)
  %cmp18.i = icmp eq i32 %43, %conv17.i
  %r21.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  br i1 %cmp18.i, label %if.then20.i, label %if.else22.i

if.then20.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %r21.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sink_fmt.sroa.0.0.i, ptr %r21.i, align 4
  %sink_fmt.sroa.6.0.r21.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %sink_fmt.sroa.6.0.r21.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sink_fmt.sroa.6.0.i, ptr %sink_fmt.sroa.6.0.r21.sroa_idx.i, align 4
  %sink_fmt.sroa.8.0.r21.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %sink_fmt.sroa.8.0.r21.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sink_fmt.sroa.8.0.i, ptr %sink_fmt.sroa.8.0.r21.sroa_idx.i, align 4
  %sink_fmt.sroa.10.0.r21.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %sink_fmt.sroa.10.0.r21.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sink_fmt.sroa.10.0.i, ptr %sink_fmt.sroa.10.0.r21.sroa_idx.i, align 4
  br label %__ccs_get_selection.exit

if.else22.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = call ptr @memcpy(ptr %r21.i, ptr %try_compose.i.sink.i.i, i32 16)
  br label %__ccs_get_selection.exit

sw.bb26.i:                                        ; preds = %if.end11.i.sw.bb26.i_crit_edge, %if.end11.i.sw.bb26.i_crit_edge6
  %r27.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %pad28.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %51 = ptrtoint ptr %pad28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pad28.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr %crops.i, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %55 = call ptr @memcpy(ptr %r27.i, ptr %54, i32 16)
  br label %__ccs_get_selection.exit

sw.bb29.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %r30.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %56 = call ptr @memcpy(ptr %r30.i, ptr %try_compose.i.sink.i.i, i32 16)
  br label %__ccs_get_selection.exit

__ccs_get_selection.exit:                         ; preds = %sw.bb29.i, %sw.bb26.i, %if.else22.i, %if.then20.i, %if.then14.i, %if.end11.i.__ccs_get_selection.exit_crit_edge, %entry.__ccs_get_selection.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.__ccs_get_selection.exit_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.else22.i ], [ 0, %if.then20.i ], [ 0, %if.end11.i.__ccs_get_selection.exit_crit_edge ], [ 0, %sw.bb29.i ], [ 0, %sw.bb26.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crops.i) #10
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_set_selection(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr noundef %sel) #0 align 64 {
entry:
  %crops.i.i = alloca [2 x ptr], align 4
  %crops.i107 = alloca [2 x ptr], align 4
  %crops.i = alloca [2 x ptr], align 4
  %_r.i = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %call = tail call fastcc i32 @__ccs_sel_supported(ptr noundef %subdev, ptr noundef %sel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %and = and i32 %3, -2
  %4 = tail call i32 @llvm.smax.i32(i32 %and, i32 0)
  %5 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %and6 = and i32 %7, -2
  %8 = tail call i32 @llvm.smax.i32(i32 %and6, i32 0)
  %9 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %top, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and15 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %width22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width22, align 4
  br i1 %tobool16.not, label %cond.false35, label %cond.true31

cond.true31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %13, 1
  %cond25 = and i32 %add, -2
  %14 = ptrtoint ptr %width22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond25, ptr %width22, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %add33 = add i32 %16, 1
  br label %cond.end39

cond.false35:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cond25134 = and i32 %13, -2
  %17 = ptrtoint ptr %width22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond25134, ptr %width22, align 4
  %height37 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %height37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height37, align 4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false35, %cond.true31
  %cond40.in = phi i32 [ %add33, %cond.true31 ], [ %19, %cond.false35 ]
  %cond40 = and i32 %cond40.in, -2
  %height42 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond40, ptr %height42, align 4
  %call43 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 79, i32 noundef 0)
  %21 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width22, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %call43, i32 %22)
  %24 = ptrtoint ptr %width22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %width22, align 4
  %call54 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 80, i32 noundef 0)
  %25 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height42, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %call54, i32 %26)
  %28 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %height42, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %29 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %target, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %30, label %cond.end39.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb66
  ]

cond.end39.sw.epilog_crit_edge:                   ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end39
  %32 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sensor1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crops.i) #10
  %34 = ptrtoint ptr %crops.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %crops.i, align 4, !annotation !501
  %35 = getelementptr inbounds [2 x ptr], ptr %crops.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !501
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_r.i) #10
  %37 = getelementptr inbounds %struct.v4l2_rect, ptr %_r.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.v4l2_rect, ptr %_r.i, i32 0, i32 2
  %39 = getelementptr inbounds %struct.v4l2_rect, ptr %_r.i, i32 0, i32 3
  %40 = call ptr @memset(ptr %_r.i, i32 255, i32 16)
  %41 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 1
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %43 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp255.not.i.i = icmp eq i16 %44, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb
  br i1 %cmp255.not.i.i, label %if.then.i.i.if.then.i_crit_edge, label %for.body.i.preheader.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.body.i.preheader.i:                           ; preds = %if.then.i.i
  %conv.i.i = zext i16 %44 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.056.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %i.056.i.i
  %arrayidx4.i.i = getelementptr ptr, ptr %crops.i, i32 %i.056.i.i
  %45 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i.i, ptr %arrayidx4.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond22.not.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond22.not.i, label %for.body.i.i.ccs_get_crop_compose.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.ccs_get_crop_compose.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_get_crop_compose.exit.i

if.else.i.i:                                      ; preds = %sw.bb
  br i1 %cmp255.not.i.i, label %if.else.i.i.if.else9.i_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.preheader.i

if.else.i.i.if.else9.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9.i

v4l2_subdev_get_try_crop.exit.i.preheader.i:      ; preds = %if.else.i.i
  %46 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sd_state, align 4
  %conv13.i.i = zext i16 %44 to i32
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, %v4l2_subdev_get_try_crop.exit.i.preheader.i
  %i.153.i.i = phi i32 [ %inc19.i.i, %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge ], [ 0, %v4l2_subdev_get_try_crop.exit.i.preheader.i ]
  %try_crop.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %47, i32 %i.153.i.i, i32 1
  %arrayidx17.i.i = getelementptr ptr, ptr %crops.i, i32 %i.153.i.i
  %48 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %try_crop.i.i.i, ptr %arrayidx17.i.i, align 4
  %inc19.i.i = add nuw nsw i32 %i.153.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i.i, %conv13.i.i
  br i1 %exitcond.not.i, label %v4l2_subdev_get_try_crop.exit.i.i.ccs_get_crop_compose.exit.i_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge

v4l2_subdev_get_try_crop.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i.ccs_get_crop_compose.exit.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_get_crop_compose.exit.i

ccs_get_crop_compose.exit.i:                      ; preds = %v4l2_subdev_get_try_crop.exit.i.i.ccs_get_crop_compose.exit.i_crit_edge, %for.body.i.i.ccs_get_crop_compose.exit.i_crit_edge
  br i1 %cmp.i.i, label %ccs_get_crop_compose.exit.i.if.then.i_crit_edge, label %ccs_get_crop_compose.exit.i.if.else9.i_crit_edge

ccs_get_crop_compose.exit.i.if.else9.i_crit_edge: ; preds = %ccs_get_crop_compose.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9.i

ccs_get_crop_compose.exit.i.if.then.i_crit_edge:  ; preds = %ccs_get_crop_compose.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %ccs_get_crop_compose.exit.i.if.then.i_crit_edge, %if.then.i.i.if.then.i_crit_edge
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %49 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pad.i, align 4
  %sink_pad.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 5
  %51 = ptrtoint ptr %sink_pad.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sink_pad.i, align 4
  %conv.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv.i)
  %cmp6.i = icmp eq i32 %50, %conv.i
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sink_fmt.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 2
  br label %if.end26.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %compose.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 4
  br label %if.end26.i

if.else9.i:                                       ; preds = %ccs_get_crop_compose.exit.i.if.else9.i_crit_edge, %if.else.i.i.if.else9.i_crit_edge
  %pad10.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %53 = ptrtoint ptr %pad10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pad10.i, align 4
  %sink_pad11.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 5
  %55 = ptrtoint ptr %sink_pad11.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sink_pad11.i, align 4
  %conv12.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %54, %conv12.i
  br i1 %cmp13.i, label %if.then15.i, label %if.else21.i

if.then15.i:                                      ; preds = %if.else9.i
  %57 = ptrtoint ptr %_r.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %_r.i, align 4
  %58 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %37, align 4
  %conv.i2.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv.i2.i)
  %cmp.not.i.i = icmp ult i32 %54, %conv.i2.i
  br i1 %cmp.not.i.i, label %if.then15.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !504

if.then15.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then15.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %54, %if.then15.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %59 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sd_state, align 4
  %arrayidx.i3.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %60, i32 %spec.select.i.i
  %61 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i3.i, align 4
  %63 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %38, align 4
  %64 = ptrtoint ptr %pad10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pad10.i, align 4
  %66 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_pads.i.i, align 4
  %conv.i6.i = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv.i6.i)
  %cmp.not.i7.i = icmp ult i32 %65, %conv.i6.i
  br i1 %cmp.not.i7.i, label %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_format.exit12.i_crit_edge, label %do.end.i8.i, !prof !504

v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_format.exit12.i_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit12.i

do.end.i8.i:                                      ; preds = %v4l2_subdev_get_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit12.i

v4l2_subdev_get_try_format.exit12.i:              ; preds = %do.end.i8.i, %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_format.exit12.i_crit_edge
  %spec.select.i9.i = phi i32 [ 0, %do.end.i8.i ], [ %65, %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_format.exit12.i_crit_edge ]
  %68 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sd_state, align 4
  %height.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %69, i32 %spec.select.i9.i, i32 0, i32 1
  %70 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height.i, align 4
  %72 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %39, align 4
  br label %if.end26.i

if.else21.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %56)
  %cmp.not.i15.i = icmp ugt i16 %44, %56
  br i1 %cmp.not.i15.i, label %if.else21.i.v4l2_subdev_get_try_compose.exit.i_crit_edge, label %do.end.i16.i, !prof !504

if.else21.i.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i16.i:                                     ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i16.i, %if.else21.i.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %spec.select.i17.i = phi i32 [ 0, %do.end.i16.i ], [ %conv12.i, %if.else21.i.v4l2_subdev_get_try_compose.exit.i_crit_edge ]
  %73 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %74, i32 %spec.select.i17.i, i32 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %v4l2_subdev_get_try_compose.exit.i, %v4l2_subdev_get_try_format.exit12.i, %if.else.i, %if.then8.i
  %src_size.0.i = phi ptr [ %sink_fmt.i, %if.then8.i ], [ %compose.i, %if.else.i ], [ %_r.i, %v4l2_subdev_get_try_format.exit12.i ], [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ]
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %33, i32 0, i32 3
  %75 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %src.i, align 4
  %cmp27.i = icmp eq ptr %76, %subdev
  br i1 %cmp27.i, label %land.lhs.true.i, label %if.end26.i.if.end36.i_crit_edge

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %pad29.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %77 = ptrtoint ptr %pad29.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pad29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp30.i = icmp eq i32 %78, 1
  br i1 %cmp30.i, label %if.then32.i, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %r, align 4
  %80 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %top, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %81 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %width22, align 4
  %width39.i = getelementptr inbounds %struct.v4l2_rect, ptr %src_size.0.i, i32 0, i32 2
  %83 = ptrtoint ptr %width39.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %width39.i, align 4
  %85 = tail call i32 @llvm.umin.i32(i32 %82, i32 %84) #10
  %86 = ptrtoint ptr %width22 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %width22, align 4
  %87 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %height42, align 4
  %height47.i = getelementptr inbounds %struct.v4l2_rect, ptr %src_size.0.i, i32 0, i32 3
  %89 = ptrtoint ptr %height47.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height47.i, align 4
  %91 = tail call i32 @llvm.umin.i32(i32 %88, i32 %90) #10
  %92 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %height42, align 4
  %93 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %r, align 4
  %95 = ptrtoint ptr %width39.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %width39.i, align 4
  %sub.i = sub i32 %96, %85
  %97 = tail call i32 @llvm.smin.i32(i32 %94, i32 %sub.i) #10
  %98 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %r, align 4
  %99 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %top, align 4
  %101 = ptrtoint ptr %height47.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height47.i, align 4
  %sub76.i = sub i32 %102, %91
  %103 = tail call i32 @llvm.smin.i32(i32 %100, i32 %sub76.i) #10
  %104 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %top, align 4
  %pad86.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %105 = ptrtoint ptr %pad86.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pad86.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr %crops.i, i32 0, i32 %106
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i, align 4
  %109 = call ptr @memcpy(ptr %108, ptr %r, i32 16)
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %33, i32 0, i32 6
  %110 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pixel_array.i, align 4
  %cmp88.not.i = icmp eq ptr %111, %subdev
  br i1 %cmp88.not.i, label %if.end36.i.ccs_set_crop.exit_crit_edge, label %land.lhs.true90.i

if.end36.i.ccs_set_crop.exit_crit_edge:           ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_set_crop.exit

land.lhs.true90.i:                                ; preds = %if.end36.i
  %112 = ptrtoint ptr %pad86.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pad86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp92.i = icmp eq i32 %113, 0
  br i1 %cmp92.i, label %if.then94.i, label %land.lhs.true90.i.ccs_set_crop.exit_crit_edge

land.lhs.true90.i.ccs_set_crop.exit_crit_edge:    ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_set_crop.exit

if.then94.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sel, align 4
  tail call fastcc void @ccs_propagate(ptr noundef %subdev, ptr noundef %sd_state, i32 noundef %115, i32 noundef 0) #10
  br label %ccs_set_crop.exit

ccs_set_crop.exit:                                ; preds = %if.then94.i, %land.lhs.true90.i.ccs_set_crop.exit_crit_edge, %if.end36.i.ccs_set_crop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_r.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crops.i) #10
  br label %sw.epilog

sw.bb66:                                          ; preds = %cond.end39
  %116 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sensor1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crops.i107) #10
  %118 = ptrtoint ptr %crops.i107 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 -1 to ptr), ptr %crops.i107, align 4, !annotation !501
  %119 = getelementptr inbounds [2 x ptr], ptr %crops.i107, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -1 to ptr), ptr %119, align 4, !annotation !501
  %121 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp.i.i109 = icmp eq i32 %122, 1
  %num_pads.i.i110 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %123 = ptrtoint ptr %num_pads.i.i110 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %num_pads.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %cmp255.not.i.i111 = icmp eq i16 %124, 0
  br i1 %cmp.i.i109, label %if.then.i.i112, label %if.else.i.i120

if.then.i.i112:                                   ; preds = %sw.bb66
  br i1 %cmp255.not.i.i111, label %if.then.i.i112.if.end.i.i_crit_edge, label %for.body.i.preheader.i114

if.then.i.i112.if.end.i.i_crit_edge:              ; preds = %if.then.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.i.preheader.i114:                        ; preds = %if.then.i.i112
  %conv.i.i113 = zext i16 %124 to i32
  br label %for.body.i.i119

for.body.i.i119:                                  ; preds = %for.body.i.i119.for.body.i.i119_crit_edge, %for.body.i.preheader.i114
  %i.056.i.i115 = phi i32 [ %inc.i.i118, %for.body.i.i119.for.body.i.i119_crit_edge ], [ 0, %for.body.i.preheader.i114 ]
  %arrayidx.i.i116 = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %i.056.i.i115
  %arrayidx4.i.i117 = getelementptr ptr, ptr %crops.i107, i32 %i.056.i.i115
  %125 = ptrtoint ptr %arrayidx4.i.i117 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx.i.i116, ptr %arrayidx4.i.i117, align 4
  %inc.i.i118 = add nuw nsw i32 %i.056.i.i115, 1
  %exitcond40.not.i = icmp eq i32 %inc.i.i118, %conv.i.i113
  br i1 %exitcond40.not.i, label %for.body.i.i119.if.end.i.i_crit_edge, label %for.body.i.i119.for.body.i.i119_crit_edge

for.body.i.i119.for.body.i.i119_crit_edge:        ; preds = %for.body.i.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i119

for.body.i.i119.if.end.i.i_crit_edge:             ; preds = %for.body.i.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i119.if.end.i.i_crit_edge, %if.then.i.i112.if.end.i.i_crit_edge
  %compose.i.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 4
  br label %ccs_get_crop_compose.exit.i130

if.else.i.i120:                                   ; preds = %sw.bb66
  br i1 %cmp255.not.i.i111, label %do.end.i49.i.i, label %v4l2_subdev_get_try_crop.exit.i.preheader.i122

v4l2_subdev_get_try_crop.exit.i.preheader.i122:   ; preds = %if.else.i.i120
  %126 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sd_state, align 4
  %conv13.i.i121 = zext i16 %124 to i32
  br label %v4l2_subdev_get_try_crop.exit.i.i128

v4l2_subdev_get_try_crop.exit.i.i128:             ; preds = %v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_crop.exit.i.i128_crit_edge, %v4l2_subdev_get_try_crop.exit.i.preheader.i122
  %i.153.i.i123 = phi i32 [ %inc19.i.i126, %v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_crop.exit.i.i128_crit_edge ], [ 0, %v4l2_subdev_get_try_crop.exit.i.preheader.i122 ]
  %try_crop.i.i.i124 = getelementptr %struct.v4l2_subdev_pad_config, ptr %127, i32 %i.153.i.i123, i32 1
  %arrayidx17.i.i125 = getelementptr ptr, ptr %crops.i107, i32 %i.153.i.i123
  %128 = ptrtoint ptr %arrayidx17.i.i125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %try_crop.i.i.i124, ptr %arrayidx17.i.i125, align 4
  %inc19.i.i126 = add nuw nsw i32 %i.153.i.i123, 1
  %exitcond.not.i127 = icmp eq i32 %inc19.i.i126, %conv13.i.i121
  br i1 %exitcond.not.i127, label %v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_compose.exit.i.i_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_crop.exit.i.i128_crit_edge

v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_crop.exit.i.i128_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit.i.i128

v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_compose.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit.i.i

do.end.i49.i.i:                                   ; preds = %if.else.i.i120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit.i.i

v4l2_subdev_get_try_compose.exit.i.i:             ; preds = %do.end.i49.i.i, %v4l2_subdev_get_try_crop.exit.i.i128.v4l2_subdev_get_try_compose.exit.i.i_crit_edge
  %129 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %130, i32 0, i32 2
  br label %ccs_get_crop_compose.exit.i130

ccs_get_crop_compose.exit.i130:                   ; preds = %v4l2_subdev_get_try_compose.exit.i.i, %if.end.i.i
  %try_compose.i.sink.i.i = phi ptr [ %try_compose.i.i.i, %v4l2_subdev_get_try_compose.exit.i.i ], [ %compose.i.i, %if.end.i.i ]
  %131 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %top, align 4
  %132 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %r, align 4
  %binner.i = getelementptr inbounds %struct.ccs_sensor, ptr %117, i32 0, i32 4
  %133 = ptrtoint ptr %binner.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %binner.i, align 4
  %cmp.i = icmp eq ptr %134, %subdev
  br i1 %cmp.i, label %if.then.i131, label %if.else.i132

if.then.i131:                                     ; preds = %ccs_get_crop_compose.exit.i130
  %135 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sensor1, align 4
  %137 = ptrtoint ptr %crops.i107 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %crops.i107, align 4
  %width.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %width.i.i, align 4
  %141 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %width22, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %138, i32 0, i32 3
  %143 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %height.i.i, align 4
  %145 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %height42, align 4
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags, align 4
  %call.i.i = tail call fastcc i32 @scaling_goodness(ptr noundef %subdev, i32 noundef %140, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148) #10
  %nbinning_subtypes.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %136, i32 0, i32 13
  %149 = ptrtoint ptr %nbinning_subtypes.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %nbinning_subtypes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp2.not.i.i = icmp eq i8 %150, 0
  br i1 %cmp2.not.i.i, label %if.then.i131.for.end.i.i_crit_edge, label %if.then.i131.for.body.i33.i_crit_edge

if.then.i131.for.body.i33.i_crit_edge:            ; preds = %if.then.i131
  br label %for.body.i33.i

if.then.i131.for.end.i.i_crit_edge:               ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i33.i:                                   ; preds = %if.end.i38.i.for.body.i33.i_crit_edge, %if.then.i131.for.body.i33.i_crit_edge
  %best.06.i.i = phi i32 [ %best.1.i.i, %if.end.i38.i.for.body.i33.i_crit_edge ], [ %call.i.i, %if.then.i131.for.body.i33.i_crit_edge ]
  %binv.05.i.i = phi i32 [ %binv.1.i.i, %if.end.i38.i.for.body.i33.i_crit_edge ], [ 1, %if.then.i131.for.body.i33.i_crit_edge ]
  %binh.04.i.i = phi i32 [ %binh.1.i.i, %if.end.i38.i.for.body.i33.i_crit_edge ], [ 1, %if.then.i131.for.body.i33.i_crit_edge ]
  %i.03.i.i = phi i32 [ %inc.i35.i, %if.end.i38.i.for.body.i33.i_crit_edge ], [ 0, %if.then.i131.for.body.i33.i_crit_edge ]
  %151 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %width.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.ccs_sensor, ptr %136, i32 0, i32 14, i32 %i.03.i.i
  %153 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load.i.i = load i8, ptr %arrayidx9.i.i, align 1
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 4
  %conv10.i.i = zext i8 %bf.lshr.i.i to i32
  %div.i.i = udiv i32 %152, %conv10.i.i
  %154 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %width22, align 4
  %156 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %height.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %conv18.i.i = zext i8 %bf.clear.i.i to i32
  %div19.i.i = udiv i32 %157, %conv18.i.i
  %158 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %height42, align 4
  %160 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags, align 4
  %call23.i.i = tail call fastcc i32 @scaling_goodness(ptr noundef %subdev, i32 noundef %div.i.i, i32 noundef %155, i32 noundef %div19.i.i, i32 noundef %159, i32 noundef %161) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call23.i.i, i32 %best.06.i.i)
  %cmp24.i.i = icmp sgt i32 %call23.i.i, %best.06.i.i
  br i1 %cmp24.i.i, label %if.then.i34.i, label %for.body.i33.i.if.end.i38.i_crit_edge

for.body.i33.i.if.end.i38.i_crit_edge:            ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i38.i

if.then.i34.i:                                    ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  %162 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load28.i.i = load i8, ptr %arrayidx9.i.i, align 1
  %bf.lshr29.i.i = lshr i8 %bf.load28.i.i, 4
  %conv30.i.i = zext i8 %bf.lshr29.i.i to i32
  %bf.clear34.i.i = and i8 %bf.load28.i.i, 15
  %conv35.i.i = zext i8 %bf.clear34.i.i to i32
  br label %if.end.i38.i

if.end.i38.i:                                     ; preds = %if.then.i34.i, %for.body.i33.i.if.end.i38.i_crit_edge
  %binh.1.i.i = phi i32 [ %conv30.i.i, %if.then.i34.i ], [ %binh.04.i.i, %for.body.i33.i.if.end.i38.i_crit_edge ]
  %binv.1.i.i = phi i32 [ %conv35.i.i, %if.then.i34.i ], [ %binv.05.i.i, %for.body.i33.i.if.end.i38.i_crit_edge ]
  %best.1.i.i = phi i32 [ %call23.i.i, %if.then.i34.i ], [ %best.06.i.i, %for.body.i33.i.if.end.i38.i_crit_edge ]
  %inc.i35.i = add nuw nsw i32 %i.03.i.i, 1
  %163 = ptrtoint ptr %nbinning_subtypes.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %nbinning_subtypes.i.i, align 4
  %conv.i36.i = zext i8 %164 to i32
  %cmp.i37.i = icmp ult i32 %inc.i35.i, %conv.i36.i
  br i1 %cmp.i37.i, label %if.end.i38.i.for.body.i33.i_crit_edge, label %if.end.i38.i.for.end.i.i_crit_edge

if.end.i38.i.for.end.i.i_crit_edge:               ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end.i38.i.for.body.i33.i_crit_edge:            ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i33.i

for.end.i.i:                                      ; preds = %if.end.i38.i.for.end.i.i_crit_edge, %if.then.i131.for.end.i.i_crit_edge
  %binh.0.lcssa.i.i = phi i32 [ 1, %if.then.i131.for.end.i.i_crit_edge ], [ %binh.1.i.i, %if.end.i38.i.for.end.i.i_crit_edge ]
  %binv.0.lcssa.i.i = phi i32 [ 1, %if.then.i131.for.end.i.i_crit_edge ], [ %binv.1.i.i, %if.end.i38.i.for.end.i.i_crit_edge ]
  %165 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp36.i.i = icmp eq i32 %166, 1
  br i1 %cmp36.i.i, label %if.then38.i.i, label %for.end.i.i.ccs_set_compose_binner.exit.i_crit_edge

for.end.i.i.ccs_set_compose_binner.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_set_compose_binner.exit.i

if.then38.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv39.i.i = trunc i32 %binv.0.lcssa.i.i to i8
  %binning_vertical.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %136, i32 0, i32 23
  %167 = ptrtoint ptr %binning_vertical.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv39.i.i, ptr %binning_vertical.i.i, align 1
  %conv40.i.i = trunc i32 %binh.0.lcssa.i.i to i8
  %binning_horizontal.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %136, i32 0, i32 22
  %168 = ptrtoint ptr %binning_horizontal.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv40.i.i, ptr %binning_horizontal.i.i, align 4
  br label %ccs_set_compose_binner.exit.i

ccs_set_compose_binner.exit.i:                    ; preds = %if.then38.i.i, %for.end.i.i.ccs_set_compose_binner.exit.i_crit_edge
  %169 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %width.i.i, align 4
  %div44.i.i = udiv i32 %170, %binh.0.lcssa.i.i
  %and.i.i = and i32 %div44.i.i, -2
  %171 = ptrtoint ptr %width22 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %and.i.i, ptr %width22, align 4
  %172 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %height.i.i, align 4
  %div49.i.i = udiv i32 %173, %binv.0.lcssa.i.i
  %and50.i.i = and i32 %div49.i.i, -2
  %174 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %and50.i.i, ptr %height42, align 4
  br label %if.end.i

if.else.i132:                                     ; preds = %ccs_get_crop_compose.exit.i130
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ccs_set_compose_scaler(ptr noundef %subdev, ptr noundef %sel, ptr noundef nonnull %crops.i107) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i132, %ccs_set_compose_binner.exit.i
  %175 = call ptr @memcpy(ptr %try_compose.i.sink.i.i, ptr %r, i32 16)
  %176 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sel, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crops.i.i) #10
  %178 = ptrtoint ptr %crops.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr inttoptr (i32 -1 to ptr), ptr %crops.i.i, align 4, !annotation !501
  %179 = getelementptr inbounds [2 x ptr], ptr %crops.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr inttoptr (i32 -1 to ptr), ptr %179, align 4, !annotation !501
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp.i.i.i = icmp eq i32 %177, 1
  %181 = ptrtoint ptr %num_pads.i.i110 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %num_pads.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp255.not.i.i.i = icmp eq i16 %182, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  br i1 %cmp255.not.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, label %for.body.i.preheader.i.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

for.body.i.preheader.i.i:                         ; preds = %if.then.i.i.i
  %conv.i.i.i = zext i16 %182 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.preheader.i.i
  %i.056.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %i.056.i.i.i
  %arrayidx4.i.i.i = getelementptr ptr, ptr %crops.i.i, i32 %i.056.i.i.i
  %183 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %arrayidx.i.i.i, ptr %arrayidx4.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.056.i.i.i, 1
  %exitcond67.not.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond67.not.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %compose.i.i.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 4
  br label %ccs_propagate.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i
  br i1 %cmp255.not.i.i.i, label %do.end.i49.i.i.i, label %v4l2_subdev_get_try_crop.exit.i.preheader.i.i

v4l2_subdev_get_try_crop.exit.i.preheader.i.i:    ; preds = %if.else.i.i.i
  %184 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sd_state, align 4
  %conv13.i.i.i = zext i16 %182 to i32
  br label %v4l2_subdev_get_try_crop.exit.i.i.i

v4l2_subdev_get_try_crop.exit.i.i.i:              ; preds = %v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_crop.exit.i.i.i_crit_edge, %v4l2_subdev_get_try_crop.exit.i.preheader.i.i
  %i.153.i.i.i = phi i32 [ %inc19.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_crop.exit.i.i.i_crit_edge ], [ 0, %v4l2_subdev_get_try_crop.exit.i.preheader.i.i ]
  %try_crop.i.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %185, i32 %i.153.i.i.i, i32 1
  %arrayidx17.i.i.i = getelementptr ptr, ptr %crops.i.i, i32 %i.153.i.i.i
  %186 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %try_crop.i.i.i.i, ptr %arrayidx17.i.i.i, align 4
  %inc19.i.i.i = add nuw nsw i32 %i.153.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc19.i.i.i, %conv13.i.i.i
  br i1 %exitcond.not.i.i, label %v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_compose.exit.i.i.i_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_crop.exit.i.i.i_crit_edge

v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_crop.exit.i.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit.i.i.i

v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_compose.exit.i.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit.i.i.i

do.end.i49.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit.i.i.i

v4l2_subdev_get_try_compose.exit.i.i.i:           ; preds = %do.end.i49.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i.i.v4l2_subdev_get_try_compose.exit.i.i.i_crit_edge
  %187 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %188, i32 0, i32 2
  br label %ccs_propagate.exit.i

ccs_propagate.exit.i:                             ; preds = %v4l2_subdev_get_try_compose.exit.i.i.i, %if.end.i.i.i
  %try_compose.i.sink.i.i.i = phi ptr [ %try_compose.i.i.i.i, %v4l2_subdev_get_try_compose.exit.i.i.i ], [ %compose.i.i.i, %if.end.i.i.i ]
  %189 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %179, align 4
  %191 = call ptr @memcpy(ptr %190, ptr %try_compose.i.sink.i.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crops.i.i) #10
  %192 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %193)
  %cmp11.i = icmp eq i32 %193, 1
  br i1 %cmp11.i, label %if.then12.i, label %ccs_propagate.exit.i.ccs_set_compose.exit_crit_edge

ccs_propagate.exit.i.ccs_set_compose.exit_crit_edge: ; preds = %ccs_propagate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_set_compose.exit

if.then12.i:                                      ; preds = %ccs_propagate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @ccs_pll_blanking_update(ptr noundef %117) #10
  br label %ccs_set_compose.exit

ccs_set_compose.exit:                             ; preds = %if.then12.i, %ccs_propagate.exit.i.ccs_set_compose.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then12.i ], [ 0, %ccs_propagate.exit.i.ccs_set_compose.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crops.i107) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %ccs_set_compose.exit, %ccs_set_crop.exit, %cond.end39.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %ccs_set_compose.exit ], [ 0, %ccs_set_crop.exit ], [ -22, %cond.end39.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_propagate(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, i32 noundef %which, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  %crops = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crops) #10
  %2 = ptrtoint ptr %crops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %crops, align 4, !annotation !501
  %3 = getelementptr inbounds [2 x ptr], ptr %crops, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !501
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %which)
  %cmp.i = icmp eq i32 %which, 1
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp255.not.i = icmp eq i16 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp255.not.i, label %if.then.i.if.end.i_crit_edge, label %for.body.i.preheader

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.preheader:                             ; preds = %if.then.i
  %conv.i = zext i16 %6 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.ccs_subdev, ptr %subdev, i32 0, i32 3, i32 %i.056.i
  %arrayidx4.i = getelementptr ptr, ptr %crops, i32 %i.056.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.i, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond67.not = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond67.not, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %compose.i = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 4
  br label %ccs_get_crop_compose.exit

if.else.i:                                        ; preds = %entry
  br i1 %cmp255.not.i, label %do.end.i49.i, label %v4l2_subdev_get_try_crop.exit.i.preheader

v4l2_subdev_get_try_crop.exit.i.preheader:        ; preds = %if.else.i
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %conv13.i = zext i16 %6 to i32
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, %v4l2_subdev_get_try_crop.exit.i.preheader
  %i.153.i = phi i32 [ %inc19.i, %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ], [ 0, %v4l2_subdev_get_try_crop.exit.i.preheader ]
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %i.153.i, i32 1
  %arrayidx17.i = getelementptr ptr, ptr %crops, i32 %i.153.i
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %try_crop.i.i, ptr %arrayidx17.i, align 4
  %inc19.i = add nuw nsw i32 %i.153.i, 1
  %exitcond.not = icmp eq i32 %inc19.i, %conv13.i
  br i1 %exitcond.not, label %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_compose.exit.i_crit_edge, label %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge

v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i49.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i49.i, %v4l2_subdev_get_try_crop.exit.i.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %12, i32 0, i32 2
  br label %ccs_get_crop_compose.exit

ccs_get_crop_compose.exit:                        ; preds = %v4l2_subdev_get_try_compose.exit.i, %if.end.i
  %try_compose.i.sink.i = phi ptr [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %compose.i, %if.end.i ]
  %13 = zext i32 %target to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %target, label %land.end [
    i32 0, label %sw.bb
    i32 256, label %ccs_get_crop_compose.exit.sw.bb15_crit_edge
  ]

ccs_get_crop_compose.exit.sw.bb15_crit_edge:      ; preds = %ccs_get_crop_compose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

sw.bb:                                            ; preds = %ccs_get_crop_compose.exit
  %14 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crops, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %width5 = getelementptr inbounds %struct.v4l2_rect, ptr %try_compose.i.sink.i, i32 0, i32 2
  %18 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %width5, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_rect, ptr %try_compose.i.sink.i, i32 0, i32 3
  %21 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height7, align 4
  br i1 %cmp.i, label %if.then, label %sw.bb.sw.bb15_crit_edge

sw.bb.sw.bb15_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

if.then:                                          ; preds = %sw.bb
  %scaler = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scaler, align 4
  %cmp8 = icmp eq ptr %23, %subdev
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 125, i32 noundef 0)
  %conv = trunc i32 %call to i8
  %scale_m = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %scale_m to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %scale_m, align 2
  %scaling_mode = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %scaling_mode, align 1
  br label %sw.bb15

if.else:                                          ; preds = %if.then
  %binner = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %binner to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %binner, align 4
  %cmp10 = icmp eq ptr %27, %subdev
  br i1 %cmp10, label %if.then12, label %if.else.sw.bb15_crit_edge

if.else.sw.bb15_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %binning_horizontal = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 22
  %28 = ptrtoint ptr %binning_horizontal to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %binning_horizontal, align 4
  %binning_vertical = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %binning_vertical to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %binning_vertical, align 1
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.then12, %if.else.sw.bb15_crit_edge, %if.then9, %sw.bb.sw.bb15_crit_edge, %ccs_get_crop_compose.exit.sw.bb15_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %try_compose.i.sink.i, i32 16)
  br label %sw.epilog

land.end:                                         ; preds = %ccs_get_crop_compose.exit
  %.b65 = load i1, ptr @ccs_propagate.__already_done, align 1
  br i1 %.b65, label %land.end.sw.epilog_crit_edge, label %if.then22, !prof !504

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ccs_propagate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2141, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %land.end.sw.epilog_crit_edge, %sw.bb15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_pll_try(ptr noundef %sensor, ptr noundef %pll) unnamed_addr #0 align 64 {
entry:
  %lim = alloca %struct.ccs_pll_limits, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lim) #10
  %4 = ptrtoint ptr %lim to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lim, align 4
  %max_ext_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 1
  %5 = ptrtoint ptr %max_ext_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %max_ext_clk_freq_hz, align 4
  %vt_fr = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2
  %call1 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 36, i32 noundef 0)
  %conv = trunc i32 %call1 to i16
  %6 = ptrtoint ptr %vt_fr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %vt_fr, align 4
  %max_pre_pll_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 1
  %call2 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 37, i32 noundef 0)
  %conv3 = trunc i32 %call2 to i16
  %7 = ptrtoint ptr %max_pre_pll_clk_div to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3, ptr %max_pre_pll_clk_div, align 2
  %min_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 2
  %call4 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 38, i32 noundef 0)
  %8 = ptrtoint ptr %min_pll_ip_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %min_pll_ip_clk_freq_hz, align 4
  %max_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 3
  %call5 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 39, i32 noundef 0)
  %9 = ptrtoint ptr %max_pll_ip_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5, ptr %max_pll_ip_clk_freq_hz, align 4
  %min_pll_multiplier = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 4
  %call6 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 40, i32 noundef 0)
  %conv7 = trunc i32 %call6 to i16
  %10 = ptrtoint ptr %min_pll_multiplier to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv7, ptr %min_pll_multiplier, align 4
  %max_pll_multiplier = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 5
  %call8 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 41, i32 noundef 0)
  %conv9 = trunc i32 %call8 to i16
  %11 = ptrtoint ptr %max_pll_multiplier to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv9, ptr %max_pll_multiplier, align 2
  %min_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 6
  %call10 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 42, i32 noundef 0)
  %12 = ptrtoint ptr %min_pll_op_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call10, ptr %min_pll_op_clk_freq_hz, align 4
  %max_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 7
  %call11 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 43, i32 noundef 0)
  %13 = ptrtoint ptr %max_pll_op_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call11, ptr %max_pll_op_clk_freq_hz, align 4
  %vt_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3
  %call12 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 44, i32 noundef 0)
  %conv13 = trunc i32 %call12 to i16
  %14 = ptrtoint ptr %vt_bk to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %vt_bk, align 4
  %max_sys_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 1
  %call14 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 45, i32 noundef 0)
  %conv15 = trunc i32 %call14 to i16
  %15 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15, ptr %max_sys_clk_div, align 2
  %min_sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 2
  %call16 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 46, i32 noundef 0)
  %16 = ptrtoint ptr %min_sys_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call16, ptr %min_sys_clk_freq_hz, align 4
  %max_sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 3
  %call17 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 47, i32 noundef 0)
  %17 = ptrtoint ptr %max_sys_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17, ptr %max_sys_clk_freq_hz, align 4
  %min_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 4
  %call18 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 50, i32 noundef 0)
  %conv19 = trunc i32 %call18 to i16
  %18 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv19, ptr %min_pix_clk_div, align 4
  %max_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 5
  %call20 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 51, i32 noundef 0)
  %conv21 = trunc i32 %call20 to i16
  %19 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv21, ptr %max_pix_clk_div, align 2
  %min_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 6
  %call22 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 48, i32 noundef 0)
  %20 = ptrtoint ptr %min_pix_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call22, ptr %min_pix_clk_freq_hz, align 4
  %max_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 7
  %call23 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 49, i32 noundef 0)
  %21 = ptrtoint ptr %max_pix_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call23, ptr %max_pix_clk_freq_hz, align 4
  %op_fr = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4
  %call25 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 92, i32 noundef 0)
  %conv26 = trunc i32 %call25 to i16
  %22 = ptrtoint ptr %op_fr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv26, ptr %op_fr, align 4
  %max_pre_pll_clk_div27 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 1
  %call28 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 93, i32 noundef 0)
  %conv29 = trunc i32 %call28 to i16
  %23 = ptrtoint ptr %max_pre_pll_clk_div27 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv29, ptr %max_pre_pll_clk_div27, align 2
  %min_pll_ip_clk_freq_hz30 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 2
  %call31 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 94, i32 noundef 0)
  %24 = ptrtoint ptr %min_pll_ip_clk_freq_hz30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call31, ptr %min_pll_ip_clk_freq_hz30, align 4
  %max_pll_ip_clk_freq_hz32 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 3
  %call33 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 95, i32 noundef 0)
  %25 = ptrtoint ptr %max_pll_ip_clk_freq_hz32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call33, ptr %max_pll_ip_clk_freq_hz32, align 4
  %min_pll_multiplier34 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 4
  %call35 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 96, i32 noundef 0)
  %conv36 = trunc i32 %call35 to i16
  %26 = ptrtoint ptr %min_pll_multiplier34 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv36, ptr %min_pll_multiplier34, align 4
  %max_pll_multiplier37 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 5
  %call38 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 97, i32 noundef 0)
  %conv39 = trunc i32 %call38 to i16
  %27 = ptrtoint ptr %max_pll_multiplier37 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv39, ptr %max_pll_multiplier37, align 2
  %min_pll_op_clk_freq_hz40 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 6
  %call41 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 98, i32 noundef 0)
  %28 = ptrtoint ptr %min_pll_op_clk_freq_hz40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call41, ptr %min_pll_op_clk_freq_hz40, align 4
  %max_pll_op_clk_freq_hz42 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4, i32 7
  %call43 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 99, i32 noundef 0)
  %29 = ptrtoint ptr %max_pll_op_clk_freq_hz42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call43, ptr %max_pll_op_clk_freq_hz42, align 4
  %op_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5
  %call45 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 67, i32 noundef 0)
  %conv46 = trunc i32 %call45 to i16
  %30 = ptrtoint ptr %op_bk to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv46, ptr %op_bk, align 4
  %max_sys_clk_div47 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 1
  %call48 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 68, i32 noundef 0)
  %conv49 = trunc i32 %call48 to i16
  %31 = ptrtoint ptr %max_sys_clk_div47 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv49, ptr %max_sys_clk_div47, align 2
  %min_sys_clk_freq_hz50 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 2
  %call51 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 69, i32 noundef 0)
  %32 = ptrtoint ptr %min_sys_clk_freq_hz50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call51, ptr %min_sys_clk_freq_hz50, align 4
  %max_sys_clk_freq_hz52 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 3
  %call53 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 70, i32 noundef 0)
  %33 = ptrtoint ptr %max_sys_clk_freq_hz52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call53, ptr %max_sys_clk_freq_hz52, align 4
  %min_pix_clk_div54 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 4
  %call55 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 71, i32 noundef 0)
  %conv56 = trunc i32 %call55 to i16
  %34 = ptrtoint ptr %min_pix_clk_div54 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv56, ptr %min_pix_clk_div54, align 4
  %max_pix_clk_div57 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 5
  %call58 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 72, i32 noundef 0)
  %conv59 = trunc i32 %call58 to i16
  %35 = ptrtoint ptr %max_pix_clk_div57 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv59, ptr %max_pix_clk_div57, align 2
  %min_pix_clk_freq_hz60 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 6
  %call61 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 73, i32 noundef 0)
  %36 = ptrtoint ptr %min_pix_clk_freq_hz60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call61, ptr %min_pix_clk_freq_hz60, align 4
  %max_pix_clk_freq_hz62 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5, i32 7
  %call63 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 74, i32 noundef 0)
  %37 = ptrtoint ptr %max_pix_clk_freq_hz62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call63, ptr %max_pix_clk_freq_hz62, align 4
  %min_line_length_pck_bin = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 6
  %call64 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 196, i32 noundef 0)
  %38 = ptrtoint ptr %min_line_length_pck_bin to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call64, ptr %min_line_length_pck_bin, align 4
  %min_line_length_pck = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 7
  %call65 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 58, i32 noundef 0)
  %39 = ptrtoint ptr %min_line_length_pck to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call65, ptr %min_line_length_pck, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call66 = call i32 @ccs_pll_calculate(ptr noundef %dev, ptr noundef nonnull %lim, ptr noundef %pll) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lim) #10
  ret i32 %call66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_pll_calculate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ccs_sel_supported(ptr noundef readonly %subdev, ptr nocapture noundef readonly %sel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %3, label %entry.sw.default_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge67
    i32 3, label %sw.bb20
    i32 256, label %entry.sw.bb28_crit_edge
    i32 258, label %entry.sw.bb28_crit_edge68
  ]

entry.sw.bb28_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge67
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pixel_array, align 4
  %cmp = icmp eq ptr %6, %subdev
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 4
  %cmp6 = icmp eq ptr %10, %subdev
  br i1 %cmp6, label %land.lhs.true7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end
  %pad8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %11 = ptrtoint ptr %pad8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %scaler = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scaler, align 4
  %cmp12 = icmp eq ptr %14, %subdev
  br i1 %cmp12, label %land.lhs.true13, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true13:                                  ; preds = %if.end11
  %pad14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %15 = ptrtoint ptr %pad14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %land.lhs.true16, label %land.lhs.true13.if.end19_crit_edge

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %call = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 127, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp17 = icmp eq i32 %call, 1
  br i1 %cmp17, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end19_crit_edge

land.lhs.true16.if.end19_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true16.if.end19_crit_edge, %land.lhs.true13.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %pixel_array21 = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %pixel_array21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pixel_array21, align 4
  %cmp22 = icmp eq ptr %18, %subdev
  br i1 %cmp22, label %land.lhs.true23, label %sw.bb20.if.end27_crit_edge

sw.bb20.if.end27_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true23:                                  ; preds = %sw.bb20
  %pad24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %19 = ptrtoint ptr %pad24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pad24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp25 = icmp eq i32 %20, 0
  br i1 %cmp25, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true23.if.end27_crit_edge

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true23.if.end27_crit_edge, %sw.bb20.if.end27_crit_edge
  br label %cleanup

sw.bb28:                                          ; preds = %entry.sw.bb28_crit_edge, %entry.sw.bb28_crit_edge68
  %pad29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %21 = ptrtoint ptr %pad29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad29, align 4
  %source_pad = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 6
  %23 = ptrtoint ptr %source_pad to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %source_pad, align 2
  %conv = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp30 = icmp eq i32 %22, %conv
  br i1 %cmp30, label %sw.bb28.cleanup_crit_edge, label %if.end33

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %sw.bb28
  %binner = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %binner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %binner, align 4
  %cmp34 = icmp eq ptr %26, %subdev
  br i1 %cmp34, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %scaler38 = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %scaler38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scaler38, align 4
  %cmp39 = icmp eq ptr %28, %subdev
  br i1 %cmp39, label %land.lhs.true41, label %if.end37.sw.default_crit_edge

if.end37.sw.default_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

land.lhs.true41:                                  ; preds = %if.end37
  %call42 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 122, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %land.lhs.true41.sw.default_crit_edge, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true41.sw.default_crit_edge:             ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %land.lhs.true41.sw.default_crit_edge, %if.end37.sw.default_crit_edge, %entry.sw.default_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %land.lhs.true41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %if.end27, %land.lhs.true23.cleanup_crit_edge, %if.end19, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.end27 ], [ -22, %if.end19 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %land.lhs.true16.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ -22, %sw.bb28.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %land.lhs.true41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_set_compose_scaler(ptr nocapture noundef readonly %subdev, ptr nocapture noundef %sel, ptr nocapture noundef readonly %crops) unnamed_addr #0 align 64 {
entry:
  %try = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %2 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor1, align 4
  %call2 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %try) #10
  %4 = getelementptr inbounds [4 x i32], ptr %try, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %try, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %try, i32 0, i32 3
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %7 = getelementptr inbounds i8, ptr %try, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crops, align 4
  %width3 = getelementptr inbounds %struct.v4l2_rect, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width3, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %10, i32 %14)
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %19 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crops, align 4
  %height9 = getelementptr inbounds %struct.v4l2_rect, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height9, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %18, i32 %22)
  %24 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height, align 4
  %25 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crops, align 4
  %width19 = getelementptr inbounds %struct.v4l2_rect, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %width19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width19, align 4
  %call20 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul = mul i32 %call20, %28
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  %div = udiv i32 %mul, %30
  %31 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %crops, align 4
  %height24 = getelementptr inbounds %struct.v4l2_rect, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %height24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height24, align 4
  %call25 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul26 = mul i32 %call25, %34
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %div29 = udiv i32 %mul26, %36
  %37 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %crops, align 4
  %width31 = getelementptr inbounds %struct.v4l2_rect, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width31, align 4
  %call32 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul33 = mul i32 %call32, %40
  %call34 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 79, i32 noundef 0)
  %div35 = udiv i32 %mul33, %call34
  %call36 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 123, i32 noundef 0)
  %41 = tail call i32 @llvm.umax.i32(i32 %div, i32 %call36)
  %call43 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 124, i32 noundef 0)
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %call43)
  %call50 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 123, i32 noundef 0)
  %43 = tail call i32 @llvm.umax.i32(i32 %div29, i32 %call50)
  %call57 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 124, i32 noundef 0)
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %call57)
  %call64 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 123, i32 noundef 0)
  %45 = tail call i32 @llvm.umax.i32(i32 %div35, i32 %call64)
  %call71 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 124, i32 noundef 0)
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %call71)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_set_compose_scaler.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_set_compose_scaler, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !502

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_set_compose_scaler.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %42, i32 noundef %44, i32 noundef %46) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %47 = tail call i32 @llvm.umin.i32(i32 %42, i32 %44)
  %48 = tail call i32 @llvm.umin.i32(i32 %46, i32 %47)
  %49 = tail call i32 @llvm.umax.i32(i32 %42, i32 %44)
  %50 = tail call i32 @llvm.umin.i32(i32 %46, i32 %49)
  %51 = ptrtoint ptr %try to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %try, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp107.not = icmp eq i32 %48, %50
  br i1 %cmp107.not, label %if.end111, label %if.end111.thread

if.end111:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %49)
  %cmp112.not.not = icmp ugt i32 %46, %49
  br i1 %cmp112.not.not, label %if.end111.if.end122.sink.split_crit_edge, label %if.end111.if.end122_crit_edge

if.end111.if.end122_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.end111.if.end122.sink.split_crit_edge:         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.sink.split

if.end111.thread:                                 ; preds = %do.end
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %49)
  %cmp112.not6.not = icmp ugt i32 %46, %49
  br i1 %cmp112.not6.not, label %if.then117, label %if.end111.thread.if.end122_crit_edge

if.end111.thread.if.end122_crit_edge:             ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then117:                                       ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #12
  %add9 = add i32 %48, 1
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add9, ptr %5, align 4
  br label %if.end122.sink.split

if.end122.sink.split:                             ; preds = %if.then117, %if.end111.if.end122.sink.split_crit_edge
  %.sink20 = phi i32 [ %50, %if.then117 ], [ %48, %if.end111.if.end122.sink.split_crit_edge ]
  %.sink = phi ptr [ %6, %if.then117 ], [ %4, %if.end111.if.end122.sink.split_crit_edge ]
  %ntry.1.ph = phi i32 [ 4, %if.then117 ], [ 2, %if.end111.if.end122.sink.split_crit_edge ]
  %add = add i32 %.sink20, 1
  %54 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %.sink, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.end111.thread.if.end122_crit_edge, %if.end111.if.end122_crit_edge
  %ntry.1 = phi i32 [ 1, %if.end111.if.end122_crit_edge ], [ 2, %if.end111.thread.if.end122_crit_edge ], [ %ntry.1.ph, %if.end122.sink.split ]
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %dev150 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end122
  %scale_m.019 = phi i32 [ %call2, %if.end122 ], [ %scale_m.3, %cleanup.for.body_crit_edge ]
  %mode.018 = phi i32 [ 1, %if.end122 ], [ %mode.3, %cleanup.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %if.end122 ], [ %inc185, %cleanup.for.body_crit_edge ]
  %best.015 = phi i32 [ -2147483648, %if.end122 ], [ %best.3, %cleanup.for.body_crit_edge ]
  %55 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crops, align 4
  %width125 = getelementptr inbounds %struct.v4l2_rect, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %width125 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width125, align 4
  %arrayidx126 = getelementptr [4 x i32], ptr %try, i32 0, i32 %i.016
  %59 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx126, align 4
  %div127 = udiv i32 %58, %60
  %call128 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul129 = mul i32 %call128, %div127
  %61 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %width, align 4
  %63 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %crops, align 4
  %height133 = getelementptr inbounds %struct.v4l2_rect, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %height133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height133, align 4
  %67 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height, align 4
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %call136 = tail call fastcc i32 @scaling_goodness(ptr noundef %subdev, i32 noundef %mul129, i32 noundef %62, i32 noundef %66, i32 noundef %68, i32 noundef %70)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_set_compose_scaler.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_set_compose_scaler, %if.then149)) #10
          to label %do.end154 [label %if.then149], !srcloc !502

if.then149:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_set_compose_scaler.__UNIQUE_ID_ddebug370, ptr noundef %dev150, ptr noundef nonnull @.str.87, i32 noundef %60, i32 noundef %i.016) #10
  br label %do.end154

do.end154:                                        ; preds = %if.then149, %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call136, i32 %best.015)
  %cmp155 = icmp sgt i32 %call136, %best.015
  %71 = tail call i32 @llvm.smax.i32(i32 %call136, i32 %best.015)
  %mode.1 = select i1 %cmp155, i32 1, i32 %mode.018
  %scale_m.1 = select i1 %cmp155, i32 %60, i32 %scale_m.019
  %call159 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 122, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call159)
  %cmp160 = icmp eq i32 %call159, 1
  br i1 %cmp160, label %do.end154.cleanup_crit_edge, label %if.end162

do.end154.cleanup_crit_edge:                      ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end162:                                        ; preds = %do.end154
  %72 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %crops, align 4
  %width164 = getelementptr inbounds %struct.v4l2_rect, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %width164 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width164, align 4
  %div166 = udiv i32 %75, %60
  %call167 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul168 = mul i32 %call167, %div166
  %76 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %width, align 4
  %78 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %crops, align 4
  %height172 = getelementptr inbounds %struct.v4l2_rect, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %height172 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %height172, align 4
  %div174 = udiv i32 %81, %60
  %call175 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul176 = mul i32 %call175, %div174
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 4
  %call180 = tail call fastcc i32 @scaling_goodness(ptr noundef %subdev, i32 noundef %mul168, i32 noundef %77, i32 noundef %mul176, i32 noundef %83, i32 noundef %85)
  call void @__sanitizer_cov_trace_cmp4(i32 %call180, i32 %71)
  %cmp181 = icmp sgt i32 %call180, %71
  br i1 %cmp181, label %if.then182, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then182:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then182, %if.end162.cleanup_crit_edge, %do.end154.cleanup_crit_edge
  %best.3 = phi i32 [ %71, %do.end154.cleanup_crit_edge ], [ %call180, %if.then182 ], [ %71, %if.end162.cleanup_crit_edge ]
  %mode.3 = phi i32 [ %mode.1, %do.end154.cleanup_crit_edge ], [ 2, %if.then182 ], [ %mode.1, %if.end162.cleanup_crit_edge ]
  %scale_m.3 = phi i32 [ %scale_m.1, %do.end154.cleanup_crit_edge ], [ %60, %if.then182 ], [ %scale_m.1, %if.end162.cleanup_crit_edge ]
  %inc185 = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc185, %ntry.1
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  %86 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %crops, align 4
  %width187 = getelementptr inbounds %struct.v4l2_rect, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %width187 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %width187, align 4
  %div188 = udiv i32 %89, %scale_m.3
  %call189 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul190 = mul i32 %call189, %div188
  %and = and i32 %mul190, -2
  %90 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.3)
  %cmp193 = icmp eq i32 %mode.3, 2
  %91 = ptrtoint ptr %crops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %crops, align 4
  %height196 = getelementptr inbounds %struct.v4l2_rect, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %height196 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height196, align 4
  br i1 %cmp193, label %if.then194, label %for.end.if.end207_crit_edge

for.end.if.end207_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

if.then194:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %div197 = udiv i32 %94, %scale_m.3
  %call198 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 125, i32 noundef 0)
  %mul199 = mul i32 %call198, %div197
  %and200 = and i32 %mul199, -2
  br label %if.end207

if.end207:                                        ; preds = %if.then194, %for.end.if.end207_crit_edge
  %storemerge = phi i32 [ %and200, %if.then194 ], [ %94, %for.end.if.end207_crit_edge ]
  %95 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %storemerge, ptr %height, align 4
  %96 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp208 = icmp eq i32 %97, 1
  br i1 %cmp208, label %if.then209, label %if.end207.if.end212_crit_edge

if.end207.if.end212_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then209:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %scale_m.3 to i8
  %scale_m210 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 24
  %98 = ptrtoint ptr %scale_m210 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv, ptr %scale_m210, align 2
  %conv211 = trunc i32 %mode.3 to i8
  %scaling_mode = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 25
  %99 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv211, ptr %scaling_mode, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.end207.if.end212_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %try) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scaling_goodness(ptr nocapture noundef readonly %subdev, i32 noundef %w, i32 noundef %ask_w, i32 noundef %h, i32 noundef %ask_h, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %and = and i32 %w, -2
  %and2 = and i32 %ask_w, -2
  %and3 = and i32 %h, -2
  %and4 = and i32 %ask_h, -2
  %and5 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp = icmp slt i32 %and, %and2
  %spec.select = select i1 %cmp, i32 -100000, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and4)
  %cmp7 = icmp slt i32 %and3, %and4
  %sub9 = add nsw i32 %spec.select, -100000
  %spec.select83 = select i1 %cmp7, i32 %sub9, i32 %spec.select
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge
  %val.1 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ %spec.select83, %if.then ]
  %and12 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end23_crit_edge, label %if.then14

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp15 = icmp sgt i32 %and, %and2
  %sub17 = add nsw i32 %val.1, -100000
  %spec.select82 = select i1 %cmp15, i32 %sub17, i32 %val.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and4)
  %cmp19 = icmp sgt i32 %and3, %and4
  %sub21 = add nsw i32 %spec.select82, -100000
  %spec.select84 = select i1 %cmp19, i32 %sub21, i32 %spec.select82
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.end11.if.end23_crit_edge
  %val.3 = phi i32 [ %val.1, %if.end11.if.end23_crit_edge ], [ %spec.select84, %if.then14 ]
  %sub24 = sub i32 %and, %and2
  %4 = tail call i32 @llvm.abs.i32(i32 %sub24, i1 false)
  %sub30 = sub i32 %and3, %and4
  %5 = tail call i32 @llvm.abs.i32(i32 %sub30, i1 false)
  %6 = add i32 %5, %4
  %sub38 = sub i32 %val.3, %6
  %call39 = tail call i32 @ccs_get_limit(ptr noundef %1, i32 noundef 79, i32 noundef 0)
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call39)
  %cmp40 = icmp ult i32 %and, %call39
  %sub42 = add i32 %sub38, -100000000
  %val.4 = select i1 %cmp40, i32 %sub42, i32 %sub38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scaling_goodness.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scaling_goodness, %if.then49)) #10
          to label %do.end [label %if.then49], !srcloc !502

if.then49:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scaling_goodness.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %and, i32 noundef %and2, i32 noundef %and3, i32 noundef %and4, i32 noundef %val.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then49, %if.end23
  ret i32 %val.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_registered(ptr nocapture noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %scaler = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scaler, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %binner = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %binner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %binner, align 4
  %call = tail call fastcc i32 @ccs_register_subdev(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %3, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pixel_array, align 4
  %binner5 = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %binner5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %binner5, align 4
  %call6 = tail call fastcc i32 @ccs_register_subdev(ptr noundef %1, ptr noundef %7, ptr noundef %9, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %out_err

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_err:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensor1, align 4
  %ssds_used.i = getelementptr inbounds %struct.ccs_sensor, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ssds_used.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssds_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5.i = icmp ugt i32 %13, 1
  br i1 %cmp5.i, label %out_err.for.body.i_crit_edge, label %out_err.cleanup_crit_edge

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_err.for.body.i_crit_edge:                     ; preds = %out_err
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out_err.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %out_err.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ccs_sensor, ptr %11, i32 0, i32 1, i32 %i.06.i
  tail call void @v4l2_device_unregister_subdev(ptr noundef %arrayidx.i) #10
  %inc.i = add nuw i32 %i.06.i, 1
  %14 = ptrtoint ptr %ssds_used.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssds_used.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %out_err.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call6, %out_err.cleanup_crit_edge ], [ %call6, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccs_unregistered(ptr nocapture noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %subdev, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  %ssds_used = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssds_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5 = icmp ugt i32 %3, 1
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ccs_sensor, ptr %1, i32 0, i32 1, i32 %i.06
  tail call void @v4l2_device_unregister_subdev(ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.06, 1
  %4 = ptrtoint ptr %ssds_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssds_used, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_open(ptr noundef readonly %sd, ptr nocapture noundef readonly %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.ccs_subdev, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor1, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %npads = getelementptr inbounds %struct.ccs_subdev, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.not = icmp eq i32 %3, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %internal_csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 17
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %i.048, %conv.i
  br i1 %cmp.not.i, label %for.body.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !504

for.body.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %for.body.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %i.048, %for.body.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  %conv.i38 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048, i32 %conv.i38)
  %cmp.not.i39 = icmp ult i32 %i.048, %conv.i38
  br i1 %cmp.not.i39, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i40, !prof !504

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_crop.exit

do.end.i40:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i40, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i41 = phi i32 [ 0, %do.end.i40 ], [ %i.048, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i41, i32 1
  %top.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i41, i32 1, i32 1
  %16 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top.i, align 4
  %17 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %try_crop.i, align 4
  %18 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensor1, align 4
  %call.i = tail call i32 @ccs_get_limit(ptr noundef %19, i32 noundef 77, i32 noundef 0) #10
  %add.i = add i32 %call.i, 1
  %width.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i41, i32 1, i32 2
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %width.i, align 4
  %21 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor1, align 4
  %call2.i = tail call i32 @ccs_get_limit(ptr noundef %22, i32 noundef 78, i32 noundef 0) #10
  %add3.i = add i32 %call2.i, 1
  %height.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i41, i32 1, i32 3
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add3.i, ptr %height.i, align 4
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = load i32, ptr %height.i, align 4
  %height5 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 1
  %28 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %height5, align 4
  %29 = ptrtoint ptr %internal_csi_format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %internal_csi_format, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %33 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %code6, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 3
  %34 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %field, align 4
  %35 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pixel_array, align 4
  %cmp7.not = icmp eq ptr %36, %sd
  br i1 %cmp7.not, label %if.end, label %v4l2_subdev_get_try_crop.exit.cleanup_crit_edge

v4l2_subdev_get_try_crop.exit.cleanup_crit_edge:  ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %v4l2_subdev_get_try_crop.exit
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %39 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_pads.i, align 4
  %conv.i43 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048, i32 %conv.i43)
  %cmp.not.i44 = icmp ult i32 %i.048, %conv.i43
  br i1 %cmp.not.i44, label %if.end.v4l2_subdev_get_try_compose.exit_crit_edge, label %do.end.i45, !prof !504

if.end.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_compose.exit

do.end.i45:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i45, %if.end.v4l2_subdev_get_try_compose.exit_crit_edge
  %spec.select.i46 = phi i32 [ 0, %do.end.i45 ], [ %i.048, %if.end.v4l2_subdev_get_try_compose.exit_crit_edge ]
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %42, i32 %spec.select.i46, i32 2
  %43 = call ptr @memcpy(ptr %try_compose.i, ptr %try_crop.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_get_try_compose.exit, %v4l2_subdev_get_try_crop.exit.cleanup_crit_edge
  %inc = add nuw i32 %i.048, 1
  %44 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %npads, align 4
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_register_subdev(ptr nocapture noundef readonly %sensor, ptr noundef %ssd, ptr noundef %sink_ssd, i16 noundef zeroext %source_pad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %tobool.not = icmp eq ptr %sink_ssd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %npads = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 7
  %4 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npads, align 4
  %conv = trunc i32 %5 to i16
  %pads = getelementptr inbounds %struct.ccs_subdev, ptr %ssd, i32 0, i32 1
  %call2 = tail call i32 @media_entity_pads_init(ptr noundef %ssd, i16 noundef zeroext %conv, ptr noundef %pads) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 4
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_dev, align 4
  %call9 = tail call i32 @v4l2_device_register_subdev(ptr noundef %9, ptr noundef %ssd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.91) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %call21 = tail call i32 @media_create_pad_link(ptr noundef %ssd, i16 noundef zeroext %source_pad, ptr noundef nonnull %sink_ssd, i16 noundef zeroext 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end16.cleanup_crit_edge, label %do.end26

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.94) #13
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ssd) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end16.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call9, %do.end14 ], [ %call21, %do.end26 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_read_addr_8only(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_read_addr_noconv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_set_name(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_set_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %sensor1 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor1, align 4
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 9963796, label %entry.sw.bb_crit_edge
    i32 9963797, label %entry.sw.bb_crit_edge226
    i32 10356993, label %sw.bb10
    i32 10422529, label %sw.bb29
    i32 10422531, label %for.cond.preheader
  ]

entry.sw.bb_crit_edge226:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %arrayidx = getelementptr %struct.ccs_sensor, ptr %3, i32 0, i32 47, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp42 = icmp eq i32 %14, 1
  tail call void @v4l2_ctrl_activate(ptr noundef %12, i1 noundef zeroext %cmp42) #10
  %arrayidx.1 = getelementptr %struct.ccs_sensor, ptr %3, i32 0, i32 47, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %17 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp42.1 = icmp eq i32 %18, 1
  tail call void @v4l2_ctrl_activate(ptr noundef %16, i1 noundef zeroext %cmp42.1) #10
  %arrayidx.2 = getelementptr %struct.ccs_sensor, ptr %3, i32 0, i32 47, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  %21 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp42.2 = icmp eq i32 %22, 1
  tail call void @v4l2_ctrl_activate(ptr noundef %20, i1 noundef zeroext %cmp42.2) #10
  %arrayidx.3 = getelementptr %struct.ccs_sensor, ptr %3, i32 0, i32 47, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3, align 4
  %25 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp42.3 = icmp eq i32 %26, 1
  tail call void @v4l2_ctrl_activate(ptr noundef %24, i1 noundef zeroext %cmp42.3) #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge226
  %streaming = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 32
  %27 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %streaming, align 2, !range !506
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %hflip = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 39
  %29 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hflip, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not = icmp ne i32 %32, 0
  %spec.select = zext i1 %tobool2.not to i32
  %vflip = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 40
  %33 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vflip, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool6.not = icmp eq i32 %36, 0
  %or8 = or i32 %spec.select, 2
  %orient.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %hvflip_inv_mask = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 26
  %37 = ptrtoint ptr %hvflip_inv_mask to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hvflip_inv_mask, align 4
  %conv = zext i8 %38 to i32
  %xor = xor i32 %orient.1, %conv
  tail call fastcc void @ccs_update_mbus_formats(ptr noundef %3)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %exposure11 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 38
  %39 = ptrtoint ptr %exposure11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %exposure11, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val12, align 4
  %pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 6
  %43 = ptrtoint ptr %pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pixel_array.i, align 4
  %height.i = getelementptr inbounds %struct.ccs_subdev, ptr %44, i32 0, i32 3, i32 0, i32 3
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height.i, align 4
  %vblank.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 41
  %47 = ptrtoint ptr %vblank.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vblank.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  %add.i = add i32 %50, %46
  %call.i = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 24, i32 noundef 0) #10
  %sub.i = sub i32 %add.i, %call.i
  %minimum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 11
  %51 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %minimum.i, align 8
  %conv.i = sext i32 %sub.i to i64
  %53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 18
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %53, align 8
  %call2.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %40, i64 noundef %52, i64 noundef %conv.i, i64 noundef %55, i64 noundef %conv.i) #10
  %conv13 = sext i32 %42 to i64
  %56 = ptrtoint ptr %exposure11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %exposure11, align 4
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %maximum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %conv13)
  %cmp = icmp slt i64 %59, %conv13
  br i1 %cmp, label %if.then16, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb10
  %conv19 = trunc i64 %59 to i32
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %57, i32 0, i32 22
  %60 = ptrtoint ptr %val21 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv19, ptr %val21, align 4
  %61 = ptrtoint ptr %exposure11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %exposure11, align 4
  %call23 = tail call i32 @ccs_set_ctrl(ptr noundef %62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then16.cleanup_crit_edge, label %if.then16.sw.epilog_crit_edge

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %streaming30 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 32
  %63 = ptrtoint ptr %streaming30 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %streaming30, align 2, !range !506
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool31.not = icmp eq i8 %64, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %sw.bb29
  %pll1.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36
  %binning_horizontal.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 22
  %65 = ptrtoint ptr %binning_horizontal.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %binning_horizontal.i, align 4
  %binning_horizontal2.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 4
  %67 = ptrtoint ptr %binning_horizontal2.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %binning_horizontal2.i, align 4
  %binning_vertical.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 23
  %68 = ptrtoint ptr %binning_vertical.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %binning_vertical.i, align 1
  %binning_vertical3.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 5
  %70 = ptrtoint ptr %binning_vertical3.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %binning_vertical3.i, align 1
  %link_freq.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 45
  %71 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %link_freq.i, align 4
  %73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 19
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %val.i220 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 22
  %76 = ptrtoint ptr %val.i220 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i220, align 4
  %arrayidx.i = getelementptr i64, ptr %75, i32 %77
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx.i, align 8
  %conv.i221 = trunc i64 %79 to i32
  %link_freq5.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 11
  %80 = ptrtoint ptr %link_freq5.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i221, ptr %link_freq5.i, align 4
  %scale_m.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 24
  %81 = ptrtoint ptr %scale_m.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %scale_m.i, align 2
  %scale_m6.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 6
  %83 = ptrtoint ptr %scale_m6.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %scale_m6.i, align 2
  %csi_format.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 16
  %84 = ptrtoint ptr %csi_format.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csi_format.i, align 4
  %compressed.i = getelementptr inbounds %struct.ccs_csi_data_format, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %compressed.i, align 1
  %bits_per_pixel.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 8
  %88 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %bits_per_pixel.i, align 4
  %call.i222 = tail call fastcc i32 @ccs_pll_try(ptr noundef %3, ptr noundef %pll1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp.i = icmp slt i32 %call.i222, 0
  br i1 %cmp.i, label %if.end33.cleanup_crit_edge, label %if.end.i

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_rate_parray.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 43
  %89 = ptrtoint ptr %pixel_rate_parray.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pixel_rate_parray.i, align 4
  %pixel_rate_pixel_array.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 18
  %91 = ptrtoint ptr %pixel_rate_pixel_array.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pixel_rate_pixel_array.i, align 4
  %conv8.i = zext i32 %92 to i64
  %call9.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %90, i64 noundef %conv8.i) #10
  %pixel_rate_csi.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 46
  %93 = ptrtoint ptr %pixel_rate_csi.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pixel_rate_csi.i, align 4
  %pixel_rate_csi10.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 36, i32 17
  %95 = ptrtoint ptr %pixel_rate_csi10.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pixel_rate_csi10.i, align 4
  %conv11.i = zext i32 %96 to i64
  %call12.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %94, i64 noundef %conv11.i) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then16.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end, %for.cond.preheader, %entry.sw.epilog_crit_edge
  %orient.2 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %if.then16.sw.epilog_crit_edge ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ %xor, %if.end ], [ 0, %for.cond.preheader ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %call44 = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %sw.epilog.cleanup_crit_edge, label %if.end47

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %sw.epilog
  %97 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id, align 8
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %98, label %sw.default [
    i32 10356995, label %sw.bb49
    i32 9968117, label %sw.bb52
    i32 9968118, label %sw.bb55
    i32 10422533, label %sw.bb58
    i32 9963793, label %sw.bb83
    i32 9963796, label %if.end47.sw.bb86_crit_edge
    i32 9963797, label %if.end47.sw.bb86_crit_edge227
    i32 10356993, label %sw.bb88
    i32 10356994, label %sw.bb92
    i32 10422531, label %sw.bb99
    i32 10356996, label %sw.bb102
    i32 10356997, label %sw.bb105
    i32 10356998, label %sw.bb108
    i32 10356999, label %sw.bb111
    i32 9968120, label %sw.bb114
    i32 9968121, label %sw.bb125
    i32 10422530, label %if.end47.sw.epilog129_crit_edge
  ]

if.end47.sw.epilog129_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

if.end47.sw.bb86_crit_edge227:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb86

if.end47.sw.bb86_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb86

sw.bb49:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %100 = ptrtoint ptr %val50 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val50, align 4
  %call51 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66052, i32 noundef %101) #10
  br label %sw.epilog129

sw.bb52:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %102 = ptrtoint ptr %val53 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val53, align 4
  %call54 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66054, i32 noundef %103) #10
  br label %sw.epilog129

sw.bb55:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %104 = ptrtoint ptr %val56 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val56, align 4
  %call57 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66056, i32 noundef %105) #10
  br label %sw.epilog129

sw.bb58:                                          ; preds = %if.end47
  %call59 = tail call i32 @ccs_get_limit(ptr noundef %3, i32 noundef 27, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call59)
  %cmp60 = icmp ne i32 %call59, 2
  %val63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %106 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val63, align 4
  %call64 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66062, i32 noundef %107) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool68.not = icmp eq i32 %call64, 0
  %or.cond = select i1 %cmp60, i1 %tobool68.not, i1 false
  br i1 %or.cond, label %if.end70, label %sw.bb58.sw.epilog129_crit_edge

sw.bb58.sw.epilog129_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

if.end70:                                         ; preds = %sw.bb58
  %108 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val63, align 4
  %call72 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66064, i32 noundef %109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.sw.epilog129_crit_edge

if.end70.sw.epilog129_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

if.end75:                                         ; preds = %if.end70
  %110 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val63, align 4
  %call77 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66066, i32 noundef %111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.sw.epilog129_crit_edge

if.end75.sw.epilog129_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val63, align 4
  %call82 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66068, i32 noundef %113) #10
  br label %sw.epilog129

sw.bb83:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val84 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %114 = ptrtoint ptr %val84 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val84, align 4
  %call85 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66050, i32 noundef %115) #10
  br label %sw.epilog129

sw.bb86:                                          ; preds = %if.end47.sw.bb86_crit_edge, %if.end47.sw.bb86_crit_edge227
  %call87 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 257, i32 noundef %orient.2) #10
  br label %sw.epilog129

sw.bb88:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_array = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 6
  %116 = ptrtoint ptr %pixel_array to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pixel_array, align 4
  %height = getelementptr inbounds %struct.ccs_subdev, ptr %117, i32 0, i32 3, i32 0, i32 3
  %118 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %height, align 4
  %val90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %120 = ptrtoint ptr %val90 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %val90, align 4
  %add = add i32 %121, %119
  %call91 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66368, i32 noundef %add) #10
  br label %sw.epilog129

sw.bb92:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_array93 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 6
  %122 = ptrtoint ptr %pixel_array93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pixel_array93, align 4
  %width = getelementptr inbounds %struct.ccs_subdev, ptr %123, i32 0, i32 3, i32 0, i32 2
  %124 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %width, align 4
  %val96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %126 = ptrtoint ptr %val96 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val96, align 4
  %add97 = add i32 %127, %125
  %call98 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 66370, i32 noundef %add97) #10
  br label %sw.epilog129

sw.bb99:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val100 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %128 = ptrtoint ptr %val100 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val100, align 4
  %call101 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 67072, i32 noundef %129) #10
  br label %sw.epilog129

sw.bb102:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val103 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %130 = ptrtoint ptr %val103 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val103, align 4
  %call104 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 67074, i32 noundef %131) #10
  br label %sw.epilog129

sw.bb105:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val106 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %132 = ptrtoint ptr %val106 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val106, align 4
  %call107 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 67076, i32 noundef %133) #10
  br label %sw.epilog129

sw.bb108:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val109 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %134 = ptrtoint ptr %val109 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val109, align 4
  %call110 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 67078, i32 noundef %135) #10
  br label %sw.epilog129

sw.bb111:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %136 = ptrtoint ptr %val112 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val112, align 4
  %call113 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 67080, i32 noundef %137) #10
  br label %sw.epilog129

sw.bb114:                                         ; preds = %if.end47
  %val115 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %138 = ptrtoint ptr %val115 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool116.not = icmp ne i32 %139, 0
  %cond = zext i1 %tobool116.not to i32
  %call117 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 2816, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.lhs.true, label %sw.bb114.sw.epilog129_crit_edge

sw.bb114.sw.epilog129_crit_edge:                  ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

land.lhs.true:                                    ; preds = %sw.bb114
  %luminance_level = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 44
  %140 = ptrtoint ptr %luminance_level to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %luminance_level, align 4
  %tobool119.not = icmp eq ptr %141, null
  br i1 %tobool119.not, label %land.lhs.true.sw.epilog129_crit_edge, label %if.then120

land.lhs.true.sw.epilog129_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

if.then120:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %val115 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %val115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool123 = icmp ne i32 %143, 0
  tail call void @v4l2_ctrl_activate(ptr noundef nonnull %141, i1 noundef zeroext %tobool123) #10
  br label %sw.epilog129

sw.bb125:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %val126 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %144 = ptrtoint ptr %val126 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %val126, align 4
  %call127 = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 2817, i32 noundef %145) #10
  br label %sw.epilog129

sw.default:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog129

sw.epilog129:                                     ; preds = %sw.default, %sw.bb125, %if.then120, %land.lhs.true.sw.epilog129_crit_edge, %sw.bb114.sw.epilog129_crit_edge, %sw.bb111, %sw.bb108, %sw.bb105, %sw.bb102, %sw.bb99, %sw.bb92, %sw.bb88, %sw.bb86, %sw.bb83, %if.end80, %if.end75.sw.epilog129_crit_edge, %if.end70.sw.epilog129_crit_edge, %sw.bb58.sw.epilog129_crit_edge, %sw.bb55, %sw.bb52, %sw.bb49, %if.end47.sw.epilog129_crit_edge
  %rval.0 = phi i32 [ -22, %sw.default ], [ %call127, %sw.bb125 ], [ %call117, %sw.bb114.sw.epilog129_crit_edge ], [ 0, %if.then120 ], [ 0, %land.lhs.true.sw.epilog129_crit_edge ], [ %call113, %sw.bb111 ], [ %call110, %sw.bb108 ], [ %call107, %sw.bb105 ], [ %call104, %sw.bb102 ], [ %call101, %sw.bb99 ], [ %call98, %sw.bb92 ], [ %call91, %sw.bb88 ], [ %call87, %sw.bb86 ], [ %call85, %sw.bb83 ], [ %call72, %if.end70.sw.epilog129_crit_edge ], [ %call77, %if.end75.sw.epilog129_crit_edge ], [ %call82, %if.end80 ], [ %call57, %sw.bb55 ], [ %call54, %sw.bb52 ], [ %call51, %sw.bb49 ], [ 0, %if.end47.sw.epilog129_crit_edge ], [ %call64, %sw.bb58.sw.epilog129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp130 = icmp sgt i32 %call44, 0
  br i1 %cmp130, label %if.then132, label %sw.epilog129.cleanup_crit_edge

sw.epilog129.cleanup_crit_edge:                   ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then132:                                       ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #12
  %call.i223 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 22
  %146 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store volatile i64 %call.i223, ptr %last_busy.i, align 8
  %call.i224 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %sw.epilog129.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.i, %if.end33.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.bb.cleanup_crit_edge ], [ %call23, %if.then16.cleanup_crit_edge ], [ -16, %sw.bb29.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %rval.0, %if.then132 ], [ %rval.0, %sw.epilog129.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call.i222, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_update_mbus_formats(ptr nocapture noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 16
  %4 = ptrtoint ptr %csi_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi_format, align 4
  %6 = ptrtoint ptr %5 to i32
  %sub = sub i32 %6, ptrtoint (ptr @ccs_csi_data_formats to i32)
  %div85 = lshr i32 %sub, 3
  %and = and i32 %div85, 536870908
  %internal_csi_format = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 17
  %7 = ptrtoint ptr %internal_csi_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %internal_csi_format, align 4
  %9 = ptrtoint ptr %8 to i32
  %sub1 = sub i32 %9, ptrtoint (ptr @ccs_csi_data_formats to i32)
  %div286 = lshr i32 %sub1, 3
  %and3 = and i32 %div286, 536870908
  %hflip.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 39
  %10 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hflip.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp ne i32 %13, 0
  %spec.select.i = zext i1 %tobool2.not.i to i32
  %vflip.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 40
  %14 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vflip.i, align 4
  %val4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  %or7.i = or i32 %spec.select.i, 2
  %spec.select26.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %or7.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %entry.if.end9.i_crit_edge
  %flip.1.i = phi i32 [ 0, %entry.if.end9.i_crit_edge ], [ %spec.select26.i, %if.then.i ]
  %hvflip_inv_mask.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 26
  %18 = ptrtoint ptr %hvflip_inv_mask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hvflip_inv_mask.i, align 4
  %conv.i = zext i8 %19 to i32
  %xor.i = xor i32 %flip.1.i, %conv.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pixel_order.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_update_mbus_formats, %if.then14.i)) #10
          to label %ccs_pixel_order.exit [label %if.then14.i], !srcloc !502

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pixel_order.__UNIQUE_ID_ddebug302, ptr noundef %dev.i, ptr noundef nonnull @.str.204, i32 noundef %xor.i) #10
  br label %ccs_pixel_order.exit

ccs_pixel_order.exit:                             ; preds = %if.then14.i, %if.end9.i
  %default_pixel_order.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 19
  %20 = ptrtoint ptr %default_pixel_order.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %default_pixel_order.i, align 4
  %xor16.i = xor i32 %21, %xor.i
  %22 = tail call i32 @llvm.umax.i32(i32 %and3, i32 %and)
  %add = add i32 %xor16.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp5 = icmp ugt i32 %add, 23
  br i1 %cmp5, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %ccs_pixel_order.exit
  %.b87 = load i1, ptr @ccs_update_mbus_formats.__already_done, align 1
  br i1 %.b87, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !504

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ccs_update_mbus_formats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 589, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end43:                                         ; preds = %ccs_pixel_order.exit
  call void @__sanitizer_cov_trace_pc() #12
  %default_mbus_frame_fmts = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 18
  %23 = ptrtoint ptr %default_mbus_frame_fmts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %default_mbus_frame_fmts, align 4
  %shl = shl i32 %24, %xor16.i
  %mbus_frame_fmts = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 15
  %25 = ptrtoint ptr %mbus_frame_fmts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %mbus_frame_fmts, align 4
  %add44 = add i32 %xor16.i, %and
  %arrayidx = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %add44
  %26 = ptrtoint ptr %csi_format to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %csi_format, align 4
  %add46 = add i32 %xor16.i, %and3
  %arrayidx47 = getelementptr [24 x %struct.ccs_csi_data_format], ptr @ccs_csi_data_formats, i32 0, i32 %add46
  %27 = ptrtoint ptr %internal_csi_format to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx47, ptr %internal_csi_format, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_update_mbus_formats.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_update_mbus_formats, %if.then60)) #10
          to label %cleanup [label %if.then60], !srcloc !502

if.then60:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %arrayidx61 = getelementptr [4 x ptr], ptr @pixel_order_str, i32 0, i32 %xor16.i
  %28 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_update_mbus_formats.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.202, ptr noundef %29) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end43, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_write_data_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor4 = getelementptr inbounds %struct.ccs_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sensor4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor4, align 4
  %streaming5 = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %streaming5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streaming5, align 2, !range !506
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !508
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !509
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !510
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %streaming5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %streaming5, align 2, !range !506
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %call1.i = tail call i32 @ccs_write_addr(ptr noundef %3, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.ccs_stop_streaming.exit_crit_edge

if.then9.ccs_stop_streaming.exit_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

if.end.i:                                         ; preds = %if.then9
  %quirk.i = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 35, i32 16
  %13 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %quirk.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %if.end.i.ccs_stop_streaming.exit_crit_edge, label %land.lhs.true.i

if.end.i.ccs_stop_streaming.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %post_streamoff.i = getelementptr inbounds %struct.ccs_quirk, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %post_streamoff.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %post_streamoff.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.ccs_stop_streaming.exit_crit_edge, label %cond.true.i

land.lhs.true.i.ccs_stop_streaming.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

cond.true.i:                                      ; preds = %land.lhs.true.i
  %call9.i = tail call i32 %16(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %phi.cmp.i = icmp eq i32 %call9.i, 0
  br i1 %phi.cmp.i, label %cond.true.i.ccs_stop_streaming.exit_crit_edge, label %do.end.i

cond.true.i.ccs_stop_streaming.exit_crit_edge:    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ccs_stop_streaming.exit

do.end.i:                                         ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.73) #13
  br label %ccs_stop_streaming.exit

ccs_stop_streaming.exit:                          ; preds = %do.end.i, %cond.true.i.ccs_stop_streaming.exit_crit_edge, %land.lhs.true.i.ccs_stop_streaming.exit_crit_edge, %if.end.i.ccs_stop_streaming.exit_crit_edge, %if.then9.ccs_stop_streaming.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %if.end11

if.end11:                                         ; preds = %ccs_stop_streaming.exit, %if.end.if.end11_crit_edge
  %17 = ptrtoint ptr %streaming5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %streaming5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor4 = getelementptr inbounds %struct.ccs_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sensor4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor4, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  %streaming = getelementptr inbounds %struct.ccs_sensor, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streaming, align 2, !range !506
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @ccs_start_streaming(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rval.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 236)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 236)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !83, !85, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !122, !124, !125, !126, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !174, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !283, !284, !285, !287, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !326, !327, !328, !330, !331, !332, !333, !334, !335, !337, !338, !340, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !373, !374, !376, !378, !380, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !400, !401, !402, !404, !405, !407, !408, !409, !411, !413, !415, !416, !417, !419, !420, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !461, !462, !463, !464, !466, !467, !468, !470, !471, !472, !474, !475, !476, !478, !479, !481, !482, !484, !486, !488, !490}
!llvm.module.flags = !{!492, !493, !494, !495, !496, !497, !498, !499}
!llvm.ident = !{!500}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 125, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ccs_replace_limit.__UNIQUE_ID_ddebug293, !1, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ccs__404_3762_ccs_module_init6, !7, !"__initcall__kmod_ccs__404_3762_ccs_module_init6", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3762, i32 1}
!8 = !{ptr @__exitcall_ccs_module_cleanup, !9, !"__exitcall_ccs_module_cleanup", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3763, i32 1}
!10 = !{ptr @__UNIQUE_ID_author405, !11, !"__UNIQUE_ID_author405", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3765, i32 1}
!12 = !{ptr @__UNIQUE_ID_description406, !13, !"__UNIQUE_ID_description406", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3766, i32 1}
!14 = !{ptr @__UNIQUE_ID_file407, !15, !"__UNIQUE_ID_file407", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3767, i32 1}
!16 = !{ptr @__UNIQUE_ID_license408, !15, !"__UNIQUE_ID_license408", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias409, !18, !"__UNIQUE_ID_alias409", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3768, i32 1}
!19 = !{ptr @ccs_limit_offsets, !20, !"ccs_limit_offsets", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 43, i32 3}
!21 = !{ptr @ccs_i2c_driver, !22, !"ccs_i2c_driver", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3720, i32 26}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2751, i32 8}
!25 = !{ptr @dev_attr_nvm, !24, !"dev_attr_nvm", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2738, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nvm_show._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @nvm_show._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2769, i32 8}
!35 = !{ptr @dev_attr_ident, !34, !"dev_attr_ident", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2761, i32 26}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2765, i32 26}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3316, i32 3}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ccs_probe._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ccs_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3322, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ccs_probe._entry.14, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ccs_probe._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3325, i32 3}
!52 = !{ptr @ccs_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ccs_probe._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3337, i32 5}
!56 = !{ptr @ccs_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ccs_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3345, i32 5}
!60 = !{ptr @ccs_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ccs_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3352, i32 4}
!64 = !{ptr @ccs_probe.__UNIQUE_ID_ddebug399, !63, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3356, i32 3}
!67 = !{ptr @ccs_probe.__UNIQUE_ID_ddebug400, !66, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3359, i32 3}
!70 = !{ptr @ccs_probe._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ccs_probe._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3364, i32 3}
!74 = !{ptr @ccs_probe._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ccs_probe._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3368, i32 56}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3375, i32 12}
!80 = !{ptr @ccs_probe.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3384, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3393, i32 4}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3410, i32 4}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3461, i32 3}
!89 = !{ptr @ccs_probe._entry.40, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ccs_probe._entry_ptr.42, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3478, i32 4}
!93 = !{ptr @ccs_probe.__UNIQUE_ID_ddebug403, !92, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3487, i32 3}
!96 = !{ptr @ccs_probe._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ccs_probe._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3496, i32 4}
!100 = !{ptr @ccs_probe._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ccs_probe._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3581, i32 44}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3583, i32 44}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3585, i32 49}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3612, i32 3}
!110 = !{ptr @ccs_probe._entry.53, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ccs_probe._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3220, i32 3}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ccs_get_hwconfig._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @ccs_get_hwconfig._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3225, i32 2}
!119 = !{ptr @ccs_get_hwconfig.__UNIQUE_ID_ddebug396, !118, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3227, i32 42}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3237, i32 4}
!124 = !{ptr @ccs_get_hwconfig._entry.60, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ccs_get_hwconfig._entry_ptr.62, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3243, i32 51}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3246, i32 3}
!130 = !{ptr @ccs_get_hwconfig._entry.64, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ccs_get_hwconfig._entry_ptr.66, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3248, i32 2}
!134 = !{ptr @ccs_get_hwconfig.__UNIQUE_ID_ddebug397, !133, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3252, i32 3}
!137 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ccs_get_hwconfig._entry.68, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ccs_get_hwconfig._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3267, i32 3}
!142 = !{ptr @ccs_get_hwconfig.__UNIQUE_ID_ddebug398, !141, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!143 = !{ptr @ccs_ops, !144, !"ccs_ops", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3120, i32 37}
!145 = !{ptr @ccs_video_ops, !146, !"ccs_video_ops", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3101, i32 43}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1867, i32 3}
!149 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ccs_stop_streaming._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ccs_stop_streaming._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1843, i32 3}
!154 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @ccs_start_streaming._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @ccs_start_streaming._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @ccs_sensor_ops, !158, !"ccs_sensor_ops", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3115, i32 44}
!159 = !{ptr @ccs_pad_ops, !160, !"ccs_pad_ops", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3107, i32 41}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2003, i32 2}
!163 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ccs_enum_mbus_code._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ccs_enum_mbus_code._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2021, i32 4}
!168 = !{ptr @ccs_enum_mbus_code._entry.79, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ccs_enum_mbus_code._entry_ptr.81, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @ccs_csi_data_formats, !171, !"ccs_csi_data_formats", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 527, i32 41}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2141, i32 3}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2300, i32 2}
!178 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @scaling_goodness.__UNIQUE_ID_ddebug344, !177, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2390, i32 2}
!182 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ccs_set_compose_scaler.__UNIQUE_ID_ddebug361, !181, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2420, i32 3}
!186 = !{ptr @ccs_set_compose_scaler.__UNIQUE_ID_ddebug370, !185, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!187 = !{ptr @ccs_internal_src_ops, !188, !"ccs_internal_src_ops", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3130, i32 46}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2953, i32 3}
!191 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @ccs_register_subdev._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @ccs_register_subdev._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2959, i32 3}
!196 = !{ptr @ccs_register_subdev._entry.90, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @ccs_register_subdev._entry_ptr.92, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2967, i32 3}
!200 = !{ptr @ccs_register_subdev._entry.93, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @ccs_register_subdev._entry_ptr.95, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 68, i32 48}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 68, i32 57}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 68, i32 64}
!208 = distinct !{null, !209, !"ccs_regulators", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 68, i32 27}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1552, i32 3}
!212 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @ccs_power_on._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @ccs_power_on._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1561, i32 4}
!217 = !{ptr @ccs_power_on.__UNIQUE_ID_ddebug335, !216, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1593, i32 4}
!220 = !{ptr @ccs_power_on._entry.102, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @ccs_power_on._entry_ptr.104, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1613, i32 4}
!224 = !{ptr @ccs_power_on._entry.105, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @ccs_power_on._entry_ptr.107, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1621, i32 3}
!228 = !{ptr @ccs_power_on._entry.108, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @ccs_power_on._entry_ptr.110, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1628, i32 3}
!232 = !{ptr @ccs_power_on._entry.111, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @ccs_power_on._entry_ptr.113, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1634, i32 3}
!236 = !{ptr @ccs_power_on._entry.114, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @ccs_power_on._entry_ptr.116, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1641, i32 3}
!240 = !{ptr @ccs_power_on._entry.117, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @ccs_power_on._entry_ptr.119, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1648, i32 3}
!244 = !{ptr @ccs_power_on._entry.120, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @ccs_power_on._entry_ptr.122, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1662, i32 3}
!248 = !{ptr @ccs_power_on._entry.123, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @ccs_power_on._entry_ptr.125, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.126, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2845, i32 3}
!252 = !{ptr @.str.127, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @ccs_identify_module._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @ccs_identify_module._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.128, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2850, i32 3}
!257 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug387, !256, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2853, i32 3}
!260 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug388, !259, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2856, i32 2}
!263 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug389, !262, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2862, i32 3}
!266 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug390, !265, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2866, i32 3}
!269 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug391, !268, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2870, i32 2}
!272 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug392, !271, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2875, i32 3}
!275 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug393, !274, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2881, i32 3}
!278 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug394, !277, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2884, i32 17}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2928, i32 3}
!283 = !{ptr @ccs_identify_module._entry.137, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @ccs_identify_module._entry_ptr.139, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 2931, i32 2}
!287 = !{ptr @ccs_identify_module.__UNIQUE_ID_ddebug395, !286, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 49, i32 2}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 50, i32 2}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 51, i32 2}
!294 = !{ptr @.str.144, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 52, i32 2}
!296 = !{ptr @.str.145, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 53, i32 2}
!298 = !{ptr @.str.146, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 54, i32 2}
!300 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 55, i32 2}
!302 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 56, i32 2}
!304 = !{ptr @.str.149, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 57, i32 2}
!306 = !{ptr @.str.150, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 58, i32 2}
!308 = !{ptr @.str.151, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 59, i32 2}
!310 = !{ptr @ccs_module_idents, !311, !"ccs_module_idents", i1 false, i1 false}
!311 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 48, i32 38}
!312 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 182, i32 4}
!314 = !{ptr @.str.153, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @ccs_read_all_limits._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @ccs_read_all_limits._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 197, i32 5}
!319 = !{ptr @ccs_read_all_limits._entry.154, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @ccs_read_all_limits._entry_ptr.156, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 208, i32 4}
!323 = !{ptr @ccs_read_all_limits.__UNIQUE_ID_ddebug294, !322, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!324 = !{ptr @.str.159, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 220, i32 3}
!326 = !{ptr @ccs_read_all_limits._entry.158, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @ccs_read_all_limits._entry_ptr.160, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.161, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 256, i32 2}
!330 = !{ptr @.str.162, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug295, !329, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!332 = !{ptr @.str.163, !329, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.164, !329, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.165, !329, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.166, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 262, i32 2}
!337 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug296, !336, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!338 = !{ptr @.str.167, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 291, i32 4}
!340 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug297, !339, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!341 = !{ptr @.str.168, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 298, i32 12}
!343 = !{ptr @.str.169, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 300, i32 12}
!345 = !{ptr @.str.170, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 304, i32 11}
!347 = !{ptr @.str.171, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 307, i32 11}
!349 = !{ptr @.str.172, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 310, i32 11}
!351 = !{ptr @.str.173, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 313, i32 11}
!353 = !{ptr @.str.174, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 316, i32 11}
!355 = !{ptr @.str.175, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 319, i32 11}
!357 = !{ptr @.str.176, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 323, i32 3}
!359 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug298, !358, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!360 = !{ptr @.str.177, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 351, i32 3}
!362 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug299, !361, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!363 = !{ptr @.str.178, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 357, i32 2}
!365 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug300, !364, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 359, i32 2}
!368 = !{ptr @ccs_read_frame_fmt.__UNIQUE_ID_ddebug301, !367, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!369 = !{ptr @.str.180, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1529, i32 3}
!371 = !{ptr @.str.181, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @ccs_update_phy_ctrl._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @ccs_update_phy_ctrl._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @ccs_entity_ops, !375, !"ccs_entity_ops", i1 false, i1 false}
!375 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3126, i32 45}
!376 = !{ptr @ccs_internal_ops, !377, !"ccs_internal_ops", i1 false, i1 false}
!377 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3136, i32 46}
!378 = !{ptr @ccs_init_controls._key, !379, !"_key", i1 false, i1 false}
!379 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 806, i32 9}
!380 = !{ptr @.str.182, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.183, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 819, i32 6}
!383 = !{ptr @.str.184, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 821, i32 6}
!385 = !{ptr @.str.185, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 823, i32 6}
!387 = !{ptr @.str.186, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 825, i32 6}
!389 = !{ptr @.str.187, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 863, i32 5}
!391 = !{ptr @.str.188, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 872, i32 5}
!393 = !{ptr @.str.190, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 904, i32 12}
!395 = !{ptr @.str.192, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 919, i32 12}
!397 = !{ptr @.str.194, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 981, i32 3}
!399 = !{ptr @.str.195, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @ccs_init_controls._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @ccs_init_controls._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @ccs_init_controls._key.196, !403, !"_key", i1 false, i1 false}
!403 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 992, i32 9}
!404 = !{ptr @.str.197, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.199, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1003, i32 3}
!407 = !{ptr @ccs_init_controls._entry.198, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @ccs_init_controls._entry_ptr.200, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @ccs_ctrl_ops, !410, !"ccs_ctrl_ops", i1 false, i1 false}
!410 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 797, i32 35}
!411 = distinct !{null, !412, !"__already_done", i1 false, i1 false}
!412 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 588, i32 6}
!413 = !{ptr @.str.201, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 600, i32 2}
!415 = !{ptr @.str.202, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @ccs_update_mbus_formats.__UNIQUE_ID_ddebug305, !414, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!417 = !{ptr @.str.203, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 575, i32 2}
!419 = !{ptr @.str.204, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @ccs_pixel_order.__UNIQUE_ID_ddebug302, !418, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!421 = !{ptr @.str.205, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 554, i32 42}
!423 = !{ptr @.str.206, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 554, i32 50}
!425 = !{ptr @.str.207, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 554, i32 58}
!427 = !{ptr @.str.208, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 554, i32 66}
!429 = !{ptr @pixel_order_str, !430, !"pixel_order_str", i1 false, i1 false}
!430 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 554, i32 20}
!431 = !{ptr @.str.209, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 605, i32 2}
!433 = !{ptr @.str.210, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 606, i32 2}
!435 = !{ptr @.str.211, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 607, i32 2}
!437 = !{ptr @.str.212, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 608, i32 2}
!439 = !{ptr @.str.213, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 609, i32 2}
!441 = !{ptr @ccs_test_patterns, !442, !"ccs_test_patterns", i1 false, i1 false}
!442 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 604, i32 27}
!443 = !{ptr @.str.214, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1060, i32 2}
!445 = !{ptr @.str.215, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug314, !444, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!447 = !{ptr @.str.216, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1067, i32 3}
!449 = !{ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug315, !448, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!450 = !{ptr @.str.217, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1071, i32 2}
!452 = !{ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug316, !451, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!453 = !{ptr @.str.218, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1093, i32 3}
!455 = !{ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug317, !454, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!456 = !{ptr @.str.219, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1109, i32 4}
!458 = !{ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug318, !457, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!459 = !{ptr @.str.220, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1153, i32 4}
!461 = !{ptr @ccs_get_mbus_formats.__UNIQUE_ID_ddebug323, !460, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!462 = !{ptr @.str.221, !460, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.222, !460, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.223, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1163, i32 4}
!466 = !{ptr @ccs_get_mbus_formats._entry, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @ccs_get_mbus_formats._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.225, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1180, i32 3}
!470 = !{ptr @ccs_get_mbus_formats._entry.224, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @ccs_get_mbus_formats._entry_ptr.226, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.227, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1239, i32 2}
!474 = !{ptr @.str.228, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @ccs_pll_blanking_update.__UNIQUE_ID_ddebug328, !473, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!476 = !{ptr @.str.229, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1240, i32 2}
!478 = !{ptr @ccs_pll_blanking_update.__UNIQUE_ID_ddebug329, !477, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!479 = !{ptr @.str.230, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 1242, i32 2}
!481 = !{ptr @ccs_pll_blanking_update.__UNIQUE_ID_ddebug330, !480, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!482 = !{ptr @ccs_of_table, !483, !"ccs_of_table", i1 false, i1 false}
!483 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3706, i32 34}
!484 = !{ptr @ccs_device, !485, !"ccs_device", i1 false, i1 false}
!485 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3698, i32 32}
!486 = !{ptr @smia_device, !487, !"smia_device", i1 false, i1 false}
!487 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3694, i32 32}
!488 = !{ptr @ccs_acpi_table, !489, !"ccs_acpi_table", i1 false, i1 false}
!489 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3700, i32 36}
!490 = !{ptr @ccs_pm_ops, !491, !"ccs_pm_ops", i1 false, i1 false}
!491 = !{!"../drivers/media/i2c/ccs/ccs-core.c", i32 3715, i32 32}
!492 = !{i32 1, !"wchar_size", i32 2}
!493 = !{i32 1, !"min_enum_size", i32 4}
!494 = !{i32 8, !"branch-target-enforcement", i32 0}
!495 = !{i32 8, !"sign-return-address", i32 0}
!496 = !{i32 8, !"sign-return-address-all", i32 0}
!497 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!498 = !{i32 7, !"uwtable", i32 1}
!499 = !{i32 7, !"frame-pointer", i32 2}
!500 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!501 = !{!"auto-init"}
!502 = !{i64 2148819880, i64 2148819885, i64 2148819898, i64 2148819942, i64 2148819976, i64 2148819997}
!503 = !{!"branch_weights", i32 1, i32 2000}
!504 = !{!"branch_weights", i32 2000, i32 1}
!505 = !{i64 2148338065, i64 2148338091, i64 2148338120, i64 2148338154, i64 2148338185, i64 2148338208}
!506 = !{i8 0, i8 2}
!507 = !{i32 0, i32 33}
!508 = !{i64 2148337484}
!509 = !{i64 822307, i64 822332, i64 822354, i64 822370, i64 822382, i64 822402, i64 822426, i64 822442, i64 822454}
!510 = !{i64 2148337672}
!511 = !{i64 2148728599, i64 2148728879, i64 2148729213, i64 2148729547}
!512 = !{i64 1242768, i64 1242795}
!513 = !{i64 1243463, i64 1243490, i64 1243523, i64 1243544, i64 1243571, i64 1243597}
