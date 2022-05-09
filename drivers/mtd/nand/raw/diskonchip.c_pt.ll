; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/diskonchip.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/diskonchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.doc_priv = type { %struct.nand_controller, ptr, i32, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i8, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.47, i32 }
%union.anon.47 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.48, i8 }
%union.anon.48 = type { ptr }
%struct.rs_codec = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head }
%struct.mtd_oob_region = type { i32, i32 }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.NFTLMediaHeader = type <{ [6 x i8], i16, i16, i32, i8 }>
%struct.INFTLMediaHeader = type { [8 x i8], i32, i32, i32, i32, i32, i32, i32, [4 x %struct.INFTLPartition] }
%struct.INFTLPartition = type { i32, i32, i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [17 x i8] c"diskonchip.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype198 = internal constant [30 x i8] c"diskonchip.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_try_dword = internal constant [21 x i8] c"diskonchip.try_dword\00", align 1
@try_dword = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_try_dword = internal constant %struct.kernel_param { ptr @__param_str_try_dword, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @try_dword } }, section "__param", align 4
@__UNIQUE_ID_try_dwordtype199 = internal constant [34 x i8] c"diskonchip.parmtype=try_dword:int\00", section ".modinfo", align 1
@__param_str_no_ecc_failures = internal constant [27 x i8] c"diskonchip.no_ecc_failures\00", align 1
@no_ecc_failures = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_ecc_failures = internal constant %struct.kernel_param { ptr @__param_str_no_ecc_failures, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @no_ecc_failures } }, section "__param", align 4
@__UNIQUE_ID_no_ecc_failurestype200 = internal constant [40 x i8] c"diskonchip.parmtype=no_ecc_failures:int\00", section ".modinfo", align 1
@__param_str_no_autopart = internal constant [23 x i8] c"diskonchip.no_autopart\00", align 1
@no_autopart = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_autopart = internal constant %struct.kernel_param { ptr @__param_str_no_autopart, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @no_autopart } }, section "__param", align 4
@__UNIQUE_ID_no_autoparttype201 = internal constant [36 x i8] c"diskonchip.parmtype=no_autopart:int\00", section ".modinfo", align 1
@__param_str_show_firmware_partition = internal constant [35 x i8] c"diskonchip.show_firmware_partition\00", align 1
@show_firmware_partition = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_show_firmware_partition = internal constant %struct.kernel_param { ptr @__param_str_show_firmware_partition, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @show_firmware_partition } }, section "__param", align 4
@__UNIQUE_ID_show_firmware_partitiontype202 = internal constant [48 x i8] c"diskonchip.parmtype=show_firmware_partition:int\00", section ".modinfo", align 1
@__param_str_inftl_bbt_write = internal constant [27 x i8] c"diskonchip.inftl_bbt_write\00", align 1
@inftl_bbt_write = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_inftl_bbt_write = internal constant %struct.kernel_param { ptr @__param_str_inftl_bbt_write, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @inftl_bbt_write } }, section "__param", align 4
@__UNIQUE_ID_inftl_bbt_writetype203 = internal constant [40 x i8] c"diskonchip.parmtype=inftl_bbt_write:int\00", section ".modinfo", align 1
@__param_str_doc_config_location = internal constant [31 x i8] c"diskonchip.doc_config_location\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@doc_config_location = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_doc_config_location = internal constant %struct.kernel_param { ptr @__param_str_doc_config_location, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @doc_config_location } }, section "__param", align 4
@__UNIQUE_ID_doc_config_locationtype204 = internal constant [46 x i8] c"diskonchip.parmtype=doc_config_location:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_doc_config_location205 = internal constant [93 x i8] c"diskonchip.parm=doc_config_location:Physical memory address at which to probe for DiskOnChip\00", section ".modinfo", align 1
@__initcall__kmod_diskonchip__216_1574_init_nanddoc6 = internal global ptr @init_nanddoc, section ".initcall6.init", align 4
@__exitcall_cleanup_nanddoc = internal global ptr @cleanup_nanddoc, section ".exitcall.exit", align 4
@__UNIQUE_ID_file217 = internal constant [48 x i8] c"diskonchip.file=drivers/mtd/nand/raw/diskonchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [23 x i8] c"diskonchip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author219 = internal constant [56 x i8] c"diskonchip.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description220 = internal constant [95 x i8] c"diskonchip.description=M-Systems DiskOnChip 2000, Millennium and Millennium Plus device driver\00", section ".modinfo", align 1
@doclist = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/diskonchip.c\00", [62 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@init_nanddoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016Using configured DiskOnChip probe address 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_nanddoc\00", [19 x i8] zeroinitializer }, align 32
@init_nanddoc._entry_ptr = internal global ptr @init_nanddoc._entry, section ".printk_index", align 4
@init_nanddoc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016No valid DiskOnChip devices found\0A\00", [59 x i8] zeroinitializer }, align 32
@init_nanddoc._entry_ptr.5 = internal global ptr @init_nanddoc._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DiskOnChip\00", [21 x i8] zeroinitializer }, align 32
@doc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Diskonchip ioremap failed: 0x%x bytes at 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"doc_probe\00", [22 x i8] zeroinitializer }, align 32
@doc_probe._entry_ptr = internal global ptr @doc_probe._entry, section ".printk_index", align 4
@doc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013DiskOnChip Millennium Plus 32MB is not supported, ignoring.\0A\00", [33 x i8] zeroinitializer }, align 32
@doc_probe._entry_ptr.11 = internal global ptr @doc_probe._entry.9, section ".printk_index", align 4
@doc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\0A\00", [34 x i8] zeroinitializer }, align 32
@doc_probe._entry_ptr.14 = internal global ptr @doc_probe._entry.12, section ".printk_index", align 4
@doc_probe.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.8, ptr @.str, ptr @.str.16, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"diskonchip\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Found alias of DOC at 0x%lx to 0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@doc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015DiskOnChip found at 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@doc_probe._entry_ptr.19 = internal global ptr @doc_probe._entry.17, section ".printk_index", align 4
@doc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013DiskOnChip: Could not create a RS codec\0A\00", [53 x i8] zeroinitializer }, align 32
@doc_probe._entry_ptr.22 = internal global ptr @doc_probe._entry.20, section ".printk_index", align 4
@doc2001plus_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @doc200x_attach_chip, ptr null, ptr @doc2001plus_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@doc200x_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @doc200x_attach_chip, ptr null, ptr @doc200x_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@doc200x_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @doc200x_ooblayout_ecc, ptr @doc200x_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@doc200x_correct_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013doc200x_correct_data corrected %d errors\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"doc200x_correct_data\00", [43 x i8] zeroinitializer }, align 32
@doc200x_correct_data._entry_ptr = internal global ptr @doc200x_correct_data._entry, section ".printk_index", align 4
@doc200x_correct_data._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013suppressing ECC failure\0A\00", [37 x i8] zeroinitializer }, align 32
@doc200x_correct_data._entry_ptr.28 = internal global ptr @doc200x_correct_data._entry.26, section ".printk_index", align 4
@doc2001plus_readbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"readbuf of %d bytes: \00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"doc2001plus_readbuf\00", [44 x i8] zeroinitializer }, align 32
@doc2001plus_readbuf._entry_ptr = internal global ptr @doc2001plus_readbuf._entry, section ".printk_index", align 4
@doc2001plus_readbuf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@doc2001plus_readbuf._entry_ptr.33 = internal global ptr @doc2001plus_readbuf._entry.31, section ".printk_index", align 4
@doc2001plus_readbuf._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@doc2001plus_readbuf._entry_ptr.35 = internal global ptr @doc2001plus_readbuf._entry.34, section ".printk_index", align 4
@doc2001plus_readbuf._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@doc2001plus_readbuf._entry_ptr.37 = internal global ptr @doc2001plus_readbuf._entry.36, section ".printk_index", align 4
@doc2001plus_readbuf._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@doc2001plus_readbuf._entry_ptr.40 = internal global ptr @doc2001plus_readbuf._entry.38, section ".printk_index", align 4
@doc2001plus_writebuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"writebuf of %d bytes: \00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"doc2001plus_writebuf\00", [43 x i8] zeroinitializer }, align 32
@doc2001plus_writebuf._entry_ptr = internal global ptr @doc2001plus_writebuf._entry, section ".printk_index", align 4
@doc2001plus_writebuf._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.42, ptr @.str, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@doc2001plus_writebuf._entry_ptr.44 = internal global ptr @doc2001plus_writebuf._entry.43, section ".printk_index", align 4
@doc2001plus_writebuf._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.42, ptr @.str, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@doc2001plus_writebuf._entry_ptr.46 = internal global ptr @doc2001plus_writebuf._entry.45, section ".printk_index", align 4
@DoC_WaitReady._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DoC_WaitReady OK\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DoC_WaitReady\00", [18 x i8] zeroinitializer }, align 32
@DoC_WaitReady._entry_ptr = internal global ptr @DoC_WaitReady._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_DoC_WaitReady._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_DoC_WaitReady...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_DoC_WaitReady\00", [17 x i8] zeroinitializer }, align 32
@_DoC_WaitReady._entry_ptr = internal global ptr @_DoC_WaitReady._entry, section ".printk_index", align 4
@_DoC_WaitReady._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_DoC_WaitReady timed out.\0A\00", [37 x i8] zeroinitializer }, align 32
@_DoC_WaitReady._entry_ptr.53 = internal global ptr @_DoC_WaitReady._entry.51, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_DoC_WaitReady._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_DoC_WaitReady._entry_ptr.55 = internal global ptr @_DoC_WaitReady._entry.54, section ".printk_index", align 4
@doc2000_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_byte %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"doc2000_write_byte\00", [45 x i8] zeroinitializer }, align 32
@doc2000_write_byte._entry_ptr = internal global ptr @doc2000_write_byte._entry, section ".printk_index", align 4
@doc2000_readbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.58, ptr @.str, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"doc2000_readbuf\00", [16 x i8] zeroinitializer }, align 32
@doc2000_readbuf._entry_ptr = internal global ptr @doc2000_readbuf._entry, section ".printk_index", align 4
@doc2000_writebuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.59, ptr @.str, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"doc2000_writebuf\00", [47 x i8] zeroinitializer }, align 32
@doc2000_writebuf._entry_ptr = internal global ptr @doc2000_writebuf._entry, section ".printk_index", align 4
@doc2000_writebuf._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.59, ptr @.str, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@doc2000_writebuf._entry_ptr.61 = internal global ptr @doc2000_writebuf._entry.60, section ".printk_index", align 4
@doc2000_writebuf._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.59, ptr @.str, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@doc2000_writebuf._entry_ptr.63 = internal global ptr @doc2000_writebuf._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DiskOnChip 2000 (NFTL Model)\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ANAND\00", [26 x i8] zeroinitializer }, align 32
@nftl_partscan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\016    DataOrgID        = %s\0A    NumEraseUnits    = %d\0A    FirstPhysicalEUN = %d\0A    FormattedSize    = %d\0A    UnitSizeFactor   = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nftl_partscan\00", [18 x i8] zeroinitializer }, align 32
@nftl_partscan._entry_ptr = internal global ptr @nftl_partscan._entry, section ".printk_index", align 4
@nftl_partscan._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014UnitSizeFactor=0x00 detected.  Correct value is assumed to be 0x%02x.\0A\00", [55 x i8] zeroinitializer }, align 32
@nftl_partscan._entry_ptr.70 = internal global ptr @nftl_partscan._entry.68, section ".printk_index", align 4
@nftl_partscan._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Setting virtual erase size to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nftl_partscan._entry_ptr.73 = internal global ptr @nftl_partscan._entry.71, section ".printk_index", align 4
@nftl_partscan._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013UnitSizeFactor of 0x%02x is inconsistent with device size.  Aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@nftl_partscan._entry_ptr.76 = internal global ptr @nftl_partscan._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" DiskOnChip Firmware / Media Header partition\00", [50 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" DiskOnChip BDTL partition\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" DiskOnChip Remainder partition\00", [32 x i8] zeroinitializer }, align 32
@find_media_headers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014ECC error scanning DOC at 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find_media_headers\00", [45 x i8] zeroinitializer }, align 32
@find_media_headers._entry_ptr = internal global ptr @find_media_headers._entry, section ".printk_index", align 4
@find_media_headers._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016Found DiskOnChip %s Media Header at 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@find_media_headers._entry_ptr.84 = internal global ptr @find_media_headers._entry.82, section ".printk_index", align 4
@find_media_headers._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014DiskOnChip %s Media Header not found.\0A\00", [55 x i8] zeroinitializer }, align 32
@find_media_headers._entry_ptr.87 = internal global ptr @find_media_headers._entry.85, section ".printk_index", align 4
@find_media_headers._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Read DiskOnChip Media Header once, but can't reread it???\0A\00", [35 x i8] zeroinitializer }, align 32
@find_media_headers._entry_ptr.90 = internal global ptr @find_media_headers._entry.88, section ".printk_index", align 4
@doc2000_count_chips.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.91, ptr @.str, ptr @.str.92, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"doc2000_count_chips\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Detected %d chips per floor.\0A\00", [34 x i8] zeroinitializer }, align 32
@doc200x_ident_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016DiskOnChip 2000 responds to DWORD access\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"doc200x_ident_chip\00", [45 x i8] zeroinitializer }, align 32
@doc200x_ident_chip._entry_ptr = internal global ptr @doc200x_ident_chip._entry, section ".printk_index", align 4
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DiskOnChip Millennium Plus\00", [37 x i8] zeroinitializer }, align 32
@inftl_scan_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Multi-floor INFTL devices not yet supported.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inftl_scan_bbt\00", [17 x i8] zeroinitializer }, align 32
@inftl_scan_bbt._entry_ptr = internal global ptr @inftl_scan_bbt._entry, section ".printk_index", align 4
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSYS_BBT\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TBB_SYSM\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BNAND\00", [26 x i8] zeroinitializer }, align 32
@inftl_partscan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [260 x i8], [92 x i8] } { [260 x i8] c"\016    bootRecordID          = %s\0A    NoOfBootImageBlocks   = %d\0A    NoOfBinaryPartitions  = %d\0A    NoOfBDTLPartitions    = %d\0A    BlockMultiplierBits   = %d\0A    FormatFlgs            = %d\0A    OsakVersion           = %d.%d.%d.%d\0A    PercentUsed           = %d\0A\00", [92 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inftl_partscan\00", [17 x i8] zeroinitializer }, align 32
@inftl_partscan._entry_ptr = internal global ptr @inftl_partscan._entry, section ".printk_index", align 4
@inftl_partscan._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013BlockMultiplierBits=%d is inconsistent with device size.  Aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@inftl_partscan._entry_ptr.105 = internal global ptr @inftl_partscan._entry.103, section ".printk_index", align 4
@inftl_partscan._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013Writeable BBTs spanning more than one erase block are not yet supported.  FIX ME!\0A\00", [43 x i8] zeroinitializer }, align 32
@inftl_partscan._entry_ptr.108 = internal global ptr @inftl_partscan._entry.106, section ".printk_index", align 4
@inftl_partscan._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [171 x i8], [53 x i8] } { [171 x i8] c"\016    PARTITION[%d] ->\0A        virtualUnits    = %d\0A        firstUnit       = %d\0A        lastUnit        = %d\0A        flags           = 0x%x\0A        spareUnits      = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@inftl_partscan._entry_ptr.111 = internal global ptr @inftl_partscan._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" DiskOnChip IPL / Media Header partition\00", [55 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" DiskOnChip BDK partition\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DiskOnChip 2000 (INFTL Model)\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DiskOnChip Millennium\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 32, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 65]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 64, i64 65]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 64, i64 65]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 89, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"try_dword\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 92, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"no_ecc_failures\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 95, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"no_autopart\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 98, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"show_firmware_partition\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 101, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"inftl_bbt_write\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 105, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"doc_config_location\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 111, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"doclist\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 58, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1535, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1549, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1562, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1311, i32 7 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1315, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1375, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1392, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1426, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1432, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1454, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"doc2001plus_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1294, i32 41 }
@___asan_gen_.224 = private unnamed_addr constant [12 x i8] c"doc200x_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1289, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"doc200x_ooblayout_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 851, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1105, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 794, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 802, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 477, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 486, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 493, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 498, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 500, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 460, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 464, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 467, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 288, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 242, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 247, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 256, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 298, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 328, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 310, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 314, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 317, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1228, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 924, i32 50 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 932, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 956, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 968, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 974, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 984, i32 19 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 990, i32 25 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 998, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 875, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 879, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 890, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 899, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 412, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 385, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1267, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1173, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1192, i32 27 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1202, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1033, i32 36 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1045, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1067, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1073, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1087, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1099, i32 20 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1106, i32 27 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1246, i32 15 }
@___asan_gen_.488 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.489 = private constant [37 x i8] c"../drivers/mtd/nand/raw/diskonchip.c\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1252, i32 15 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @DoC_WaitReady._entry, ptr @DoC_WaitReady._entry_ptr, ptr @_DoC_WaitReady._entry, ptr @_DoC_WaitReady._entry.51, ptr @_DoC_WaitReady._entry.54, ptr @_DoC_WaitReady._entry_ptr, ptr @_DoC_WaitReady._entry_ptr.53, ptr @_DoC_WaitReady._entry_ptr.55, ptr @__UNIQUE_ID_author219, ptr @__UNIQUE_ID_debugtype198, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_doc_config_location205, ptr @__UNIQUE_ID_doc_config_locationtype204, ptr @__UNIQUE_ID_file217, ptr @__UNIQUE_ID_inftl_bbt_writetype203, ptr @__UNIQUE_ID_license218, ptr @__UNIQUE_ID_no_autoparttype201, ptr @__UNIQUE_ID_no_ecc_failurestype200, ptr @__UNIQUE_ID_show_firmware_partitiontype202, ptr @__UNIQUE_ID_try_dwordtype199, ptr @__exitcall_cleanup_nanddoc, ptr @__initcall__kmod_diskonchip__216_1574_init_nanddoc6, ptr @__param_debug, ptr @__param_doc_config_location, ptr @__param_inftl_bbt_write, ptr @__param_no_autopart, ptr @__param_no_ecc_failures, ptr @__param_show_firmware_partition, ptr @__param_try_dword, ptr @cleanup_nanddoc, ptr @doc2000_readbuf._entry, ptr @doc2000_readbuf._entry_ptr, ptr @doc2000_write_byte._entry, ptr @doc2000_write_byte._entry_ptr, ptr @doc2000_writebuf._entry, ptr @doc2000_writebuf._entry.60, ptr @doc2000_writebuf._entry.62, ptr @doc2000_writebuf._entry_ptr, ptr @doc2000_writebuf._entry_ptr.61, ptr @doc2000_writebuf._entry_ptr.63, ptr @doc2001plus_readbuf._entry, ptr @doc2001plus_readbuf._entry.31, ptr @doc2001plus_readbuf._entry.34, ptr @doc2001plus_readbuf._entry.36, ptr @doc2001plus_readbuf._entry.38, ptr @doc2001plus_readbuf._entry_ptr, ptr @doc2001plus_readbuf._entry_ptr.33, ptr @doc2001plus_readbuf._entry_ptr.35, ptr @doc2001plus_readbuf._entry_ptr.37, ptr @doc2001plus_readbuf._entry_ptr.40, ptr @doc2001plus_writebuf._entry, ptr @doc2001plus_writebuf._entry.43, ptr @doc2001plus_writebuf._entry.45, ptr @doc2001plus_writebuf._entry_ptr, ptr @doc2001plus_writebuf._entry_ptr.44, ptr @doc2001plus_writebuf._entry_ptr.46, ptr @doc200x_correct_data._entry, ptr @doc200x_correct_data._entry.26, ptr @doc200x_correct_data._entry_ptr, ptr @doc200x_correct_data._entry_ptr.28, ptr @doc200x_ident_chip._entry, ptr @doc200x_ident_chip._entry_ptr, ptr @doc_probe._entry, ptr @doc_probe._entry.12, ptr @doc_probe._entry.17, ptr @doc_probe._entry.20, ptr @doc_probe._entry.9, ptr @doc_probe._entry_ptr, ptr @doc_probe._entry_ptr.11, ptr @doc_probe._entry_ptr.14, ptr @doc_probe._entry_ptr.19, ptr @doc_probe._entry_ptr.22, ptr @find_media_headers._entry, ptr @find_media_headers._entry.82, ptr @find_media_headers._entry.85, ptr @find_media_headers._entry.88, ptr @find_media_headers._entry_ptr, ptr @find_media_headers._entry_ptr.84, ptr @find_media_headers._entry_ptr.87, ptr @find_media_headers._entry_ptr.90, ptr @inftl_partscan._entry, ptr @inftl_partscan._entry.103, ptr @inftl_partscan._entry.106, ptr @inftl_partscan._entry.109, ptr @inftl_partscan._entry_ptr, ptr @inftl_partscan._entry_ptr.105, ptr @inftl_partscan._entry_ptr.108, ptr @inftl_partscan._entry_ptr.111, ptr @inftl_scan_bbt._entry, ptr @inftl_scan_bbt._entry_ptr, ptr @init_nanddoc._entry, ptr @init_nanddoc._entry.3, ptr @init_nanddoc._entry_ptr, ptr @init_nanddoc._entry_ptr.5, ptr @nftl_partscan._entry, ptr @nftl_partscan._entry.68, ptr @nftl_partscan._entry.71, ptr @nftl_partscan._entry.74, ptr @nftl_partscan._entry_ptr, ptr @nftl_partscan._entry_ptr.70, ptr @nftl_partscan._entry_ptr.73, ptr @nftl_partscan._entry_ptr.76, ptr @debug, ptr @try_dword, ptr @no_ecc_failures, ptr @no_autopart, ptr @show_firmware_partition, ptr @inftl_bbt_write, ptr @doc_config_location, ptr @doclist, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @doc2001plus_ops, ptr @doc200x_ops, ptr @doc200x_ooblayout_ops, ptr @nand_controller_init.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_dword to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_ecc_failures to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_autopart to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_firmware_partition to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_bbt_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_config_location to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doclist to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nanddoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nanddoc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc200x_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc200x_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc200x_correct_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc200x_correct_data._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_readbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_readbuf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_readbuf._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_readbuf._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_readbuf._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_writebuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_writebuf._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2001plus_writebuf._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DoC_WaitReady._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DoC_WaitReady._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DoC_WaitReady._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DoC_WaitReady._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2000_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2000_readbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2000_writebuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2000_writebuf._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc2000_writebuf._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_partscan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_partscan._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_partscan._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_partscan._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_media_headers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_media_headers._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_media_headers._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_media_headers._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc200x_ident_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_scan_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_partscan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_partscan._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_partscan._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_partscan._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 171, i32 224, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_nanddoc() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @doclist, align 4
  %tobool.not31.i = icmp eq ptr %0, null
  br i1 %tobool.not31.i, label %entry.release_nanddoc.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.release_nanddoc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_nanddoc.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %mtd.032.i = phi ptr [ %4, %if.end.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %mtd.032.i, i32 0, i32 34
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %nextdoc.i = getelementptr inbounds %struct.doc_priv, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %nextdoc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nextdoc.i, align 4
  %call2.i = tail call i32 @mtd_device_unregister(ptr noundef nonnull %mtd.032.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !283

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1535, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef nonnull %mtd.032.i) #13
  %virtadr.i = getelementptr inbounds %struct.doc_priv, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %virtadr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virtadr.i, align 4
  tail call void @iounmap(ptr noundef %6) #13
  %physadr.i = getelementptr inbounds %struct.doc_priv, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %physadr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %physadr.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 32768) #13
  %rs_decoder.i = getelementptr inbounds %struct.doc_priv, ptr %2, i32 0, i32 10
  %9 = ptrtoint ptr %rs_decoder.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rs_decoder.i, align 4
  tail call void @free_rs(ptr noundef %10) #13
  tail call void @kfree(ptr noundef nonnull %mtd.032.i) #13
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.release_nanddoc.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.release_nanddoc.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_nanddoc.exit

