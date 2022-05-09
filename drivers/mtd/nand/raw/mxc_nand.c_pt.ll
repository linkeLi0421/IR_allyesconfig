; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/mxc_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/mxc_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.mxc_nand_devtype_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mxc_nand_host = type { %struct.nand_chip, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, i32, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.46 }
%union.anon.46 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_mxc_nand__219_1857_mxcnd_driver_init6 = internal global ptr @mxcnd_driver_init, section ".initcall6.init", align 4
@mxcnd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxcnd_probe, ptr @mxcnd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxcnd_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxcnd_driver_exit = internal global ptr @mxcnd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author220 = internal constant [46 x i8] c"mxc_nand.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [41 x i8] c"mxc_nand.description=MXC NAND MTD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file222 = internal constant [44 x i8] c"mxc_nand.file=drivers/mtd/nand/raw/mxc_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [21 x i8] c"mxc_nand.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxc_nand\00", [23 x i8] zeroinitializer }, align 32
@mxcnd_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_nand_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx27_nand_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx25_nand_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx51_nand_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx53_nand_devtype_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mxcnd_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @mxcnd_attach_chip, ptr null, ptr null, ptr @mxcnd_setup_interface }, [16 x i8] zeroinitializer }, align 32
@part_probes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], [16 x i8] zeroinitializer }, align 32
@mxc_nand_command.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxc_nand_command\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/nand/raw/mxc_nand.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@mxc_nand_command.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unexpected column/row value (cmd=%u, col=%d, row=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mxc_nand_command.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unexpected column value (cmd=%u, col=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@mxc_nand_command.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unimplemented command (cmd=%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@mxc_nand_read_byte.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxc_nand_read_byte\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ret=0x%hhx (start=%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bbt_main_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_mirror_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Bbt0", [28 x i8] zeroinitializer }, align 32
@mirror_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1tbB", [28 x i8] zeroinitializer }, align 32
@imx21_nand_devtype_data = internal constant { %struct.mxc_nand_devtype_data, [36 x i8] } { %struct.mxc_nand_devtype_data { ptr @preset_v1, ptr @mxc_nand_read_page_v1, ptr @send_cmd_v1_v2, ptr @send_addr_v1_v2, ptr @send_page_v1, ptr @send_read_id_v1_v2, ptr @get_dev_status_v1_v2, ptr @check_int_v1_v2, ptr @irq_control_v1_v2, ptr @get_ecc_status_v1, ptr @mxc_v1_ooblayout_ops, ptr @mxc_nand_select_chip_v1_v3, ptr null, ptr @mxc_nand_enable_hwecc_v1_v2, i32 1, i32 0, i32 3584, i32 2048, i32 0, i32 16, i32 3, i32 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mxc_v1_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @mxc_v1_ooblayout_ecc, ptr @mxc_v1_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@wait_op_done.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wait_op_done\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timeout waiting for irq\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_op_done.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout polling for completion\0A\00", [32 x i8] zeroinitializer }, align 32
@wait_op_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"timeout! useirq=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@send_cmd_v1_v2.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_cmd_v1_v2\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"send_cmd(host, 0x%x, %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@send_cmd_v1_v2.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: RESET failed\0A\00", [46 x i8] zeroinitializer }, align 32
@send_addr_v1_v2.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send_addr_v1_v2\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"send_addr(host, 0x%x %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@imx27_nand_devtype_data = internal constant { %struct.mxc_nand_devtype_data, [36 x i8] } { %struct.mxc_nand_devtype_data { ptr @preset_v1, ptr @mxc_nand_read_page_v1, ptr @send_cmd_v1_v2, ptr @send_addr_v1_v2, ptr @send_page_v1, ptr @send_read_id_v1_v2, ptr @get_dev_status_v1_v2, ptr @check_int_v1_v2, ptr @irq_control_v1_v2, ptr @get_ecc_status_v1, ptr @mxc_v1_ooblayout_ops, ptr @mxc_nand_select_chip_v1_v3, ptr null, ptr @mxc_nand_enable_hwecc_v1_v2, i32 0, i32 0, i32 3584, i32 2048, i32 0, i32 16, i32 3, i32 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@imx25_nand_devtype_data = internal constant { %struct.mxc_nand_devtype_data, [36 x i8] } { %struct.mxc_nand_devtype_data { ptr @preset_v2, ptr @mxc_nand_read_page_v2_v3, ptr @send_cmd_v1_v2, ptr @send_addr_v1_v2, ptr @send_page_v2, ptr @send_read_id_v1_v2, ptr @get_dev_status_v1_v2, ptr @check_int_v1_v2, ptr @irq_control_v1_v2, ptr @get_ecc_status_v2, ptr @mxc_v2_ooblayout_ops, ptr @mxc_nand_select_chip_v2, ptr @mxc_nand_v2_setup_interface, ptr @mxc_nand_enable_hwecc_v1_v2, i32 0, i32 0, i32 7680, i32 4096, i32 0, i32 64, i32 9, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mxc_v2_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @mxc_v2_ooblayout_ecc, ptr @mxc_v2_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxc_nand_v2_setup_interface\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Timing out of bounds\0A\00", [42 x i8] zeroinitializer }, align 32
@mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting rate to %ldHz, %s mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"One cycle (EDO)\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RedBoot\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofpart\00", [25 x i8] zeroinitializer }, align 32
@imx51_nand_devtype_data = internal constant { %struct.mxc_nand_devtype_data, [36 x i8] } { %struct.mxc_nand_devtype_data { ptr @preset_v3, ptr @mxc_nand_read_page_v2_v3, ptr @send_cmd_v3, ptr @send_addr_v3, ptr @send_page_v3, ptr @send_read_id_v3, ptr @get_dev_status_v3, ptr @check_int_v3, ptr @irq_control_v3, ptr @get_ecc_status_v3, ptr @mxc_v2_ooblayout_ops, ptr @mxc_nand_select_chip_v1_v3, ptr null, ptr @mxc_nand_enable_hwecc_v3, i32 0, i32 1, i32 0, i32 4096, i32 7680, i32 64, i32 0, i32 0, i32 7 }, [36 x i8] zeroinitializer }, align 32
@imx53_nand_devtype_data = internal constant { %struct.mxc_nand_devtype_data, [36 x i8] } { %struct.mxc_nand_devtype_data { ptr @preset_v3, ptr @mxc_nand_read_page_v2_v3, ptr @send_cmd_v3, ptr @send_addr_v3, ptr @send_page_v3, ptr @send_read_id_v3, ptr @get_dev_status_v3, ptr @check_int_v3, ptr @irq_control_v3, ptr @get_ecc_status_v3, ptr @mxc_v2_ooblayout_ops, ptr @mxc_nand_select_chip_v1_v3, ptr null, ptr @mxc_nand_enable_hwecc_v3, i32 0, i32 1, i32 0, i32 4096, i32 7680, i32 64, i32 0, i32 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 96, i64 112, i64 144, i64 208, i64 236, i64 255]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 4096]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"mxcnd_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1849, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1851, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"mxcnd_dt_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1612, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"mxcnd_controller_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1699, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"part_probes\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 188, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1340, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1358, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1374, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1388, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 915, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"bbt_main_descr\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1440, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"bbt_mirror_descr\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1450, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"bbt_pattern\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1437, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"mirror_pattern\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1438, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"imx21_nand_devtype_data\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1461, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"mxc_v1_ooblayout_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1045, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 462, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 479, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 484, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 505, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 521, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 544, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"imx27_nand_devtype_data\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1485, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant [24 x i8] c"imx25_nand_devtype_data\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1510, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"mxc_v2_ooblayout_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1090, i32 39 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1195, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1208, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 189, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 189, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 189, i32 28 }
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"imx51_nand_devtype_data\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1536, i32 43 }
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"imx53_nand_devtype_data\00", align 1
@___asan_gen_.161 = private constant [35 x i8] c"../drivers/mtd/nand/raw/mxc_nand.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1562, i32 43 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author220, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__exitcall_mxcnd_driver_exit, ptr @__initcall__kmod_mxc_nand__219_1857_mxcnd_driver_init6, ptr @mxcnd_driver_exit, ptr @mxcnd_driver, ptr @.str, ptr @mxcnd_dt_ids, ptr @mxcnd_controller_ops, ptr @part_probes, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @bbt_main_descr, ptr @bbt_mirror_descr, ptr @bbt_pattern, ptr @mirror_pattern, ptr @imx21_nand_devtype_data, ptr @mxc_v1_ooblayout_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @imx27_nand_devtype_data, ptr @imx25_nand_devtype_data, ptr @mxc_v2_ooblayout_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @imx51_nand_devtype_data, ptr @imx53_nand_devtype_data], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcnd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcnd_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcnd_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_probes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_main_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx21_nand_devtype_data to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_v1_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx27_nand_devtype_data to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx25_nand_devtype_data to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_v2_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx51_nand_devtype_data to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx53_nand_devtype_data to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcnd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxcnd_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxcnd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxcnd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcnd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2296, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i211 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4096, i32 noundef 3520) #8
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i211, ptr %data_buf, align 8
  %tobool4.not = icmp eq ptr %call.i211, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %nand_set_flash_node.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nand_set_flash_node.exit:                         ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev8, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 15
  %4 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %chip_delay, align 4
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 34
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %priv1.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %8 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node.i.i, align 8
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 9
  %9 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mxc_nand_dev_ready, ptr %dev_ready, align 4
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mxc_nand_command, ptr %cmdfunc, align 8
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mxc_nand_read_byte, ptr %read_byte, align 4
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mxc_nand_write_buf, ptr %write_buf, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 6
  %13 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mxc_nand_read_buf, ptr %read_buf, align 8
  %set_features = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 13
  %14 = ptrtoint ptr %set_features to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mxc_nand_set_features, ptr %set_features, align 4
  %get_features = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 14
  %15 = ptrtoint ptr %get_features to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mxc_nand_get_features, ptr %get_features, align 8
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %nand_set_flash_node.exit
  %call29 = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 18
  %18 = ptrtoint ptr %devtype_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call29, ptr %devtype_data, align 8
  %setup_interface = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %call29, i32 0, i32 12
  %19 = ptrtoint ptr %setup_interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %setup_interface, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %if.then32, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %options = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options, align 8
  %or = or i32 %22, 8388608
  store i32 %or, ptr %options, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end27.if.end33_crit_edge
  %23 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devtype_data, align 8
  %needs_ip = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %needs_ip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %needs_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool35.not = icmp eq i32 %26, 0
  %call47 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  br i1 %tobool35.not, label %if.end33.if.end48_crit_edge, label %if.then36

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then36:                                        ; preds = %if.end33
  %call39 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call47) #8
  %regs_ip = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %regs_ip to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call39, ptr %regs_ip, align 8
  %cmp.i212 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.end33.if.end48_crit_edge
  %res.0 = phi ptr [ %call46, %if.end45 ], [ %call47, %if.end33.if.end48_crit_edge ]
  %call50 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %res.0) #8
  %base = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call50, ptr %base, align 4
  %cmp.i213 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %main_area0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call50, ptr %main_area0, align 8
  %32 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %devtype_data, align 8
  %regs_offset = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %regs_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regs_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool59.not = icmp eq i32 %35, 0
  br i1 %tobool59.not, label %if.end56.if.end64_crit_edge, label %if.then60

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call50, i32 %35
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %regs, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end56.if.end64_crit_edge
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %39 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %devtype_data, align 8
  %spare0_offset = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %spare0_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spare0_offset, align 4
  %add.ptr67 = getelementptr i8, ptr %38, i32 %42
  %spare0 = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %spare0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr67, ptr %spare0, align 4
  %axi_offset = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %40, i32 0, i32 18
  %44 = ptrtoint ptr %axi_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %axi_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool69.not = icmp eq i32 %45, 0
  br i1 %tobool69.not, label %if.end64.if.end75_crit_edge, label %if.then70

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr74 = getelementptr i8, ptr %38, i32 %45
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %regs_axi to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr74, ptr %regs_axi, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end64.if.end75_crit_edge
  %47 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devtype_data, align 8
  %select_chip = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %select_chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %select_chip, align 4
  %select_chip78 = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %select_chip78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %select_chip78, align 8
  %op_completion = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 15
  %52 = ptrtoint ptr %op_completion to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %op_completion, align 4
  %wait.i = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #8
  %call79 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call79, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp = icmp slt i32 %call79, 0
  br i1 %cmp, label %if.end75.cleanup_crit_edge, label %if.end83

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %if.end75
  %54 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %devtype_data, align 8
  %irq_control = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %irq_control to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %irq_control, align 4
  tail call void %57(ptr noundef nonnull %call.i, i32 noundef 0) #8
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 8
  %call.i214 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %59, ptr noundef nonnull @mxc_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool88.not = icmp eq i32 %call.i214, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk, align 8
  %call92 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %clk_act = getelementptr inbounds %struct.mxc_nand_host, ptr %call.i, i32 0, i32 10
  %62 = ptrtoint ptr %clk_act to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %clk_act, align 4
  %63 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %irqpending_quirk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irqpending_quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool97.not = icmp eq i32 %66, 0
  br i1 %tobool97.not, label %if.end95.if.end102_crit_edge, label %if.then98

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 8
  tail call void @disable_irq_nosync(i32 noundef %68) #8
  %69 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %devtype_data, align 8
  %irq_control101 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %irq_control101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irq_control101, align 4
  tail call void %72(ptr noundef nonnull %call.i, i32 noundef 1) #8
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.end95.if.end102_crit_edge
  %ops = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 16, i32 1
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @mxcnd_controller_ops, ptr %ops, align 4
  %74 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %devtype_data, align 8
  %cmp.i215.not = icmp eq ptr %75, @imx25_nand_devtype_data
  %cond = select i1 %cmp.i215.not, i32 4, i32 1
  %call.i216 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef %cond, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool107.not = icmp eq i32 %call.i216, 0
  br i1 %tobool107.not, label %if.end109, label %if.end102.escan_crit_edge

if.end102.escan_crit_edge:                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %escan

if.end109:                                        ; preds = %if.end102
  %call110 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef nonnull @part_probes, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %cleanup_nand

if.end113:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nand_cleanup(ptr noundef nonnull %call.i) #8
  br label %escan

escan:                                            ; preds = %cleanup_nand, %if.end102.escan_crit_edge
  %err.0 = phi i32 [ %call.i216, %if.end102.escan_crit_edge ], [ %call110, %cleanup_nand ]
  %77 = ptrtoint ptr %clk_act to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %clk_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool115.not = icmp eq i32 %78, 0
  br i1 %tobool115.not, label %escan.cleanup_crit_edge, label %if.then116

escan.cleanup_crit_edge:                          ; preds = %escan
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then116:                                       ; preds = %escan
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %80) #8
  tail call void @clk_unprepare(ptr noundef %80) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %escan.cleanup_crit_edge, %if.end113, %if.end90.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then53, %if.then42, %if.then24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then24 ], [ %28, %if.then42 ], [ %30, %if.then53 ], [ 0, %if.end113 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call79, %if.end75.cleanup_crit_edge ], [ %call.i214, %if.end83.cleanup_crit_edge ], [ %call92, %if.end90.cleanup_crit_edge ], [ %err.0, %if.then116 ], [ %err.0, %escan.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcnd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !110

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1841, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #8
  %clk_act = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clk_act to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool22.not = icmp eq i32 %3, 0
  br i1 %tobool22.not, label %if.end.if.end24_crit_edge, label %if.then23

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxc_nand_dev_ready(ptr nocapture noundef readnone %chip) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_nand_command(ptr noundef %nand_chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_nand_command.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_nand_command, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_nand_command.__UNIQUE_ID_ddebug216, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status_request = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %status_request to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status_request, align 4
  %5 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %land.end143 [
    i32 255, label %sw.bb
    i32 112, label %sw.bb6
    i32 144, label %sw.bb64
    i32 96, label %do.end.sw.bb70_crit_edge
    i32 208, label %do.end.sw.bb70_crit_edge247
    i32 236, label %sw.bb130
  ]

do.end.sw.bb70_crit_edge247:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70

do.end.sw.bb70_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %nand_chip) #8
  %10 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data, align 8
  %send_cmd = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_cmd, align 4
  tail call void %13(ptr noundef %1, i16 noundef zeroext 255, i32 noundef 0) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  %buf_start = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buf_start, align 4
  %15 = ptrtoint ptr %status_request to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %status_request, align 4
  %devtype_data8 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %devtype_data8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devtype_data8, align 8
  %send_cmd9 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %send_cmd9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_cmd9, align 4
  tail call void %19(ptr noundef %1, i16 noundef zeroext 112, i32 noundef 1) #8
  %20 = and i32 %page_addr, %column
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not = icmp eq i32 %20, -1
  br i1 %.not, label %sw.bb6.if.end56_crit_edge, label %land.rhs

sw.bb6.if.end56_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.rhs:                                         ; preds = %sw.bb6
  %.b244 = load i1, ptr @mxc_nand_command.__already_done, align 1
  br i1 %.b244, label %land.rhs.if.end56_crit_edge, label %if.then30, !prof !110

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then30:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mxc_nand_command.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1360, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef %column, i32 noundef %page_addr) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then30, %land.rhs.if.end56_crit_edge, %sw.bb6.if.end56_crit_edge
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %nand_chip, i32 noundef %column, i32 noundef %page_addr)
  br label %sw.epilog

sw.bb64:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %devtype_data65 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %devtype_data65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devtype_data65, align 8
  %send_cmd66 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %send_cmd66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_cmd66, align 4
  tail call void %24(ptr noundef %1, i16 noundef zeroext 144, i32 noundef 1) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %nand_chip, i32 noundef %column, i32 noundef %page_addr)
  %25 = ptrtoint ptr %devtype_data65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devtype_data65, align 8
  %send_read_id = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %send_read_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send_read_id, align 4
  tail call void %28(ptr noundef %1) #8
  %buf_start69 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %buf_start69 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buf_start69, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %do.end.sw.bb70_crit_edge, %do.end.sw.bb70_crit_edge247
  %devtype_data71 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %devtype_data71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devtype_data71, align 8
  %send_cmd72 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %send_cmd72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %send_cmd72, align 4
  %conv73 = trunc i32 %command to i16
  tail call void %33(ptr noundef %1, i16 noundef zeroext %conv73, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp75.not = icmp eq i32 %column, -1
  br i1 %cmp75.not, label %sw.bb70.if.end122_crit_edge, label %land.rhs84

sw.bb70.if.end122_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

land.rhs84:                                       ; preds = %sw.bb70
  %.b241243 = load i1, ptr @mxc_nand_command.__already_done.6, align 1
  br i1 %.b241243, label %land.rhs84.if.end122_crit_edge, label %if.then95, !prof !110

land.rhs84.if.end122_crit_edge:                   ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then95:                                        ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mxc_nand_command.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1376, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %command, i32 noundef %column) #8
  br label %if.end122

if.end122:                                        ; preds = %if.then95, %land.rhs84.if.end122_crit_edge, %sw.bb70.if.end122_crit_edge
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %nand_chip, i32 noundef %column, i32 noundef %page_addr)
  br label %sw.epilog

sw.bb130:                                         ; preds = %do.end
  %devtype_data131 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %devtype_data131 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devtype_data131, align 8
  %send_cmd132 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %send_cmd132 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %send_cmd132, align 4
  tail call void %37(ptr noundef %1, i16 noundef zeroext 236, i32 noundef 0) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %nand_chip, i32 noundef %column, i32 noundef %page_addr)
  %38 = ptrtoint ptr %devtype_data131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype_data131, align 8
  %send_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %send_page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %send_page, align 4
  tail call void %41(ptr noundef %nand_chip, i32 noundef 8) #8
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_buf, align 8
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %main_area0, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb130
  %s.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %45, %sw.bb130 ]
  %t.05.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %43, %sw.bb130 ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb130 ]
  %incdec.ptr.i = getelementptr i32, ptr %s.06.i, i32 1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.06.i) #8, !srcloc !112
  %incdec.ptr1.i = getelementptr i32, ptr %t.05.i, i32 1
  %47 = ptrtoint ptr %t.05.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %t.05.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %memcpy32_fromio.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

memcpy32_fromio.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf_start135 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %48 = ptrtoint ptr %buf_start135 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %buf_start135, align 4
  br label %sw.epilog

land.end143:                                      ; preds = %do.end
  %.b242245 = load i1, ptr @mxc_nand_command.__already_done.8, align 1
  br i1 %.b242245, label %land.end143.sw.epilog_crit_edge, label %if.then150, !prof !110

land.end143.sw.epilog_crit_edge:                  ; preds = %land.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then150:                                       ; preds = %land.end143
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mxc_nand_command.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1389, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %command) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then150, %land.end143.sw.epilog_crit_edge, %memcpy32_fromio.exit, %if.end122, %sw.bb64, %if.end56, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mxc_nand_read_byte(ptr nocapture noundef readonly %nand_chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %status_request = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %status_request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data, align 8
  %get_dev_status = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_dev_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_dev_status, align 4
  %call1 = tail call zeroext i16 %7(ptr noundef %1) #8
  %conv2 = trunc i16 %call1 to i8
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 6
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options, align 8
  %and3 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %data_buf8 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %data_buf8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_buf8, align 8
  %buf_start9 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %buf_start9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_start9, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 %13
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr10, align 2
  %conv6 = trunc i16 %15 to i8
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr10, align 1
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then5
  %.sink = phi i32 [ 2, %if.then5 ], [ 1, %if.else ]
  %ret.0 = phi i8 [ %conv6, %if.then5 ], [ %17, %if.else ]
  %add = add i32 %13, %.sink
  %18 = ptrtoint ptr %buf_start9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %buf_start9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_nand_read_byte.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_nand_read_byte, %if.then17)) #8
          to label %cleanup [label %if.then17], !srcloc !111

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %conv18 = zext i8 %ret.0 to i32
  %buf_start19 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %buf_start19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_start19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_nand_read_byte.__UNIQUE_ID_ddebug209, ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %conv18, i32 noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body, %if.then
  %retval.0 = phi i8 [ %conv2, %if.then ], [ %ret.0, %if.then17 ], [ %ret.0, %do.body ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mxc_nand_write_buf(ptr nocapture noundef readonly %nand_chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf_start = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_start, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand_chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand_chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %conv2 = and i32 %3, 65535
  %add = sub i32 %5, %conv2
  %sub = add i32 %add, %7
  %8 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_buf, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %conv2
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %8)
  %12 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_start, align 4
  %add6 = add i32 %13, %8
  store i32 %add6, ptr %buf_start, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mxc_nand_read_buf(ptr nocapture noundef readonly %nand_chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf_start = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_start, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand_chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand_chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %conv2 = and i32 %3, 65535
  %add = sub i32 %5, %conv2
  %sub = add i32 %add, %7
  %8 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_buf, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %conv2
  %11 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %8)
  %12 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_start, align 4
  %add6 = add i32 %13, %8
  store i32 %add6, ptr %buf_start, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_set_features(ptr noundef %chip, i32 noundef %addr, ptr nocapture noundef readonly %subfeature_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf_start = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf_start, align 4
  %write_byte = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_byte, align 8
  %5 = ptrtoint ptr %subfeature_param to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %subfeature_param, align 1
  tail call void %4(ptr noundef %chip, i8 noundef zeroext %6) #8
  %7 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_byte, align 8
  %arrayidx.1 = getelementptr i8, ptr %subfeature_param, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1, align 1
  tail call void %8(ptr noundef %chip, i8 noundef zeroext %10) #8
  %11 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_byte, align 8
  %arrayidx.2 = getelementptr i8, ptr %subfeature_param, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  tail call void %12(ptr noundef %chip, i8 noundef zeroext %14) #8
  %15 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_byte, align 8
  %arrayidx.3 = getelementptr i8, ptr %subfeature_param, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3, align 1
  tail call void %16(ptr noundef %chip, i8 noundef zeroext %18) #8
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_area0, align 8
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_buf, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %23 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writesize, align 4
  %div.i = sdiv i32 %24, 4
  tail call void @__iowrite32_copy(ptr noundef %20, ptr noundef %22, i32 noundef %div.i) #8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devtype_data, align 8
  %send_cmd = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send_cmd, align 4
  tail call void %28(ptr noundef %1, i16 noundef zeroext 239, i32 noundef 0) #8
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp.not.i = icmp eq i32 %addr, -1
  br i1 %cmp.not.i, label %entry.mxc_do_addr_cycle.exit_crit_edge, label %if.then.i

entry.mxc_do_addr_cycle.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxc_do_addr_cycle.exit

if.then.i:                                        ; preds = %entry
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devtype_data.i, align 8
  %send_addr.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %send_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_addr.i, align 4
  %35 = trunc i32 %addr to i16
  %conv.i = and i16 %35, 255
  tail call void %34(ptr noundef %30, i16 noundef zeroext %conv.i, i32 noundef 1) #8
  %36 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %37)
  %cmp4.i = icmp ugt i32 %37, 512
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.mxc_do_addr_cycle.exit_crit_edge

if.then.i.mxc_do_addr_cycle.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxc_do_addr_cycle.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype_data.i, align 8
  %send_addr8.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %send_addr8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %send_addr8.i, align 4
  %42 = lshr i16 %35, 8
  tail call void %41(ptr noundef %30, i16 noundef zeroext %42, i32 noundef 0) #8
  br label %mxc_do_addr_cycle.exit

mxc_do_addr_cycle.exit:                           ; preds = %if.then6.i, %if.then.i.mxc_do_addr_cycle.exit_crit_edge, %entry.mxc_do_addr_cycle.exit_crit_edge
  %43 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %devtype_data, align 8
  %send_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %send_page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %send_page, align 4
  tail call void %46(ptr noundef %chip, i32 noundef 4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_get_features(ptr noundef %chip, i32 noundef %addr, ptr nocapture noundef writeonly %subfeature_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %send_cmd = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_cmd, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 238, i32 noundef 0) #8
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp.not.i = icmp eq i32 %addr, -1
  br i1 %cmp.not.i, label %entry.mxc_do_addr_cycle.exit_crit_edge, label %if.then.i

entry.mxc_do_addr_cycle.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxc_do_addr_cycle.exit

if.then.i:                                        ; preds = %entry
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devtype_data.i, align 8
  %send_addr.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %send_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_addr.i, align 4
  %12 = trunc i32 %addr to i16
  %conv.i = and i16 %12, 255
  tail call void %11(ptr noundef %7, i16 noundef zeroext %conv.i, i32 noundef 1) #8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %13 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14)
  %cmp4.i = icmp ugt i32 %14, 512
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.mxc_do_addr_cycle.exit_crit_edge

if.then.i.mxc_do_addr_cycle.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxc_do_addr_cycle.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %devtype_data.i, align 8
  %send_addr8.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %send_addr8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_addr8.i, align 4
  %19 = lshr i16 %12, 8
  tail call void %18(ptr noundef %7, i16 noundef zeroext %19, i32 noundef 0) #8
  br label %mxc_do_addr_cycle.exit

mxc_do_addr_cycle.exit:                           ; preds = %if.then6.i, %if.then.i.mxc_do_addr_cycle.exit_crit_edge, %entry.mxc_do_addr_cycle.exit_crit_edge
  %20 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devtype_data, align 8
  %send_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %send_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %send_page, align 4
  tail call void %23(ptr noundef %chip, i32 noundef 8) #8
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_buf, align 8
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_area0, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %mxc_do_addr_cycle.exit
  %s.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %27, %mxc_do_addr_cycle.exit ]
  %t.05.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %25, %mxc_do_addr_cycle.exit ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %mxc_do_addr_cycle.exit ]
  %incdec.ptr.i = getelementptr i32, ptr %s.06.i, i32 1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.06.i) #8, !srcloc !112
  %incdec.ptr1.i = getelementptr i32, ptr %t.05.i, i32 1
  %29 = ptrtoint ptr %t.05.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %t.05.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %memcpy32_fromio.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