release_nanddoc.exit:                             ; preds = %if.end.i.release_nanddoc.exit_crit_edge, %entry.release_nanddoc.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nanddoc() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @doc_config_location, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #16
  %1 = load i32, ptr @doc_config_location, align 4
  %call1 = tail call fastcc i32 @doc_probe(i32 noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  %2 = load ptr, ptr @doclist, align 4
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %do.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end.cleanup_crit_edge ], [ %ret.0, %if.end6.cleanup_crit_edge ], [ -19, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_probe(i32 noundef %physadr) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %physadr, i32 noundef 32768, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup180_crit_edge, label %if.end

entry.cleanup180_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup180

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ioremap(i32 noundef %physadr, i32 noundef 32768) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 32768, i32 noundef %physadr) #16
  br label %error_ioremap

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i32, ptr %call1, i32 4098
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 132) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 132) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 133) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 133) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i296 = getelementptr i32, ptr %call1, i32 4096
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #13, !srcloc !284
  %conv.i297 = trunc i32 %1 to i8
  %2 = zext i8 %conv.i297 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv.i297, label %if.end6.notfound_crit_edge [
    i8 32, label %if.end6.sw.epilog29_crit_edge
    i8 48, label %sw.bb9
    i8 65, label %if.end6.sw.bb10_crit_edge
    i8 64, label %if.end6.sw.bb10_crit_edge364
    i8 0, label %if.end6.sw.bb10_crit_edge365
  ]

if.end6.sw.bb10_crit_edge365:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end6.sw.bb10_crit_edge364:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end6.sw.bb10_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end6.sw.epilog29_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog29

if.end6.notfound_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %notfound

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog29

sw.bb10:                                          ; preds = %if.end6.sw.bb10_crit_edge, %if.end6.sw.bb10_crit_edge364, %if.end6.sw.bb10_crit_edge365
  %add.ptr.i298 = getelementptr i32, ptr %call1, i32 8191
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb10
  %tmp.0350 = phi i8 [ 0, %sw.bb10 ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #13, !srcloc !284
  %inc = add nuw nsw i8 %tmp.0350, 1
  %cmp = icmp ult i8 %tmp.0350, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr.i300 = getelementptr i32, ptr %call1, i32 4102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 28) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i301 = getelementptr i32, ptr %call1, i32 4214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301, i32 227) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 29) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301, i32 226) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #13, !srcloc !284
  %conv.i305 = trunc i32 %4 to i8
  %5 = zext i8 %conv.i305 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %conv.i305, label %for.end.notfound_crit_edge [
    i8 65, label %for.end.sw.epilog29_crit_edge
    i8 64, label %do.end25
  ]

for.end.sw.epilog29_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog29

for.end.notfound_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %notfound

do.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  br label %notfound

sw.epilog29:                                      ; preds = %for.end.sw.epilog29_crit_edge, %sw.bb9, %if.end6.sw.epilog29_crit_edge
  %reg.0 = phi i32 [ 4102, %sw.bb9 ], [ 4103, %if.end6.sw.epilog29_crit_edge ], [ 4166, %for.end.sw.epilog29_crit_edge ]
  %cmp62 = phi i1 [ false, %sw.bb9 ], [ false, %if.end6.sw.epilog29_crit_edge ], [ true, %for.end.sw.epilog29_crit_edge ]
  %cmp155 = phi i1 [ false, %sw.bb9 ], [ true, %if.end6.sw.epilog29_crit_edge ], [ false, %for.end.sw.epilog29_crit_edge ]
  %ChipID.0 = phi i8 [ 48, %sw.bb9 ], [ %conv.i297, %if.end6.sw.epilog29_crit_edge ], [ %conv.i305, %for.end.sw.epilog29_crit_edge ]
  %add.ptr.i306 = getelementptr i32, ptr %call1, i32 %reg.0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i306) #13, !srcloc !284
  %conv.i307 = trunc i32 %6 to i8
  %7 = and i8 %conv.i307, 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i306) #13, !srcloc !284
  %conv.i309 = trunc i32 %8 to i8
  %9 = and i8 %conv.i309, 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i306) #13, !srcloc !284
  %conv.i311 = trunc i32 %10 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp43 = icmp ne i8 %7, %9
  %11 = and i8 %conv.i311, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %11)
  %cmp47.not = icmp eq i8 %7, %11
  %or.cond = select i1 %cmp43, i1 %cmp47.not, i1 false
  br i1 %or.cond, label %for.cond56.preheader, label %do.end52

for.cond56.preheader:                             ; preds = %sw.epilog29
  %mtd.0351 = load ptr, ptr @doclist, align 4
  %tobool57.not352 = icmp eq ptr %mtd.0351, null
  br i1 %tobool57.not352, label %for.cond56.preheader.do.end119_crit_edge, label %for.body58.lr.ph

for.cond56.preheader.do.end119_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end119

for.body58.lr.ph:                                 ; preds = %for.cond56.preheader
  %add.ptr.i318 = getelementptr i32, ptr %call1, i32 4123
  %add.ptr.i314 = getelementptr i32, ptr %call1, i32 4100
  br label %for.body58

do.end52:                                         ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #15
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %physadr) #16
  br label %notfound

for.body58:                                       ; preds = %for.inc115.for.body58_crit_edge, %for.body58.lr.ph
  %mtd.0353 = phi ptr [ %mtd.0351, %for.body58.lr.ph ], [ %mtd.0, %for.inc115.for.body58_crit_edge ]
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd.0353, i32 0, i32 34
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %virtadr65 = getelementptr inbounds %struct.doc_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %virtadr65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtadr65, align 4
  br i1 %cmp62, label %if.end71, label %if.end71.thread

if.end71:                                         ; preds = %for.body58
  %add.ptr.i312 = getelementptr i32, ptr %15, i32 4100
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #13, !srcloc !284
  %conv.i313 = trunc i32 %16 to i8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i314) #13, !srcloc !284
  %conv.i315 = trunc i32 %17 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i313, i8 %conv.i315)
  %cmp74.not = icmp eq i8 %conv.i313, %conv.i315
  br i1 %cmp74.not, label %if.then81, label %if.end71.for.inc115_crit_edge

if.end71.for.inc115_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

if.end71.thread:                                  ; preds = %for.body58
  %add.ptr.i316 = getelementptr i32, ptr %15, i32 4123
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #13, !srcloc !284
  %conv.i317 = trunc i32 %18 to i8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #13, !srcloc !284
  %conv.i319 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i317, i8 %conv.i319)
  %cmp74.not341 = icmp eq i8 %conv.i317, %conv.i319
  br i1 %cmp74.not341, label %if.else87, label %if.end71.thread.for.inc115_crit_edge

if.end71.thread.for.inc115_crit_edge:             ; preds = %if.end71.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

if.then81:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %neg83 = and i32 %17, 255
  %conv.i320 = xor i32 %neg83, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %conv.i320) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %virtadr65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virtadr65, align 4
  %add.ptr.i322 = getelementptr i32, ptr %21, i32 4100
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i322) #13, !srcloc !284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %neg83) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end93

if.else87:                                        ; preds = %if.end71.thread
  call void @__sanitizer_cov_trace_pc() #15
  %neg89 = and i32 %19, 255
  %conv.i326 = xor i32 %neg89, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 %conv.i326) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %virtadr65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virtadr65, align 4
  %add.ptr.i328 = getelementptr i32, ptr %24, i32 4123
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i328) #13, !srcloc !284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 %neg89) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end93

if.end93:                                         ; preds = %if.else87, %if.then81
  %newval.0343 = phi i8 [ %conv.i313, %if.then81 ], [ %conv.i317, %if.else87 ]
  %oldval.1.in = phi i32 [ %22, %if.then81 ], [ %25, %if.else87 ]
  tail call void @arm_heavy_mb() #13
  %oldval.1 = trunc i32 %oldval.1.in to i8
  %neg95 = xor i8 %newval.0343, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %oldval.1, i8 %neg95)
  %cmp99 = icmp eq i8 %oldval.1, %neg95
  br i1 %cmp99, label %do.body102, label %if.end93.for.inc115_crit_edge

if.end93.for.inc115_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

do.body102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_probe.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_probe, %if.then108)) #13
          to label %notfound [label %if.then108], !srcloc !287

if.then108:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  %physadr109 = getelementptr inbounds %struct.doc_priv, ptr %13, i32 0, i32 2
  %26 = ptrtoint ptr %physadr109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %physadr109, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @doc_probe.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.16, i32 noundef %27, i32 noundef %physadr) #13
  br label %notfound

for.inc115:                                       ; preds = %if.end93.for.inc115_crit_edge, %if.end71.thread.for.inc115_crit_edge, %if.end71.for.inc115_crit_edge
  %nextdoc = getelementptr inbounds %struct.doc_priv, ptr %13, i32 0, i32 11
  %28 = ptrtoint ptr %nextdoc to i32
  call void @__asan_load4_noabort(i32 %28)
  %mtd.0 = load ptr, ptr %nextdoc, align 4
  %tobool57.not = icmp eq ptr %mtd.0, null
  br i1 %tobool57.not, label %for.inc115.do.end119_crit_edge, label %for.inc115.for.body58_crit_edge

for.inc115.for.body58_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body58

for.inc115.do.end119_crit_edge:                   ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end119

do.end119:                                        ; preds = %for.inc115.do.end119_crit_edge, %for.cond56.preheader.do.end119_crit_edge
  %doc.0.lcssa = phi ptr [ null, %for.cond56.preheader.do.end119_crit_edge ], [ %13, %for.inc115.do.end119_crit_edge ]
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %physadr) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 2448) #18
  %tobool123.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool123.not, label %do.end119.fail_crit_edge, label %if.end125

do.end119.fail_crit_edge:                         ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end125:                                        ; preds = %do.end119
  %add.ptr = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1
  %call.i = tail call ptr @init_rs_gfp(i32 noundef 10, i32 noundef 1033, i32 noundef 510, i32 noundef 1, i32 noundef 4, i32 noundef 3264) #13
  %rs_decoder = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 31
  %30 = ptrtoint ptr %rs_decoder to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %rs_decoder, align 8
  %tobool128.not = icmp eq ptr %call.i, null
  br i1 %tobool128.not, label %do.end132, label %if.end135

do.end132:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %fail

if.end135:                                        ; preds = %if.end125
  tail call void @__mutex_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.23, ptr noundef nonnull @nand_controller_init.__key) #13
  %spec.select = select i1 %cmp62, ptr @doc2001plus_ops, ptr @doc200x_ops
  %31 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 22
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select, ptr %31, align 4
  %add.ptr146 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 35
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 13
  %33 = ptrtoint ptr %bbt_td to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr146, ptr %bbt_td, align 4
  %add.ptr148 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 51, i32 1
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 14
  %34 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr148, ptr %bbt_md, align 8
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 55
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %owner, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 15
  %36 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @doc200x_ooblayout_ops, ptr %ooblayout1.i, align 8
  %controller = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 32
  %37 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %controller, align 4
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 34
  %38 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr, ptr %priv1.i, align 8
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131072, ptr %bbt_options, align 8
  %options = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %options, align 8
  %or = or i32 %41, 134283264
  store i32 %or, ptr %options, align 8
  %physadr150 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 24
  %42 = ptrtoint ptr %physadr150 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %physadr, ptr %physadr150, align 4
  %virtadr151 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 23
  %43 = ptrtoint ptr %virtadr151 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1, ptr %virtadr151, align 8
  %ChipID152 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 25
  %44 = ptrtoint ptr %ChipID152 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %ChipID.0, ptr %ChipID152, align 8
  %curfloor = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 27
  %45 = call ptr @memset(ptr %curfloor, i32 255, i32 16)
  %46 = load ptr, ptr @doclist, align 4
  %nextdoc153 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 32
  %47 = ptrtoint ptr %nextdoc153 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %nextdoc153, align 4
  br i1 %cmp155, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  %late_init.i = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 34
  %48 = ptrtoint ptr %late_init.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nftl_scan_bbt, ptr %late_init.i, align 4
  %CDSNControl.i = getelementptr inbounds %struct.doc_priv, ptr %add.ptr, i32 0, i32 4
  %49 = ptrtoint ptr %CDSNControl.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 48, ptr %CDSNControl.i, align 1
  tail call fastcc void @doc2000_count_chips(ptr noundef nonnull %call7.i.i) #16
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %50 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.64, ptr %name.i, align 8
  %chips_per_floor.i = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 26
  %51 = ptrtoint ptr %chips_per_floor.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chips_per_floor.i, align 4
  %mul.i = shl i32 %52, 2
  br label %if.end168

if.else159:                                       ; preds = %if.end135
  br i1 %cmp62, label %if.then163, label %if.else165

if.then163:                                       ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #15
  %late_init.i333 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 34
  %53 = ptrtoint ptr %late_init.i333 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @inftl_scan_bbt, ptr %late_init.i333, align 4
  %hwctl.i = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 33, i32 13
  %54 = ptrtoint ptr %hwctl.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @doc2001plus_enable_hwecc, ptr %hwctl.i, align 4
  %chips_per_floor.i334 = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 26
  %55 = ptrtoint ptr %chips_per_floor.i334 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %chips_per_floor.i334, align 4
  %name.i335 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %56 = ptrtoint ptr %name.i335 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.95, ptr %name.i335, align 8
  br label %if.end168

if.else165:                                       ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #15
  %call166 = tail call fastcc i32 @doc2001_init(ptr noundef nonnull %call7.i.i) #17
  br label %if.end168

if.end168:                                        ; preds = %if.else165, %if.then163, %if.then157
  %numchips.0 = phi i32 [ %mul.i, %if.then157 ], [ 1, %if.then163 ], [ %call166, %if.else165 ]
  %call.i336 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call7.i.i, i32 noundef %numchips.0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool170.not = icmp eq i32 %call.i336, 0
  br i1 %tobool170.not, label %lor.lhs.false171, label %if.end168.if.then174_crit_edge

if.end168.if.then174_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

lor.lhs.false171:                                 ; preds = %if.end168
  %late_init = getelementptr %struct.nand_chip, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 34
  %57 = ptrtoint ptr %late_init to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %late_init, align 4
  %call172 = tail call i32 %58(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %lor.lhs.false171.if.then174_crit_edge

lor.lhs.false171.if.then174_crit_edge:            ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

if.then174:                                       ; preds = %lor.lhs.false171.if.then174_crit_edge, %if.end168.if.then174_crit_edge
  %ret.0 = phi i32 [ %call.i336, %if.end168.if.then174_crit_edge ], [ %call172, %lor.lhs.false171.if.then174_crit_edge ]
  tail call void @nand_cleanup(ptr noundef nonnull %call7.i.i) #13
  br label %fail

if.end175:                                        ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %call7.i.i, ptr @doclist, align 4
  br label %cleanup180

notfound:                                         ; preds = %if.then108, %do.body102, %do.end52, %do.end25, %for.end.notfound_crit_edge, %if.end6.notfound_crit_edge
  %ret.1 = phi i32 [ -19, %do.end52 ], [ -19, %for.end.notfound_crit_edge ], [ -19, %do.end25 ], [ -19, %if.end6.notfound_crit_edge ], [ 0, %do.body102 ], [ 0, %if.then108 ]
  %doc.1 = phi ptr [ null, %do.end52 ], [ null, %for.end.notfound_crit_edge ], [ null, %do.end25 ], [ null, %if.end6.notfound_crit_edge ], [ %13, %do.body102 ], [ %13, %if.then108 ]
  %nand.0 = phi ptr [ null, %do.end52 ], [ null, %for.end.notfound_crit_edge ], [ null, %do.end25 ], [ null, %if.end6.notfound_crit_edge ], [ %mtd.0353, %do.body102 ], [ %mtd.0353, %if.then108 ]
  %conv.i337 = and i32 %0, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i337) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %fail

fail:                                             ; preds = %notfound, %if.then174, %do.end132, %do.end119.fail_crit_edge
  %ret.2 = phi i32 [ %ret.1, %notfound ], [ %ret.0, %if.then174 ], [ -12, %do.end132 ], [ -12, %do.end119.fail_crit_edge ]
  %doc.2 = phi ptr [ %doc.1, %notfound ], [ %add.ptr, %if.then174 ], [ %add.ptr, %do.end132 ], [ %doc.0.lcssa, %do.end119.fail_crit_edge ]
  %nand.1 = phi ptr [ %nand.0, %notfound ], [ %call7.i.i, %if.then174 ], [ %call7.i.i, %do.end132 ], [ null, %do.end119.fail_crit_edge ]
  %tobool176.not = icmp eq ptr %doc.2, null
  br i1 %tobool176.not, label %fail.if.end179_crit_edge, label %if.then177

fail.if.end179_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179

if.then177:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  %rs_decoder178 = getelementptr inbounds %struct.doc_priv, ptr %doc.2, i32 0, i32 10
  %59 = ptrtoint ptr %rs_decoder178 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rs_decoder178, align 4
  tail call void @free_rs(ptr noundef %60) #13
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %fail.if.end179_crit_edge
  tail call void @kfree(ptr noundef %nand.1) #13
  tail call void @iounmap(ptr noundef nonnull %call1) #13
  br label %error_ioremap

error_ioremap:                                    ; preds = %if.end179, %do.end
  %ret.3 = phi i32 [ %ret.2, %if.end179 ], [ -5, %do.end ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %physadr, i32 noundef 32768) #13
  br label %cleanup180

cleanup180:                                       ; preds = %error_ioremap, %if.end175, %entry.cleanup180_crit_edge
  %retval.0 = phi i32 [ %ret.3, %error_ioremap ], [ 0, %if.end175 ], [ -16, %entry.cleanup180_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc2001_init(ptr noundef %mtd) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtadr, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 4096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %5 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virtadr, align 4
  %add.ptr.i24 = getelementptr i32, ptr %6, i32 4096
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #13, !srcloc !284
  %8 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26 = getelementptr i32, ptr %9, i32 4096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #13, !srcloc !284
  %11 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28 = getelementptr i32, ptr %12, i32 4096
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #13, !srcloc !284
  %conv.i29 = trunc i32 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv.i29)
  %cmp.not = icmp eq i8 %conv.i29, 48
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @doc2000_count_chips(ptr noundef %mtd) #17
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.114, ptr %name, align 8
  %chips_per_floor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chips_per_floor, align 4
  %mul = shl i32 %16, 2
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %chips_per_floor10 = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %chips_per_floor10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %chips_per_floor10, align 4
  %name11 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %18 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.115, ptr %name11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %inftl_scan_bbt.sink = phi ptr [ @nftl_scan_bbt, %if.else ], [ @inftl_scan_bbt, %if.then ]
  %retval.0 = phi i32 [ 1, %if.else ], [ %mul, %if.then ]
  %19 = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %inftl_scan_bbt.sink, ptr %19, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_rs_gfp(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @doc200x_attach_chip(ptr nocapture noundef %chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %placement = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 1
  %2 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %placement, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 512, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %5 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %strength, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 10
  %6 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %options, align 8
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %7 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @doc200x_enable_hwecc, ptr %hwctl, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %8 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @doc200x_calculate_ecc, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %9 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @doc200x_correct_data, ptr %correct, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc2001plus_exec_op(ptr nocapture noundef readonly %this, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %chips_per_floor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chips_per_floor, align 4
  %rem = urem i32 %3, %5
  %curchip = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %curchip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem, ptr %curchip, align 4
  %7 = load i32, ptr %op, align 4
  %div = udiv i32 %7, %5
  %curfloor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %curfloor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %curfloor, align 4
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virtadr, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 4130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %11 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not = icmp eq i32 %12, 0
  br i1 %cmp17.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %doc2001plus_exec_instr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %doc2001plus_exec_instr.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %18, label %for.body.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb14.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

for.cond.preheader.i:                             ; preds = %for.body
  %ctx2.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1
  %20 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp64.not.i = icmp eq i32 %21, 0
  br i1 %cmp64.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1, i32 0, i32 1
  %virtadr4.i = getelementptr inbounds %struct.doc_priv, ptr %16, i32 0, i32 1
  br label %for.body.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctx.i, align 4
  %virtadr.i = getelementptr inbounds %struct.doc_priv, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %virtadr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virtadr.i, align 4
  %conv.i.i = zext i8 %23 to i32
  %add.ptr.i.i = getelementptr i32, ptr %25, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %virtadr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virtadr.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %27, i32 4142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %virtadr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virtadr.i, align 4
  %add.ptr.i3.i.i = getelementptr i32, ptr %29, i32 4142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %31, i32 %i.065.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %34 = ptrtoint ptr %virtadr4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virtadr4.i, align 4
  %conv.i36.i = zext i8 %33 to i32
  %add.ptr.i37.i = getelementptr i32, ptr %35, i32 4134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %conv.i36.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %inc.i = add nuw i32 %i.065.i, 1
  %36 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctx2.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %virtadr.i38.i = getelementptr inbounds %struct.doc_priv, ptr %16, i32 0, i32 1
  %38 = ptrtoint ptr %virtadr.i38.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virtadr.i38.i, align 4
  %add.ptr.i.i39.i = getelementptr i32, ptr %39, i32 4142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %virtadr.i38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virtadr.i38.i, align 4
  %add.ptr.i3.i40.i = getelementptr i32, ptr %41, i32 4142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i40.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %virtadr.i38.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virtadr.i38.i, align 4
  %add.ptr.i41.i = getelementptr i32, ptr %43, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.body
  %ctx7.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf.i, align 4
  %46 = ptrtoint ptr %ctx7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctx7.i, align 4
  %virtadr.i42.i = getelementptr inbounds %struct.doc_priv, ptr %16, i32 0, i32 1
  %48 = ptrtoint ptr %virtadr.i42.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virtadr.i42.i, align 4
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i, label %sw.bb6.i.if.end.i.i_crit_edge, label %do.end.i.i

sw.bb6.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %47) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %sw.bb6.i.if.end.i.i_crit_edge
  %add.ptr.i.i43.i = getelementptr i32, ptr %49, i32 4138
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #13, !srcloc !284
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #13, !srcloc !284
  %sub.i.i = add i32 %47, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp92.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp92.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %add.ptr.i86.i.i = getelementptr i32, ptr %49, i32 2048
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.093.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i.i) #13, !srcloc !284
  %conv.i87.i.i = trunc i32 %53 to i8
  %arrayidx.i.i = getelementptr i8, ptr %45, i32 %i.093.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i87.i.i, ptr %arrayidx.i.i, align 1
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool5.not.i.i = icmp ne i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.093.i.i)
  %cmp6.i.i = icmp ult i32 %i.093.i.i, 16
  %or.cond.i.i = select i1 %tobool5.not.i.i, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end10.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

do.end10.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i44.i = and i32 %53, 255
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i44.i) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end10.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.093.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %sub.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp15.i.i = icmp sgt i32 %47, 1
  br i1 %cmp15.i.i, label %if.then17.i.i, label %for.end.i.i.if.end35.i.i_crit_edge

for.end.i.i.if.end35.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i.i

if.then17.i.i:                                    ; preds = %for.end.i.i
  %add.ptr.i88.i.i = getelementptr i32, ptr %49, i32 4140
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i.i) #13, !srcloc !284
  %conv.i89.i.i = trunc i32 %56 to i8
  %arrayidx20.i.i = getelementptr i8, ptr %45, i32 %sub.i.i
  %57 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i89.i.i, ptr %arrayidx20.i.i, align 1
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool21.not.i.i = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.lcssa.i.i)
  %cmp23.i.i = icmp ult i32 %i.0.lcssa.i.i, 16
  %or.cond82.i.i = and i1 %cmp23.i.i, %tobool21.not.i.i
  br i1 %or.cond82.i.i, label %do.end28.i.i, label %if.then17.i.i.if.end35.i.i_crit_edge

if.then17.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i.i

do.end28.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv32.i.i = and i32 %56, 255
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv32.i.i) #16
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end28.i.i, %if.then17.i.i.if.end35.i.i_crit_edge, %for.end.i.i.if.end35.i.i_crit_edge
  %add.ptr.i90.i.i = getelementptr i32, ptr %49, i32 4140
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i.i) #13, !srcloc !284
  %conv.i91.i.i = trunc i32 %59 to i8
  %sub37.i.i = add i32 %47, -1
  %arrayidx38.i.i = getelementptr i8, ptr %45, i32 %sub37.i.i
  %60 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i91.i.i, ptr %arrayidx38.i.i, align 1
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool39.not.i.i = icmp ne i32 %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.lcssa.i.i)
  %cmp41.i.i = icmp ult i32 %i.0.lcssa.i.i, 16
  %or.cond83.i.i = and i1 %cmp41.i.i, %tobool39.not.i.i
  br i1 %or.cond83.i.i, label %do.end46.i.i, label %if.end35.i.i.if.end52.i.i_crit_edge

if.end35.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i.i