memcpy32_fromio.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf_start = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %buf_start, align 4
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_byte, align 4
  %call3 = tail call zeroext i8 %32(ptr noundef %chip) #8
  %incdec.ptr = getelementptr i8, ptr %subfeature_param, i32 1
  %33 = ptrtoint ptr %subfeature_param to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call3, ptr %subfeature_param, align 1
  %34 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_byte, align 4
  %call3.1 = tail call zeroext i8 %35(ptr noundef %chip) #8
  %incdec.ptr.1 = getelementptr i8, ptr %subfeature_param, i32 2
  %36 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call3.1, ptr %incdec.ptr, align 1
  %37 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_byte, align 4
  %call3.2 = tail call zeroext i8 %38(ptr noundef %chip) #8
  %incdec.ptr.2 = getelementptr i8, ptr %subfeature_param, i32 3
  %39 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call3.2, ptr %incdec.ptr.1, align 1
  %40 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_byte, align 4
  %call3.3 = tail call zeroext i8 %41(ptr noundef %chip) #8
  %42 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call3.3, ptr %incdec.ptr.2, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nfc_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %dev_id, i32 0, i32 18
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 8
  %check_int = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %check_int to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_int, align 4
  %call = tail call i32 %3(ptr noundef %dev_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %irqpending_quirk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqpending_quirk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else4.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq3.i = getelementptr inbounds %struct.mxc_nand_host, ptr %dev_id, i32 0, i32 11
  %8 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq3.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %9) #8
  br label %irq_control.exit

if.else4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_control.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %irq_control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_control.i, align 4
  tail call void %11(ptr noundef %dev_id, i32 noundef 0) #8
  br label %irq_control.exit

irq_control.exit:                                 ; preds = %if.else4.i, %if.then.i
  %op_completion = getelementptr inbounds %struct.mxc_nand_host, ptr %dev_id, i32 0, i32 15
  tail call void @complete(ptr noundef %op_completion) #8
  br label %cleanup

cleanup:                                          ; preds = %irq_control.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %irq_control.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxc_do_addr_cycle(ptr nocapture noundef readonly %mtd, i32 noundef %column, i32 noundef %page_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.not = icmp eq i32 %column, -1
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %send_addr = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %send_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_addr, align 4
  %6 = trunc i32 %column to i16
  %conv = and i16 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp2 = icmp eq i32 %page_addr, -1
  %conv3 = zext i1 %cmp2 to i32
  tail call void %5(ptr noundef %1, i16 noundef zeroext %conv, i32 noundef %conv3) #8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %cmp4 = icmp ugt i32 %8, 512
  br i1 %cmp4, label %if.then6, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devtype_data, align 8
  %send_addr8 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %send_addr8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_addr8, align 4
  %13 = lshr i16 %6, 8
  tail call void %12(ptr noundef %1, i16 noundef zeroext %13, i32 noundef 0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp12.not = icmp eq i32 %page_addr, -1
  br i1 %cmp12.not, label %if.end11.if.end63_crit_edge, label %if.then14

if.end11.if.end63_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then14:                                        ; preds = %if.end11
  %devtype_data15 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %devtype_data15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devtype_data15, align 8
  %send_addr16 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %send_addr16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_addr16, align 4
  %18 = trunc i32 %page_addr to i16
  %conv18 = and i16 %18, 255
  tail call void %17(ptr noundef %1, i16 noundef zeroext %conv18, i32 noundef 0) #8
  %writesize19 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %19 = ptrtoint ptr %writesize19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %writesize19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %20)
  %cmp20 = icmp ugt i32 %20, 512
  br i1 %cmp20, label %if.then22, label %if.else42

if.then22:                                        ; preds = %if.then14
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %22)
  %cmp23 = icmp ugt i64 %22, 268435455
  %23 = ptrtoint ptr %devtype_data15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devtype_data15, align 8
  %send_addr27 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %send_addr27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_addr27, align 4
  %27 = lshr i16 %18, 8
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %1, i16 noundef zeroext %27, i32 noundef 0) #8
  %28 = ptrtoint ptr %devtype_data15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %devtype_data15, align 8
  %send_addr32 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %send_addr32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %send_addr32, align 4
  %32 = lshr i32 %page_addr, 16
  %33 = trunc i32 %32 to i16
  %conv35 = and i16 %33, 255
  tail call void %31(ptr noundef %1, i16 noundef zeroext %conv35, i32 noundef 1) #8
  br label %if.end63

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %1, i16 noundef zeroext %27, i32 noundef 1) #8
  br label %if.end63

if.else42:                                        ; preds = %if.then14
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %34 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %options, align 8
  %and43 = and i32 %35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool.not = icmp eq i32 %and43, 0
  %36 = ptrtoint ptr %devtype_data15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %devtype_data15, align 8
  %send_addr57 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %send_addr57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %send_addr57, align 4
  %40 = lshr i16 %18, 8
  br i1 %tobool.not, label %if.else55, label %if.then44

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %39(ptr noundef %1, i16 noundef zeroext %40, i32 noundef 0) #8
  %41 = ptrtoint ptr %devtype_data15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %devtype_data15, align 8
  %send_addr51 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %send_addr51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %send_addr51, align 4
  %45 = lshr i32 %page_addr, 16
  %46 = trunc i32 %45 to i16
  %conv54 = and i16 %46, 255
  tail call void %44(ptr noundef %1, i16 noundef zeroext %conv54, i32 noundef 1) #8
  br label %if.end63

if.else55:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %39(ptr noundef %1, i16 noundef zeroext %40, i32 noundef 1) #8
  br label %if.end63

if.end63:                                         ; preds = %if.else55, %if.then44, %if.else, %if.then25, %if.end11.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcnd_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data, align 8
  %eccbytes = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %eccbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eccbytes, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bytes, align 4
  %9 = load ptr, ptr %devtype_data, align 8
  %eccsize = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %eccsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eccsize, align 4
  %eccsize4 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %eccsize4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %eccsize4, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 512, ptr %size, align 8
  %14 = load ptr, ptr %devtype_data, align 8
  %ooblayout = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ooblayout, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %17 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ooblayout1.i, align 8
  %18 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %19, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %21 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mxc_nand_read_page, ptr %read_page, align 8
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %22 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mxc_nand_read_page_raw, ptr %read_page_raw, align 8
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %23 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mxc_nand_read_oob, ptr %read_oob, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %24 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mxc_nand_write_page_ecc, ptr %write_page, align 4
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %25 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mxc_nand_write_page_raw, ptr %write_page_raw, align 4
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %26 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mxc_nand_write_oob, ptr %write_oob, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %27 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bbt_options, align 8
  %and = and i32 %28, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 13
  %29 = ptrtoint ptr %bbt_td to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bbt_main_descr, ptr %bbt_td, align 4
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 14
  %30 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bbt_mirror_descr, ptr %bbt_md, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data_buf, align 8
  tail call void @devm_kfree(ptr noundef %3, ptr noundef %32) #8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %33 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %35 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oobsize, align 4
  %add = add i32 %36, %34
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %add, i32 noundef 3520) #8
  %37 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %data_buf, align 8
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %38 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype_data, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  tail call void %41(ptr noundef %chip) #8
  %42 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool23.not = icmp eq i32 %43, 0
  br i1 %tobool23.not, label %if.then24, label %if.end19.if.end36_crit_edge

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then24:                                        ; preds = %if.end19
  %44 = ptrtoint ptr %eccsize4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %eccsize4, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %45, label %if.then24.if.end36_crit_edge [
    i32 8, label %if.then24.if.end36.sink.split_crit_edge
    i32 4, label %if.then31
  ]

if.then24.if.end36.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.sink.split

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.then31, %if.then24.if.end36.sink.split_crit_edge
  %.sink = phi i32 [ 9, %if.then31 ], [ 18, %if.then24.if.end36.sink.split_crit_edge ]
  %47 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %bytes, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.then24.if.end36_crit_edge, %if.end19.if.end36_crit_edge
  %48 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %oobsize, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 218)
  %used_oobsize = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 13
  %51 = ptrtoint ptr %used_oobsize to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %used_oobsize, align 8
  %52 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp41 = icmp eq i32 %53, 3
  br i1 %cmp41, label %if.then42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %if.end36
  %54 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %devtype_data, align 8
  %cmp.i.not = icmp eq ptr %55, @imx21_nand_devtype_data
  %cmp.i101.not = icmp eq ptr %55, @imx27_nand_devtype_data
  %or.cond = or i1 %cmp.i.not, %cmp.i101.not
  br i1 %or.cond, label %if.then42.cleanup.sink.split_crit_edge, label %if.else49

if.then42.cleanup.sink.split_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %eccsize4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %eccsize4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp51 = icmp eq i32 %57, 4
  %cond52 = select i1 %cmp51, i32 4, i32 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else49, %if.then42.cleanup.sink.split_crit_edge
  %cond52.sink = phi i32 [ %cond52, %if.else49 ], [ 1, %if.then42.cleanup.sink.split_crit_edge ]
  %strength54 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %58 = ptrtoint ptr %strength54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond52.sink, ptr %strength54, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcnd_setup_interface(ptr noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %setup_interface = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %setup_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup_interface, align 4
  %call1 = tail call i32 %5(ptr noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %oob_buf.0 = phi ptr [ %3, %if.then ], [ null, %entry.if.end_crit_edge ]
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data, align 8
  %read_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_page, align 4
  %call1 = tail call i32 %7(ptr noundef %chip, ptr noundef %buf, ptr noundef %oob_buf.0, i1 noundef zeroext true, i32 noundef %page) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %oob_buf.0 = phi ptr [ %3, %if.then ], [ null, %entry.if.end_crit_edge ]
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data, align 8
  %read_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_page, align 4
  %call1 = tail call i32 %7(ptr noundef %chip, ptr noundef %buf, ptr noundef %oob_buf.0, i1 noundef zeroext false, i32 noundef %page) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %read_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_page, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_poi, align 4
  %call1 = tail call i32 %5(ptr noundef %chip, ptr noundef null, ptr noundef %7, i1 noundef zeroext false, i32 noundef %page) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_write_page_ecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data.i, align 8
  %enable_hwecc.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %enable_hwecc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_hwecc.i, align 4
  tail call void %5(ptr noundef %chip, i1 noundef zeroext true) #8
  %6 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data.i, align 8
  %send_cmd.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cmd.i, align 4
  tail call void %9(ptr noundef %1, i16 noundef zeroext 128, i32 noundef 0) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page) #8
  %main_area0.i = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %main_area0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_area0.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize.i, align 4
  %div.i.i = sdiv i32 %13, 4
  tail call void @__iowrite32_copy(ptr noundef %11, ptr noundef %buf, i32 noundef %div.i.i) #8
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %14 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oob_poi.i, align 4
  tail call fastcc void @copy_spare(ptr noundef %chip, i1 noundef zeroext false, ptr noundef %15) #8
  %16 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devtype_data.i, align 8
  %send_page.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %send_page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_page.i, align 4
  tail call void %19(ptr noundef %chip, i32 noundef 4) #8
  %20 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devtype_data.i, align 8
  %send_cmd5.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %send_cmd5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %send_cmd5.i, align 4
  tail call void %23(ptr noundef %1, i16 noundef zeroext 16, i32 noundef 1) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data.i, align 8
  %enable_hwecc.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %enable_hwecc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_hwecc.i, align 4
  tail call void %5(ptr noundef %chip, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data.i, align 8
  %send_cmd.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cmd.i, align 4
  tail call void %9(ptr noundef %1, i16 noundef zeroext 128, i32 noundef 0) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page) #8
  %main_area0.i = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %main_area0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_area0.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize.i, align 4
  %div.i.i = sdiv i32 %13, 4
  tail call void @__iowrite32_copy(ptr noundef %11, ptr noundef %buf, i32 noundef %div.i.i) #8
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %14 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oob_poi.i, align 4
  tail call fastcc void @copy_spare(ptr noundef %chip, i1 noundef zeroext false, ptr noundef %15) #8
  %16 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devtype_data.i, align 8
  %send_page.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %send_page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_page.i, align 4
  tail call void %19(ptr noundef %chip, i32 noundef 4) #8
  %20 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devtype_data.i, align 8
  %send_cmd5.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %send_cmd5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %send_cmd5.i, align 4
  tail call void %23(ptr noundef %1, i16 noundef zeroext 16, i32 noundef 1) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_buf, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %6 = call ptr @memset(ptr %3, i32 255, i32 %5)
  %7 = load ptr, ptr %data_buf, align 8
  %8 = load ptr, ptr %priv.i, align 8
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devtype_data.i, align 8
  %enable_hwecc.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %enable_hwecc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable_hwecc.i, align 4
  tail call void %12(ptr noundef %chip, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devtype_data.i, align 8
  %send_cmd.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_cmd.i, align 4
  tail call void %16(ptr noundef %8, i16 noundef zeroext 128, i32 noundef 0) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page) #8
  %main_area0.i = getelementptr inbounds %struct.mxc_nand_host, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %main_area0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_area0.i, align 8
  %19 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %writesize, align 4
  %div.i.i = sdiv i32 %20, 4
  tail call void @__iowrite32_copy(ptr noundef %18, ptr noundef %7, i32 noundef %div.i.i) #8
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %21 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %oob_poi.i, align 4
  tail call fastcc void @copy_spare(ptr noundef %chip, i1 noundef zeroext false, ptr noundef %22) #8
  %23 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devtype_data.i, align 8
  %send_page.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %send_page.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_page.i, align 4
  tail call void %26(ptr noundef %chip, i32 noundef 4) #8
  %27 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devtype_data.i, align 8
  %send_cmd5.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %send_cmd5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %send_cmd5.i, align 4
  tail call void %30(ptr noundef %8, i16 noundef zeroext 16, i32 noundef 1) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_spare(ptr nocapture noundef readonly %mtd, i1 noundef zeroext %bfrom, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %div96 = lshr i32 %3, 9
  %spare0 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %spare0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spare0, align 4
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data, align 8
  %spare_len = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %spare_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spare_len, align 4
  %used_oobsize = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %used_oobsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used_oobsize, align 8
  %conv3 = and i32 %div96, 65535
  %div4 = sdiv i32 %11, %conv3
  %12 = trunc i32 %div4 to i16
  %conv5 = and i16 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv3)
  %cmp172 = icmp ugt i32 %conv3, 1
  br i1 %bfrom, label %for.cond.preheader, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %entry
  %conv37 = and i32 %9, 65535
  %conv40 = zext i16 %conv5 to i32
  br i1 %cmp172, label %for.body35.lr.ph, label %for.cond29.preheader.for.end46_crit_edge

for.cond29.preheader.for.end46_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body35.lr.ph:                                 ; preds = %for.cond29.preheader
  %and1.i131 = and i32 %conv40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i131)
  %cmp2.i132 = icmp eq i32 %and1.i131, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %cmp314.i.not = icmp eq i16 %conv5, 0
  %shr18.i = lshr exact i32 %conv40, 1
  %div.i.i163164165 = lshr i32 %div4, 2
  %div.i.i163.zext = and i32 %div.i.i163164165, 16383
  %13 = add nsw i32 %conv3, -2
  br label %for.body35