do.end46.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv50.i.i = and i32 %59, 255
  %call51.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv50.i.i) #16
  %.pr.i.i = load i32, ptr @debug, align 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %do.end46.i.i, %if.end35.i.i.if.end52.i.i_crit_edge
  %62 = phi i32 [ %.pr.i.i, %do.end46.i.i ], [ %61, %if.end35.i.i.if.end52.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool53.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool53.not.i.i, label %if.end52.i.i.sw.epilog.i_crit_edge, label %do.end57.i.i

if.end52.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

do.end57.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call59.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %for.body
  %ctx10.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1
  %buf11.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %buf11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf11.i, align 4
  %65 = ptrtoint ptr %ctx10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctx10.i, align 4
  %virtadr.i46.i = getelementptr inbounds %struct.doc_priv, ptr %16, i32 0, i32 1
  %67 = ptrtoint ptr %virtadr.i46.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %virtadr.i46.i, align 4
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i47.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i47.i, label %sw.bb9.i.if.end.i50.i_crit_edge, label %do.end.i49.i

sw.bb9.i.if.end.i50.i_crit_edge:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i50.i

do.end.i49.i:                                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %66) #16
  br label %if.end.i50.i

if.end.i50.i:                                     ; preds = %do.end.i49.i, %sw.bb9.i.if.end.i50.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp27.i.i = icmp sgt i32 %66, 0
  br i1 %cmp27.i.i, label %if.end.i50.i.for.body.i54.i_crit_edge, label %if.end.i50.i.for.end.i59.i_crit_edge

if.end.i50.i.for.end.i59.i_crit_edge:             ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i59.i

if.end.i50.i.for.body.i54.i_crit_edge:            ; preds = %if.end.i50.i
  br label %for.body.i54.i

for.body.i54.i:                                   ; preds = %for.inc.i58.i.for.body.i54.i_crit_edge, %if.end.i50.i.for.body.i54.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i56.i, %for.inc.i58.i.for.body.i54.i_crit_edge ], [ 0, %if.end.i50.i.for.body.i54.i_crit_edge ]
  %arrayidx.i51.i = getelementptr i8, ptr %64, i32 %i.028.i.i
  %70 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i51.i, align 1
  %add.i.i = add nuw i32 %i.028.i.i, 2048
  %conv.i.i.i = zext i8 %71 to i32
  %add.ptr.i.i52.i = getelementptr i32, ptr %68, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52.i, i32 %conv.i.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool2.not.i.i = icmp ne i32 %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.028.i.i)
  %cmp3.i.i = icmp ult i32 %i.028.i.i, 16
  %or.cond.i53.i = select i1 %tobool2.not.i.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i53.i, label %do.end7.i.i, label %for.body.i54.i.for.inc.i58.i_crit_edge

for.body.i54.i.for.inc.i58.i_crit_edge:           ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i58.i

do.end7.i.i:                                      ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i51.i, align 1
  %conv.i55.i = zext i8 %74 to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i55.i) #16
  br label %for.inc.i58.i

for.inc.i58.i:                                    ; preds = %do.end7.i.i, %for.body.i54.i.for.inc.i58.i_crit_edge
  %inc.i56.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i57.i = icmp eq i32 %inc.i56.i, %66
  br i1 %exitcond.not.i57.i, label %for.inc.i58.i.for.end.i59.i_crit_edge, label %for.inc.i58.i.for.body.i54.i_crit_edge

for.inc.i58.i.for.body.i54.i_crit_edge:           ; preds = %for.inc.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i54.i

for.inc.i58.i.for.end.i59.i_crit_edge:            ; preds = %for.inc.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i59.i

for.end.i59.i:                                    ; preds = %for.inc.i58.i.for.end.i59.i_crit_edge, %if.end.i50.i.for.end.i59.i_crit_edge
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool12.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool12.not.i.i, label %for.end.i59.i.doc2001plus_writebuf.exit.i_crit_edge, label %do.end16.i.i

for.end.i59.i.doc2001plus_writebuf.exit.i_crit_edge: ; preds = %for.end.i59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2001plus_writebuf.exit.i

do.end16.i.i:                                     ; preds = %for.end.i59.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %doc2001plus_writebuf.exit.i

doc2001plus_writebuf.exit.i:                      ; preds = %do.end16.i.i, %for.end.i59.i.doc2001plus_writebuf.exit.i_crit_edge
  %76 = ptrtoint ptr %virtadr.i46.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %virtadr.i46.i, align 4
  %add.ptr.i.i61.i = getelementptr i32, ptr %77, i32 4142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %78 = ptrtoint ptr %virtadr.i46.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %virtadr.i46.i, align 4
  %add.ptr.i3.i62.i = getelementptr i32, ptr %79, i32 4142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i62.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @DoC_WaitReady(ptr noundef %16) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb14.i, %doc2001plus_writebuf.exit.i, %do.end57.i.i, %if.end52.i.i.sw.epilog.i_crit_edge, %for.end.i, %sw.bb.i, %for.body.sw.epilog.i_crit_edge
  %delay_ns.i = getelementptr %struct.nand_op_instr, ptr %14, i32 %i.018, i32 2
  %80 = ptrtoint ptr %delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %delay_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %sw.epilog.i.doc2001plus_exec_instr.exit_crit_edge, label %cond.false8.i.i

sw.epilog.i.doc2001plus_exec_instr.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2001plus_exec_instr.exit

cond.false8.i.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i63.i = add i32 %81, 999
  %div.i.i = udiv i32 %sub.i63.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %div.i.i) #13
  br label %doc2001plus_exec_instr.exit

doc2001plus_exec_instr.exit:                      ; preds = %cond.false8.i.i, %sw.epilog.i.doc2001plus_exec_instr.exit_crit_edge
  %inc = add nuw i32 %i.018, 1
  %83 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %84
  br i1 %cmp, label %doc2001plus_exec_instr.exit.for.body_crit_edge, label %doc2001plus_exec_instr.exit.for.end_crit_edge

doc2001plus_exec_instr.exit.for.end_crit_edge:    ; preds = %doc2001plus_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

doc2001plus_exec_instr.exit.for.body_crit_edge:   ; preds = %doc2001plus_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %doc2001plus_exec_instr.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %85 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %virtadr, align 4
  %add.ptr.i16 = getelementptr i32, ptr %86, i32 4130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @doc200x_enable_hwecc(ptr nocapture noundef readonly %this, i32 noundef %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtadr, align 4
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %3, i32 4102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 10) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i6 = getelementptr i32, ptr %3, i32 4102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 42) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc200x_calculate_ecc(ptr nocapture noundef readonly %this, ptr nocapture noundef readnone %dat, ptr nocapture noundef %ecc_code) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtadr, align 4
  %ChipID = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ChipID, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %5, label %if.else14 [
    i8 32, label %if.then
    i8 65, label %entry.if.then13_crit_edge
    i8 64, label %entry.if.then13_crit_edge107
  ]

entry.if.then13_crit_edge107:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %CDSNControl = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %CDSNControl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CDSNControl, align 1
  %9 = and i8 %8, -17
  %conv.i = zext i8 %9 to i32
  %add.ptr.i = getelementptr i32, ptr %3, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i88 = getelementptr i32, ptr %3, i32 6144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %CDSNControl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %CDSNControl, align 1
  %conv.i91 = zext i8 %11 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i91) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end15

if.then13:                                        ; preds = %entry.if.then13_crit_edge, %entry.if.then13_crit_edge107
  %add.ptr.i93 = getelementptr i32, ptr %3, i32 4098
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end15

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i96 = getelementptr i32, ptr %3, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13, %if.then
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ChipID, align 4
  %14 = and i8 %13, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %switch = icmp eq i8 %14, 64
  br i1 %switch, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i99 = getelementptr i32, ptr %3, i32 4160
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #13, !srcloc !284
  br label %if.end33

if.else29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i101 = getelementptr i32, ptr %3, i32 4112
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #13, !srcloc !284
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then27
  %storemerge.in = phi i32 [ %16, %if.else29 ], [ %15, %if.then27 ]
  %storemerge = trunc i32 %storemerge.in to i8
  %17 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %storemerge, ptr %ecc_code, align 1
  %18 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ChipID, align 4
  %20 = and i8 %19, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %20)
  %switch.1 = icmp eq i8 %20, 64
  br i1 %switch.1, label %if.then27.1, label %if.else29.1

if.else29.1:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i101.1 = getelementptr i32, ptr %3, i32 4113
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.1) #13, !srcloc !284
  br label %if.end33.1

if.then27.1:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i99.1 = getelementptr i32, ptr %3, i32 4161
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.1) #13, !srcloc !284
  br label %if.end33.1

if.end33.1:                                       ; preds = %if.then27.1, %if.else29.1
  %conv.i102.1.sink.in = phi i32 [ %22, %if.then27.1 ], [ %21, %if.else29.1 ]
  %conv.i102.1.sink = trunc i32 %conv.i102.1.sink.in to i8
  %23 = getelementptr i8, ptr %ecc_code, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i102.1.sink, ptr %23, align 1
  %25 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ChipID, align 4
  %27 = and i8 %26, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %27)
  %switch.2 = icmp eq i8 %27, 64
  br i1 %switch.2, label %if.then27.2, label %if.else29.2

if.else29.2:                                      ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i101.2 = getelementptr i32, ptr %3, i32 4114
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.2) #13, !srcloc !284
  br label %if.end33.2

if.then27.2:                                      ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i99.2 = getelementptr i32, ptr %3, i32 4162
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.2) #13, !srcloc !284
  br label %if.end33.2

if.end33.2:                                       ; preds = %if.then27.2, %if.else29.2
  %conv.i102.2.sink.in = phi i32 [ %29, %if.then27.2 ], [ %28, %if.else29.2 ]
  %conv.i102.2.sink = trunc i32 %conv.i102.2.sink.in to i8
  %30 = getelementptr i8, ptr %ecc_code, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i102.2.sink, ptr %30, align 1
  %32 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ChipID, align 4
  %34 = and i8 %33, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %switch.3 = icmp eq i8 %34, 64
  br i1 %switch.3, label %if.then27.3, label %if.else29.3

if.else29.3:                                      ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i101.3 = getelementptr i32, ptr %3, i32 4115
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.3) #13, !srcloc !284
  br label %if.end33.3

if.then27.3:                                      ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i99.3 = getelementptr i32, ptr %3, i32 4163
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.3) #13, !srcloc !284
  br label %if.end33.3

if.end33.3:                                       ; preds = %if.then27.3, %if.else29.3
  %conv.i102.3.sink.in = phi i32 [ %36, %if.then27.3 ], [ %35, %if.else29.3 ]
  %conv.i102.3.sink = trunc i32 %conv.i102.3.sink.in to i8
  %37 = getelementptr i8, ptr %ecc_code, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i102.3.sink, ptr %37, align 1
  %39 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ChipID, align 4
  %41 = and i8 %40, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %41)
  %switch.4 = icmp eq i8 %41, 64
  br i1 %switch.4, label %if.then27.4, label %if.else29.4

if.else29.4:                                      ; preds = %if.end33.3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i101.4 = getelementptr i32, ptr %3, i32 4116
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.4) #13, !srcloc !284
  br label %if.end33.4

if.then27.4:                                      ; preds = %if.end33.3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i99.4 = getelementptr i32, ptr %3, i32 4164
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.4) #13, !srcloc !284
  br label %if.end33.4

if.end33.4:                                       ; preds = %if.then27.4, %if.else29.4
  %conv.i102.4.sink.in = phi i32 [ %43, %if.then27.4 ], [ %42, %if.else29.4 ]
  %conv.i102.4.sink = trunc i32 %conv.i102.4.sink.in to i8
  %44 = getelementptr i8, ptr %ecc_code, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i102.4.sink, ptr %44, align 1
  %46 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ChipID, align 4
  %48 = and i8 %47, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %48)
  %switch.5 = icmp eq i8 %48, 64
  br i1 %switch.5, label %if.then27.5, label %if.else29.5

if.else29.5:                                      ; preds = %if.end33.4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i101.5 = getelementptr i32, ptr %3, i32 4117
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.5) #13, !srcloc !284
  br label %if.end33.5

if.then27.5:                                      ; preds = %if.end33.4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i99.5 = getelementptr i32, ptr %3, i32 4165
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.5) #13, !srcloc !284
  br label %if.end33.5

if.end33.5:                                       ; preds = %if.then27.5, %if.else29.5
  %conv.i102.5.sink.in = phi i32 [ %50, %if.then27.5 ], [ %49, %if.else29.5 ]
  %conv.i102.5.sink = trunc i32 %conv.i102.5.sink.in to i8
  %51 = getelementptr i8, ptr %ecc_code, i32 5
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i102.5.sink, ptr %51, align 1
  %53 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ChipID, align 4
  %55 = and i8 %54, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %55)
  %switch87 = icmp eq i8 %55, 64
  br i1 %switch87, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.end33.5
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i103 = getelementptr i32, ptr %3, i32 4166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 2) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end53

if.else52:                                        ; preds = %if.end33.5
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i104 = getelementptr i32, ptr %3, i32 4102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 2) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then51
  tail call void @arm_heavy_mb() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc200x_correct_data(ptr nocapture noundef readonly %this, ptr nocapture noundef %dat, ptr nocapture noundef readnone %read_ecc, ptr nocapture noundef readnone %isnull) #8 align 64 {
entry:
  %errpos.i = alloca [8 x i32], align 4
  %ds.i = alloca [4 x i16], align 2
  %errval.i = alloca [8 x i16], align 2
  %syn.i = alloca [4 x i16], align 8
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtadr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy)
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 -1, ptr %dummy, align 1
  %ChipID = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ChipID, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %6, label %if.else17 [
    i8 32, label %if.then
    i8 65, label %entry.if.then13_crit_edge
    i8 64, label %entry.if.then13_crit_edge133
  ]

entry.if.then13_crit_edge133:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %3, i32 4103
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %conv.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 %conv.i, ptr %dummy, align 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %conv.i102 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %11)
  store volatile i8 %conv.i102, ptr %dummy, align 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %conv.i104 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 %conv.i104, ptr %dummy, align 1
  br label %if.end21

if.then13:                                        ; preds = %entry.if.then13_crit_edge, %entry.if.then13_crit_edge133
  %add.ptr.i105 = getelementptr i32, ptr %3, i32 4166
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #13, !srcloc !284
  %conv.i106 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 %conv.i106, ptr %dummy, align 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #13, !srcloc !284
  %conv.i108 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 %conv.i108, ptr %dummy, align 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #13, !srcloc !284
  %conv.i110 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 %conv.i110, ptr %dummy, align 1
  br label %if.end21

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i111 = getelementptr i32, ptr %3, i32 4102
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #13, !srcloc !284
  %conv.i112 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 %conv.i112, ptr %dummy, align 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #13, !srcloc !284
  %conv.i114 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 %conv.i114, ptr %dummy, align 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #13, !srcloc !284
  %conv.i116 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 %conv.i116, ptr %dummy, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then13, %if.then
  %26 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %26)
  %dummy.0.dummy.0.dummy.0. = load volatile i8, ptr %dummy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %dummy.0.dummy.0.dummy.0.)
  %tobool.not = icmp sgt i8 %dummy.0.dummy.0.dummy.0., -1
  br i1 %tobool.not, label %if.end21.if.end48_crit_edge, label %for.body.preheader

if.end21.if.end48_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

for.body.preheader:                               ; preds = %if.end21
  %27 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ChipID, align 4
  %29 = and i8 %28, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %29)
  %switch = icmp eq i8 %29, 64
  br i1 %switch, label %if.then35, label %if.else37

if.then35:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i117 = getelementptr i32, ptr %3, i32 4160
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #13, !srcloc !284
  br label %for.inc

if.else37:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i119 = getelementptr i32, ptr %3, i32 4112
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #13, !srcloc !284
  br label %for.inc

for.inc:                                          ; preds = %if.else37, %if.then35
  %calc_ecc.sroa.0.0.in = phi i32 [ %30, %if.then35 ], [ %31, %if.else37 ]
  %32 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ChipID, align 4
  %34 = and i8 %33, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %switch.1 = icmp eq i8 %34, 64
  br i1 %switch.1, label %if.then35.1, label %if.else37.1

if.else37.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i119.1 = getelementptr i32, ptr %3, i32 4113
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.1) #13, !srcloc !284
  br label %for.inc.1

if.then35.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i117.1 = getelementptr i32, ptr %3, i32 4161
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.1) #13, !srcloc !284
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then35.1, %if.else37.1
  %calc_ecc.sroa.6.0.in = phi i32 [ %36, %if.then35.1 ], [ %35, %if.else37.1 ]
  %calc_ecc.sroa.6.0 = trunc i32 %calc_ecc.sroa.6.0.in to i8
  %37 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ChipID, align 4
  %39 = and i8 %38, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %39)
  %switch.2 = icmp eq i8 %39, 64
  br i1 %switch.2, label %if.then35.2, label %if.else37.2

if.else37.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i119.2 = getelementptr i32, ptr %3, i32 4114
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.2) #13, !srcloc !284
  br label %for.inc.2

if.then35.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i117.2 = getelementptr i32, ptr %3, i32 4162
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.2) #13, !srcloc !284
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then35.2, %if.else37.2
  %calc_ecc.sroa.10.0.in = phi i32 [ %41, %if.then35.2 ], [ %40, %if.else37.2 ]
  %calc_ecc.sroa.10.0 = trunc i32 %calc_ecc.sroa.10.0.in to i8
  %42 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ChipID, align 4
  %44 = and i8 %43, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %44)
  %switch.3 = icmp eq i8 %44, 64
  br i1 %switch.3, label %if.then35.3, label %if.else37.3

if.else37.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i119.3 = getelementptr i32, ptr %3, i32 4115
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.3) #13, !srcloc !284
  br label %for.inc.3

if.then35.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i117.3 = getelementptr i32, ptr %3, i32 4163
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.3) #13, !srcloc !284
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then35.3, %if.else37.3
  %calc_ecc.sroa.14.0.in = phi i32 [ %46, %if.then35.3 ], [ %45, %if.else37.3 ]
  %calc_ecc.sroa.14.0 = trunc i32 %calc_ecc.sroa.14.0.in to i8
  %47 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ChipID, align 4
  %49 = and i8 %48, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %49)
  %switch.4 = icmp eq i8 %49, 64
  br i1 %switch.4, label %if.then35.4, label %if.else37.4

if.else37.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i119.4 = getelementptr i32, ptr %3, i32 4116
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.4) #13, !srcloc !284
  br label %for.inc.4

if.then35.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i117.4 = getelementptr i32, ptr %3, i32 4164
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.4) #13, !srcloc !284
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then35.4, %if.else37.4
  %calc_ecc.sroa.18.0.in = phi i32 [ %51, %if.then35.4 ], [ %50, %if.else37.4 ]
  %52 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ChipID, align 4
  %54 = and i8 %53, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %54)
  %switch.5 = icmp eq i8 %54, 64
  br i1 %switch.5, label %if.then35.5, label %if.else37.5

if.else37.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i119.5 = getelementptr i32, ptr %3, i32 4117
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.5) #13, !srcloc !284
  br label %for.inc.5

if.then35.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i117.5 = getelementptr i32, ptr %3, i32 4165
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.5) #13, !srcloc !284
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then35.5, %if.else37.5
  %calc_ecc.sroa.22.0.in = phi i32 [ %56, %if.then35.5 ], [ %55, %if.else37.5 ]
  %calc_ecc.sroa.22.0 = trunc i32 %calc_ecc.sroa.22.0.in to i8
  %rs_decoder = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %rs_decoder to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rs_decoder, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %errpos.i) #13
  %59 = call ptr @memset(ptr %errpos.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ds.i) #13
  %60 = getelementptr inbounds [4 x i16], ptr %ds.i, i32 0, i32 1
  %61 = getelementptr inbounds [4 x i16], ptr %ds.i, i32 0, i32 2
  %62 = getelementptr inbounds [4 x i16], ptr %ds.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %errval.i) #13
  %63 = call ptr @memset(ptr %errval.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %syn.i) #13
  %64 = getelementptr inbounds [4 x i16], ptr %syn.i, i32 0, i32 2
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %58, align 4
  %67 = ptrtoint ptr %syn.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %syn.i, align 8
  %68 = trunc i32 %calc_ecc.sroa.18.0.in to i16
  %conv.i121 = and i16 %68, 255
  %69 = and i8 %calc_ecc.sroa.22.0, 3
  %and3.i = zext i8 %69 to i16
  %shl.i = shl nuw nsw i16 %and3.i, 8
  %or.i = or i16 %shl.i, %conv.i121
  %70 = ptrtoint ptr %ds.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %or.i, ptr %ds.i, align 2
  %71 = lshr i8 %calc_ecc.sroa.22.0, 2
  %72 = zext i8 %71 to i16
  %73 = and i8 %calc_ecc.sroa.10.0, 15
  %and12.i = zext i8 %73 to i16
  %shl13.i = shl nuw nsw i16 %and12.i, 6
  %or14.i = or i16 %shl13.i, %72
  %74 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %or14.i, ptr %60, align 2
  %75 = lshr i8 %calc_ecc.sroa.10.0, 4
  %76 = zext i8 %75 to i16
  %77 = and i8 %calc_ecc.sroa.14.0, 63
  %and23.i = zext i8 %77 to i16
  %shl24.i = shl nuw nsw i16 %and23.i, 4
  %or25.i = or i16 %shl24.i, %76
  %78 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %or25.i, ptr %61, align 2
  %79 = lshr i8 %calc_ecc.sroa.14.0, 6
  %80 = zext i8 %79 to i16
  %81 = trunc i32 %calc_ecc.sroa.0.0.in to i16
  %conv33.i = shl i16 %81, 2
  %shl35.i = and i16 %conv33.i, 1020
  %or36.i = or i16 %shl35.i, %80
  %82 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %or36.i, ptr %62, align 2
  %index_of.i = getelementptr inbounds %struct.rs_codec, ptr %66, i32 0, i32 3
  %alpha_to.i = getelementptr inbounds %struct.rs_codec, ptr %66, i32 0, i32 2
  %nn.i.i = getelementptr inbounds %struct.rs_codec, ptr %66, i32 0, i32 1
  br label %for.body46.i

for.cond70.preheader.i:                           ; preds = %for.inc67.i
  %83 = getelementptr inbounds [4 x i16], ptr %syn.i, i32 0, i32 1
  %84 = getelementptr inbounds [4 x i16], ptr %syn.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %s.sroa.0.1.i)
  %tobool.not.i = icmp eq i16 %s.sroa.0.1.i, 0
  br i1 %tobool.not.i, label %for.cond70.preheader.i.for.inc86.i_crit_edge, label %if.then75.i

for.cond70.preheader.i.for.inc86.i_crit_edge:     ; preds = %for.cond70.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc86.i

for.body46.i:                                     ; preds = %for.inc67.i.for.body46.i_crit_edge, %for.inc.5
  %s.sroa.17.0.i = phi i16 [ %or.i, %for.inc.5 ], [ %s.sroa.17.1.i, %for.inc67.i.for.body46.i_crit_edge ]
  %s.sroa.12.0.i = phi i16 [ %or.i, %for.inc.5 ], [ %s.sroa.12.1.i, %for.inc67.i.for.body46.i_crit_edge ]
  %s.sroa.7.0.i = phi i16 [ %or.i, %for.inc.5 ], [ %s.sroa.7.1.i, %for.inc67.i.for.body46.i_crit_edge ]
  %s.sroa.0.0.i = phi i16 [ %or.i, %for.inc.5 ], [ %s.sroa.0.1.i, %for.inc67.i.for.body46.i_crit_edge ]
  %j.0283.i = phi i32 [ 1, %for.inc.5 ], [ %inc68.i, %for.inc67.i.for.body46.i_crit_edge ]
  %arrayidx47.i = getelementptr [4 x i16], ptr %ds.i, i32 0, i32 %j.0283.i
  %85 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx47.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp49.i = icmp eq i16 %86, 0
  br i1 %cmp49.i, label %for.body46.i.for.inc67.i_crit_edge, label %if.end.i

for.body46.i.for.inc67.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67.i