for.cond.preheader:                               ; preds = %entry
  %conv10 = zext i16 %conv5 to i32
  %conv12 = and i32 %9, 65535
  br i1 %cmp172, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and1.i = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.i = icmp eq i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %cmp315.not.i = icmp eq i16 %conv5, 0
  %shr.i = lshr exact i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv5)
  %cmp3.not.i.i = icmp ult i16 %conv5, 4
  %shr.i.i = lshr i32 %conv10, 2
  %14 = add nsw i32 %conv3, -2
  br label %for.body

for.body:                                         ; preds = %memcpy16_fromio.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv181 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next182, %memcpy16_fromio.exit.for.body_crit_edge ]
  %mul = mul nuw i32 %indvars.iv181, %conv10
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %mul13 = mul nuw i32 %indvars.iv181, %conv12
  %add.ptr14 = getelementptr i8, ptr %5, i32 %mul13
  %15 = ptrtoint ptr %add.ptr to i32
  %add.i = add i32 %15, 3
  %and.i = and i32 %add.i, -4
  %16 = inttoptr i32 %and.i to ptr
  %cmp.i = icmp eq ptr %add.ptr, %16
  %or.cond.i = and i1 %cmp2.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  br i1 %cmp315.not.i, label %for.cond.preheader.i.memcpy16_fromio.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.memcpy16_fromio.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy16_fromio.exit

if.then.i:                                        ; preds = %for.body
  br i1 %cmp3.not.i.i, label %if.then.i.memcpy16_fromio.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.memcpy16_fromio.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy16_fromio.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %s.06.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr14, %if.then.i.for.body.i.i_crit_edge ]
  %t.05.i.i = phi ptr [ %incdec.ptr1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr, %if.then.i.for.body.i.i_crit_edge ]
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %s.06.i.i, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.06.i.i) #8, !srcloc !112
  %incdec.ptr1.i.i = getelementptr i32, ptr %t.05.i.i, i32 1
  %18 = ptrtoint ptr %t.05.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %t.05.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.memcpy16_fromio.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.memcpy16_fromio.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy16_fromio.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %s.018.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr14, %for.cond.preheader.i.for.body.i_crit_edge ]
  %t.017.i = phi ptr [ %incdec.ptr4.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %s.018.i, i32 1
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %s.018.i) #8, !srcloc !113
  %incdec.ptr4.i = getelementptr i16, ptr %t.017.i, i32 1
  %20 = ptrtoint ptr %t.017.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %t.017.i, align 2
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.memcpy16_fromio.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.memcpy16_fromio.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy16_fromio.exit

memcpy16_fromio.exit:                             ; preds = %for.body.i.memcpy16_fromio.exit_crit_edge, %for.body.i.i.memcpy16_fromio.exit_crit_edge, %if.then.i.memcpy16_fromio.exit_crit_edge, %for.cond.preheader.i.memcpy16_fromio.exit_crit_edge
  %indvars.iv.next182 = add nuw nsw i32 %indvars.iv181, 1
  %exitcond183.not = icmp eq i32 %indvars.iv181, %14
  br i1 %exitcond183.not, label %for.end.loopexit, label %memcpy16_fromio.exit.for.body_crit_edge

memcpy16_fromio.exit.for.body_crit_edge:          ; preds = %memcpy16_fromio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %memcpy16_fromio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw i32 %indvars.iv181, 1
  %conv6 = and i32 %inc, 65535
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %conv6.lcssa = phi i32 [ %conv6, %for.end.loopexit ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %mul18 = mul nuw i32 %conv6.lcssa, %conv10
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %mul18
  %mul22 = mul nuw i32 %conv6.lcssa, %conv12
  %add.ptr23 = getelementptr i8, ptr %5, i32 %mul22
  %21 = ptrtoint ptr %used_oobsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used_oobsize, align 8
  %sub28 = sub i32 %22, %mul18
  %23 = ptrtoint ptr %add.ptr19 to i32
  %add.i97 = add i32 %23, 3
  %and.i98 = and i32 %add.i97, -4
  %24 = inttoptr i32 %and.i98 to ptr
  %cmp.i99 = icmp eq ptr %add.ptr19, %24
  %and1.i100 = and i32 %sub28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i100)
  %cmp2.i101 = icmp eq i32 %and1.i100, 0
  %or.cond.i102 = and i1 %cmp.i99, %cmp2.i101
  br i1 %or.cond.i102, label %if.then.i108, label %for.cond.preheader.i104

for.cond.preheader.i104:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub28)
  %cmp315.not.i103 = icmp ult i32 %sub28, 2
  br i1 %cmp315.not.i103, label %for.cond.preheader.i104.if.end_crit_edge, label %for.body.preheader.i106

for.cond.preheader.i104.if.end_crit_edge:         ; preds = %for.cond.preheader.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i106:                          ; preds = %for.cond.preheader.i104
  %shr.i105 = lshr i32 %sub28, 1
  br label %for.body.i126

if.then.i108:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub28)
  %cmp3.not.i.i107 = icmp ult i32 %sub28, 4
  br i1 %cmp3.not.i.i107, label %if.then.i108.if.end_crit_edge, label %for.body.preheader.i.i110

if.then.i108.if.end_crit_edge:                    ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i.i110:                        ; preds = %if.then.i108
  %shr.i.i109 = lshr i32 %sub28, 2
  br label %for.body.i.i118

for.body.i.i118:                                  ; preds = %for.body.i.i118.for.body.i.i118_crit_edge, %for.body.preheader.i.i110
  %s.06.i.i111 = phi ptr [ %incdec.ptr.i.i114, %for.body.i.i118.for.body.i.i118_crit_edge ], [ %add.ptr23, %for.body.preheader.i.i110 ]
  %t.05.i.i112 = phi ptr [ %incdec.ptr1.i.i115, %for.body.i.i118.for.body.i.i118_crit_edge ], [ %add.ptr19, %for.body.preheader.i.i110 ]
  %i.04.i.i113 = phi i32 [ %inc.i.i116, %for.body.i.i118.for.body.i.i118_crit_edge ], [ 0, %for.body.preheader.i.i110 ]
  %incdec.ptr.i.i114 = getelementptr i32, ptr %s.06.i.i111, i32 1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.06.i.i111) #8, !srcloc !112
  %incdec.ptr1.i.i115 = getelementptr i32, ptr %t.05.i.i112, i32 1
  %26 = ptrtoint ptr %t.05.i.i112 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %t.05.i.i112, align 4
  %inc.i.i116 = add nuw nsw i32 %i.04.i.i113, 1
  %exitcond.not.i.i117 = icmp eq i32 %inc.i.i116, %shr.i.i109
  br i1 %exitcond.not.i.i117, label %for.body.i.i118.if.end_crit_edge, label %for.body.i.i118.for.body.i.i118_crit_edge

for.body.i.i118.for.body.i.i118_crit_edge:        ; preds = %for.body.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i118

for.body.i.i118.if.end_crit_edge:                 ; preds = %for.body.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i126:                                    ; preds = %for.body.i126.for.body.i126_crit_edge, %for.body.preheader.i106
  %s.018.i119 = phi ptr [ %incdec.ptr.i122, %for.body.i126.for.body.i126_crit_edge ], [ %add.ptr23, %for.body.preheader.i106 ]
  %t.017.i120 = phi ptr [ %incdec.ptr4.i123, %for.body.i126.for.body.i126_crit_edge ], [ %add.ptr19, %for.body.preheader.i106 ]
  %i.016.i121 = phi i32 [ %inc.i124, %for.body.i126.for.body.i126_crit_edge ], [ 0, %for.body.preheader.i106 ]
  %incdec.ptr.i122 = getelementptr i16, ptr %s.018.i119, i32 1
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %s.018.i119) #8, !srcloc !113
  %incdec.ptr4.i123 = getelementptr i16, ptr %t.017.i120, i32 1
  %28 = ptrtoint ptr %t.017.i120 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %t.017.i120, align 2
  %inc.i124 = add nuw nsw i32 %i.016.i121, 1
  %exitcond.not.i125 = icmp eq i32 %inc.i124, %shr.i105
  br i1 %exitcond.not.i125, label %for.body.i126.if.end_crit_edge, label %for.body.i126.for.body.i126_crit_edge

for.body.i126.for.body.i126_crit_edge:            ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i126

for.body.i126.if.end_crit_edge:                   ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body35:                                       ; preds = %memcpy16_toio.exit.for.body35_crit_edge, %for.body35.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next, %memcpy16_toio.exit.for.body35_crit_edge ]
  %mul38 = mul nuw i32 %indvars.iv, %conv37
  %arrayidx = getelementptr i8, ptr %5, i32 %mul38
  %mul41 = mul nuw i32 %indvars.iv, %conv40
  %arrayidx42 = getelementptr i8, ptr %buf, i32 %mul41
  %29 = ptrtoint ptr %arrayidx42 to i32
  %add.i128 = add i32 %29, 3
  %and.i129 = and i32 %add.i128, -4
  %30 = inttoptr i32 %and.i129 to ptr
  %cmp.i130 = icmp eq ptr %arrayidx42, %30
  %or.cond.i133 = and i1 %cmp2.i132, %cmp.i130
  br i1 %or.cond.i133, label %if.then.i136, label %for.cond.preheader.i134

for.cond.preheader.i134:                          ; preds = %for.body35
  br i1 %cmp314.i.not, label %for.cond.preheader.i134.memcpy16_toio.exit_crit_edge, label %for.cond.preheader.i134.for.body.i141_crit_edge

for.cond.preheader.i134.for.body.i141_crit_edge:  ; preds = %for.cond.preheader.i134
  br label %for.body.i141

for.cond.preheader.i134.memcpy16_toio.exit_crit_edge: ; preds = %for.cond.preheader.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy16_toio.exit

if.then.i136:                                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__iowrite32_copy(ptr noundef %arrayidx, ptr noundef %arrayidx42, i32 noundef %div.i.i163.zext) #8
  br label %memcpy16_toio.exit

for.body.i141:                                    ; preds = %for.body.i141.for.body.i141_crit_edge, %for.cond.preheader.i134.for.body.i141_crit_edge
  %s.017.i = phi ptr [ %incdec.ptr.i137, %for.body.i141.for.body.i141_crit_edge ], [ %arrayidx42, %for.cond.preheader.i134.for.body.i141_crit_edge ]
  %t.016.i = phi ptr [ %incdec.ptr4.i138, %for.body.i141.for.body.i141_crit_edge ], [ %arrayidx, %for.cond.preheader.i134.for.body.i141_crit_edge ]
  %i.015.i = phi i32 [ %inc.i139, %for.body.i141.for.body.i141_crit_edge ], [ 0, %for.cond.preheader.i134.for.body.i141_crit_edge ]
  %incdec.ptr.i137 = getelementptr i16, ptr %s.017.i, i32 1
  %31 = ptrtoint ptr %s.017.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %s.017.i, align 2
  %incdec.ptr4.i138 = getelementptr i16, ptr %t.016.i, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %t.016.i, i16 %32) #8, !srcloc !114
  %inc.i139 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i140 = icmp eq i32 %inc.i139, %shr18.i
  br i1 %exitcond.not.i140, label %for.body.i141.memcpy16_toio.exit_crit_edge, label %for.body.i141.for.body.i141_crit_edge

for.body.i141.for.body.i141_crit_edge:            ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i141

for.body.i141.memcpy16_toio.exit_crit_edge:       ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy16_toio.exit

memcpy16_toio.exit:                               ; preds = %for.body.i141.memcpy16_toio.exit_crit_edge, %if.then.i136, %for.cond.preheader.i134.memcpy16_toio.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv, %13
  br i1 %exitcond.not, label %for.end46.loopexit, label %memcpy16_toio.exit.for.body35_crit_edge

memcpy16_toio.exit.for.body35_crit_edge:          ; preds = %memcpy16_toio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.end46.loopexit:                               ; preds = %memcpy16_toio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc45 = add nuw i32 %indvars.iv, 1
  %conv30 = and i32 %inc45, 65535
  br label %for.end46

for.end46:                                        ; preds = %for.end46.loopexit, %for.cond29.preheader.for.end46_crit_edge
  %conv30.lcssa = phi i32 [ %conv30, %for.end46.loopexit ], [ 0, %for.cond29.preheader.for.end46_crit_edge ]
  %mul49 = mul nuw i32 %conv30.lcssa, %conv37
  %arrayidx50 = getelementptr i8, ptr %5, i32 %mul49
  %mul53 = mul nuw i32 %conv30.lcssa, %conv40
  %arrayidx54 = getelementptr i8, ptr %buf, i32 %mul53
  %33 = ptrtoint ptr %used_oobsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used_oobsize, align 8
  %sub59 = sub i32 %34, %mul53
  %35 = ptrtoint ptr %arrayidx54 to i32
  %add.i142 = add i32 %35, 3
  %and.i143 = and i32 %add.i142, -4
  %36 = inttoptr i32 %and.i143 to ptr
  %cmp.i144 = icmp eq ptr %arrayidx54, %36
  %and1.i145 = and i32 %sub59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i145)
  %cmp2.i146 = icmp eq i32 %and1.i145, 0
  %or.cond.i147 = and i1 %cmp.i144, %cmp2.i146
  br i1 %or.cond.i147, label %if.then.i153, label %for.cond.preheader.i149

for.cond.preheader.i149:                          ; preds = %for.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub59)
  %cmp314.i148 = icmp sgt i32 %sub59, 1
  br i1 %cmp314.i148, label %for.body.preheader.i151, label %for.cond.preheader.i149.if.end_crit_edge

for.cond.preheader.i149.if.end_crit_edge:         ; preds = %for.cond.preheader.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i151:                          ; preds = %for.cond.preheader.i149
  %shr18.i150 = lshr i32 %sub59, 1
  br label %for.body.i161

if.then.i153:                                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #10
  %div.i.i152 = sdiv i32 %sub59, 4
  tail call void @__iowrite32_copy(ptr noundef %arrayidx50, ptr noundef %arrayidx54, i32 noundef %div.i.i152) #8
  br label %if.end

for.body.i161:                                    ; preds = %for.body.i161.for.body.i161_crit_edge, %for.body.preheader.i151
  %s.017.i154 = phi ptr [ %incdec.ptr.i157, %for.body.i161.for.body.i161_crit_edge ], [ %arrayidx54, %for.body.preheader.i151 ]
  %t.016.i155 = phi ptr [ %incdec.ptr4.i158, %for.body.i161.for.body.i161_crit_edge ], [ %arrayidx50, %for.body.preheader.i151 ]
  %i.015.i156 = phi i32 [ %inc.i159, %for.body.i161.for.body.i161_crit_edge ], [ 0, %for.body.preheader.i151 ]
  %incdec.ptr.i157 = getelementptr i16, ptr %s.017.i154, i32 1
  %37 = ptrtoint ptr %s.017.i154 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %s.017.i154, align 2
  %incdec.ptr4.i158 = getelementptr i16, ptr %t.016.i155, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %t.016.i155, i16 %38) #8, !srcloc !114
  %inc.i159 = add nuw nsw i32 %i.015.i156, 1
  %exitcond.not.i160 = icmp eq i32 %inc.i159, %shr18.i150
  br i1 %exitcond.not.i160, label %for.body.i161.if.end_crit_edge, label %for.body.i161.for.body.i161_crit_edge

for.body.i161.for.body.i161_crit_edge:            ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i161

for.body.i161.if.end_crit_edge:                   ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i161.if.end_crit_edge, %if.then.i153, %for.cond.preheader.i149.if.end_crit_edge, %for.body.i126.if.end_crit_edge, %for.body.i.i118.if.end_crit_edge, %if.then.i108.if.end_crit_edge, %for.cond.preheader.i104.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preset_v1(ptr nocapture noundef readonly %mtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 2048
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %config1.0 = phi i16 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %irqpending_quirk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqpending_quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %eccsize = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %eccsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %eccsize, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %11 = or i16 %config1.0, 4096
  %12 = select i1 %tobool3.not, i16 %11, i16 %config1.0
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %12) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %16, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 512) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr18 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr23 = getelementptr i8, ptr %20, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 -1) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %22, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 1024) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_read_page_v1(ptr noundef %chip, ptr noundef writeonly %buf, ptr noundef %oob, i1 noundef zeroext %ecc, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %enable_hwecc = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %enable_hwecc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_hwecc, align 4
  tail call void %5(ptr noundef %chip, i1 noundef zeroext %ecc) #8
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data, align 8
  %send_cmd = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cmd, align 4
  tail call void %9(ptr noundef %1, i16 noundef zeroext 0, i32 noundef 0) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp = icmp ugt i32 %11, 512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devtype_data, align 8
  %send_cmd4 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %send_cmd4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_cmd4, align 4
  tail call void %15(ptr noundef %1, i16 noundef zeroext 48, i32 noundef 1) #8
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %writesize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = phi i32 [ %.pr, %if.then ], [ %11, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %17)
  %cmp662.not = icmp ult i32 %17, 512
  br i1 %cmp662.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %shr = lshr i32 %17, 9
  %active_cs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 14
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %tobool18.not = icmp ne ptr %buf, null
  %18 = and i1 %tobool18.not, %ecc
  %ecc_stats24 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %if.end28.for.body_crit_edge ]
  %bitflips_corrected.063 = phi i32 [ 0, %for.body.lr.ph ], [ %bitflips_corrected.1, %if.end28.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %active_cs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_cs, align 4
  %shl = shl i32 %20, 4
  %or = or i32 %shl, %i.064
  %conv = trunc i32 %or to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %21) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 2048) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %1, i32 noundef 1)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  br i1 %18, label %if.then21, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then21:                                        ; preds = %for.body
  %29 = lshr i16 %28, 10
  %30 = and i16 %29, 3
  %and = zext i16 %30 to i32
  %31 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and, label %if.then21.if.end28_crit_edge [
    i32 2, label %sw.bb25
    i32 1, label %if.then21.if.end28.sink.split_crit_edge
  ]

if.then21.if.end28.sink.split_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

sw.bb25:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %sw.bb25, %if.then21.if.end28.sink.split_crit_edge
  %ecc_stats24.sink65 = phi ptr [ %failed, %sw.bb25 ], [ %ecc_stats24, %if.then21.if.end28.sink.split_crit_edge ]
  %bitflips_corrected.1.ph = phi i32 [ %bitflips_corrected.063, %sw.bb25 ], [ %and, %if.then21.if.end28.sink.split_crit_edge ]
  %32 = ptrtoint ptr %ecc_stats24.sink65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ecc_stats24.sink65, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %ecc_stats24.sink65, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.then21.if.end28_crit_edge, %for.body.if.end28_crit_edge
  %bitflips_corrected.1 = phi i32 [ %bitflips_corrected.063, %if.then21.if.end28_crit_edge ], [ %bitflips_corrected.063, %for.body.if.end28_crit_edge ], [ %bitflips_corrected.1.ph, %if.end28.sink.split ]
  %inc29 = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc29, %shr
  br i1 %exitcond.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %if.end.for.end_crit_edge
  %bitflips_corrected.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %bitflips_corrected.1, %if.end28.for.end_crit_edge ]
  %tobool30.not = icmp eq ptr %buf, null
  br i1 %tobool30.not, label %for.end.if.end33_crit_edge, label %if.then31

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %for.end
  %34 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp3.not.i = icmp ult i32 %35, 4
  br i1 %cmp3.not.i, label %if.then31.if.end33_crit_edge, label %for.body.preheader.i

if.then31.if.end33_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.body.preheader.i:                             ; preds = %if.then31
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_area0, align 8
  %shr.i = lshr i32 %35, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %s.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %37, %for.body.preheader.i ]
  %t.05.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %for.body.preheader.i ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %s.06.i, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.06.i) #8, !srcloc !112
  %incdec.ptr1.i = getelementptr i32, ptr %t.05.i, i32 1
  %39 = ptrtoint ptr %t.05.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %t.05.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.if.end33_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end33_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %for.body.i.if.end33_crit_edge, %if.then31.if.end33_crit_edge, %for.end.if.end33_crit_edge
  %tobool34.not = icmp eq ptr %oob, null
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @copy_spare(ptr noundef %chip, i1 noundef zeroext true, ptr noundef nonnull %oob)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  ret i32 %bitflips_corrected.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_cmd_v1_v2(ptr noundef %host, i16 noundef zeroext %cmd, i32 noundef %useirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_v1_v2.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_v1_v2, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %conv = zext i16 %cmd to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_v1_v2.__UNIQUE_ID_ddebug204, ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %useirq) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %cmd)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 256) #8, !srcloc !114
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 18
  %7 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %irqpending_quirk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irqpending_quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %cmd)
  %cmp = icmp eq i16 %cmd, 255
  %or.cond = and i1 %cmp, %tobool9.not
  br i1 %or.cond, label %do.body3.while.body_crit_edge, label %if.else

do.body3.while.body_crit_edge:                    ; preds = %do.body3
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %do.body3.while.body_crit_edge
  %dec64 = phi i32 [ %dec, %if.end24.while.body_crit_edge ], [ 99, %do.body3.while.body_crit_edge ]
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp21 = icmp eq i16 %13, 0
  br i1 %cmp21, label %while.body.if.end46_crit_edge, label %if.end24

while.body.if.end46_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end24:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #8
  %dec = add nsw i32 %dec64, -1
  %cmp13.not = icmp eq i32 %dec64, 0
  br i1 %cmp13.not, label %do.body28, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_v1_v2.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_v1_v2, %if.then40)) #8
          to label %if.end46 [label %if.then40], !srcloc !111

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 1
  %15 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_v1_v2.__UNIQUE_ID_ddebug205, ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #8
  br label %if.end46