if.end.i:                                         ; preds = %for.body46.i
  %conv48.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %index_of.i, align 4
  %arrayidx52.i = getelementptr i16, ptr %88, i32 %conv48.i
  %89 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx52.i, align 2
  %91 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %alpha_to.i, align 4
  %conv57.i = zext i16 %90 to i32
  %93 = ptrtoint ptr %nn.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nn.i.i, align 4
  %mul.i = mul nuw nsw i32 %j.0283.i, 510
  %add58.i = add nuw i32 %mul.i, %conv57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add58.i)
  %cmp.not10.i.i = icmp sgt i32 %94, %add58.i
  br i1 %cmp.not10.i.i, label %if.end.i.rs_modnn.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.rs_modnn.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %95 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %66, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %x.addr.011.i.i = phi i32 [ %add58.i, %while.body.lr.ph.i.i ], [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %x.addr.011.i.i, %94
  %shr.i.i = ashr i32 %sub.i.i, %96
  %and.i.i = and i32 %sub.i.i, %94
  %add.i.i = add i32 %shr.i.i, %and.i.i
  %cmp.not.i.i = icmp slt i32 %add.i.i, %94
  br i1 %cmp.not.i.i, label %while.body.i.i.rs_modnn.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.rs_modnn.exit.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.i

rs_modnn.exit.i:                                  ; preds = %while.body.i.i.rs_modnn.exit.i_crit_edge, %if.end.i.rs_modnn.exit.i_crit_edge
  %x.addr.0.lcssa.i.i = phi i32 [ %add58.i, %if.end.i.rs_modnn.exit.i_crit_edge ], [ %add.i.i, %while.body.i.i.rs_modnn.exit.i_crit_edge ]
  %arrayidx59.i = getelementptr i16, ptr %92, i32 %x.addr.0.lcssa.i.i
  %97 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx59.i, align 2
  %xor263.i = xor i16 %98, %s.sroa.0.0.i
  %mul.1.i = mul nuw nsw i32 %j.0283.i, 511
  %add58.1.i = add nuw i32 %mul.1.i, %conv57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add58.1.i)
  %cmp.not10.i.1.i = icmp sgt i32 %94, %add58.1.i
  br i1 %cmp.not10.i.1.i, label %rs_modnn.exit.i.rs_modnn.exit.1.i_crit_edge, label %while.body.lr.ph.i.1.i

rs_modnn.exit.i.rs_modnn.exit.1.i_crit_edge:      ; preds = %rs_modnn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.1.i

while.body.lr.ph.i.1.i:                           ; preds = %rs_modnn.exit.i
  %99 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %66, align 4
  br label %while.body.i.1.i

while.body.i.1.i:                                 ; preds = %while.body.i.1.i.while.body.i.1.i_crit_edge, %while.body.lr.ph.i.1.i
  %x.addr.011.i.1.i = phi i32 [ %add58.1.i, %while.body.lr.ph.i.1.i ], [ %add.i.1.i, %while.body.i.1.i.while.body.i.1.i_crit_edge ]
  %sub.i.1.i = sub i32 %x.addr.011.i.1.i, %94
  %shr.i.1.i = ashr i32 %sub.i.1.i, %100
  %and.i.1.i = and i32 %sub.i.1.i, %94
  %add.i.1.i = add i32 %shr.i.1.i, %and.i.1.i
  %cmp.not.i.1.i = icmp slt i32 %add.i.1.i, %94
  br i1 %cmp.not.i.1.i, label %while.body.i.1.i.rs_modnn.exit.1.i_crit_edge, label %while.body.i.1.i.while.body.i.1.i_crit_edge

while.body.i.1.i.while.body.i.1.i_crit_edge:      ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.1.i

while.body.i.1.i.rs_modnn.exit.1.i_crit_edge:     ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.1.i

rs_modnn.exit.1.i:                                ; preds = %while.body.i.1.i.rs_modnn.exit.1.i_crit_edge, %rs_modnn.exit.i.rs_modnn.exit.1.i_crit_edge
  %x.addr.0.lcssa.i.1.i = phi i32 [ %add58.1.i, %rs_modnn.exit.i.rs_modnn.exit.1.i_crit_edge ], [ %add.i.1.i, %while.body.i.1.i.rs_modnn.exit.1.i_crit_edge ]
  %arrayidx59.1.i = getelementptr i16, ptr %92, i32 %x.addr.0.lcssa.i.1.i
  %101 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx59.1.i, align 2
  %xor263.1.i = xor i16 %102, %s.sroa.7.0.i
  %mul.2.i = shl nuw nsw i32 %j.0283.i, 9
  %add58.2.i = add nuw i32 %mul.2.i, %conv57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add58.2.i)
  %cmp.not10.i.2.i = icmp sgt i32 %94, %add58.2.i
  br i1 %cmp.not10.i.2.i, label %rs_modnn.exit.1.i.rs_modnn.exit.2.i_crit_edge, label %while.body.lr.ph.i.2.i

rs_modnn.exit.1.i.rs_modnn.exit.2.i_crit_edge:    ; preds = %rs_modnn.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.2.i

while.body.lr.ph.i.2.i:                           ; preds = %rs_modnn.exit.1.i
  %103 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %66, align 4
  br label %while.body.i.2.i

while.body.i.2.i:                                 ; preds = %while.body.i.2.i.while.body.i.2.i_crit_edge, %while.body.lr.ph.i.2.i
  %x.addr.011.i.2.i = phi i32 [ %add58.2.i, %while.body.lr.ph.i.2.i ], [ %add.i.2.i, %while.body.i.2.i.while.body.i.2.i_crit_edge ]
  %sub.i.2.i = sub i32 %x.addr.011.i.2.i, %94
  %shr.i.2.i = ashr i32 %sub.i.2.i, %104
  %and.i.2.i = and i32 %sub.i.2.i, %94
  %add.i.2.i = add i32 %shr.i.2.i, %and.i.2.i
  %cmp.not.i.2.i = icmp slt i32 %add.i.2.i, %94
  br i1 %cmp.not.i.2.i, label %while.body.i.2.i.rs_modnn.exit.2.i_crit_edge, label %while.body.i.2.i.while.body.i.2.i_crit_edge

while.body.i.2.i.while.body.i.2.i_crit_edge:      ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.2.i

while.body.i.2.i.rs_modnn.exit.2.i_crit_edge:     ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.2.i

rs_modnn.exit.2.i:                                ; preds = %while.body.i.2.i.rs_modnn.exit.2.i_crit_edge, %rs_modnn.exit.1.i.rs_modnn.exit.2.i_crit_edge
  %x.addr.0.lcssa.i.2.i = phi i32 [ %add58.2.i, %rs_modnn.exit.1.i.rs_modnn.exit.2.i_crit_edge ], [ %add.i.2.i, %while.body.i.2.i.rs_modnn.exit.2.i_crit_edge ]
  %arrayidx59.2.i = getelementptr i16, ptr %92, i32 %x.addr.0.lcssa.i.2.i
  %105 = ptrtoint ptr %arrayidx59.2.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx59.2.i, align 2
  %xor263.2.i = xor i16 %106, %s.sroa.12.0.i
  %mul.3.i = mul nuw nsw i32 %j.0283.i, 513
  %add58.3.i = add nuw i32 %mul.3.i, %conv57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add58.3.i)
  %cmp.not10.i.3.i = icmp sgt i32 %94, %add58.3.i
  br i1 %cmp.not10.i.3.i, label %rs_modnn.exit.2.i.rs_modnn.exit.3.i_crit_edge, label %while.body.lr.ph.i.3.i

rs_modnn.exit.2.i.rs_modnn.exit.3.i_crit_edge:    ; preds = %rs_modnn.exit.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.3.i

while.body.lr.ph.i.3.i:                           ; preds = %rs_modnn.exit.2.i
  %107 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %66, align 4
  br label %while.body.i.3.i

while.body.i.3.i:                                 ; preds = %while.body.i.3.i.while.body.i.3.i_crit_edge, %while.body.lr.ph.i.3.i
  %x.addr.011.i.3.i = phi i32 [ %add58.3.i, %while.body.lr.ph.i.3.i ], [ %add.i.3.i, %while.body.i.3.i.while.body.i.3.i_crit_edge ]
  %sub.i.3.i = sub i32 %x.addr.011.i.3.i, %94
  %shr.i.3.i = ashr i32 %sub.i.3.i, %108
  %and.i.3.i = and i32 %sub.i.3.i, %94
  %add.i.3.i = add i32 %shr.i.3.i, %and.i.3.i
  %cmp.not.i.3.i = icmp slt i32 %add.i.3.i, %94
  br i1 %cmp.not.i.3.i, label %while.body.i.3.i.rs_modnn.exit.3.i_crit_edge, label %while.body.i.3.i.while.body.i.3.i_crit_edge

while.body.i.3.i.while.body.i.3.i_crit_edge:      ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.3.i

while.body.i.3.i.rs_modnn.exit.3.i_crit_edge:     ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit.3.i

rs_modnn.exit.3.i:                                ; preds = %while.body.i.3.i.rs_modnn.exit.3.i_crit_edge, %rs_modnn.exit.2.i.rs_modnn.exit.3.i_crit_edge
  %x.addr.0.lcssa.i.3.i = phi i32 [ %add58.3.i, %rs_modnn.exit.2.i.rs_modnn.exit.3.i_crit_edge ], [ %add.i.3.i, %while.body.i.3.i.rs_modnn.exit.3.i_crit_edge ]
  %arrayidx59.3.i = getelementptr i16, ptr %92, i32 %x.addr.0.lcssa.i.3.i
  %109 = ptrtoint ptr %arrayidx59.3.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx59.3.i, align 2
  %xor263.3.i = xor i16 %110, %s.sroa.17.0.i
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %rs_modnn.exit.3.i, %for.body46.i.for.inc67.i_crit_edge
  %s.sroa.17.1.i = phi i16 [ %s.sroa.17.0.i, %for.body46.i.for.inc67.i_crit_edge ], [ %xor263.3.i, %rs_modnn.exit.3.i ]
  %s.sroa.12.1.i = phi i16 [ %s.sroa.12.0.i, %for.body46.i.for.inc67.i_crit_edge ], [ %xor263.2.i, %rs_modnn.exit.3.i ]
  %s.sroa.7.1.i = phi i16 [ %s.sroa.7.0.i, %for.body46.i.for.inc67.i_crit_edge ], [ %xor263.1.i, %rs_modnn.exit.3.i ]
  %s.sroa.0.1.i = phi i16 [ %s.sroa.0.0.i, %for.body46.i.for.inc67.i_crit_edge ], [ %xor263.i, %rs_modnn.exit.3.i ]
  %inc68.i = add nuw nsw i32 %j.0283.i, 1
  %exitcond.not.i = icmp eq i32 %inc68.i, 4
  br i1 %exitcond.not.i, label %for.cond70.preheader.i, label %for.inc67.i.for.body46.i_crit_edge

for.inc67.i.for.body46.i_crit_edge:               ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body46.i

if.then75.i:                                      ; preds = %for.cond70.preheader.i
  %111 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %index_of.i, align 4
  %idxprom78.i = zext i16 %s.sroa.0.1.i to i32
  %arrayidx79.i = getelementptr i16, ptr %112, i32 %idxprom78.i
  %113 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx79.i, align 2
  %conv80.i = zext i16 %114 to i32
  %add81.i = add nuw nsw i32 %conv80.i, 513
  %115 = ptrtoint ptr %nn.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %add81.i)
  %cmp.not10.i270.i = icmp sgt i32 %116, %add81.i
  br i1 %cmp.not10.i270.i, label %if.then75.i.rs_modnn.exit280.i_crit_edge, label %while.body.lr.ph.i271.i

if.then75.i.rs_modnn.exit280.i_crit_edge:         ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.i

while.body.lr.ph.i271.i:                          ; preds = %if.then75.i
  %117 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %66, align 4
  br label %while.body.i278.i

while.body.i278.i:                                ; preds = %while.body.i278.i.while.body.i278.i_crit_edge, %while.body.lr.ph.i271.i
  %x.addr.011.i272.i = phi i32 [ %add81.i, %while.body.lr.ph.i271.i ], [ %add.i276.i, %while.body.i278.i.while.body.i278.i_crit_edge ]
  %sub.i273.i = sub i32 %x.addr.011.i272.i, %116
  %shr.i274.i = ashr i32 %sub.i273.i, %118
  %and.i275.i = and i32 %sub.i273.i, %116
  %add.i276.i = add i32 %shr.i274.i, %and.i275.i
  %cmp.not.i277.i = icmp slt i32 %add.i276.i, %116
  br i1 %cmp.not.i277.i, label %while.body.i278.i.rs_modnn.exit280.i_crit_edge, label %while.body.i278.i.while.body.i278.i_crit_edge

while.body.i278.i.while.body.i278.i_crit_edge:    ; preds = %while.body.i278.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i278.i

while.body.i278.i.rs_modnn.exit280.i_crit_edge:   ; preds = %while.body.i278.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.i

rs_modnn.exit280.i:                               ; preds = %while.body.i278.i.rs_modnn.exit280.i_crit_edge, %if.then75.i.rs_modnn.exit280.i_crit_edge
  %x.addr.0.lcssa.i279.i = phi i32 [ %add81.i, %if.then75.i.rs_modnn.exit280.i_crit_edge ], [ %add.i276.i, %while.body.i278.i.rs_modnn.exit280.i_crit_edge ]
  %conv83.i = trunc i32 %x.addr.0.lcssa.i279.i to i16
  %119 = ptrtoint ptr %syn.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv83.i, ptr %syn.i, align 8
  br label %for.inc86.i

for.inc86.i:                                      ; preds = %rs_modnn.exit280.i, %for.cond70.preheader.i.for.inc86.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %s.sroa.7.1.i)
  %tobool.not.1.i = icmp eq i16 %s.sroa.7.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc86.i.for.inc86.1.i_crit_edge, label %if.then75.1.i

for.inc86.i.for.inc86.1.i_crit_edge:              ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc86.1.i

if.then75.1.i:                                    ; preds = %for.inc86.i
  %120 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %index_of.i, align 4
  %idxprom78.1.i = zext i16 %s.sroa.7.1.i to i32
  %arrayidx79.1.i = getelementptr i16, ptr %121, i32 %idxprom78.1.i
  %122 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx79.1.i, align 2
  %conv80.1.i = zext i16 %123 to i32
  %add81.1.i = add nuw nsw i32 %conv80.1.i, 512
  %124 = ptrtoint ptr %nn.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %add81.1.i)
  %cmp.not10.i270.1.i = icmp sgt i32 %125, %add81.1.i
  br i1 %cmp.not10.i270.1.i, label %if.then75.1.i.rs_modnn.exit280.1.i_crit_edge, label %while.body.lr.ph.i271.1.i

if.then75.1.i.rs_modnn.exit280.1.i_crit_edge:     ; preds = %if.then75.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.1.i

while.body.lr.ph.i271.1.i:                        ; preds = %if.then75.1.i
  %126 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %66, align 4
  br label %while.body.i278.1.i

while.body.i278.1.i:                              ; preds = %while.body.i278.1.i.while.body.i278.1.i_crit_edge, %while.body.lr.ph.i271.1.i
  %x.addr.011.i272.1.i = phi i32 [ %add81.1.i, %while.body.lr.ph.i271.1.i ], [ %add.i276.1.i, %while.body.i278.1.i.while.body.i278.1.i_crit_edge ]
  %sub.i273.1.i = sub i32 %x.addr.011.i272.1.i, %125
  %shr.i274.1.i = ashr i32 %sub.i273.1.i, %127
  %and.i275.1.i = and i32 %sub.i273.1.i, %125
  %add.i276.1.i = add i32 %shr.i274.1.i, %and.i275.1.i
  %cmp.not.i277.1.i = icmp slt i32 %add.i276.1.i, %125
  br i1 %cmp.not.i277.1.i, label %while.body.i278.1.i.rs_modnn.exit280.1.i_crit_edge, label %while.body.i278.1.i.while.body.i278.1.i_crit_edge

while.body.i278.1.i.while.body.i278.1.i_crit_edge: ; preds = %while.body.i278.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i278.1.i

while.body.i278.1.i.rs_modnn.exit280.1.i_crit_edge: ; preds = %while.body.i278.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.1.i

rs_modnn.exit280.1.i:                             ; preds = %while.body.i278.1.i.rs_modnn.exit280.1.i_crit_edge, %if.then75.1.i.rs_modnn.exit280.1.i_crit_edge
  %x.addr.0.lcssa.i279.1.i = phi i32 [ %add81.1.i, %if.then75.1.i.rs_modnn.exit280.1.i_crit_edge ], [ %add.i276.1.i, %while.body.i278.1.i.rs_modnn.exit280.1.i_crit_edge ]
  %conv83.1.i = trunc i32 %x.addr.0.lcssa.i279.1.i to i16
  %128 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv83.1.i, ptr %83, align 2
  br label %for.inc86.1.i

for.inc86.1.i:                                    ; preds = %rs_modnn.exit280.1.i, %for.inc86.i.for.inc86.1.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %s.sroa.12.1.i)
  %tobool.not.2.i = icmp eq i16 %s.sroa.12.1.i, 0
  br i1 %tobool.not.2.i, label %for.inc86.1.i.for.inc86.2.i_crit_edge, label %if.then75.2.i

for.inc86.1.i.for.inc86.2.i_crit_edge:            ; preds = %for.inc86.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc86.2.i

if.then75.2.i:                                    ; preds = %for.inc86.1.i
  %129 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %index_of.i, align 4
  %idxprom78.2.i = zext i16 %s.sroa.12.1.i to i32
  %arrayidx79.2.i = getelementptr i16, ptr %130, i32 %idxprom78.2.i
  %131 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx79.2.i, align 2
  %conv80.2.i = zext i16 %132 to i32
  %add81.2.i = add nuw nsw i32 %conv80.2.i, 511
  %133 = ptrtoint ptr %nn.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %add81.2.i)
  %cmp.not10.i270.2.i = icmp sgt i32 %134, %add81.2.i
  br i1 %cmp.not10.i270.2.i, label %if.then75.2.i.rs_modnn.exit280.2.i_crit_edge, label %while.body.lr.ph.i271.2.i

if.then75.2.i.rs_modnn.exit280.2.i_crit_edge:     ; preds = %if.then75.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.2.i

while.body.lr.ph.i271.2.i:                        ; preds = %if.then75.2.i
  %135 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %66, align 4
  br label %while.body.i278.2.i

while.body.i278.2.i:                              ; preds = %while.body.i278.2.i.while.body.i278.2.i_crit_edge, %while.body.lr.ph.i271.2.i
  %x.addr.011.i272.2.i = phi i32 [ %add81.2.i, %while.body.lr.ph.i271.2.i ], [ %add.i276.2.i, %while.body.i278.2.i.while.body.i278.2.i_crit_edge ]
  %sub.i273.2.i = sub i32 %x.addr.011.i272.2.i, %134
  %shr.i274.2.i = ashr i32 %sub.i273.2.i, %136
  %and.i275.2.i = and i32 %sub.i273.2.i, %134
  %add.i276.2.i = add i32 %shr.i274.2.i, %and.i275.2.i
  %cmp.not.i277.2.i = icmp slt i32 %add.i276.2.i, %134
  br i1 %cmp.not.i277.2.i, label %while.body.i278.2.i.rs_modnn.exit280.2.i_crit_edge, label %while.body.i278.2.i.while.body.i278.2.i_crit_edge

while.body.i278.2.i.while.body.i278.2.i_crit_edge: ; preds = %while.body.i278.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i278.2.i

while.body.i278.2.i.rs_modnn.exit280.2.i_crit_edge: ; preds = %while.body.i278.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.2.i

rs_modnn.exit280.2.i:                             ; preds = %while.body.i278.2.i.rs_modnn.exit280.2.i_crit_edge, %if.then75.2.i.rs_modnn.exit280.2.i_crit_edge
  %x.addr.0.lcssa.i279.2.i = phi i32 [ %add81.2.i, %if.then75.2.i.rs_modnn.exit280.2.i_crit_edge ], [ %add.i276.2.i, %while.body.i278.2.i.rs_modnn.exit280.2.i_crit_edge ]
  %conv83.2.i = trunc i32 %x.addr.0.lcssa.i279.2.i to i16
  %137 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv83.2.i, ptr %64, align 4
  br label %for.inc86.2.i

for.inc86.2.i:                                    ; preds = %rs_modnn.exit280.2.i, %for.inc86.1.i.for.inc86.2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %s.sroa.17.1.i)
  %tobool.not.3.i = icmp eq i16 %s.sroa.17.1.i, 0
  br i1 %tobool.not.3.i, label %for.inc86.2.i.for.inc86.3.i_crit_edge, label %if.then75.3.i

for.inc86.2.i.for.inc86.3.i_crit_edge:            ; preds = %for.inc86.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc86.3.i

if.then75.3.i:                                    ; preds = %for.inc86.2.i
  %138 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %index_of.i, align 4
  %idxprom78.3.i = zext i16 %s.sroa.17.1.i to i32
  %arrayidx79.3.i = getelementptr i16, ptr %139, i32 %idxprom78.3.i
  %140 = ptrtoint ptr %arrayidx79.3.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx79.3.i, align 2
  %conv80.3.i = zext i16 %141 to i32
  %add81.3.i = add nuw nsw i32 %conv80.3.i, 510
  %142 = ptrtoint ptr %nn.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %add81.3.i)
  %cmp.not10.i270.3.i = icmp sgt i32 %143, %add81.3.i
  br i1 %cmp.not10.i270.3.i, label %if.then75.3.i.rs_modnn.exit280.3.i_crit_edge, label %while.body.lr.ph.i271.3.i

if.then75.3.i.rs_modnn.exit280.3.i_crit_edge:     ; preds = %if.then75.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.3.i

while.body.lr.ph.i271.3.i:                        ; preds = %if.then75.3.i
  %144 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %66, align 4
  br label %while.body.i278.3.i

while.body.i278.3.i:                              ; preds = %while.body.i278.3.i.while.body.i278.3.i_crit_edge, %while.body.lr.ph.i271.3.i
  %x.addr.011.i272.3.i = phi i32 [ %add81.3.i, %while.body.lr.ph.i271.3.i ], [ %add.i276.3.i, %while.body.i278.3.i.while.body.i278.3.i_crit_edge ]
  %sub.i273.3.i = sub i32 %x.addr.011.i272.3.i, %143
  %shr.i274.3.i = ashr i32 %sub.i273.3.i, %145
  %and.i275.3.i = and i32 %sub.i273.3.i, %143
  %add.i276.3.i = add i32 %shr.i274.3.i, %and.i275.3.i
  %cmp.not.i277.3.i = icmp slt i32 %add.i276.3.i, %143
  br i1 %cmp.not.i277.3.i, label %while.body.i278.3.i.rs_modnn.exit280.3.i_crit_edge, label %while.body.i278.3.i.while.body.i278.3.i_crit_edge

while.body.i278.3.i.while.body.i278.3.i_crit_edge: ; preds = %while.body.i278.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i278.3.i

while.body.i278.3.i.rs_modnn.exit280.3.i_crit_edge: ; preds = %while.body.i278.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rs_modnn.exit280.3.i

rs_modnn.exit280.3.i:                             ; preds = %while.body.i278.3.i.rs_modnn.exit280.3.i_crit_edge, %if.then75.3.i.rs_modnn.exit280.3.i_crit_edge
  %x.addr.0.lcssa.i279.3.i = phi i32 [ %add81.3.i, %if.then75.3.i.rs_modnn.exit280.3.i_crit_edge ], [ %add.i276.3.i, %while.body.i278.3.i.rs_modnn.exit280.3.i_crit_edge ]
  %conv83.3.i = trunc i32 %x.addr.0.lcssa.i279.3.i to i16
  %146 = ptrtoint ptr %84 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv83.3.i, ptr %84, align 2
  br label %for.inc86.3.i

for.inc86.3.i:                                    ; preds = %rs_modnn.exit280.3.i, %for.inc86.2.i.for.inc86.3.i_crit_edge
  %call92.i = call i32 @decode_rs16(ptr noundef %58, ptr noundef null, ptr noundef null, i32 noundef 1019, ptr noundef nonnull %syn.i, i32 noundef 0, ptr noundef nonnull %errpos.i, i16 noundef zeroext 0, ptr noundef nonnull %errval.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  br i1 %cmp93.i, label %for.inc86.3.i.doc_ecc_decode.exit.thread_crit_edge, label %for.cond97.preheader.i

for.inc86.3.i.doc_ecc_decode.exit.thread_crit_edge: ; preds = %for.inc86.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc_ecc_decode.exit.thread

for.cond97.preheader.i:                           ; preds = %for.inc86.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp98286.not.i = icmp eq i32 %call92.i, 0
  br i1 %cmp98286.not.i, label %for.end188.i.thread, label %for.cond97.preheader.i.for.body100.i_crit_edge

for.cond97.preheader.i.for.body100.i_crit_edge:   ; preds = %for.cond97.preheader.i
  br label %for.body100.i

for.body100.i:                                    ; preds = %cleanup.i.for.body100.i_crit_edge, %for.cond97.preheader.i.for.body100.i_crit_edge
  %parity.0288.i = phi i8 [ %parity.3.i, %cleanup.i.for.body100.i_crit_edge ], [ %calc_ecc.sroa.6.0, %for.cond97.preheader.i.for.body100.i_crit_edge ]
  %i.3287.i = phi i32 [ %inc187.i, %cleanup.i.for.body100.i_crit_edge ], [ 0, %for.cond97.preheader.i.for.body100.i_crit_edge ]
  %arrayidx101.i = getelementptr [8 x i32], ptr %errpos.i, i32 0, i32 %i.3287.i
  %147 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx101.i, align 4
  %149 = add i32 %148, -605
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483237, i32 %149)
  %150 = icmp ult i32 %149, -2147483237
  br i1 %150, label %if.then111.i, label %for.body100.i.cleanup.i_crit_edge

for.body100.i.cleanup.i_crit_edge:                ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then111.i:                                     ; preds = %for.body100.i
  %151 = mul i32 %148, 10
  %sub114.i = add i32 %151, -6056
  %shr115.i = ashr i32 %sub114.i, 3
  %xor116.i = xor i32 %shr115.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub114.i)
  %cmp118.i = icmp sgt i32 %sub114.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %xor116.i)
  %cmp121.i = icmp slt i32 %xor116.i, 512
  %or.cond264.i = select i1 %cmp118.i, i1 %cmp121.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %xor116.i)
  %cmp123.i = icmp eq i32 %xor116.i, 513
  %or.cond265.i = select i1 %or.cond264.i, i1 true, i1 %cmp123.i
  br i1 %or.cond265.i, label %if.then125.i, label %if.then111.i.if.end144.i_crit_edge

if.then111.i.if.end144.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.i

if.then125.i:                                     ; preds = %if.then111.i
  %and117.i = and i32 %151, 6
  %arrayidx126.i = getelementptr [8 x i16], ptr %errval.i, i32 0, i32 %i.3287.i
  %152 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx126.i, align 2
  %conv127.i = zext i16 %153 to i32
  %add128.i = add nuw nsw i32 %and117.i, 2
  %shr129.i = lshr i32 %conv127.i, %add128.i
  %154 = trunc i32 %shr129.i to i8
  %conv134.i = xor i8 %parity.0288.i, %154
  br i1 %cmp121.i, label %if.then137.i, label %if.then125.i.if.end144.i_crit_edge

if.then125.i.if.end144.i_crit_edge:               ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.i

if.then137.i:                                     ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx139.i = getelementptr i8, ptr %dat, i32 %xor116.i
  %155 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx139.i, align 1
  %conv142.i = xor i8 %156, %154
  store i8 %conv142.i, ptr %arrayidx139.i, align 1
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then137.i, %if.then125.i.if.end144.i_crit_edge, %if.then111.i.if.end144.i_crit_edge
  %parity.1.i = phi i8 [ %conv134.i, %if.then137.i ], [ %conv134.i, %if.then125.i.if.end144.i_crit_edge ], [ %parity.0288.i, %if.then111.i.if.end144.i_crit_edge ]
  %add146.i = add nsw i32 %shr115.i, 1
  %xor147.i = xor i32 %add146.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %sub114.i)
  %cmp154.i = icmp sgt i32 %sub114.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %xor147.i)
  %cmp157.i = icmp slt i32 %xor147.i, 512
  %or.cond266.i = select i1 %cmp154.i, i1 %cmp157.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %xor147.i)
  %cmp160.i = icmp eq i32 %xor147.i, 513
  %or.cond267.i = select i1 %or.cond266.i, i1 true, i1 %cmp160.i
  br i1 %or.cond267.i, label %if.then162.i, label %if.end144.i.cleanup.i_crit_edge

if.end144.i.cleanup.i_crit_edge:                  ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then162.i:                                     ; preds = %if.end144.i
  %add148.i = add i32 %151, 2
  %and149.i = and i32 %add148.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %cmp150.i = icmp eq i32 %and149.i, 0
  %arrayidx163.i = getelementptr [8 x i16], ptr %errval.i, i32 0, i32 %i.3287.i
  %157 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx163.i, align 2
  %conv164.i = zext i16 %158 to i32
  %and149.op.i = sub nuw nsw i32 8, %and149.i
  %sub165.i = select i1 %cmp150.i, i32 0, i32 %and149.op.i
  %shl166.i = shl nuw nsw i32 %conv164.i, %sub165.i
  %159 = trunc i32 %shl166.i to i8
  %conv171.i = xor i8 %parity.1.i, %159
  br i1 %cmp157.i, label %if.then174.i, label %if.then162.i.cleanup.i_crit_edge

if.then162.i.cleanup.i_crit_edge:                 ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then174.i:                                     ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx176.i = getelementptr i8, ptr %dat, i32 %xor147.i
  %160 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx176.i, align 1
  %conv179.i = xor i8 %161, %159
  store i8 %conv179.i, ptr %arrayidx176.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then174.i, %if.then162.i.cleanup.i_crit_edge, %if.end144.i.cleanup.i_crit_edge, %for.body100.i.cleanup.i_crit_edge
  %parity.3.i = phi i8 [ %parity.0288.i, %for.body100.i.cleanup.i_crit_edge ], [ %conv171.i, %if.then174.i ], [ %conv171.i, %if.then162.i.cleanup.i_crit_edge ], [ %parity.1.i, %if.end144.i.cleanup.i_crit_edge ]
  %inc187.i = add nuw nsw i32 %i.3287.i, 1
  %exitcond290.not.i = icmp eq i32 %inc187.i, %call92.i
  br i1 %exitcond290.not.i, label %for.end188.i, label %cleanup.i.for.body100.i_crit_edge

cleanup.i.for.body100.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body100.i

for.end188.i:                                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %parity.3.i)
  %tobool190.not.i = icmp eq i8 %parity.3.i, 0
  br i1 %tobool190.not.i, label %doc_ecc_decode.exit, label %for.end188.i.doc_ecc_decode.exit.thread_crit_edge

for.end188.i.doc_ecc_decode.exit.thread_crit_edge: ; preds = %for.end188.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc_ecc_decode.exit.thread

for.end188.i.thread:                              ; preds = %for.cond97.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %calc_ecc.sroa.6.0)
  %tobool190.not.i128 = icmp eq i8 %calc_ecc.sroa.6.0, 0
  br i1 %tobool190.not.i128, label %doc_ecc_decode.exit.thread129, label %for.end188.i.thread.doc_ecc_decode.exit.thread_crit_edge

for.end188.i.thread.doc_ecc_decode.exit.thread_crit_edge: ; preds = %for.end188.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc_ecc_decode.exit.thread

doc_ecc_decode.exit.thread129:                    ; preds = %for.end188.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %syn.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %errval.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ds.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %errpos.i) #13
  br label %if.end48

doc_ecc_decode.exit.thread:                       ; preds = %for.end188.i.thread.doc_ecc_decode.exit.thread_crit_edge, %for.end188.i.doc_ecc_decode.exit.thread_crit_edge, %for.inc86.3.i.doc_ecc_decode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call92.i, %for.inc86.3.i.doc_ecc_decode.exit.thread_crit_edge ], [ -74, %for.end188.i.doc_ecc_decode.exit.thread_crit_edge ], [ -74, %for.end188.i.thread.doc_ecc_decode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %syn.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %errval.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ds.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %errpos.i) #13
  br label %if.end48

doc_ecc_decode.exit:                              ; preds = %for.end188.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %syn.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %errval.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ds.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %errpos.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp43 = icmp sgt i32 %call92.i, 0
  br i1 %cmp43, label %do.end, label %doc_ecc_decode.exit.if.end48_crit_edge

doc_ecc_decode.exit.if.end48_crit_edge:           ; preds = %doc_ecc_decode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

do.end:                                           ; preds = %doc_ecc_decode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call92.i) #16
  br label %if.end48

if.end48:                                         ; preds = %do.end, %doc_ecc_decode.exit.if.end48_crit_edge, %doc_ecc_decode.exit.thread, %doc_ecc_decode.exit.thread129, %if.end21.if.end48_crit_edge
  %ret.0 = phi i32 [ %call92.i, %do.end ], [ %call92.i, %doc_ecc_decode.exit.if.end48_crit_edge ], [ 0, %if.end21.if.end48_crit_edge ], [ %retval.0.i.ph, %doc_ecc_decode.exit.thread ], [ 0, %doc_ecc_decode.exit.thread129 ]
  %162 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ChipID, align 4
  %164 = and i8 %163, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %164)
  %switch100 = icmp eq i8 %164, 64
  br i1 %switch100, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i122 = getelementptr i32, ptr %3, i32 4166
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 2) #13, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end60

if.else59:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i123 = getelementptr i32, ptr %3, i32 4102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 2) #13, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  call void @arm_heavy_mb() #13
  %165 = load i32, ptr @no_ecc_failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool61.not = icmp ne i32 %165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %ret.0)
  %cmp.i.not = icmp eq i32 %ret.0, -74
  %or.cond = select i1 %tobool61.not, i1 %cmp.i.not, i1 false
  br i1 %or.cond, label %do.end67, label %if.end60.if.end70_crit_edge

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %if.end60.if.end70_crit_edge
  %ret.1 = phi i32 [ 0, %do.end67 ], [ %ret.0, %if.end60.if.end70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy)
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decode_rs16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @DoC_WaitReady(ptr nocapture noundef readonly %doc) unnamed_addr #9 align 64 {
entry:
  %dummy.i21 = alloca i8, align 1
  %dummy.i1 = alloca i8, align 1
  %dummy.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %doc, i32 0, i32 1
  %0 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virtadr, align 4
  %ChipID = getelementptr inbounds %struct.doc_priv, ptr %doc, i32 0, i32 3
  %2 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ChipID, align 4
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %switch = icmp eq i8 %4, 64
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i)
  %5 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 -1, ptr %dummy.i, align 1
  %6 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ChipID, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %7, label %if.else16.i [
    i8 48, label %if.then.i
    i8 65, label %if.then.if.then13.i_crit_edge
    i8 64, label %if.then.if.then13.i_crit_edge39
  ]

if.then.if.then13.i_crit_edge39:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.then.if.then13.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 4128
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !284
  %conv.i.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 %conv.i.i, ptr %dummy.i, align 1
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.then.if.then13.i_crit_edge, %if.then.if.then13.i_crit_edge39
  %13 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i = getelementptr i32, ptr %14, i32 4098
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #13, !srcloc !284
  %conv.i27.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store volatile i8 %conv.i27.i, ptr %dummy.i, align 1
  br label %for.inc.i

if.else16.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i = getelementptr i32, ptr %18, i32 4097
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #13, !srcloc !284
  %conv.i29.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 %conv.i29.i, ptr %dummy.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else16.i, %if.then13.i, %if.then.i
  %21 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ChipID, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %22, label %if.else16.i.1 [
    i8 48, label %if.then.i.1
    i8 65, label %for.inc.i.if.then13.i.1_crit_edge
    i8 64, label %for.inc.i.if.then13.i.1_crit_edge40
  ]

for.inc.i.if.then13.i.1_crit_edge40:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.1

for.inc.i.if.then13.i.1_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.1

if.then13.i.1:                                    ; preds = %for.inc.i.if.then13.i.1_crit_edge, %for.inc.i.if.then13.i.1_crit_edge40
  %24 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i.1 = getelementptr i32, ptr %25, i32 4098
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.1) #13, !srcloc !284
  %conv.i27.i.1 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store volatile i8 %conv.i27.i.1, ptr %dummy.i, align 1
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i.1 = getelementptr i32, ptr %29, i32 4128
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #13, !srcloc !284
  %conv.i.i.1 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store volatile i8 %conv.i.i.1, ptr %dummy.i, align 1
  br label %for.inc.i.1

if.else16.i.1:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i.1 = getelementptr i32, ptr %33, i32 4097
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.1) #13, !srcloc !284
  %conv.i29.i.1 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store volatile i8 %conv.i29.i.1, ptr %dummy.i, align 1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.else16.i.1, %if.then.i.1, %if.then13.i.1
  %36 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ChipID, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %37, label %if.else16.i.2 [
    i8 48, label %if.then.i.2
    i8 65, label %for.inc.i.1.if.then13.i.2_crit_edge
    i8 64, label %for.inc.i.1.if.then13.i.2_crit_edge41
  ]

for.inc.i.1.if.then13.i.2_crit_edge41:            ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.2

for.inc.i.1.if.then13.i.2_crit_edge:              ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.2

if.then13.i.2:                                    ; preds = %for.inc.i.1.if.then13.i.2_crit_edge, %for.inc.i.1.if.then13.i.2_crit_edge41
  %39 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i.2 = getelementptr i32, ptr %40, i32 4098
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.2) #13, !srcloc !284
  %conv.i27.i.2 = trunc i32 %41 to i8
  %42 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store volatile i8 %conv.i27.i.2, ptr %dummy.i, align 1
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i.2 = getelementptr i32, ptr %44, i32 4128
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #13, !srcloc !284
  %conv.i.i.2 = trunc i32 %45 to i8
  %46 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store volatile i8 %conv.i.i.2, ptr %dummy.i, align 1
  br label %for.inc.i.2

if.else16.i.2:                                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i.2 = getelementptr i32, ptr %48, i32 4097
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.2) #13, !srcloc !284
  %conv.i29.i.2 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store volatile i8 %conv.i29.i.2, ptr %dummy.i, align 1
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.else16.i.2, %if.then.i.2, %if.then13.i.2
  %51 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ChipID, align 4
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %52, label %if.else16.i.3 [
    i8 48, label %if.then.i.3
    i8 65, label %for.inc.i.2.if.then13.i.3_crit_edge
    i8 64, label %for.inc.i.2.if.then13.i.3_crit_edge42
  ]

for.inc.i.2.if.then13.i.3_crit_edge42:            ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.3

for.inc.i.2.if.then13.i.3_crit_edge:              ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.3

if.then13.i.3:                                    ; preds = %for.inc.i.2.if.then13.i.3_crit_edge, %for.inc.i.2.if.then13.i.3_crit_edge42
  %54 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i.3 = getelementptr i32, ptr %55, i32 4098
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.3) #13, !srcloc !284
  %conv.i27.i.3 = trunc i32 %56 to i8
  %57 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store volatile i8 %conv.i27.i.3, ptr %dummy.i, align 1
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i.3 = getelementptr i32, ptr %59, i32 4128
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3) #13, !srcloc !284
  %conv.i.i.3 = trunc i32 %60 to i8
  %61 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store volatile i8 %conv.i.i.3, ptr %dummy.i, align 1
  br label %for.inc.i.3

if.else16.i.3:                                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i.3 = getelementptr i32, ptr %63, i32 4097
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.3) #13, !srcloc !284
  %conv.i29.i.3 = trunc i32 %64 to i8
  %65 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store volatile i8 %conv.i29.i.3, ptr %dummy.i, align 1
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.else16.i.3, %if.then.i.3, %if.then13.i.3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i)
  %add.ptr.i = getelementptr i32, ptr %1, i32 4128
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %67 = and i32 %66, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %67)
  %cmp7.not = icmp eq i32 %67, 192
  br i1 %cmp7.not, label %for.inc.i.3.if.end17_crit_edge, label %if.then9

for.inc.i.3.if.end17_crit_edge:                   ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then9:                                         ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call fastcc i32 @_DoC_WaitReady(ptr noundef %doc)
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i1)
  %68 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store volatile i8 -1, ptr %dummy.i1, align 1
  %69 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ChipID, align 4
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %70, label %if.else16.i14 [
    i8 48, label %if.then.i8
    i8 65, label %if.else.if.then13.i11_crit_edge
    i8 64, label %if.else.if.then13.i11_crit_edge43
  ]

if.else.if.then13.i11_crit_edge43:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11

if.else.if.then13.i11_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11

if.then.i8:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i6 = getelementptr i32, ptr %73, i32 4128
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #13, !srcloc !284
  %conv.i.i7 = trunc i32 %74 to i8
  %75 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %75)
  store volatile i8 %conv.i.i7, ptr %dummy.i1, align 1
  br label %for.inc.i17

if.then13.i11:                                    ; preds = %if.else.if.then13.i11_crit_edge, %if.else.if.then13.i11_crit_edge43
  %76 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i9 = getelementptr i32, ptr %77, i32 4098
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i9) #13, !srcloc !284
  %conv.i27.i10 = trunc i32 %78 to i8
  %79 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store volatile i8 %conv.i27.i10, ptr %dummy.i1, align 1
  br label %for.inc.i17

if.else16.i14:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i12 = getelementptr i32, ptr %81, i32 4097
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i12) #13, !srcloc !284
  %conv.i29.i13 = trunc i32 %82 to i8
  %83 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %83)
  store volatile i8 %conv.i29.i13, ptr %dummy.i1, align 1
  br label %for.inc.i17

for.inc.i17:                                      ; preds = %if.else16.i14, %if.then13.i11, %if.then.i8
  %84 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ChipID, align 4
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %85, label %if.else16.i14.1 [
    i8 48, label %if.then.i8.1
    i8 65, label %for.inc.i17.if.then13.i11.1_crit_edge
    i8 64, label %for.inc.i17.if.then13.i11.1_crit_edge44
  ]

for.inc.i17.if.then13.i11.1_crit_edge44:          ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11.1

for.inc.i17.if.then13.i11.1_crit_edge:            ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11.1

if.then13.i11.1:                                  ; preds = %for.inc.i17.if.then13.i11.1_crit_edge, %for.inc.i17.if.then13.i11.1_crit_edge44
  %87 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i9.1 = getelementptr i32, ptr %88, i32 4098
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i9.1) #13, !srcloc !284
  %conv.i27.i10.1 = trunc i32 %89 to i8
  %90 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %90)
  store volatile i8 %conv.i27.i10.1, ptr %dummy.i1, align 1
  br label %for.inc.i17.1

if.then.i8.1:                                     ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i6.1 = getelementptr i32, ptr %92, i32 4128
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.1) #13, !srcloc !284
  %conv.i.i7.1 = trunc i32 %93 to i8
  %94 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store volatile i8 %conv.i.i7.1, ptr %dummy.i1, align 1
  br label %for.inc.i17.1

if.else16.i14.1:                                  ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i12.1 = getelementptr i32, ptr %96, i32 4097
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i12.1) #13, !srcloc !284
  %conv.i29.i13.1 = trunc i32 %97 to i8
  %98 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store volatile i8 %conv.i29.i13.1, ptr %dummy.i1, align 1
  br label %for.inc.i17.1

for.inc.i17.1:                                    ; preds = %if.else16.i14.1, %if.then.i8.1, %if.then13.i11.1
  %99 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ChipID, align 4
  %101 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %100, label %if.else16.i14.2 [
    i8 48, label %if.then.i8.2
    i8 65, label %for.inc.i17.1.if.then13.i11.2_crit_edge
    i8 64, label %for.inc.i17.1.if.then13.i11.2_crit_edge45
  ]

for.inc.i17.1.if.then13.i11.2_crit_edge45:        ; preds = %for.inc.i17.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11.2

for.inc.i17.1.if.then13.i11.2_crit_edge:          ; preds = %for.inc.i17.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11.2

if.then13.i11.2:                                  ; preds = %for.inc.i17.1.if.then13.i11.2_crit_edge, %for.inc.i17.1.if.then13.i11.2_crit_edge45
  %102 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i9.2 = getelementptr i32, ptr %103, i32 4098
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i9.2) #13, !srcloc !284
  %conv.i27.i10.2 = trunc i32 %104 to i8
  %105 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %105)
  store volatile i8 %conv.i27.i10.2, ptr %dummy.i1, align 1
  br label %for.inc.i17.2

if.then.i8.2:                                     ; preds = %for.inc.i17.1
  call void @__sanitizer_cov_trace_pc() #15
  %106 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i6.2 = getelementptr i32, ptr %107, i32 4128
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.2) #13, !srcloc !284
  %conv.i.i7.2 = trunc i32 %108 to i8
  %109 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store volatile i8 %conv.i.i7.2, ptr %dummy.i1, align 1
  br label %for.inc.i17.2

if.else16.i14.2:                                  ; preds = %for.inc.i17.1
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i12.2 = getelementptr i32, ptr %111, i32 4097
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i12.2) #13, !srcloc !284
  %conv.i29.i13.2 = trunc i32 %112 to i8
  %113 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %113)
  store volatile i8 %conv.i29.i13.2, ptr %dummy.i1, align 1
  br label %for.inc.i17.2

for.inc.i17.2:                                    ; preds = %if.else16.i14.2, %if.then.i8.2, %if.then13.i11.2
  %114 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ChipID, align 4
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %115, label %if.else16.i14.3 [
    i8 48, label %if.then.i8.3
    i8 65, label %for.inc.i17.2.if.then13.i11.3_crit_edge
    i8 64, label %for.inc.i17.2.if.then13.i11.3_crit_edge46
  ]

for.inc.i17.2.if.then13.i11.3_crit_edge46:        ; preds = %for.inc.i17.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11.3

for.inc.i17.2.if.then13.i11.3_crit_edge:          ; preds = %for.inc.i17.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i11.3

if.then13.i11.3:                                  ; preds = %for.inc.i17.2.if.then13.i11.3_crit_edge, %for.inc.i17.2.if.then13.i11.3_crit_edge46
  %117 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i9.3 = getelementptr i32, ptr %118, i32 4098
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i9.3) #13, !srcloc !284
  %conv.i27.i10.3 = trunc i32 %119 to i8
  %120 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %120)
  store volatile i8 %conv.i27.i10.3, ptr %dummy.i1, align 1
  br label %for.inc.i17.3

if.then.i8.3:                                     ; preds = %for.inc.i17.2
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i6.3 = getelementptr i32, ptr %122, i32 4128
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.3) #13, !srcloc !284
  %conv.i.i7.3 = trunc i32 %123 to i8
  %124 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %124)
  store volatile i8 %conv.i.i7.3, ptr %dummy.i1, align 1
  br label %for.inc.i17.3

if.else16.i14.3:                                  ; preds = %for.inc.i17.2
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i12.3 = getelementptr i32, ptr %126, i32 4097
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i12.3) #13, !srcloc !284
  %conv.i29.i13.3 = trunc i32 %127 to i8
  %128 = ptrtoint ptr %dummy.i1 to i32
  call void @__asan_store1_noabort(i32 %128)
  store volatile i8 %conv.i29.i13.3, ptr %dummy.i1, align 1
  br label %for.inc.i17.3

for.inc.i17.3:                                    ; preds = %if.else16.i14.3, %if.then.i8.3, %if.then13.i11.3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i1)
  %add.ptr.i19 = getelementptr i32, ptr %1, i32 4100
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #13, !srcloc !284
  %130 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not = icmp eq i32 %130, 0
  br i1 %tobool.not, label %if.then14, label %for.inc.i17.3.if.end16_crit_edge

for.inc.i17.3.if.end16_crit_edge:                 ; preds = %for.inc.i17.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %for.inc.i17.3
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call fastcc i32 @_DoC_WaitReady(ptr noundef %doc)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.inc.i17.3.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i21)
  %131 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %131)
  store volatile i8 -1, ptr %dummy.i21, align 1
  %132 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ChipID, align 4
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %133, label %if.else16.i34 [
    i8 48, label %if.then.i28
    i8 65, label %if.end16.if.then13.i31_crit_edge
    i8 64, label %if.end16.if.then13.i31_crit_edge47
  ]

if.end16.if.then13.i31_crit_edge47:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i31

if.end16.if.then13.i31_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i31

if.then.i28:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %135 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i26 = getelementptr i32, ptr %136, i32 4128
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #13, !srcloc !284
  %conv.i.i27 = trunc i32 %137 to i8
  %138 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %138)
  store volatile i8 %conv.i.i27, ptr %dummy.i21, align 1
  br label %for.inc.i37

if.then13.i31:                                    ; preds = %if.end16.if.then13.i31_crit_edge, %if.end16.if.then13.i31_crit_edge47
  %139 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i29 = getelementptr i32, ptr %140, i32 4098
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i29) #13, !srcloc !284
  %conv.i27.i30 = trunc i32 %141 to i8
  %142 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %142)
  store volatile i8 %conv.i27.i30, ptr %dummy.i21, align 1
  br label %for.inc.i37

if.else16.i34:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i32 = getelementptr i32, ptr %144, i32 4097
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i32) #13, !srcloc !284
  %conv.i29.i33 = trunc i32 %145 to i8
  %146 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %146)
  store volatile i8 %conv.i29.i33, ptr %dummy.i21, align 1
  br label %for.inc.i37

for.inc.i37:                                      ; preds = %if.else16.i34, %if.then13.i31, %if.then.i28
  %147 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ChipID, align 4
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %148, label %if.else16.i34.1 [
    i8 48, label %if.then.i28.1
    i8 65, label %for.inc.i37.if.then13.i31.1_crit_edge
    i8 64, label %for.inc.i37.if.then13.i31.1_crit_edge48
  ]

for.inc.i37.if.then13.i31.1_crit_edge48:          ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i31.1