if.else:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef %useirq)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then40, %do.body28, %while.body.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_addr_v1_v2(ptr noundef %host, i16 noundef zeroext %addr, i32 noundef %islast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_addr_v1_v2.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_addr_v1_v2, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %conv = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_addr_v1_v2.__UNIQUE_ID_ddebug206, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %islast) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %addr)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 512) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef %islast)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_page_v1(ptr nocapture noundef readonly %mtd, i32 noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp = icmp ugt i32 %3, 512
  %. = select i1 %cmp, i32 4, i32 1
  %active_cs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 14
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %conv6 = trunc i32 %ops to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %active_cs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_cs, align 4
  %shl = shl i32 %6, 4
  %or = or i32 %shl, %i.016
  %conv = trunc i32 %or to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %7) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %4) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %1, i32 noundef 1)
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_read_id_v1_v2(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %active_cs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %active_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_cs, align 4
  %.tr = trunc i32 %1 to i16
  %conv = shl i16 %.tr, 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 4096) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef 1)
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 16
  %7 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_buf, align 8
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 3
  %9 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_area0, align 8
  %incdec.ptr.i = getelementptr i32, ptr %10, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !112
  %incdec.ptr1.i = getelementptr i32, ptr %8, i32 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %8, align 4
  %incdec.ptr.i.1 = getelementptr i32, ptr %10, i32 2
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i) #8, !srcloc !112
  %incdec.ptr1.i.1 = getelementptr i32, ptr %8, i32 2
  %14 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr1.i, align 4
  %incdec.ptr.i.2 = getelementptr i32, ptr %10, i32 3
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.1) #8, !srcloc !112
  %incdec.ptr1.i.2 = getelementptr i32, ptr %8, i32 3
  %16 = ptrtoint ptr %incdec.ptr1.i.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr1.i.1, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.2) #8, !srcloc !112
  %18 = ptrtoint ptr %incdec.ptr1.i.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr1.i.2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @get_dev_status_v1_v2(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_area0, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %active_cs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %active_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_cs, align 4
  %.tr = trunc i32 %3 to i16
  %conv = shl i16 %.tr, 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #8, !srcloc !114
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 8192) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef 1)
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #8, !srcloc !113
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %7) #8, !srcloc !137
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_int_v1_v2(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !113
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool.not = icmp sgt i16 %3, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 18
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %irqpending_quirk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqpending_quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %and5 = and i16 %3, 32767
  %8 = tail call i16 @llvm.bswap.i16(i16 %and5)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %8) #8, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_control_v1_v2(ptr nocapture noundef readonly %host, i32 noundef %activate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool.not = icmp eq i32 %activate, 0
  %3 = and i16 %2, -4097
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %masksel = select i1 %tobool.not, i16 16, i16 0
  %tmp.0 = or i16 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %5 = tail call i16 @llvm.bswap.i16(i16 %tmp.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %5) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_ecc_status_v1(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !113
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_nand_select_chip_v1_v3(ptr nocapture noundef readonly %nand_chip, i32 noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chip)
  %cmp = icmp eq i32 %chip, -1
  %clk_act = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clk_act to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  br label %cleanup.sink.split.sink.split

if.end3:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %clk7 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %clk7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk7, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.cleanup.sink.split_crit_edge

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.cleanup.sink.split.sink.split_crit_edge

if.end.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i.cleanup.sink.split.sink.split_crit_edge, %if.then1
  %.sink16 = phi ptr [ %5, %if.then1 ], [ %7, %if.end.i.cleanup.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 0, %if.then1 ], [ 1, %if.end.i.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink16) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then6.cleanup.sink.split_crit_edge ], [ 1, %if.end.i.cleanup.sink.split_crit_edge ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  %8 = ptrtoint ptr %clk_act to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %clk_act, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_nand_enable_hwecc_v1_v2(ptr nocapture noundef readonly %chip, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 26
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %7 = and i16 %6, -2049
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %masksel = select i1 %enable, i16 8, i16 0
  %config1.0 = or i16 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %9 = tail call i16 @llvm.bswap.i16(i16 %config1.0)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %9) #8, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_op_done(ptr noundef %host, i32 noundef %useirq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 8
  %check_int = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %check_int to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_int, align 4
  %call = tail call i32 %3(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %useirq)
  %tobool1.not = icmp eq i32 %useirq, 0
  br i1 %tobool1.not, label %if.end.do.body18_crit_edge, label %if.then2

if.end.do.body18_crit_edge:                       ; preds = %if.end
  br label %do.body18

if.then2:                                         ; preds = %if.end
  %op_completion = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %op_completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %op_completion, align 4
  %5 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %irqpending_quirk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqpending_quirk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else4.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %irq3.i = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 11
  %9 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq3.i, align 8
  tail call void @enable_irq(i32 noundef %10) #8
  br label %irq_control.exit

if.else4.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %irq_control.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %irq_control.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_control.i, align 4
  tail call void %12(ptr noundef %host, i32 noundef 1) #8
  br label %irq_control.exit

irq_control.exit:                                 ; preds = %if.else4.i, %if.then.i
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %op_completion, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %irq_control.exit.cleanup_crit_edge

irq_control.exit.cleanup_crit_edge:               ; preds = %irq_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %irq_control.exit
  %13 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devtype_data, align 8
  %check_int7 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %check_int7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %check_int7, align 4
  %call8 = tail call i32 %16(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_op_done.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_op_done, %if.then15)) #8
          to label %land.rhs [label %if.then15], !srcloc !111

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_op_done.__UNIQUE_ID_ddebug202, ptr noundef %18, ptr noundef nonnull @.str.14) #8
  br label %land.rhs

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %if.end.do.body18_crit_edge
  %max_retries.0 = phi i32 [ %dec, %do.body18.do.body18_crit_edge ], [ 8000, %if.end.do.body18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %20 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devtype_data, align 8
  %check_int20 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %check_int20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %check_int20, align 4
  %call21 = tail call i32 %23(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %tobool22.not.not = xor i1 %tobool22.not, true
  %dec = add nsw i32 %max_retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool22.not.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %do.end27, label %do.body18.do.body18_crit_edge

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.end27:                                         ; preds = %do.body18
  br i1 %tobool22.not, label %do.body30, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_op_done.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_op_done, %if.then42)) #8
          to label %land.rhs [label %if.then42], !srcloc !111

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 1
  %24 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev43, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_op_done.__UNIQUE_ID_ddebug203, ptr noundef %25, ptr noundef nonnull @.str.15) #8
  br label %land.rhs

land.rhs:                                         ; preds = %if.then42, %do.body30, %if.then15, %do.body
  %.b1 = load i1, ptr @wait_op_done.__already_done, align 1
  br i1 %.b1, label %land.rhs.cleanup_crit_edge, label %if.then64, !prof !110

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wait_op_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 484, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %useirq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %land.rhs.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %irq_control.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxc_v1_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 6
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxc_v1_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp = icmp slt i32 %1, %section
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then1, label %if.else7

if.then1:                                         ; preds = %if.end
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %3)
  %cmp2 = icmp ult i32 %3, 513
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %oobregion, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %oobregion, align 4
  br label %cleanup.sink.split

if.else7:                                         ; preds = %if.end
  %sub = shl i32 %section, 4
  %add8 = add i32 %sub, -5
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %oobregion, align 4
  %7 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %section)
  %cmp12 = icmp sgt i32 %8, %section
  br i1 %cmp12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  %add15 = or i32 %sub, 6
  %add8.neg = sub i32 5, %sub
  %sub17 = add i32 %add15, %add8.neg
  br label %cleanup.sink.split

if.else19:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize, align 4
  %sub21 = sub i32 %10, %add8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else19, %if.then13, %if.else, %if.then3
  %.sink = phi i32 [ 4, %if.else ], [ 5, %if.then3 ], [ %sub21, %if.else19 ], [ %sub17, %if.then13 ]
  %length5 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %11 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %length5, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preset_v2(ptr nocapture noundef readonly %mtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %irqpending_quirk = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %irqpending_quirk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqpending_quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i16 2064, i16 2048
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %entry.do.body_crit_edge, label %if.then7

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %8 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize, align 8
  %div = udiv i32 %9, %7
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33
  %10 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  %12 = or i16 %spec.select, 8
  %spec.select115 = select i1 %cmp, i16 %12, i16 %spec.select
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %13 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobsize.i, align 4
  %mul.i = shl i32 %14, 9
  %div.i = udiv i32 %mul.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %div.i)
  %cmp.i = icmp slt i32 %div.i, 26
  %..i = select i1 %cmp.i, i32 4, i32 8
  %15 = zext i1 %cmp.i to i16
  %config1.2 = or i16 %spec.select115, %15
  %conv25 = and i32 %div, 65535
  %16 = tail call i32 @llvm.cttz.i32(i32 %conv25, i1 true), !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv25)
  %iszero = icmp eq i32 %conv25, 0
  %.tr = trunc i32 %16 to i16
  %17 = shl nuw nsw i16 %.tr, 9
  %18 = add nuw nsw i16 %17, 1536
  %19 = and i16 %18, 1536
  %20 = select i1 %iszero, i16 1024, i16 %19
  %conv28 = or i16 %config1.2, %20
  br label %do.body

do.body:                                          ; preds = %if.then7, %entry.do.body_crit_edge
  %..i.sink = phi i32 [ %..i, %if.then7 ], [ 1, %entry.do.body_crit_edge ]
  %config1.3 = phi i16 [ %conv28, %if.then7 ], [ %spec.select, %entry.do.body_crit_edge ]
  %21 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %..i.sink, ptr %21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %23 = tail call i16 @llvm.bswap.i16(i16 %config1.3)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %23) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %26 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oobsize, align 4
  %div34114 = lshr i32 %27, 1
  %conv35 = trunc i32 %div34114 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %add.ptr37 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 %28) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  %add.ptr42 = getelementptr i8, ptr %32, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 512) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %add.ptr47 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr52 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52, i16 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  %add.ptr57 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57, i16 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %add.ptr62 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr62, i16 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %add.ptr67 = getelementptr i8, ptr %42, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr67, i16 -1) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %add.ptr72 = getelementptr i8, ptr %44, i32 38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr72, i16 -1) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 8
  %add.ptr77 = getelementptr i8, ptr %46, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77, i16 -1) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %add.ptr82 = getelementptr i8, ptr %48, i32 46
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr82, i16 -1) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %add.ptr87 = getelementptr i8, ptr %50, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 1024) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_read_page_v2_v3(ptr noundef %chip, ptr noundef writeonly %buf, ptr noundef %oob, i1 noundef zeroext %ecc, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 8
  %enable_hwecc = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %enable_hwecc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_hwecc, align 4
  tail call void %5(ptr noundef %chip, i1 noundef zeroext %ecc) #8
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data, align 8
  %send_cmd = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cmd, align 4
  tail call void %9(ptr noundef %1, i16 noundef zeroext 0, i32 noundef 0) #8
  tail call fastcc void @mxc_do_addr_cycle(ptr noundef %chip, i32 noundef 0, i32 noundef %page)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp = icmp ugt i32 %11, 512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devtype_data, align 8
  %send_cmd4 = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %send_cmd4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_cmd4, align 4
  tail call void %15(ptr noundef %1, i16 noundef zeroext 48, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devtype_data, align 8
  %send_page = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %send_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_page, align 4
  tail call void %19(ptr noundef %chip, i32 noundef 8) #8
  %tobool6.not = icmp eq ptr %buf, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %20 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp3.not.i = icmp ult i32 %21, 4
  br i1 %cmp3.not.i, label %if.then7.if.end9_crit_edge, label %for.body.preheader.i

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body.preheader.i:                             ; preds = %if.then7
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %main_area0, align 8
  %shr.i = lshr i32 %21, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %s.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %23, %for.body.preheader.i ]
  %t.05.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %for.body.preheader.i ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %s.06.i, i32 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.06.i) #8, !srcloc !112
  %incdec.ptr1.i = getelementptr i32, ptr %t.05.i, i32 1
  %25 = ptrtoint ptr %t.05.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %t.05.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.if.end9_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end9_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %for.body.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %oob, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @copy_spare(ptr noundef %chip, i1 noundef zeroext true, ptr noundef nonnull %oob)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %eccsize = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %eccsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eccsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp13 = icmp eq i32 %27, 4
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize, align 4
  %shr = lshr i32 %29, 9
  %30 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devtype_data, align 8
  %get_ecc_status = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %get_ecc_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_ecc_status, align 4
  %call21 = tail call i32 %33(ptr noundef %1) #8
  %conv22 = select i1 %cmp13, i32 7, i32 15
  %conv23 = select i1 %cmp13, i32 4, i32 8
  %ecc_stats27 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end31.do.body_crit_edge, %if.end12
  %max_bitflips.0 = phi i32 [ 0, %if.end12 ], [ %max_bitflips.1, %if.end31.do.body_crit_edge ]
  %ecc_stat.0 = phi i32 [ %call21, %if.end12 ], [ %shr32, %if.end31.do.body_crit_edge ]
  %no_subpages.0 = phi i32 [ %shr, %if.end12 ], [ %dec, %if.end31.do.body_crit_edge ]
  %and = and i32 %ecc_stat.0, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv23)
  %cmp24 = icmp ugt i32 %and, %conv23
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %failed, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end31

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ecc_stats27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ecc_stats27, align 4
  %add = add i32 %37, %and
  store i32 %add, ptr %ecc_stats27, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0, i32 %and)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %max_bitflips.1 = phi i32 [ %max_bitflips.0, %if.then26 ], [ %38, %if.else ]
  %shr32 = lshr i32 %ecc_stat.0, 4
  %dec = add i32 %no_subpages.0, -1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %do.end, label %if.end31.do.body_crit_edge

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %max_bitflips.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_page_v2(ptr nocapture noundef readonly %mtd, i32 noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %active_cs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %active_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_cs, align 4
  %.tr = trunc i32 %3 to i16
  %conv = shl i16 %.tr, 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %conv5 = trunc i32 %ops to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %7) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_ecc_status_v2(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_nand_select_chip_v2(ptr nocapture noundef readonly %nand_chip, i32 noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chip)
  %cmp = icmp eq i32 %chip, -1
  %clk_act = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clk_act to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %clk_act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %clk_act, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then6, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.end3
  %clk7 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %clk7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk7, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.clk_prepare_enable.exit_crit_edge

if.then6.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then6.clk_prepare_enable.exit_crit_edge
  %9 = ptrtoint ptr %clk_act to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %clk_act, align 4
  br label %if.end10

if.end10:                                         ; preds = %clk_prepare_enable.exit, %if.end3.if.end10_crit_edge
  %active_cs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %active_cs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %chip, ptr %active_cs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %active_cs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_cs, align 4
  %.tr = trunc i32 %12 to i16
  %conv = shl i16 %.tr, 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %13) #8, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then1, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_nand_v2_setup_interface(ptr nocapture noundef readonly %chip, i32 noundef %csline, ptr noundef readonly %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i176 = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i176, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 26
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !113
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 22
  %9 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tRC_min, align 8
  %div = udiv i32 %10, 1000
  %div5 = udiv i32 1000000000, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %10)
  %cmp = icmp ult i32 %10, 30000
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %call7 = tail call i32 @clk_round_rate(ptr noundef %12, i32 noundef %div5) #8
  %13 = or i16 %8, 256
  %div9 = udiv i32 %call7, 1000
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl nuw nsw i32 %div5, 1
  %clk11 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk11, align 8
  %call12 = tail call i32 @clk_round_rate(ptr noundef %15, i32 noundef %mul) #8
  %16 = and i16 %8, -257
  %div16 = udiv i32 %call12, 2000
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then6
  %config1.0 = phi i16 [ %13, %if.then6 ], [ %16, %if.else ]
  %rate_round.0 = phi i32 [ %call7, %if.then6 ], [ %call12, %if.else ]
  %rate.0 = phi i32 [ %div5, %if.then6 ], [ %mul, %if.else ]
  %div9.pn = phi i32 [ %div9, %if.then6 ], [ %div16, %if.else ]
  %tRC_ps.0 = udiv i32 1000000000, %div9.pn
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 14
  %17 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tCLS_min, align 8
  %sub = add nsw i32 %tRC_ps.0, -1000
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp19 = icmp ugt i32 %18, %sub
  br i1 %cmp19, label %if.end18.do.body_crit_edge, label %lor.lhs.false

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end18
  %tCLH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 12
  %19 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tCLH_min, align 8
  %sub21 = add nsw i32 %tRC_ps.0, -2000
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub21)
  %cmp22 = icmp ugt i32 %20, %sub21
  br i1 %cmp22, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false24

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %tCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 16
  %21 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tCS_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sub)
  %cmp26 = icmp ugt i32 %22, %sub
  br i1 %cmp26, label %lor.lhs.false24.do.body_crit_edge, label %lor.lhs.false28