for.inc.i37.if.then13.i31.1_crit_edge:            ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i31.1

if.then13.i31.1:                                  ; preds = %for.inc.i37.if.then13.i31.1_crit_edge, %for.inc.i37.if.then13.i31.1_crit_edge48
  %150 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i29.1 = getelementptr i32, ptr %151, i32 4098
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i29.1) #13, !srcloc !284
  %conv.i27.i30.1 = trunc i32 %152 to i8
  %153 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %153)
  store volatile i8 %conv.i27.i30.1, ptr %dummy.i21, align 1
  br label %for.inc.i37.1

if.then.i28.1:                                    ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i26.1 = getelementptr i32, ptr %155, i32 4128
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26.1) #13, !srcloc !284
  %conv.i.i27.1 = trunc i32 %156 to i8
  %157 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %157)
  store volatile i8 %conv.i.i27.1, ptr %dummy.i21, align 1
  br label %for.inc.i37.1

if.else16.i34.1:                                  ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i32.1 = getelementptr i32, ptr %159, i32 4097
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i32.1) #13, !srcloc !284
  %conv.i29.i33.1 = trunc i32 %160 to i8
  %161 = ptrtoint ptr %dummy.i21 to i32
  call void @__asan_store1_noabort(i32 %161)
  store volatile i8 %conv.i29.i33.1, ptr %dummy.i21, align 1
  br label %for.inc.i37.1

for.inc.i37.1:                                    ; preds = %if.else16.i34.1, %if.then.i28.1, %if.then13.i31.1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i21)
  br label %if.end17

if.end17:                                         ; preds = %for.inc.i37.1, %if.then9, %for.inc.i.3.if.end17_crit_edge
  %162 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool18.not = icmp eq i32 %162, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %do.end

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #16
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end17.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_DoC_WaitReady(ptr nocapture noundef readonly %doc) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %doc, i32 0, i32 1
  %0 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virtadr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1000
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ChipID = getelementptr inbounds %struct.doc_priv, ptr %doc, i32 0, i32 3
  %4 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ChipID, align 4
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %6)
  %switch = icmp eq i8 %6, 64
  br i1 %switch, label %while.cond.preheader, label %while.cond22.preheader

while.cond22.preheader:                           ; preds = %if.end
  %add.ptr.i47 = getelementptr i32, ptr %1, i32 4100
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #13, !srcloc !284
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool26.not51 = icmp eq i32 %8, 0
  br i1 %tobool26.not51, label %while.cond22.preheader.while.body27_crit_edge, label %while.cond22.preheader.cleanup_crit_edge

while.cond22.preheader.cleanup_crit_edge:         ; preds = %while.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond22.preheader.while.body27_crit_edge:    ; preds = %while.cond22.preheader
  br label %while.body27

while.cond.preheader:                             ; preds = %if.end
  %add.ptr.i = getelementptr i32, ptr %1, i32 4128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %10 = and i32 %9, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %10)
  %cmp9.not52 = icmp eq i32 %10, 192
  br i1 %cmp9.not52, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %while.body.cleanup.sink.split_crit_edge, label %if.end19

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end19:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #13
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !284
  %14 = and i32 %13, 192
  %cmp9.not = icmp eq i32 %14, 192
  br i1 %cmp9.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body27:                                     ; preds = %if.end37.while.body27_crit_edge, %while.cond22.preheader.while.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub28 = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %cmp29 = icmp slt i32 %sub28, 0
  br i1 %cmp29, label %while.body27.cleanup.sink.split_crit_edge, label %if.end37

while.body27.cleanup.sink.split_crit_edge:        ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end37:                                         ; preds = %while.body27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #13
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 0) #13
  %call.i49 = tail call i32 @__cond_resched() #13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #13, !srcloc !284
  %18 = and i32 %17, 128
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %if.end37.while.body27_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37.while.body27_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body27

cleanup.sink.split:                               ; preds = %while.body27.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %while.cond22.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %while.cond22.preheader.cleanup_crit_edge ], [ -5, %cleanup.sink.split ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc200x_exec_op(ptr nocapture noundef readonly %this, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %chips_per_floor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chips_per_floor, align 4
  %rem = urem i32 %3, %5
  %curchip = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %curchip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem, ptr %curchip, align 4
  %7 = load i32, ptr %op, align 4
  %div = udiv i32 %7, %5
  %curfloor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %curfloor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %curfloor, align 4
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virtadr, align 4
  %conv.i = and i32 %div, 255
  %add.ptr.i = getelementptr i32, ptr %10, i32 4099
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %curchip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curchip, align 4
  %13 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virtadr, align 4
  %conv.i24 = and i32 %12, 255
  %add.ptr.i25 = getelementptr i32, ptr %14, i32 4101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %conv.i24) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call fastcc void @doc200x_write_control(ptr noundef %1, i8 noundef zeroext 1)
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp28.not = icmp eq i32 %16, 0
  br i1 %cmp28.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %doc200x_exec_instr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %doc200x_exec_instr.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %22, label %for.body.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb20.i
    i32 4, label %sw.bb36.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body
  tail call fastcc void @doc200x_write_control(ptr noundef %20, i8 noundef zeroext 3) #13
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1
  %24 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctx.i, align 4
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 8
  %virtadr.i.i = getelementptr inbounds %struct.doc_priv, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %virtadr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virtadr.i.i, align 4
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  %.pre.i.i = zext i8 %25 to i32
  br i1 %tobool.not.i.i, label %sw.bb.i.doc2000_write_byte.exit.i_crit_edge, label %do.end.i.i

sw.bb.i.doc2000_write_byte.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2000_write_byte.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %.pre.i.i) #16
  br label %doc2000_write_byte.exit.i

doc2000_write_byte.exit.i:                        ; preds = %do.end.i.i, %sw.bb.i.doc2000_write_byte.exit.i_crit_edge
  %add.ptr.i.i.i = getelementptr i32, ptr %29, i32 4109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %.pre.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i6.i.i = getelementptr i32, ptr %29, i32 6144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %.pre.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body
  tail call fastcc void @doc200x_write_control(ptr noundef %20, i8 noundef zeroext 5) #13
  %ctx2.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1
  %31 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp128.not.i = icmp eq i32 %32, 0
  br i1 %cmp128.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %for.body.lr.ph.i

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

for.body.lr.ph.i:                                 ; preds = %sw.bb1.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1, i32 0, i32 1
  %ChipID.i = getelementptr inbounds %struct.doc_priv, ptr %20, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0129.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %34, i32 %i.0129.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %37 = ptrtoint ptr %ChipID.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ChipID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %38)
  %cmp4.i = icmp eq i8 %38, 32
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 8
  %virtadr.i72.i = getelementptr inbounds %struct.doc_priv, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %virtadr.i72.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virtadr.i72.i, align 4
  br i1 %cmp4.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i73.i = icmp eq i32 %43, 0
  %.pre.i74.i = zext i8 %36 to i32
  br i1 %tobool.not.i73.i, label %if.then.i.doc2000_write_byte.exit79.i_crit_edge, label %do.end.i76.i

if.then.i.doc2000_write_byte.exit79.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2000_write_byte.exit79.i

do.end.i76.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %.pre.i74.i) #16
  br label %doc2000_write_byte.exit79.i

doc2000_write_byte.exit79.i:                      ; preds = %do.end.i76.i, %if.then.i.doc2000_write_byte.exit79.i_crit_edge
  %add.ptr.i.i77.i = getelementptr i32, ptr %42, i32 4109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77.i, i32 %.pre.i74.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i6.i78.i = getelementptr i32, ptr %42, i32 6144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i78.i, i32 %.pre.i74.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i = zext i8 %36 to i32
  %add.ptr.i.i82.i = getelementptr i32, ptr %42, i32 4109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82.i, i32 %conv.i.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i6.i83.i = getelementptr i32, ptr %42, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i83.i, i32 %conv.i.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %add.ptr.i8.i.i = getelementptr i32, ptr %42, i32 4126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %conv.i.i.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %doc2000_write_byte.exit79.i
  tail call void @arm_heavy_mb() #13
  %inc.i = add nuw i32 %i.0129.i, 1
  %44 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctx2.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %45
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sw.bb6.i:                                         ; preds = %for.body
  tail call fastcc void @doc200x_write_control(ptr noundef %20, i8 noundef zeroext 1) #13
  %ChipID7.i = getelementptr inbounds %struct.doc_priv, ptr %20, i32 0, i32 3
  %46 = ptrtoint ptr %ChipID7.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ChipID7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %47)
  %cmp9.i = icmp eq i8 %47, 32
  %ctx12.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf.i, align 4
  %50 = ptrtoint ptr %ctx12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctx12.i, align 4
  %52 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i, align 8
  %virtadr.i85.i = getelementptr inbounds %struct.doc_priv, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %virtadr.i85.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virtadr.i85.i, align 4
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i

if.then11.i:                                      ; preds = %sw.bb6.i
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i86.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i86.i, label %if.then11.i.if.end.i.i_crit_edge, label %do.end.i88.i

if.then11.i.if.end.i.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i88.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %51) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i88.i, %if.then11.i.if.end.i.i_crit_edge
  %supports_32b_reads.i.i = getelementptr inbounds %struct.doc_priv, ptr %53, i32 0, i32 12
  %57 = ptrtoint ptr %supports_32b_reads.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %supports_32b_reads.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool2.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then4.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then4.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %59 = ptrtoint ptr %49 to i32
  %or.i.i = or i32 %51, %59
  %and.i.i = and i32 %or.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %for.cond6.preheader.i.i, label %lor.lhs.false.i.i.if.then4.i.i_crit_edge

lor.lhs.false.i.i.if.then4.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i.i

for.cond6.preheader.i.i:                          ; preds = %lor.lhs.false.i.i
  %div.i.i = sdiv i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp733.i.i = icmp sgt i32 %51, 3
  br i1 %cmp733.i.i, label %for.body8.lr.ph.i.i, label %for.cond6.preheader.i.i.sw.epilog.i_crit_edge

for.cond6.preheader.i.i.sw.epilog.i_crit_edge:    ; preds = %for.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

for.body8.lr.ph.i.i:                              ; preds = %for.cond6.preheader.i.i
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 6144
  br label %for.body8.i.i

if.then4.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then4.i.i_crit_edge, %if.end.i.i.if.then4.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp35.i.i = icmp sgt i32 %51, 0
  br i1 %cmp35.i.i, label %if.then4.i.i.for.body.i.i_crit_edge, label %if.then4.i.i.sw.epilog.i_crit_edge

if.then4.i.i.sw.epilog.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.then4.i.i.for.body.i.i_crit_edge:              ; preds = %if.then4.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then4.i.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw i32 %i.036.i.i, 6144
  %add.ptr.i.i89.i = getelementptr i32, ptr %55, i32 %add.i.i
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89.i) #13, !srcloc !284
  %conv.i.i90.i = trunc i32 %60 to i8
  %arrayidx.i.i = getelementptr i8, ptr %49, i32 %i.036.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv.i.i90.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.036.i.i, 1
  %exitcond38.not.i.i = icmp eq i32 %inc.i.i, %51
  br i1 %exitcond38.not.i.i, label %for.body.i.i.sw.epilog.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.sw.epilog.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.body8.lr.ph.i.i
  %i.134.i.i = phi i32 [ 0, %for.body8.lr.ph.i.i ], [ %inc15.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ]
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.134.i.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #13, !srcloc !284
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !289
  %arrayidx13.i.i = getelementptr i32, ptr %49, i32 %i.134.i.i
  %64 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx13.i.i, align 4
  %inc15.i.i = add nuw nsw i32 %i.134.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc15.i.i, %div.i.i
  br i1 %exitcond.not.i.i, label %for.body8.i.i.sw.epilog.i_crit_edge, label %for.body8.i.i.for.body8.i.i_crit_edge

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i.i

for.body8.i.i.sw.epilog.i_crit_edge:              ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.else14.i:                                      ; preds = %sw.bb6.i
  %add.ptr.i.i93.i = getelementptr i32, ptr %55, i32 4125
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i93.i) #13, !srcloc !284
  %sub.i.i = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp16.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp16.i.i, label %if.else14.i.for.body.i99.i_crit_edge, label %if.else14.i.doc2001_readbuf.exit.i_crit_edge

if.else14.i.doc2001_readbuf.exit.i_crit_edge:     ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2001_readbuf.exit.i

if.else14.i.for.body.i99.i_crit_edge:             ; preds = %if.else14.i
  br label %for.body.i99.i

for.body.i99.i:                                   ; preds = %for.body.i99.i.for.body.i99.i_crit_edge, %if.else14.i.for.body.i99.i_crit_edge
  %i.017.i.i = phi i32 [ %inc.i97.i, %for.body.i99.i.for.body.i99.i_crit_edge ], [ 0, %if.else14.i.for.body.i99.i_crit_edge ]
  %and.i94.i = and i32 %i.017.i.i, 255
  %add.i95.i = or i32 %and.i94.i, 2048
  %add.ptr.i12.i.i = getelementptr i32, ptr %55, i32 %add.i95.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #13, !srcloc !284
  %conv.i13.i.i = trunc i32 %66 to i8
  %arrayidx.i96.i = getelementptr i8, ptr %49, i32 %i.017.i.i
  %67 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i13.i.i, ptr %arrayidx.i96.i, align 1
  %inc.i97.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i98.i = icmp eq i32 %inc.i97.i, %sub.i.i
  br i1 %exitcond.not.i98.i, label %for.body.i99.i.doc2001_readbuf.exit.i_crit_edge, label %for.body.i99.i.for.body.i99.i_crit_edge

for.body.i99.i.for.body.i99.i_crit_edge:          ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i99.i

for.body.i99.i.doc2001_readbuf.exit.i_crit_edge:  ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2001_readbuf.exit.i

doc2001_readbuf.exit.i:                           ; preds = %for.body.i99.i.doc2001_readbuf.exit.i_crit_edge, %if.else14.i.doc2001_readbuf.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.else14.i.doc2001_readbuf.exit.i_crit_edge ], [ %sub.i.i, %for.body.i99.i.doc2001_readbuf.exit.i_crit_edge ]
  %add.ptr.i14.i.i = getelementptr i32, ptr %55, i32 4127
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #13, !srcloc !284
  %conv.i15.i.i = trunc i32 %68 to i8
  %arrayidx4.i.i = getelementptr i8, ptr %49, i32 %i.0.lcssa.i.i
  %69 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i15.i.i, ptr %arrayidx4.i.i, align 1
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %for.body
  tail call fastcc void @doc200x_write_control(ptr noundef %20, i8 noundef zeroext 1) #13
  %ChipID21.i = getelementptr inbounds %struct.doc_priv, ptr %20, i32 0, i32 3
  %70 = ptrtoint ptr %ChipID21.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ChipID21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %cmp23.i = icmp eq i8 %71, 32
  %ctx26.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1
  %buf27.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %buf27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf27.i, align 4
  %74 = ptrtoint ptr %ctx26.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctx26.i, align 4
  %76 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i, align 8
  %virtadr.i101.i = getelementptr inbounds %struct.doc_priv, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %virtadr.i101.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %virtadr.i101.i, align 4
  br i1 %cmp23.i, label %if.then25.i, label %if.else30.i

if.then25.i:                                      ; preds = %sw.bb20.i
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i102.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i102.i, label %if.then25.i.if.end.i105.i_crit_edge, label %do.end.i104.i

if.then25.i.if.end.i105.i_crit_edge:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i105.i

do.end.i104.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %75) #16
  br label %if.end.i105.i

if.end.i105.i:                                    ; preds = %do.end.i104.i, %if.then25.i.if.end.i105.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp27.i.i = icmp sgt i32 %75, 0
  br i1 %cmp27.i.i, label %if.end.i105.i.for.body.i111.i_crit_edge, label %if.end.i105.i.for.end.i.i_crit_edge

if.end.i105.i.for.end.i.i_crit_edge:              ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

if.end.i105.i.for.body.i111.i_crit_edge:          ; preds = %if.end.i105.i
  br label %for.body.i111.i

for.body.i111.i:                                  ; preds = %for.inc.i.i.for.body.i111.i_crit_edge, %if.end.i105.i.for.body.i111.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i112.i, %for.inc.i.i.for.body.i111.i_crit_edge ], [ 0, %if.end.i105.i.for.body.i111.i_crit_edge ]
  %arrayidx.i106.i = getelementptr i8, ptr %73, i32 %i.028.i.i
  %81 = ptrtoint ptr %arrayidx.i106.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i106.i, align 1
  %add.i107.i = add nuw i32 %i.028.i.i, 6144
  %conv.i.i108.i = zext i8 %82 to i32
  %add.ptr.i.i109.i = getelementptr i32, ptr %79, i32 %add.i107.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109.i, i32 %conv.i.i108.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool2.not.i110.i = icmp ne i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.028.i.i)
  %cmp3.i.i = icmp ult i32 %i.028.i.i, 16
  %or.cond.i.i = select i1 %tobool2.not.i110.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end7.i.i, label %for.body.i111.i.for.inc.i.i_crit_edge

for.body.i111.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

do.end7.i.i:                                      ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %arrayidx.i106.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i106.i, align 1
  %conv.i.i = zext i8 %85 to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i.i) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end7.i.i, %for.body.i111.i.for.inc.i.i_crit_edge
  %inc.i112.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i113.i = icmp eq i32 %inc.i112.i, %75
  br i1 %exitcond.not.i113.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i111.i_crit_edge

for.inc.i.i.for.body.i111.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i111.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i105.i.for.end.i.i_crit_edge
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool12.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool12.not.i.i, label %for.end.i.i.sw.epilog.i_crit_edge, label %do.end16.i.i

for.end.i.i.sw.epilog.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

do.end16.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %sw.epilog.i

if.else30.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp6.i.i = icmp sgt i32 %75, 0
  br i1 %cmp6.i.i, label %if.else30.i.for.body.i122.i_crit_edge, label %if.else30.i.doc2001_writebuf.exit.i_crit_edge

if.else30.i.doc2001_writebuf.exit.i_crit_edge:    ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2001_writebuf.exit.i

if.else30.i.for.body.i122.i_crit_edge:            ; preds = %if.else30.i
  br label %for.body.i122.i

for.body.i122.i:                                  ; preds = %for.body.i122.i.for.body.i122.i_crit_edge, %if.else30.i.for.body.i122.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i120.i, %for.body.i122.i.for.body.i122.i_crit_edge ], [ 0, %if.else30.i.for.body.i122.i_crit_edge ]
  %arrayidx.i116.i = getelementptr i8, ptr %73, i32 %i.07.i.i
  %87 = ptrtoint ptr %arrayidx.i116.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i116.i, align 1
  %add.i117.i = add nuw i32 %i.07.i.i, 2048
  %conv.i.i118.i = zext i8 %88 to i32
  %add.ptr.i.i119.i = getelementptr i32, ptr %79, i32 %add.i117.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i119.i, i32 %conv.i.i118.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %inc.i120.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i121.i = icmp eq i32 %inc.i120.i, %75
  br i1 %exitcond.not.i121.i, label %for.body.i122.i.doc2001_writebuf.exit.i_crit_edge, label %for.body.i122.i.for.body.i122.i_crit_edge

for.body.i122.i.for.body.i122.i_crit_edge:        ; preds = %for.body.i122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i122.i

for.body.i122.i.doc2001_writebuf.exit.i_crit_edge: ; preds = %for.body.i122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc2001_writebuf.exit.i

doc2001_writebuf.exit.i:                          ; preds = %for.body.i122.i.doc2001_writebuf.exit.i_crit_edge, %if.else30.i.doc2001_writebuf.exit.i_crit_edge
  %add.ptr.i5.i.i = getelementptr i32, ptr %79, i32 4126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @DoC_WaitReady(ptr noundef %20) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb36.i, %doc2001_writebuf.exit.i, %do.end16.i.i, %for.end.i.i.sw.epilog.i_crit_edge, %doc2001_readbuf.exit.i, %for.body8.i.i.sw.epilog.i_crit_edge, %for.body.i.i.sw.epilog.i_crit_edge, %if.then4.i.i.sw.epilog.i_crit_edge, %for.cond6.preheader.i.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge, %sw.bb1.i.sw.epilog.i_crit_edge, %doc2000_write_byte.exit.i, %for.body.sw.epilog.i_crit_edge
  %delay_ns.i = getelementptr %struct.nand_op_instr, ptr %18, i32 %i.029, i32 2
  %89 = ptrtoint ptr %delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %sw.epilog.i.doc200x_exec_instr.exit_crit_edge, label %cond.false8.i.i

sw.epilog.i.doc200x_exec_instr.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc200x_exec_instr.exit

cond.false8.i.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i124.i = add i32 %90, 999
  %div.i125.i = udiv i32 %sub.i124.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %div.i125.i) #13
  br label %doc200x_exec_instr.exit

doc200x_exec_instr.exit:                          ; preds = %cond.false8.i.i, %sw.epilog.i.doc200x_exec_instr.exit_crit_edge
  %inc = add nuw i32 %i.029, 1
  %92 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %93
  br i1 %cmp, label %doc200x_exec_instr.exit.for.body_crit_edge, label %doc200x_exec_instr.exit.for.end_crit_edge

doc200x_exec_instr.exit.for.end_crit_edge:        ; preds = %doc200x_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

doc200x_exec_instr.exit.for.body_crit_edge:       ; preds = %doc200x_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %doc200x_exec_instr.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @doc200x_write_control(ptr noundef %1, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc200x_write_control(ptr nocapture noundef readonly %doc, i8 noundef zeroext %value) unnamed_addr #8 align 64 {
entry:
  %dummy.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %doc, i32 0, i32 1
  %0 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virtadr, align 4
  %conv.i = zext i8 %value to i32
  %add.ptr.i = getelementptr i32, ptr %1, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i)
  %2 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 -1, ptr %dummy.i, align 1
  %ChipID.i = getelementptr inbounds %struct.doc_priv, ptr %doc, i32 0, i32 3
  %3 = ptrtoint ptr %ChipID.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ChipID.i, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %4, label %if.else16.i [
    i8 48, label %if.then.i
    i8 65, label %entry.if.then13.i_crit_edge
    i8 64, label %entry.if.then13.i_crit_edge2
  ]

entry.if.then13.i_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

entry.if.then13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %7, i32 4128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !284
  %conv.i.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 %conv.i.i, ptr %dummy.i, align 1
  br label %for.inc.i

if.then13.i:                                      ; preds = %entry.if.then13.i_crit_edge, %entry.if.then13.i_crit_edge2
  %10 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i = getelementptr i32, ptr %11, i32 4098
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #13, !srcloc !284
  %conv.i27.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 %conv.i27.i, ptr %dummy.i, align 1
  br label %for.inc.i

if.else16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i = getelementptr i32, ptr %15, i32 4097
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #13, !srcloc !284
  %conv.i29.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 %conv.i29.i, ptr %dummy.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else16.i, %if.then13.i, %if.then.i
  %18 = ptrtoint ptr %ChipID.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ChipID.i, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %19, label %if.else16.i.1 [
    i8 48, label %if.then.i.1
    i8 65, label %for.inc.i.if.then13.i.1_crit_edge
    i8 64, label %for.inc.i.if.then13.i.1_crit_edge3
  ]

for.inc.i.if.then13.i.1_crit_edge3:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.1

for.inc.i.if.then13.i.1_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.1

if.then13.i.1:                                    ; preds = %for.inc.i.if.then13.i.1_crit_edge, %for.inc.i.if.then13.i.1_crit_edge3
  %21 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i.1 = getelementptr i32, ptr %22, i32 4098
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.1) #13, !srcloc !284
  %conv.i27.i.1 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 %conv.i27.i.1, ptr %dummy.i, align 1
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i.1 = getelementptr i32, ptr %26, i32 4128
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #13, !srcloc !284
  %conv.i.i.1 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store volatile i8 %conv.i.i.1, ptr %dummy.i, align 1
  br label %for.inc.i.1

if.else16.i.1:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i.1 = getelementptr i32, ptr %30, i32 4097
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.1) #13, !srcloc !284
  %conv.i29.i.1 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store volatile i8 %conv.i29.i.1, ptr %dummy.i, align 1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.else16.i.1, %if.then.i.1, %if.then13.i.1
  %33 = ptrtoint ptr %ChipID.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ChipID.i, align 4
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %34, label %if.else16.i.2 [
    i8 48, label %if.then.i.2
    i8 65, label %for.inc.i.1.if.then13.i.2_crit_edge
    i8 64, label %for.inc.i.1.if.then13.i.2_crit_edge4
  ]

for.inc.i.1.if.then13.i.2_crit_edge4:             ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.2

for.inc.i.1.if.then13.i.2_crit_edge:              ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.2

if.then13.i.2:                                    ; preds = %for.inc.i.1.if.then13.i.2_crit_edge, %for.inc.i.1.if.then13.i.2_crit_edge4
  %36 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i.2 = getelementptr i32, ptr %37, i32 4098
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.2) #13, !srcloc !284
  %conv.i27.i.2 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store volatile i8 %conv.i27.i.2, ptr %dummy.i, align 1
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i.2 = getelementptr i32, ptr %41, i32 4128
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #13, !srcloc !284
  %conv.i.i.2 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store volatile i8 %conv.i.i.2, ptr %dummy.i, align 1
  br label %for.inc.i.2

if.else16.i.2:                                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i.2 = getelementptr i32, ptr %45, i32 4097
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.2) #13, !srcloc !284
  %conv.i29.i.2 = trunc i32 %46 to i8
  %47 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store volatile i8 %conv.i29.i.2, ptr %dummy.i, align 1
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.else16.i.2, %if.then.i.2, %if.then13.i.2
  %48 = ptrtoint ptr %ChipID.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ChipID.i, align 4
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %49, label %if.else16.i.3 [
    i8 48, label %if.then.i.3
    i8 65, label %for.inc.i.2.if.then13.i.3_crit_edge
    i8 64, label %for.inc.i.2.if.then13.i.3_crit_edge5
  ]

for.inc.i.2.if.then13.i.3_crit_edge5:             ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.3

for.inc.i.2.if.then13.i.3_crit_edge:              ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i.3

if.then13.i.3:                                    ; preds = %for.inc.i.2.if.then13.i.3_crit_edge, %for.inc.i.2.if.then13.i.3_crit_edge5
  %51 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virtadr, align 4
  %add.ptr.i26.i.3 = getelementptr i32, ptr %52, i32 4098
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.3) #13, !srcloc !284
  %conv.i27.i.3 = trunc i32 %53 to i8
  %54 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store volatile i8 %conv.i27.i.3, ptr %dummy.i, align 1
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %virtadr, align 4
  %add.ptr.i.i.3 = getelementptr i32, ptr %56, i32 4128
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3) #13, !srcloc !284
  %conv.i.i.3 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store volatile i8 %conv.i.i.3, ptr %dummy.i, align 1
  br label %for.inc.i.3

if.else16.i.3:                                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %virtadr, align 4
  %add.ptr.i28.i.3 = getelementptr i32, ptr %60, i32 4097
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.3) #13, !srcloc !284
  %conv.i29.i.3 = trunc i32 %61 to i8
  %62 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store volatile i8 %conv.i29.i.3, ptr %dummy.i, align 1
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.else16.i.3, %if.then.i.3, %if.then13.i.3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @doc200x_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @doc200x_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  %. = select i1 %tobool.not, i32 8, i32 6
  %.10 = select i1 %tobool.not, i32 8, i32 2
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %., ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.10, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nftl_scan_bbt(ptr noundef %mtd) #0 section ".init.text" align 64 {
entry:
  %parts = alloca [2 x %struct.mtd_partition], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %parts) #13
  %2 = call ptr @memset(ptr %parts, i32 0, i32 80)
  %call3 = call fastcc i32 @nftl_partscan(ptr noundef %mtd, ptr noundef nonnull %parts) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 13
  %3 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bbt_td, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24872, ptr %4, align 4
  %6 = load ptr, ptr %bbt_td, align 4
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %veroffs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %veroffs, align 4
  %mh0_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %mh0_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mh0_page, align 4
  %add = add i32 %9, 1
  %10 = load ptr, ptr %bbt_td, align 4
  %pages = getelementptr inbounds %struct.nand_bbt_descr, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %pages, align 4
  %mh1_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %mh1_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mh1_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not = icmp eq i32 %13, -1
  %bbt_md15 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 14
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %bbt_md15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bbt_md15, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 24872, ptr %15, align 4
  %17 = load ptr, ptr %bbt_md15, align 8
  %veroffs9 = getelementptr inbounds %struct.nand_bbt_descr, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %veroffs9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %veroffs9, align 4
  %19 = ptrtoint ptr %mh1_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mh1_page, align 4
  %add11 = add i32 %20, 1
  %21 = load ptr, ptr %bbt_md15, align 8
  %pages13 = getelementptr inbounds %struct.nand_bbt_descr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pages13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add11, ptr %pages13, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %bbt_md15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %bbt_md15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %call17 = tail call i32 @nand_create_bbt(ptr noundef %mtd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %24 = load i32, ptr @no_autopart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool22.not, i32 %call3, i32 0
  %call23 = call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef nonnull %parts, i32 noundef %spec.select) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end20 ], [ -5, %entry.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %parts) #13
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc2000_count_chips(ptr noundef %mtd) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chips_per_floor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %chips_per_floor, align 4
  %call2 = tail call fastcc zeroext i16 @doc200x_ident_chip(ptr noundef %mtd, i32 noundef 0) #17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call3 = tail call fastcc zeroext i16 @doc200x_ident_chip(ptr noundef %mtd, i32 noundef %i.021) #17
  call void @__sanitizer_cov_trace_cmp2(i16 %call3, i16 %call2)
  %cmp5.not = icmp eq i16 %call3, %call2
  br i1 %cmp5.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.021, %for.body.for.end_crit_edge ], [ 4, %for.inc.for.end_crit_edge ]
  %3 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.0.lcssa, ptr %chips_per_floor, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc2000_count_chips.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc2000_count_chips, %if.then11)) #13
          to label %do.end [label %if.then11], !srcloc !287

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @doc2000_count_chips.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.92, i32 noundef %i.0.lcssa) #13
  br label %do.end

do.end:                                           ; preds = %if.then11, %for.end
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nftl_partscan(ptr noundef %mtd, ptr nocapture noundef writeonly %parts) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 17
  %2 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_shift, align 4
  %shl = shl nuw i32 1, %3
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @find_media_headers(ptr noundef %mtd, ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.65, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %if.end
  %NumEraseUnits = getelementptr inbounds %struct.NFTLMediaHeader, ptr %call9.i, i32 0, i32 1
  %6 = ptrtoint ptr %NumEraseUnits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %NumEraseUnits, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #13
  %9 = ptrtoint ptr %NumEraseUnits to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %NumEraseUnits, align 2
  %FirstPhysicalEUN = getelementptr inbounds %struct.NFTLMediaHeader, ptr %call9.i, i32 0, i32 2
  %10 = ptrtoint ptr %FirstPhysicalEUN to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %FirstPhysicalEUN, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #13
  %13 = ptrtoint ptr %FirstPhysicalEUN to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %FirstPhysicalEUN, align 8
  %FormattedSize = getelementptr inbounds %struct.NFTLMediaHeader, ptr %call9.i, i32 0, i32 3
  %14 = ptrtoint ptr %FormattedSize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %FormattedSize, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %17 = ptrtoint ptr %FormattedSize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %FormattedSize, align 4
  %conv = zext i16 %8 to i32
  %conv10 = zext i16 %12 to i32
  %UnitSizeFactor = getelementptr inbounds %struct.NFTLMediaHeader, ptr %call9.i, i32 0, i32 4
  %18 = ptrtoint ptr %UnitSizeFactor to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %UnitSizeFactor, align 2
  %conv12 = zext i8 %19 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %call9.i, i32 noundef %conv, i32 noundef %conv10, i32 noundef %16, i32 noundef %conv12) #16
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size, align 8
  %phys_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 18
  %22 = ptrtoint ptr %phys_erase_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys_erase_shift, align 8
  %sh_prom = zext i32 %23 to i64
  %shr = lshr i64 %21, %sh_prom
  %conv14 = trunc i64 %shr to i32
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %24 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erasesize, align 8
  %sub = sub i32 %25, %shl
  %26 = tail call i32 @llvm.umin.i32(i32 %sub, i32 32768)
  %27 = ptrtoint ptr %UnitSizeFactor to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %UnitSizeFactor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp19 = icmp eq i8 %28, 0
  br i1 %cmp19, label %while.cond.preheader, label %if.end7.if.end42_crit_edge

if.end7.if.end42_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

while.cond.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv14)
  %cmp23242 = icmp ult i32 %26, %conv14
  br i1 %cmp23242, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.do.end37_crit_edge

while.cond.preheader.do.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %maxblocks.0245 = phi i32 [ %29, %while.body.while.body_crit_edge ], [ %26, %while.cond.preheader.while.body_crit_edge ]
  %blocks.0244 = phi i32 [ %shr25, %while.body.while.body_crit_edge ], [ %conv14, %while.cond.preheader.while.body_crit_edge ]
  %storemerge243 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ -1, %while.cond.preheader.while.body_crit_edge ]
  %shr25 = lshr i32 %blocks.0244, 1
  %shl26 = shl nuw nsw i32 %maxblocks.0245, 1
  %add = add nuw i32 %shl26, %shl
  %29 = tail call i32 @llvm.umin.i32(i32 %add, i32 32768)
  %dec = add i8 %storemerge243, -1
  %cmp23 = icmp ugt i32 %shr25, %29
  br i1 %cmp23, label %while.body.while.body_crit_edge, label %while.body.do.end37_crit_edge

while.body.do.end37_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end37:                                         ; preds = %while.body.do.end37_crit_edge, %while.cond.preheader.do.end37_crit_edge
  %storemerge.lcssa241 = phi i8 [ -1, %while.cond.preheader.do.end37_crit_edge ], [ %dec, %while.body.do.end37_crit_edge ]
  %blocks.0.lcssa = phi i32 [ %conv14, %while.cond.preheader.do.end37_crit_edge ], [ %shr25, %while.body.do.end37_crit_edge ]
  %maxblocks.0.lcssa = phi i32 [ %26, %while.cond.preheader.do.end37_crit_edge ], [ %29, %while.body.do.end37_crit_edge ]
  %30 = ptrtoint ptr %UnitSizeFactor to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge.lcssa241, ptr %UnitSizeFactor, align 2
  %conv40 = zext i8 %storemerge.lcssa241 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv40) #16
  %31 = ptrtoint ptr %UnitSizeFactor to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr = load i8, ptr %UnitSizeFactor, align 2
  br label %if.end42

if.end42:                                         ; preds = %do.end37, %if.end7.if.end42_crit_edge
  %32 = phi i8 [ %.pr, %do.end37 ], [ %28, %if.end7.if.end42_crit_edge ]
  %blocks.1 = phi i32 [ %blocks.0.lcssa, %do.end37 ], [ %conv14, %if.end7.if.end42_crit_edge ]
  %maxblocks.1 = phi i32 [ %maxblocks.0.lcssa, %do.end37 ], [ %26, %if.end7.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp45.not = icmp eq i8 %32, -1
  br i1 %cmp45.not, label %if.end42.if.end81_crit_edge, label %if.then47

if.end42.if.end81_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %33 = xor i8 %32, -1
  %sub50 = zext i8 %33 to i32
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 9
  %34 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bbt_erase_shift, align 4
  %add51 = add i32 %35, %sub50
  store i32 %add51, ptr %bbt_erase_shift, align 4
  %36 = ptrtoint ptr %UnitSizeFactor to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %UnitSizeFactor, align 2
  %38 = xor i8 %37, -1
  %sub54 = zext i8 %38 to i32
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %pages_per_eraseblock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pages_per_eraseblock, align 4
  %shl55 = shl i32 %40, %sub54
  store i32 %shl55, ptr %pages_per_eraseblock, align 4
  %41 = load i8, ptr %UnitSizeFactor, align 2
  %42 = xor i8 %41, -1
  %sub58 = zext i8 %42 to i32
  %43 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %erasesize, align 8
  %shl60 = shl i32 %44, %sub58
  store i32 %shl60, ptr %erasesize, align 8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %shl60) #16
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %size, align 8
  %47 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom69 = zext i32 %48 to i64
  %shr70 = lshr i64 %46, %sh_prom69
  %conv71 = trunc i64 %shr70 to i32
  %49 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %erasesize, align 8
  %sub73 = sub i32 %50, %shl
  %51 = tail call i32 @llvm.umin.i32(i32 %sub73, i32 32768)
  br label %if.end81

if.end81:                                         ; preds = %if.then47, %if.end42.if.end81_crit_edge
  %blocks.2 = phi i32 [ %conv71, %if.then47 ], [ %blocks.1, %if.end42.if.end81_crit_edge ]
  %maxblocks.2 = phi i32 [ %51, %if.then47 ], [ %maxblocks.1, %if.end42.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.2, i32 %maxblocks.2)
  %cmp82 = icmp ugt i32 %blocks.2, %maxblocks.2
  br i1 %cmp82, label %do.end87, label %if.end92

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %UnitSizeFactor to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %UnitSizeFactor, align 2
  %conv90 = zext i8 %53 to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv90) #16
  br label %out

if.end92:                                         ; preds = %if.end81
  %mh0_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %mh0_page to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mh0_page, align 4
  %mh1_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 9
  %56 = ptrtoint ptr %mh1_page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mh1_page, align 4
  %58 = tail call i32 @llvm.smax.i32(i32 %55, i32 %57)
  %59 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_shift, align 4
  %shl101 = shl i32 %58, %60
  %61 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %erasesize, align 8
  %add103 = add i32 %shl101, %62
  %63 = load i32, ptr @show_firmware_partition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp104 = icmp eq i32 %63, 1
  br i1 %cmp104, label %if.then106, label %if.end92.if.end111_crit_edge

if.end92.if.end111_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = sext i32 %add103 to i64
  br label %if.end111

if.then106:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %parts to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.77, ptr %parts, align 8
  %offset = getelementptr inbounds %struct.mtd_partition, ptr %parts, i32 0, i32 3
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %offset, align 8
  %conv108 = sext i32 %add103 to i64
  %size110 = getelementptr inbounds %struct.mtd_partition, ptr %parts, i32 0, i32 2
  %66 = ptrtoint ptr %size110 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv108, ptr %size110, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end92.if.end111_crit_edge
  %conv114.pre-phi = phi i64 [ %.pre, %if.end92.if.end111_crit_edge ], [ %conv108, %if.then106 ]
  %numparts.0 = phi i32 [ 0, %if.end92.if.end111_crit_edge ], [ 1, %if.then106 ]
  %arrayidx112 = getelementptr %struct.mtd_partition, ptr %parts, i32 %numparts.0
  %67 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.78, ptr %arrayidx112, align 8
  %offset116 = getelementptr %struct.mtd_partition, ptr %parts, i32 %numparts.0, i32 3
  %68 = ptrtoint ptr %offset116 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv114.pre-phi, ptr %offset116, align 8
  %69 = ptrtoint ptr %NumEraseUnits to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %NumEraseUnits, align 2
  %conv118 = zext i16 %70 to i32
  %sub119 = sub i32 %conv118, %call4
  %bbt_erase_shift120 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 9
  %71 = ptrtoint ptr %bbt_erase_shift120 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bbt_erase_shift120, align 4
  %shl121 = shl i32 %sub119, %72
  %conv122 = sext i32 %shl121 to i64
  %size124 = getelementptr %struct.mtd_partition, ptr %parts, i32 %numparts.0, i32 2
  %73 = ptrtoint ptr %size124 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv122, ptr %size124, align 8
  %add128 = add i32 %shl121, %add103
  %inc = add nuw nsw i32 %numparts.0, 1
  %conv130 = sext i32 %add128 to i64
  %74 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %conv130)
  %cmp132 = icmp ugt i64 %75, %conv130
  br i1 %cmp132, label %if.then134, label %if.end111.out_crit_edge

if.end111.out_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then134:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx135 = getelementptr %struct.mtd_partition, ptr %parts, i32 %inc
  %76 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.79, ptr %arrayidx135, align 8
  %offset139 = getelementptr %struct.mtd_partition, ptr %parts, i32 %inc, i32 3
  %77 = ptrtoint ptr %offset139 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv130, ptr %offset139, align 8
  %78 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %size, align 8
  %sub142 = sub i64 %79, %conv130
  %size144 = getelementptr %struct.mtd_partition, ptr %parts, i32 %inc, i32 2
  %80 = ptrtoint ptr %size144 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %sub142, ptr %size144, align 8
  %inc145 = or i32 %numparts.0, 2
  br label %out

out:                                              ; preds = %if.then134, %if.end111.out_crit_edge, %do.end87, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end87 ], [ 0, %if.end.out_crit_edge ], [ %inc145, %if.then134 ], [ %inc, %if.end111.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_create_bbt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_media_headers(ptr noundef %mtd, ptr noundef %buf, ptr noundef %id, i32 noundef %findmirror) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #13
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retlen, align 4, !annotation !290
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp87.not = icmp eq i64 %4, 0
  br i1 %cmp87.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %mh0_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 8
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %findmirror)
  %tobool24.not = icmp eq i32 %findmirror, 0
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv90 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %offs.088 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %call4 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv90, i32 noundef %6, ptr noundef nonnull %retlen, ptr noundef %buf) #13
  %7 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retlen, align 4
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp6.not = icmp eq i32 %8, %10
  br i1 %cmp6.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.end

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %offs.088) #16
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %buf, ptr noundef dereferenceable(6) %id, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %do.end17, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end17:                                         ; preds = %if.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %id, i32 noundef %offs.088) #16
  %11 = ptrtoint ptr %mh0_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mh0_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp20 = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_shift, align 4
  %shr = lshr i32 %offs.088, %14
  br i1 %cmp20, label %if.then22, label %if.end27

if.then22:                                        ; preds = %do.end17
  %15 = ptrtoint ptr %mh0_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %mh0_page, align 4
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  %mh1_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %mh1_page to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %mh1_page, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then22.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize, align 8
  %add = add i32 %18, %offs.088
  %conv = zext i32 %add to i64
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size, align 8
  %cmp = icmp ugt i64 %20, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mh0_page30 = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %mh0_page30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mh0_page30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp31 = icmp eq i32 %22, -1
  br i1 %cmp31, label %do.end36, label %if.end39

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %id) #16
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %page_shift41 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 17
  %23 = ptrtoint ptr %page_shift41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_shift41, align 4
  %shl = shl i32 %22, %24
  %conv42 = zext i32 %shl to i64
  %writesize43 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %25 = ptrtoint ptr %writesize43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writesize43, align 4
  %call44 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv42, i32 noundef %26, ptr noundef nonnull %retlen, ptr noundef %buf) #13
  %27 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retlen, align 4
  %29 = ptrtoint ptr %writesize43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp46.not = icmp eq i32 %28, %30
  br i1 %cmp46.not, label %if.end39.cleanup_crit_edge, label %do.end51

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end39.cleanup_crit_edge, %do.end36, %if.end27, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end27 ], [ 0, %do.end36 ], [ 0, %do.end51 ], [ 1, %if.end39.cleanup_crit_edge ], [ 1, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @doc200x_ident_chip(ptr noundef %mtd, i32 noundef %nr) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %id = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id) #13
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %id, align 1, !annotation !290
  %3 = getelementptr inbounds [2 x i8], ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !290
  call fastcc void @doc200x_readid(ptr noundef %mtd, i32 noundef %nr, ptr noundef nonnull %id)
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 1
  %conv2 = zext i8 %6 to i16
  %shl = shl nuw i16 %conv2, 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %conv4 = zext i8 %8 to i16
  %or = or i16 %shl, %conv4
  %ChipID = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ChipID, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp = icmp eq i8 %10, 32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, ptr @try_dword, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool9.not = icmp eq i32 %nr, 0
  %or.cond = and i1 %tobool9.not, %tobool.not
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then:                                          ; preds = %land.lhs.true
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virtadr, align 4
  call fastcc void @doc200x_readid(ptr noundef %mtd, i32 noundef 0, ptr noundef null)
  %add.ptr = getelementptr i8, ptr %13, i32 6144
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !291
  %trunc = trunc i32 %14 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  call void @__sanitizer_cov_trace_cmp2(i16 %rev, i16 %or)
  %cmp19 = icmp eq i16 %rev, %or
  br i1 %cmp19, label %do.end, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #16
  %supports_32b_reads = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %supports_32b_reads to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %supports_32b_reads, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id) #13
  ret i16 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc200x_readid(ptr noundef %this, i32 noundef %cs, ptr noundef %id) unnamed_addr #8 align 64 {
entry:
  %addr = alloca i8, align 1
  %instrs = alloca [3 x %struct.nand_op_instr], align 4
  %op = alloca %struct.nand_operation, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #13
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %instrs) #13
  %1 = getelementptr inbounds i8, ptr %instrs, i32 32
  %2 = call ptr @memset(ptr %1, i32 255, i32 24)
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 0, i32 1
  %3 = call ptr @memset(ptr %instrs, i32 0, i32 20)
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -112, ptr %ctx, align 4
  %arrayinit.element = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayinit.element, align 4
  %ctx2 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 1
  %6 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctx2, align 4
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %addrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %addrs, align 4
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 2
  %8 = ptrtoint ptr %delay_ns to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50, ptr %delay_ns, align 4
  %arrayinit.element3 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 2
  %9 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayinit.element3, align 4
  %ctx5 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 2, i32 1
  %10 = ptrtoint ptr %ctx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %ctx5, align 4
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 2, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %id, ptr %buf, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 2, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %force_8bit to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %force_8bit, align 4
  %delay_ns6 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 2, i32 2
  %13 = ptrtoint ptr %delay_ns6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %delay_ns6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op) #13
  %14 = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %16 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cs, ptr %op, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %instrs, ptr %14, align 4
  %tobool.not = icmp eq ptr %id, null
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %15, align 4
  %controller = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 32
  %19 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %controller, align 4
  %ops = getelementptr inbounds %struct.nand_controller, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %exec_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exec_op, align 4
  %call = call i32 %24(ptr noundef %this, ptr noundef nonnull %op, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %instrs) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inftl_scan_bbt(ptr noundef %mtd) #0 section ".init.text" align 64 {