lor.lhs.false24.do.body_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %tCH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 10
  %23 = ptrtoint ptr %tCH_min to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tCH_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub21)
  %cmp30 = icmp ugt i32 %24, %sub21
  br i1 %cmp30, label %lor.lhs.false28.do.body_crit_edge, label %lor.lhs.false32

lor.lhs.false28.do.body_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 36
  %25 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tWP_min, align 8
  %sub33 = add nsw i32 %tRC_ps.0, -1500
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub33)
  %cmp34 = icmp ugt i32 %26, %sub33
  br i1 %cmp34, label %lor.lhs.false32.do.body_crit_edge, label %lor.lhs.false36

lor.lhs.false32.do.body_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 6
  %27 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tALS_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %tRC_ps.0)
  %cmp37 = icmp ugt i32 %28, %tRC_ps.0
  br i1 %cmp37, label %lor.lhs.false36.do.body_crit_edge, label %lor.lhs.false39

lor.lhs.false36.do.body_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %tALH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 4
  %29 = ptrtoint ptr %tALH_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tALH_min, align 8
  %sub40 = add nsw i32 %tRC_ps.0, -3000
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub40)
  %cmp41 = icmp ugt i32 %30, %sub40
  br i1 %cmp41, label %lor.lhs.false39.do.body_crit_edge, label %lor.lhs.false43

lor.lhs.false39.do.body_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %tDS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 18
  %31 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tDS_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %tRC_ps.0)
  %cmp44 = icmp ugt i32 %32, %tRC_ps.0
  br i1 %cmp44, label %lor.lhs.false43.do.body_crit_edge, label %lor.lhs.false46

lor.lhs.false43.do.body_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %tDH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 17
  %33 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tDH_min, align 4
  %sub47 = add nsw i32 %tRC_ps.0, -5000
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %sub47)
  %cmp48 = icmp ugt i32 %34, %sub47
  br i1 %cmp48, label %lor.lhs.false46.do.body_crit_edge, label %lor.lhs.false50

lor.lhs.false46.do.body_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 33
  %35 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tWC_min, align 4
  %mul51 = shl nuw nsw i32 %tRC_ps.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %mul51)
  %cmp52 = icmp ugt i32 %36, %mul51
  br i1 %cmp52, label %lor.lhs.false50.do.body_crit_edge, label %lor.lhs.false54

lor.lhs.false50.do.body_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 34
  %37 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tWH_min, align 8
  %sub55 = add nsw i32 %tRC_ps.0, -2500
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub55)
  %cmp56 = icmp ugt i32 %38, %sub55
  br i1 %cmp56, label %lor.lhs.false54.do.body_crit_edge, label %lor.lhs.false58

lor.lhs.false54.do.body_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %tRR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 30
  %39 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tRR_min, align 8
  %mul59 = mul i32 %tRC_ps.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %mul59)
  %cmp60 = icmp ugt i32 %40, %mul59
  br i1 %cmp60, label %lor.lhs.false58.do.body_crit_edge, label %lor.lhs.false62

lor.lhs.false58.do.body_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 29
  %41 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tRP_min, align 4
  %mul63 = mul nuw i32 %tRC_ps.0, 3
  %div64 = sdiv i32 %mul63, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %div64)
  %cmp65 = icmp ugt i32 %42, %div64
  br i1 %cmp65, label %lor.lhs.false62.do.body_crit_edge, label %lor.lhs.false67

lor.lhs.false62.do.body_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false67:                                  ; preds = %lor.lhs.false62
  %43 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tRC_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %mul51)
  %cmp70 = icmp ugt i32 %44, %mul51
  br i1 %cmp70, label %lor.lhs.false67.do.body_crit_edge, label %lor.lhs.false72

lor.lhs.false67.do.body_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false72:                                  ; preds = %lor.lhs.false67
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i176, i32 0, i32 24
  %45 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tREH_min, align 8
  %div73172 = lshr i32 %tRC_ps.0, 1
  %sub74 = add nsw i32 %div73172, -2500
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub74)
  %cmp75 = icmp ugt i32 %46, %sub74
  br i1 %cmp75, label %lor.lhs.false72.do.body_crit_edge, label %if.end84

lor.lhs.false72.do.body_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false72.do.body_crit_edge, %lor.lhs.false67.do.body_crit_edge, %lor.lhs.false62.do.body_crit_edge, %lor.lhs.false58.do.body_crit_edge, %lor.lhs.false54.do.body_crit_edge, %lor.lhs.false50.do.body_crit_edge, %lor.lhs.false46.do.body_crit_edge, %lor.lhs.false43.do.body_crit_edge, %lor.lhs.false39.do.body_crit_edge, %lor.lhs.false36.do.body_crit_edge, %lor.lhs.false32.do.body_crit_edge, %lor.lhs.false28.do.body_crit_edge, %lor.lhs.false24.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end18.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_nand_v2_setup_interface, %if.then82)) #8
          to label %cleanup [label %if.then82], !srcloc !111

if.then82:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug214, ptr noundef %48, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end84:                                         ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp85 = icmp eq i32 %csline, -1
  br i1 %cmp85, label %if.end84.cleanup_crit_edge, label %if.end88

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end88:                                         ; preds = %if.end84
  %clk89 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %clk89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk89, align 8
  %call90 = tail call i32 @clk_set_rate(ptr noundef %50, i32 noundef %rate.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.body94, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %51 = tail call i16 @llvm.bswap.i16(i16 %config1.0)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 8
  %add.ptr98 = getelementptr i8, ptr %53, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr98, i16 %51) #8, !srcloc !114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_nand_v2_setup_interface, %if.then111)) #8
          to label %cleanup [label %if.then111], !srcloc !111

if.then111:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %dev112 = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev112, align 8
  %56 = and i16 %config1.0, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool115.not = icmp eq i16 %56, 0
  %cond = select i1 %tobool115.not, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug215, ptr noundef %55, ptr noundef nonnull @.str.24, i32 noundef %rate_round.0, ptr noundef nonnull %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %do.body94, %if.end88.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then82, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -22, %if.then82 ], [ 0, %if.end84.cleanup_crit_edge ], [ %call90, %if.end88.cleanup_crit_edge ], [ 0, %if.then111 ], [ -22, %do.body ], [ 0, %do.body94 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxc_v2_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp2.not = icmp sgt i32 %1, %section
  br i1 %cmp2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  %cond = select i1 %cmp, i32 16, i32 26
  %mul = mul i32 %cond, %section
  %add = add i32 %mul, 7
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %oobregion, align 4
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxc_v2_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp eq i32 %1, 9
  %cond = select i1 %cmp, i32 16, i32 26
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %section)
  %cmp2.not = icmp sgt i32 %3, %section
  br i1 %cmp2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then3, label %if.else9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %5)
  %cmp4 = icmp ult i32 %5, 513
  %. = select i1 %cmp4, i32 0, i32 2
  %.23 = select i1 %cmp4, i32 5, i32 4
  br label %cleanup.sink.split

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %cond, %section
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else9, %if.then3
  %mul.sink = phi i32 [ %mul, %if.else9 ], [ %., %if.then3 ]
  %.sink = phi i32 [ 7, %if.else9 ], [ %.23, %if.then3 ]
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul.sink, ptr %oobregion, align 4
  %length11 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %length11, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preset_v3(ptr nocapture noundef readonly %mtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_axi, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %regs_ip = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_ip, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_ip, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2080374784) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs_ip, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.1 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.1, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.2 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.2, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.3 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.3, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.4 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.4, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.5 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.5, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.6 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.6, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_ip, align 8
  %add.ptr16.7 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.7, i32 65535) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_ip, align 8
  %add.ptr21 = getelementptr i8, ptr %25, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #8, !srcloc !137
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %26 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oobsize, align 4
  %28 = shl i32 %27, 15
  %shl22 = and i32 %28, 16711680
  %pagemask = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 20
  %29 = ptrtoint ptr %pagemask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagemask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  %31 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 true) #8, !range !144
  %sub.i = sub nuw nsw i32 32, %31
  %sub.i.op = lshr i32 %sub.i, 3
  %shr27123 = select i1 %tobool.not.i, i32 0, i32 %sub.i.op
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %32 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %writesize, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %33, label %if.end45 [
    i32 2048, label %if.then
    i32 4096, label %if.then35
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and30 = shl nuw nsw i32 %shr27123, 12
  %shl31 = and i32 %and30, 12288
  %or29 = or i32 %shl22, %shl31
  %or32 = or i32 %or29, 1879081013
  br label %if.then47

if.then35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and37 = shl nuw nsw i32 %shr27123, 12
  %shl38 = and i32 %and37, 12288
  %or36 = or i32 %shl22, %shl38
  %or39 = or i32 %or36, 1879081014
  br label %if.then47

if.end45:                                         ; preds = %entry
  %sub = shl nuw nsw i32 %shr27123, 12
  %and42 = add nuw nsw i32 %sub, 12288
  %shl43 = and i32 %and42, 12288
  %or25 = or i32 %shl22, %shl43
  %or44 = or i32 %or25, 1879081012
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.end45.do.body64_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end45.do.body64_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.then35, %if.then
  %config2.0122 = phi i32 [ %or44, %if.end45.if.then47_crit_edge ], [ %or39, %if.then35 ], [ %or32, %if.then ]
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33
  %35 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp48 = icmp eq i32 %36, 3
  %or50 = or i32 %config2.0122, 8
  %spec.select = select i1 %cmp48, i32 %or50, i32 %config2.0122
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %37 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %erasesize, align 8
  %div = udiv i32 %38, %33
  %39 = tail call i32 @llvm.cttz.i32(i32 %div, i1 true), !range !144
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %38)
  %iszero = icmp ugt i32 %33, %38
  %.op = add nuw nsw i32 %39, 3
  %.op.op = and i32 %.op, 3
  %and54 = select i1 %iszero, i32 2, i32 %.op.op
  %devtype_data = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %40 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %devtype_data, align 8
  %ppb_shift = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %ppb_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ppb_shift, align 4
  %shl55 = shl i32 %and54, %43
  %or56 = or i32 %shl55, %spec.select
  %mul.i = shl i32 %27, 9
  %div.i = udiv i32 %mul.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %div.i)
  %cmp.i = icmp slt i32 %div.i, 26
  %..i = select i1 %cmp.i, i32 4, i32 8
  %eccsize = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %eccsize to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %..i, ptr %eccsize, align 4
  %or61 = or i32 %or56, 64
  %spec.select119 = select i1 %cmp.i, i32 %or56, i32 %or61
  br label %do.body64