entry:
  %parts = alloca [5 x %struct.mtd_partition], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %parts) #13
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntargets.i, align 8
  %chips_per_floor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chips_per_floor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ChipID = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ChipID to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ChipID, align 4
  %8 = and i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %switch = icmp eq i8 %8, 64
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 13
  %9 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bbt_td, align 4
  br i1 %switch, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 34, ptr %10, align 4
  %12 = load i32, ptr @inftl_bbt_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then10.if.end14_crit_edge, label %if.then11

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bbt_td, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or = or i32 %16, 8192
  store i32 %or, ptr %14, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then10.if.end14_crit_edge
  %17 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bbt_td, align 4
  %pages = getelementptr inbounds %struct.nand_bbt_descr, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %pages, align 4
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 14
  %20 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bbt_md, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 280, ptr %10, align 4
  %22 = load i32, ptr @inftl_bbt_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %if.else.if.end23_crit_edge, label %if.then19

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bbt_td, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %or22 = or i32 %26, 8192
  store i32 %or22, ptr %24, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.else.if.end23_crit_edge
  %27 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bbt_td, align 4
  %offs = getelementptr inbounds %struct.nand_bbt_descr, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %offs, align 4
  %30 = load ptr, ptr %bbt_td, align 4
  %len = getelementptr inbounds %struct.nand_bbt_descr, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %len, align 4
  %32 = load ptr, ptr %bbt_td, align 4
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %veroffs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %veroffs, align 4
  %34 = load ptr, ptr %bbt_td, align 4
  %maxblocks = getelementptr inbounds %struct.nand_bbt_descr, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %maxblocks to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %maxblocks, align 4
  %36 = load ptr, ptr %bbt_td, align 4
  %reserved_block_code = getelementptr inbounds %struct.nand_bbt_descr, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %reserved_block_code to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %reserved_block_code, align 4
  %38 = load ptr, ptr %bbt_td, align 4
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.98, ptr %pattern, align 4
  %bbt_md30 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 14
  %40 = ptrtoint ptr %bbt_md30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bbt_md30, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 280, ptr %41, align 4
  %43 = load i32, ptr @inftl_bbt_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool32.not = icmp eq i32 %43, 0
  br i1 %tobool32.not, label %if.end23.if.end37_crit_edge, label %if.then33

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %bbt_md30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bbt_md30, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %or36 = or i32 %47, 8192
  store i32 %or36, ptr %45, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end23.if.end37_crit_edge
  %48 = ptrtoint ptr %bbt_md30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bbt_md30, align 8
  %offs39 = getelementptr inbounds %struct.nand_bbt_descr, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %offs39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %offs39, align 4
  %51 = load ptr, ptr %bbt_md30, align 8
  %len41 = getelementptr inbounds %struct.nand_bbt_descr, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %len41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %len41, align 4
  %53 = load ptr, ptr %bbt_md30, align 8
  %veroffs43 = getelementptr inbounds %struct.nand_bbt_descr, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %veroffs43 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7, ptr %veroffs43, align 4
  %55 = load ptr, ptr %bbt_md30, align 8
  %maxblocks45 = getelementptr inbounds %struct.nand_bbt_descr, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %maxblocks45 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %maxblocks45, align 4
  %57 = load ptr, ptr %bbt_md30, align 8
  %reserved_block_code47 = getelementptr inbounds %struct.nand_bbt_descr, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %reserved_block_code47 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %reserved_block_code47, align 4
  %59 = load ptr, ptr %bbt_md30, align 8
  %pattern49 = getelementptr inbounds %struct.nand_bbt_descr, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %pattern49 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.99, ptr %pattern49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end37, %if.end14
  %call51 = tail call i32 @nand_create_bbt(ptr noundef %mtd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %61 = call ptr @memset(ptr %parts, i32 0, i32 200)
  %call56 = call fastcc i32 @inftl_partscan(ptr noundef %mtd, ptr noundef nonnull %parts) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end54.cleanup_crit_edge, label %if.end59

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %62 = load i32, ptr @no_autopart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool61.not = icmp eq i32 %62, 0
  %spec.select = select i1 %tobool61.not, i32 %call56, i32 0
  %call62 = call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef nonnull %parts, i32 noundef %spec.select) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end54.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call62, %if.end59 ], [ %call51, %if.end50.cleanup_crit_edge ], [ -5, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %parts) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @doc2001plus_enable_hwecc(ptr nocapture noundef readonly %this, i32 noundef %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %virtadr = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virtadr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtadr, align 4
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %3, i32 4166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 10) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i6 = getelementptr i32, ptr %3, i32 4166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 42) #13, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  tail call void @arm_heavy_mb() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inftl_partscan(ptr noundef %mtd, ptr nocapture noundef writeonly %parts) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %conv = trunc i64 %3 to i32
  %4 = load i32, ptr @inftl_bbt_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end8.i_crit_edge, label %if.then

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phys_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 18
  %5 = ptrtoint ptr %phys_erase_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_erase_shift, align 8
  %shl.neg = shl i32 -4, %6
  %sub = add i32 %shl.neg, %conv
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then, %entry.if.end8.i_crit_edge
  %end.0 = phi i32 [ %sub, %if.then ], [ %conv, %entry.if.end8.i_crit_edge ]
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #19
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.end8.i.cleanup_crit_edge, label %if.end5

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i
  %call6 = tail call fastcc i32 @find_media_headers(ptr noundef %mtd, ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.100, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end9:                                          ; preds = %if.end5
  %mh0_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %mh0_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mh0_page, align 4
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 17
  %11 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_shift, align 4
  %shr = lshr i32 4096, %12
  %add = add i32 %shr, %10
  %mh1_page = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %mh1_page to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %mh1_page, align 4
  %NoOfBootImageBlocks = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %NoOfBootImageBlocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %NoOfBootImageBlocks, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %17 = ptrtoint ptr %NoOfBootImageBlocks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %NoOfBootImageBlocks, align 8
  %NoOfBinaryPartitions = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 2
  %18 = ptrtoint ptr %NoOfBinaryPartitions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %NoOfBinaryPartitions, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  %21 = ptrtoint ptr %NoOfBinaryPartitions to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %NoOfBinaryPartitions, align 4
  %NoOfBDTLPartitions = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 3
  %22 = ptrtoint ptr %NoOfBDTLPartitions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %NoOfBDTLPartitions, align 16
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  %25 = ptrtoint ptr %NoOfBDTLPartitions to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %NoOfBDTLPartitions, align 16
  %BlockMultiplierBits = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 4
  %26 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %BlockMultiplierBits, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #13
  %29 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %BlockMultiplierBits, align 4
  %FormatFlags = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 5
  %30 = ptrtoint ptr %FormatFlags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %FormatFlags, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  %33 = ptrtoint ptr %FormatFlags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %FormatFlags, align 8
  %PercentUsed = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 7
  %34 = ptrtoint ptr %PercentUsed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %PercentUsed, align 32
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  %37 = ptrtoint ptr %PercentUsed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %PercentUsed, align 32
  %OsakVersion = getelementptr inbounds %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 6
  %38 = ptrtoint ptr %OsakVersion to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %OsakVersion, align 4
  %40 = and i8 %39, 15
  %and = zext i8 %40 to i32
  %arrayidx17 = getelementptr i8, ptr %OsakVersion, i32 1
  %41 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx17, align 1
  %43 = and i8 %42, 15
  %and19 = zext i8 %43 to i32
  %arrayidx21 = getelementptr i8, ptr %OsakVersion, i32 2
  %44 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx21, align 2
  %46 = and i8 %45, 15
  %and23 = zext i8 %46 to i32
  %arrayidx25 = getelementptr i8, ptr %OsakVersion, i32 3
  %47 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx25, align 1
  %49 = and i8 %48, 15
  %and27 = zext i8 %49 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull %call9.i, i32 noundef %16, i32 noundef %20, i32 noundef %24, i32 noundef %28, i32 noundef %32, i32 noundef %and, i32 noundef %and19, i32 noundef %and23, i32 noundef %and27, i32 noundef %36) #16
  %phys_erase_shift30 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 18
  %50 = ptrtoint ptr %phys_erase_shift30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phys_erase_shift30, align 8
  %52 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %BlockMultiplierBits, align 4
  %add32 = add i32 %53, %51
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %size, align 8
  %sh_prom = zext i32 %add32 to i64
  %shr34 = lshr i64 %55, %sh_prom
  %conv35 = trunc i64 %shr34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %conv35)
  %cmp = icmp sgt i32 %conv35, 32768
  br i1 %cmp, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %53) #16
  br label %out

if.end44:                                         ; preds = %if.end9
  %56 = load i32, ptr @inftl_bbt_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool48.not = icmp eq i32 %56, 0
  br i1 %tobool48.not, label %if.end44.if.end57_crit_edge, label %land.lhs.true

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end44
  %chips_per_floor = getelementptr inbounds %struct.doc_priv, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %chips_per_floor to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chips_per_floor, align 4
  %chip_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 19
  %59 = ptrtoint ptr %chip_shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chip_shift, align 4
  %sub46 = sub i32 %60, %51
  %shl47 = shl i32 %58, %sub46
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %61 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl47, i32 %62)
  %cmp49 = icmp ugt i32 %shl47, %62
  br i1 %cmp49, label %do.end54, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

do.end54:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #16
  br label %out

if.end57:                                         ; preds = %land.lhs.true.if.end57_crit_edge, %if.end44.if.end57_crit_edge
  %offset = getelementptr inbounds %struct.mtd_partition, ptr %parts, i32 0, i32 3
  %erasesize83 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %size87 = getelementptr inbounds %struct.mtd_partition, ptr %parts, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end88.for.body_crit_edge, %if.end57
  %i.0248 = phi i32 [ 0, %if.end57 ], [ %inc122, %if.end88.for.body_crit_edge ]
  %lastvunit.0247 = phi i32 [ 0, %if.end57 ], [ %109, %if.end88.for.body_crit_edge ]
  %numparts.0246 = phi i32 [ 0, %if.end57 ], [ %inc, %if.end88.for.body_crit_edge ]
  %arrayidx60 = getelementptr %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 8, i32 %i.0248
  %63 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx60, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %66 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx60, align 4
  %firstUnit = getelementptr %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 8, i32 %i.0248, i32 1
  %67 = ptrtoint ptr %firstUnit to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %firstUnit, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #13
  %70 = ptrtoint ptr %firstUnit to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %firstUnit, align 4
  %lastUnit = getelementptr %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 8, i32 %i.0248, i32 2
  %71 = ptrtoint ptr %lastUnit to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lastUnit, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #13
  %74 = ptrtoint ptr %lastUnit to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lastUnit, align 4
  %flags = getelementptr %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 8, i32 %i.0248, i32 3
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #13
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %flags, align 4
  %spareUnits = getelementptr %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 8, i32 %i.0248, i32 4
  %79 = ptrtoint ptr %spareUnits to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %spareUnits, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #13
  %82 = ptrtoint ptr %spareUnits to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %spareUnits, align 4
  %Reserved0 = getelementptr %struct.INFTLMediaHeader, ptr %call9.i, i32 0, i32 8, i32 %i.0248, i32 5
  %83 = ptrtoint ptr %Reserved0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %Reserved0, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #13
  %86 = ptrtoint ptr %Reserved0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %Reserved0, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %i.0248, i32 noundef %65, i32 noundef %69, i32 noundef %73, i32 noundef %77, i32 noundef %81) #16
  %87 = load i32, ptr @show_firmware_partition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp71 = icmp eq i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0248)
  %cmp74 = icmp eq i32 %i.0248, 0
  %or.cond = and i1 %cmp71, %cmp74
  br i1 %or.cond, label %land.lhs.true76, label %for.body.if.end88_crit_edge

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true76:                                  ; preds = %for.body
  %88 = ptrtoint ptr %firstUnit to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %firstUnit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp78.not = icmp eq i32 %89, 0
  br i1 %cmp78.not, label %land.lhs.true76.if.end88_crit_edge, label %if.then80

land.lhs.true76.if.end88_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then80:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %parts to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.112, ptr %parts, align 8
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %offset, align 8
  %92 = ptrtoint ptr %erasesize83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %erasesize83, align 8
  %94 = ptrtoint ptr %firstUnit to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %firstUnit, align 4
  %mul = mul i32 %95, %93
  %conv85 = zext i32 %mul to i64
  %96 = ptrtoint ptr %size87 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv85, ptr %size87, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %land.lhs.true76.if.end88_crit_edge, %for.body.if.end88_crit_edge
  %numparts.1 = phi i32 [ 1, %if.then80 ], [ %numparts.0246, %land.lhs.true76.if.end88_crit_edge ], [ %numparts.0246, %for.body.if.end88_crit_edge ]
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 4
  %and90 = and i32 %98, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %spec.select = select i1 %tobool91.not, ptr @.str.78, ptr @.str.113
  %99 = getelementptr %struct.mtd_partition, ptr %parts, i32 %numparts.1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %spec.select, ptr %99, align 8
  %101 = ptrtoint ptr %firstUnit to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %firstUnit, align 4
  %shl99 = shl i32 %102, %add32
  %conv100 = zext i32 %shl99 to i64
  %offset102 = getelementptr %struct.mtd_partition, ptr %parts, i32 %numparts.1, i32 3
  %103 = ptrtoint ptr %offset102 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv100, ptr %offset102, align 8
  %104 = ptrtoint ptr %lastUnit to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lastUnit, align 4
  %add104 = add i32 %105, 1
  %106 = load i32, ptr %firstUnit, align 4
  %sub106 = sub i32 %add104, %106
  %shl107 = shl i32 %sub106, %add32
  %conv108 = zext i32 %shl107 to i64
  %size110 = getelementptr %struct.mtd_partition, ptr %parts, i32 %numparts.1, i32 2
  %107 = ptrtoint ptr %size110 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv108, ptr %size110, align 8
  %inc = add i32 %numparts.1, 1
  %108 = load i32, ptr %lastUnit, align 4
  %109 = tail call i32 @llvm.umax.i32(i32 %108, i32 %lastvunit.0247)
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool119.not = icmp slt i32 %111, 0
  %inc122 = add nuw nsw i32 %i.0248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc122)
  %exitcond.not = icmp eq i32 %inc122, 4
  %or.cond249 = select i1 %tobool119.not, i1 true, i1 %exitcond.not
  br i1 %or.cond249, label %for.end, label %if.end88.for.body_crit_edge

if.end88.for.body_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end88
  %inc123 = add i32 %109, 1
  %shl124 = shl i32 %inc123, %add32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl124, i32 %end.0)
  %cmp125 = icmp slt i32 %shl124, %end.0
  br i1 %cmp125, label %if.then127, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then127:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx128 = getelementptr %struct.mtd_partition, ptr %parts, i32 %inc
  %112 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.79, ptr %arrayidx128, align 8
  %conv131 = sext i32 %shl124 to i64
  %offset133 = getelementptr %struct.mtd_partition, ptr %parts, i32 %inc, i32 3
  %113 = ptrtoint ptr %offset133 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv131, ptr %offset133, align 8
  %conv134 = sext i32 %end.0 to i64
  %sub137 = sub nsw i64 %conv134, %conv131
  %size139 = getelementptr %struct.mtd_partition, ptr %parts, i32 %inc, i32 2
  %114 = ptrtoint ptr %size139 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %sub137, ptr %size139, align 8
  %inc140 = add i32 %numparts.1, 2
  br label %out

out:                                              ; preds = %if.then127, %for.end.out_crit_edge, %do.end54, %do.end40, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end40 ], [ 0, %do.end54 ], [ 0, %if.end5.out_crit_edge ], [ %inc140, %if.then127 ], [ %inc, %for.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !238, !239, !240, !241, !243, !245, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !268, !270, !272}
!llvm.module.flags = !{!274, !275, !276, !277, !278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype198, !1, !"__UNIQUE_ID_debugtype198", i1 false, i1 false}
!3 = !{ptr @__param_try_dword, !4, !"__param_try_dword", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 93, i32 1}
!5 = !{ptr @__UNIQUE_ID_try_dwordtype199, !4, !"__UNIQUE_ID_try_dwordtype199", i1 false, i1 false}
!6 = !{ptr @__param_no_ecc_failures, !7, !"__param_no_ecc_failures", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 96, i32 1}
!8 = !{ptr @__UNIQUE_ID_no_ecc_failurestype200, !7, !"__UNIQUE_ID_no_ecc_failurestype200", i1 false, i1 false}
!9 = !{ptr @__param_no_autopart, !10, !"__param_no_autopart", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 99, i32 1}
!11 = !{ptr @__UNIQUE_ID_no_autoparttype201, !10, !"__UNIQUE_ID_no_autoparttype201", i1 false, i1 false}
!12 = !{ptr @__param_show_firmware_partition, !13, !"__param_show_firmware_partition", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 102, i32 1}
!14 = !{ptr @__UNIQUE_ID_show_firmware_partitiontype202, !13, !"__UNIQUE_ID_show_firmware_partitiontype202", i1 false, i1 false}
!15 = !{ptr @__param_inftl_bbt_write, !16, !"__param_inftl_bbt_write", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 109, i32 1}
!17 = !{ptr @__UNIQUE_ID_inftl_bbt_writetype203, !16, !"__UNIQUE_ID_inftl_bbt_writetype203", i1 false, i1 false}
!18 = !{ptr @__param_doc_config_location, !19, !"__param_doc_config_location", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 112, i32 1}
!20 = !{ptr @__UNIQUE_ID_doc_config_locationtype204, !19, !"__UNIQUE_ID_doc_config_locationtype204", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_doc_config_location205, !22, !"__UNIQUE_ID_doc_config_location205", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 113, i32 1}
!23 = !{ptr @__initcall__kmod_diskonchip__216_1574_init_nanddoc6, !24, !"__initcall__kmod_diskonchip__216_1574_init_nanddoc6", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1574, i32 1}
!25 = !{ptr @__exitcall_cleanup_nanddoc, !26, !"__exitcall_cleanup_nanddoc", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1575, i32 1}
!27 = !{ptr @__UNIQUE_ID_file217, !28, !"__UNIQUE_ID_file217", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1577, i32 1}
!29 = !{ptr @__UNIQUE_ID_license218, !28, !"__UNIQUE_ID_license218", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_author219, !31, !"__UNIQUE_ID_author219", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1578, i32 1}
!32 = !{ptr @__UNIQUE_ID_description220, !33, !"__UNIQUE_ID_description220", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1579, i32 1}
!34 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @debug, !36, !"debug", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 89, i32 12}
!37 = !{ptr @__param_str_try_dword, !4, !"__param_str_try_dword", i1 false, i1 false}
!38 = !{ptr @try_dword, !39, !"try_dword", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 92, i32 12}
!40 = !{ptr @__param_str_no_ecc_failures, !7, !"__param_str_no_ecc_failures", i1 false, i1 false}
!41 = !{ptr @no_ecc_failures, !42, !"no_ecc_failures", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 95, i32 12}
!43 = !{ptr @__param_str_no_autopart, !10, !"__param_str_no_autopart", i1 false, i1 false}
!44 = !{ptr @no_autopart, !45, !"no_autopart", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 98, i32 12}
!46 = !{ptr @__param_str_show_firmware_partition, !13, !"__param_str_show_firmware_partition", i1 false, i1 false}
!47 = !{ptr @show_firmware_partition, !48, !"show_firmware_partition", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 101, i32 12}
!49 = !{ptr @__param_str_inftl_bbt_write, !16, !"__param_str_inftl_bbt_write", i1 false, i1 false}
!50 = !{ptr @inftl_bbt_write, !51, !"inftl_bbt_write", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 105, i32 12}
!52 = !{ptr @__param_str_doc_config_location, !19, !"__param_str_doc_config_location", i1 false, i1 false}
!53 = !{ptr @doc_config_location, !54, !"doc_config_location", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 111, i32 22}
!55 = !{ptr @.str, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1535, i32 3}
!57 = !{ptr @doclist, !58, !"doclist", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 58, i32 25}
!59 = !{ptr @.str.1, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1549, i32 3}
!61 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @init_nanddoc._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @init_nanddoc._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.4, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1562, i32 3}
!66 = !{ptr @init_nanddoc._entry.3, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @init_nanddoc._entry_ptr.5, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.6, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1311, i32 7}
!70 = !{ptr @.str.7, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1315, i32 3}
!72 = !{ptr @.str.8, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @doc_probe._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @doc_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1375, i32 4}
!77 = !{ptr @doc_probe._entry.9, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @doc_probe._entry_ptr.11, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.13, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1392, i32 3}
!81 = !{ptr @doc_probe._entry.12, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @doc_probe._entry_ptr.14, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1426, i32 4}
!85 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @doc_probe.__UNIQUE_ID_ddebug215, !84, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1432, i32 2}
!89 = !{ptr @doc_probe._entry.17, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @doc_probe._entry_ptr.19, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1454, i32 3}
!93 = !{ptr @doc_probe._entry.20, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @doc_probe._entry_ptr.22, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @nand_controller_init.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!97 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @doc2001plus_ops, !99, !"doc2001plus_ops", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1294, i32 41}
!100 = distinct !{null, !101, !"empty_write_ecc", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 81, i32 15}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 794, i32 4}
!104 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @doc200x_correct_data._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @doc200x_correct_data._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 802, i32 3}
!109 = !{ptr @doc200x_correct_data._entry.26, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @doc200x_correct_data._entry_ptr.28, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 477, i32 3}
!113 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @doc2001plus_readbuf._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @doc2001plus_readbuf._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 486, i32 4}
!118 = !{ptr @doc2001plus_readbuf._entry.31, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @doc2001plus_readbuf._entry_ptr.33, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @doc2001plus_readbuf._entry.34, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 493, i32 4}
!122 = !{ptr @doc2001plus_readbuf._entry_ptr.35, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @doc2001plus_readbuf._entry.36, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 498, i32 3}
!125 = !{ptr @doc2001plus_readbuf._entry_ptr.37, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 500, i32 3}
!128 = !{ptr @doc2001plus_readbuf._entry.38, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @doc2001plus_readbuf._entry_ptr.40, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 460, i32 3}
!132 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @doc2001plus_writebuf._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @doc2001plus_writebuf._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @doc2001plus_writebuf._entry.43, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 464, i32 4}
!137 = !{ptr @doc2001plus_writebuf._entry_ptr.44, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @doc2001plus_writebuf._entry.45, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 467, i32 3}
!140 = !{ptr @doc2001plus_writebuf._entry_ptr.46, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 288, i32 3}
!143 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @DoC_WaitReady._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @DoC_WaitReady._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 242, i32 3}
!148 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @_DoC_WaitReady._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @_DoC_WaitReady._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 247, i32 5}
!153 = !{ptr @_DoC_WaitReady._entry.51, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @_DoC_WaitReady._entry_ptr.53, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @_DoC_WaitReady._entry.54, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 256, i32 5}
!157 = !{ptr @_DoC_WaitReady._entry_ptr.55, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @doc200x_ops, !159, !"doc200x_ops", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1289, i32 41}
!160 = !{ptr @.str.56, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 298, i32 3}
!162 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @doc2000_write_byte._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @doc2000_write_byte._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 328, i32 3}
!167 = !{ptr @doc2000_readbuf._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @doc2000_readbuf._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 310, i32 3}
!171 = !{ptr @doc2000_writebuf._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @doc2000_writebuf._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @doc2000_writebuf._entry.60, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 314, i32 4}
!175 = !{ptr @doc2000_writebuf._entry_ptr.61, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @doc2000_writebuf._entry.62, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 317, i32 3}
!178 = !{ptr @doc2000_writebuf._entry_ptr.63, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @doc200x_ooblayout_ops, !180, !"doc200x_ooblayout_ops", i1 false, i1 false}
!180 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 851, i32 39}
!181 = !{ptr @.str.64, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1228, i32 14}
!183 = !{ptr @.str.65, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 924, i32 50}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 932, i32 2}
!187 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @nftl_partscan._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @nftl_partscan._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.69, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 956, i32 3}
!192 = !{ptr @nftl_partscan._entry.68, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @nftl_partscan._entry_ptr.70, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.72, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 968, i32 3}
!196 = !{ptr @nftl_partscan._entry.71, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @nftl_partscan._entry_ptr.73, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 974, i32 3}
!200 = !{ptr @nftl_partscan._entry.74, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @nftl_partscan._entry_ptr.76, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.77, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 984, i32 19}
!204 = !{ptr @.str.78, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 990, i32 25}
!206 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 998, i32 26}
!208 = !{ptr @.str.80, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 875, i32 4}
!210 = !{ptr @.str.81, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @find_media_headers._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @find_media_headers._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 879, i32 3}
!215 = !{ptr @find_media_headers._entry.82, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @find_media_headers._entry_ptr.84, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 890, i32 3}
!219 = !{ptr @find_media_headers._entry.85, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @find_media_headers._entry_ptr.87, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.89, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 899, i32 3}
!223 = !{ptr @find_media_headers._entry.88, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @find_media_headers._entry_ptr.90, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.91, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 412, i32 2}
!227 = !{ptr @.str.92, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @doc2000_count_chips.__UNIQUE_ID_ddebug206, !226, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!229 = !{ptr @.str.93, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 385, i32 4}
!231 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @doc200x_ident_chip._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @doc200x_ident_chip._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1267, i32 14}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1173, i32 3}
!238 = !{ptr @.str.97, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @inftl_scan_bbt._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @inftl_scan_bbt._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.98, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1192, i32 27}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1202, i32 27}
!245 = !{ptr @.str.100, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1033, i32 36}
!247 = !{ptr @.str.101, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1045, i32 2}
!249 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @inftl_partscan._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @inftl_partscan._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1067, i32 3}
!254 = !{ptr @inftl_partscan._entry.103, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @inftl_partscan._entry_ptr.105, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.107, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1073, i32 3}
!258 = !{ptr @inftl_partscan._entry.106, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @inftl_partscan._entry_ptr.108, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1087, i32 3}
!262 = !{ptr @inftl_partscan._entry.109, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @inftl_partscan._entry_ptr.111, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1099, i32 20}
!266 = !{ptr @.str.113, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1106, i32 27}
!268 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1246, i32 15}
!270 = !{ptr @.str.115, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 1252, i32 15}
!272 = distinct !{null, !273, !"doc_locations", i1 false, i1 false}
!273 = !{!"../drivers/mtd/nand/raw/diskonchip.c", i32 40, i32 22}
!274 = !{i32 1, !"wchar_size", i32 2}
!275 = !{i32 1, !"min_enum_size", i32 4}
!276 = !{i32 8, !"branch-target-enforcement", i32 0}
!277 = !{i32 8, !"sign-return-address", i32 0}
!278 = !{i32 8, !"sign-return-address-all", i32 0}
!279 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!280 = !{i32 7, !"uwtable", i32 1}
!281 = !{i32 7, !"frame-pointer", i32 2}
!282 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!283 = !{!"branch_weights", i32 2000, i32 1}
!284 = !{i64 4636718}
!285 = !{i64 4636300}
!286 = !{i64 2153179068}
!287 = !{i64 2148734061, i64 2148734066, i64 2148734079, i64 2148734123, i64 2148734157, i64 2148734178}
!288 = !{i8 0, i8 2}
!289 = !{i64 2153236697}
!290 = !{!"auto-init"}
!291 = !{i64 2153238313}