do.body64:                                        ; preds = %if.then47, %if.end45.do.body64_crit_edge
  %config2.2 = phi i32 [ %or44, %if.end45.do.body64_crit_edge ], [ %spec.select119, %if.then47 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %config2.2)
  %46 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs_ip, align 8
  %add.ptr68 = getelementptr i8, ptr %47, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %45) #8, !srcloc !137
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %48 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %options, align 8
  %and69 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %spec.select118 = select i1 %tobool70.not, i32 1082888, i32 1082880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %spec.select118)
  %51 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs_ip, align 8
  %add.ptr78 = getelementptr i8, ptr %52, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %50) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs_ip, align 8
  %add.ptr83 = getelementptr i8, ptr %54, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 0) #8, !srcloc !137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_cmd_v3(ptr noundef %host, i16 noundef zeroext %cmd, i32 noundef %useirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %conv = zext i16 %cmd to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_axi, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs_axi, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #8, !srcloc !137
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef %useirq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_addr_v3(ptr noundef %host, i16 noundef zeroext %addr, i32 noundef %islast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %conv = zext i16 %addr to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_axi, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs_axi, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 33554432) #8, !srcloc !137
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 18
  %5 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype_data.i, align 8
  %check_int.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %check_int.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %check_int.i, align 4
  %call.i = tail call i32 %8(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.body18.i_crit_edge, label %entry.wait_op_done.exit_crit_edge

entry.wait_op_done.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_op_done.exit

entry.do.body18.i_crit_edge:                      ; preds = %entry
  br label %do.body18.i

do.body18.i:                                      ; preds = %do.body18.i.do.body18.i_crit_edge, %entry.do.body18.i_crit_edge
  %max_retries.0.i = phi i32 [ %dec.i, %do.body18.i.do.body18.i_crit_edge ], [ 8000, %entry.do.body18.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  %10 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data.i, align 8
  %check_int20.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %check_int20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %check_int20.i, align 4
  %call21.i = tail call i32 %13(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  %tobool22.not.not.i = xor i1 %tobool22.not.i, true
  %dec.i = add nsw i32 %max_retries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool22.not.not.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i, label %do.end27.i, label %do.body18.i.do.body18.i_crit_edge

do.body18.i.do.body18.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18.i

do.end27.i:                                       ; preds = %do.body18.i
  br i1 %tobool22.not.i, label %do.body30.i, label %do.end27.i.wait_op_done.exit_crit_edge

do.end27.i.wait_op_done.exit_crit_edge:           ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_op_done.exit

do.body30.i:                                      ; preds = %do.end27.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_op_done.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_addr_v3, %if.then42.i)) #8
          to label %land.rhs.i [label %if.then42.i], !srcloc !111

if.then42.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev43.i = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 1
  %14 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev43.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_op_done.__UNIQUE_ID_ddebug203, ptr noundef %15, ptr noundef nonnull @.str.15) #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then42.i, %do.body30.i
  %.b1.i = load i1, ptr @wait_op_done.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.wait_op_done.exit_crit_edge, label %if.then64.i, !prof !110

land.rhs.i.wait_op_done.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_op_done.exit

if.then64.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wait_op_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 484, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef 0) #8
  br label %wait_op_done.exit

wait_op_done.exit:                                ; preds = %if.then64.i, %land.rhs.i.wait_op_done.exit_crit_edge, %do.end27.i.wait_op_done.exit_crit_edge, %entry.wait_op_done.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_page_v3(ptr nocapture noundef readonly %mtd, i32 noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_axi, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %5 = and i32 %4, -1879048193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_axi, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %ops)
  %9 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs_axi, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %8) #8, !srcloc !137
  %devtype_data.i = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devtype_data.i, align 8
  %check_int.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %check_int.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check_int.i, align 4
  %call.i = tail call i32 %14(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.body18.i_crit_edge, label %entry.wait_op_done.exit_crit_edge

entry.wait_op_done.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_op_done.exit

entry.do.body18.i_crit_edge:                      ; preds = %entry
  br label %do.body18.i

do.body18.i:                                      ; preds = %do.body18.i.do.body18.i_crit_edge, %entry.do.body18.i_crit_edge
  %max_retries.0.i = phi i32 [ %dec.i, %do.body18.i.do.body18.i_crit_edge ], [ 8000, %entry.do.body18.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %16 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devtype_data.i, align 8
  %check_int20.i = getelementptr inbounds %struct.mxc_nand_devtype_data, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %check_int20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %check_int20.i, align 4
  %call21.i = tail call i32 %19(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  %tobool22.not.not.i = xor i1 %tobool22.not.i, true
  %dec.i = add nsw i32 %max_retries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool22.not.not.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i, label %do.end27.i, label %do.body18.i.do.body18.i_crit_edge

do.body18.i.do.body18.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18.i

do.end27.i:                                       ; preds = %do.body18.i
  br i1 %tobool22.not.i, label %do.body30.i, label %do.end27.i.wait_op_done.exit_crit_edge

do.end27.i.wait_op_done.exit_crit_edge:           ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_op_done.exit

do.body30.i:                                      ; preds = %do.end27.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_op_done.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_page_v3, %if.then42.i)) #8
          to label %land.rhs.i [label %if.then42.i], !srcloc !111

if.then42.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev43.i = getelementptr inbounds %struct.mxc_nand_host, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev43.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_op_done.__UNIQUE_ID_ddebug203, ptr noundef %21, ptr noundef nonnull @.str.15) #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then42.i, %do.body30.i
  %.b1.i = load i1, ptr @wait_op_done.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.wait_op_done.exit_crit_edge, label %if.then64.i, !prof !110

land.rhs.i.wait_op_done.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_op_done.exit

if.then64.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wait_op_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 484, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef 0) #8
  br label %wait_op_done.exit

wait_op_done.exit:                                ; preds = %if.then64.i, %land.rhs.i.wait_op_done.exit_crit_edge, %do.end27.i.wait_op_done.exit_crit_edge, %entry.wait_op_done.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_read_id_v3(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_axi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #8, !srcloc !137
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef 1)
  %data_buf = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_buf, align 8
  %main_area0 = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %main_area0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_area0, align 8
  %incdec.ptr.i = getelementptr i32, ptr %5, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !112
  %incdec.ptr1.i = getelementptr i32, ptr %3, i32 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %3, align 4
  %incdec.ptr.i.1 = getelementptr i32, ptr %5, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i) #8, !srcloc !112
  %incdec.ptr1.i.1 = getelementptr i32, ptr %3, i32 2
  %9 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %incdec.ptr1.i, align 4
  %incdec.ptr.i.2 = getelementptr i32, ptr %5, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.1) #8, !srcloc !112
  %incdec.ptr1.i.2 = getelementptr i32, ptr %3, i32 3
  %11 = ptrtoint ptr %incdec.ptr1.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr1.i.1, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.2) #8, !srcloc !112
  %13 = ptrtoint ptr %incdec.ptr1.i.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr1.i.2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @get_dev_status_v3(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_axi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 8192) #8, !srcloc !114
  tail call fastcc void @wait_op_done(ptr noundef %host, i32 noundef 1)
  %2 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_axi, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !112
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %shr = lshr i32 %5, 16
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_int_v3(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ip = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ip, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and3 = and i32 %3, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %5 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_ip, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #8, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_control_v3(ptr nocapture noundef readonly %host, i32 noundef %activate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ip = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ip, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool.not = icmp eq i32 %activate, 0
  %3 = and i32 %2, -8388609
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 32768, i32 0
  %tmp.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %6 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_ip, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #8, !srcloc !137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_ecc_status_v3(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_axi = getelementptr inbounds %struct.mxc_nand_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %regs_axi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_axi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_nand_enable_hwecc_v3(ptr nocapture noundef readonly %chip, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regs_ip = getelementptr inbounds %struct.mxc_nand_host, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_ip, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  %7 = and i32 %6, -134217729
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %enable, i32 8, i32 0
  %config2.0 = or i32 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %config2.0)
  %10 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_ip, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #8, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_mxc_nand__219_1857_mxcnd_driver_init6, !1, !"__initcall__kmod_mxc_nand__219_1857_mxcnd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1857, i32 1}
!2 = !{ptr @__exitcall_mxcnd_driver_exit, !1, !"__exitcall_mxcnd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author220, !4, !"__UNIQUE_ID_author220", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1859, i32 1}
!5 = !{ptr @__UNIQUE_ID_description221, !6, !"__UNIQUE_ID_description221", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1860, i32 1}
!7 = !{ptr @__UNIQUE_ID_file222, !8, !"__UNIQUE_ID_file222", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1861, i32 1}
!9 = !{ptr @__UNIQUE_ID_license223, !8, !"__UNIQUE_ID_license223", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1851, i32 14}
!12 = !{ptr @mxcnd_driver, !13, !"mxcnd_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1849, i32 31}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1340, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxc_nand_command.__UNIQUE_ID_ddebug216, !17, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1358, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1374, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1388, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 915, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mxc_nand_read_byte.__UNIQUE_ID_ddebug209, !31, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mxcnd_controller_ops, !38, !"mxcnd_controller_ops", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1699, i32 41}
!39 = !{ptr @bbt_main_descr, !40, !"bbt_main_descr", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1440, i32 30}
!41 = !{ptr @bbt_pattern, !42, !"bbt_pattern", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1437, i32 16}
!43 = !{ptr @bbt_mirror_descr, !44, !"bbt_mirror_descr", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1450, i32 30}
!45 = !{ptr @mirror_pattern, !46, !"mirror_pattern", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1438, i32 16}
!47 = !{ptr @imx21_nand_devtype_data, !48, !"imx21_nand_devtype_data", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1461, i32 43}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 462, i32 4}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wait_op_done.__UNIQUE_ID_ddebug202, !50, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 479, i32 4}
!55 = !{ptr @wait_op_done.__UNIQUE_ID_ddebug203, !54, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 484, i32 2}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 505, i32 2}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @send_cmd_v1_v2.__UNIQUE_ID_ddebug204, !60, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 521, i32 4}
!65 = !{ptr @send_cmd_v1_v2.__UNIQUE_ID_ddebug205, !64, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 544, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @send_addr_v1_v2.__UNIQUE_ID_ddebug206, !67, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!70 = !{ptr @mxc_v1_ooblayout_ops, !71, !"mxc_v1_ooblayout_ops", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1045, i32 39}
!72 = !{ptr @imx27_nand_devtype_data, !73, !"imx27_nand_devtype_data", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1485, i32 43}
!74 = !{ptr @imx25_nand_devtype_data, !75, !"imx25_nand_devtype_data", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1510, i32 43}
!76 = !{ptr @mxc_v2_ooblayout_ops, !77, !"mxc_v2_ooblayout_ops", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1090, i32 39}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1195, i32 3}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug214, !79, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1208, i32 2}
!84 = !{ptr @mxc_nand_v2_setup_interface.__UNIQUE_ID_ddebug215, !83, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!85 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 189, i32 2}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 189, i32 17}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 189, i32 28}
!93 = !{ptr @part_probes, !94, !"part_probes", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 188, i32 27}
!95 = !{ptr @mxcnd_dt_ids, !96, !"mxcnd_dt_ids", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1612, i32 34}
!97 = !{ptr @imx51_nand_devtype_data, !98, !"imx51_nand_devtype_data", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1536, i32 43}
!99 = !{ptr @imx53_nand_devtype_data, !100, !"imx53_nand_devtype_data", i1 false, i1 false}
!100 = !{!"../drivers/mtd/nand/raw/mxc_nand.c", i32 1562, i32 43}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148804458, i64 2148804463, i64 2148804476, i64 2148804520, i64 2148804554, i64 2148804575}
!112 = !{i64 5715855}
!113 = !{i64 5715017}
!114 = !{i64 5714817}
!115 = !{i64 2153546954}
!116 = !{i64 2153547379}
!117 = !{i64 2153547792}
!118 = !{i64 2153548208}
!119 = !{i64 2153548630}
!120 = !{i64 2153538599}
!121 = !{i64 2153539095}
!122 = !{i64 2153505854}
!123 = !{i64 2153520638}
!124 = !{i64 2153521065}
!125 = !{i64 2153521776}
!126 = !{i64 2153528002}
!127 = !{i64 2153528432}
!128 = !{i64 2153531161}
!129 = !{i64 2153531643}
!130 = !{i64 2153532527}
!131 = !{i64 2153533005}
!132 = !{i64 2153534438}
!133 = !{i64 2153535116}
!134 = !{i64 2153535366}
!135 = !{i64 2153536008}
!136 = !{i64 2153536215}
!137 = !{i64 5715437}
!138 = !{i64 2153502935}
!139 = !{i64 2153503205}
!140 = !{i64 2153503938}
!141 = !{i64 2153504192}
!142 = !{i64 2153536901}
!143 = !{i64 2153537159}
!144 = !{i32 0, i32 33}
!145 = !{i64 2153555051}
!146 = !{i64 2153555489}
!147 = !{i64 2153555941}
!148 = !{i64 2153556354}
!149 = !{i64 2153556767}
!150 = !{i64 2153557180}
!151 = !{i64 2153557593}
!152 = !{i64 2153558009}
!153 = !{i64 2153558434}
!154 = !{i64 2153558859}
!155 = !{i64 2153559284}
!156 = !{i64 2153559706}
!157 = !{i64 2153530261}
!158 = !{i64 2153530725}
!159 = !{i64 2153506368}
!160 = !{i64 2153546452}
!161 = !{i64 2153549325}
!162 = !{i64 2153551827}
!163 = !{i64 2153560167}
!164 = !{i64 2153560658}
!165 = !{i64 2153561127}
!166 = !{i64 2153561618}
!167 = !{i64 2153562076}
!168 = !{i64 2153562898}
!169 = !{i64 2153563511}
!170 = !{i64 2153563943}
!171 = !{i64 2153517442}
!172 = !{i64 2153517881}
!173 = !{i64 2153524798}
!174 = !{i64 2153525240}
!175 = !{i64 2153529158}
!176 = !{i64 2153529402}
!177 = !{i64 2153529827}
!178 = !{i64 2153532078}
!179 = !{i64 2153533455}
!180 = !{i64 2153534185}
!181 = !{i64 2153501979}
!182 = !{i64 2153502241}
!183 = !{i64 2153504898}
!184 = !{i64 2153505160}
!185 = !{i64 2153506902}
!186 = !{i64 2153537877}
!187 = !{i64 2153538141}
