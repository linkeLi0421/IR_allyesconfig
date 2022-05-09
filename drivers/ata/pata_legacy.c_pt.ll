; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_legacy.c_pt.bc'
source_filename = "../drivers/ata/pata_legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.legacy_probe = type { ptr, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }

@__param_str_all = internal constant [16 x i8] c"pata_legacy.all\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@all = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_all = internal constant %struct.kernel_param { ptr @__param_str_all, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @all } }, section "__param", align 4
@__UNIQUE_ID_alltype289 = internal constant [29 x i8] c"pata_legacy.parmtype=all:int\00", section ".modinfo", align 1
@__UNIQUE_ID_all290 = internal constant [80 x i8] c"pata_legacy.parm=all:Set to probe unclaimed pri/sec ISA port ranges even if PCI\00", section ".modinfo", align 1
@__param_str_probe_all = internal constant [22 x i8] c"pata_legacy.probe_all\00", align 1
@probe_all = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_probe_all = internal constant %struct.kernel_param { ptr @__param_str_probe_all, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @probe_all } }, section "__param", align 4
@__UNIQUE_ID_probe_alltype291 = internal constant [35 x i8] c"pata_legacy.parmtype=probe_all:int\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_all292 = internal constant [78 x i8] c"pata_legacy.parm=probe_all:Set to probe tertiary+ ISA port ranges even if PCI\00", section ".modinfo", align 1
@__param_str_probe_mask = internal constant [23 x i8] c"pata_legacy.probe_mask\00", align 1
@probe_mask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_probe_mask = internal constant %struct.kernel_param { ptr @__param_str_probe_mask, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @probe_mask } }, section "__param", align 4
@__UNIQUE_ID_probe_masktype293 = internal constant [36 x i8] c"pata_legacy.parmtype=probe_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_mask294 = internal constant [65 x i8] c"pata_legacy.parm=probe_mask:Probe mask for legacy ISA PATA ports\00", section ".modinfo", align 1
@__param_str_autospeed = internal constant [22 x i8] c"pata_legacy.autospeed\00", align 1
@autospeed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_autospeed = internal constant %struct.kernel_param { ptr @__param_str_autospeed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @autospeed } }, section "__param", align 4
@__UNIQUE_ID_autospeedtype295 = internal constant [35 x i8] c"pata_legacy.parmtype=autospeed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_autospeed296 = internal constant [66 x i8] c"pata_legacy.parm=autospeed:Chip present that snoops speed changes\00", section ".modinfo", align 1
@__param_str_pio_mask = internal constant [21 x i8] c"pata_legacy.pio_mask\00", align 1
@pio_mask = internal global { i32, [28 x i8] } { i32 31, [28 x i8] zeroinitializer }, align 32
@__param_pio_mask = internal constant %struct.kernel_param { ptr @__param_str_pio_mask, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @pio_mask } }, section "__param", align 4
@__UNIQUE_ID_pio_masktype297 = internal constant [34 x i8] c"pata_legacy.parmtype=pio_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pio_mask298 = internal constant [58 x i8] c"pata_legacy.parm=pio_mask:PIO range for autospeed devices\00", section ".modinfo", align 1
@__param_str_iordy_mask = internal constant [23 x i8] c"pata_legacy.iordy_mask\00", align 1
@iordy_mask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_iordy_mask = internal constant %struct.kernel_param { ptr @__param_str_iordy_mask, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @iordy_mask } }, section "__param", align 4
@__UNIQUE_ID_iordy_masktype299 = internal constant [36 x i8] c"pata_legacy.parmtype=iordy_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_iordy_mask300 = internal constant [51 x i8] c"pata_legacy.parm=iordy_mask:Use IORDY if available\00", section ".modinfo", align 1
@__param_str_ht6560a = internal constant [20 x i8] c"pata_legacy.ht6560a\00", align 1
@ht6560a = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ht6560a = internal constant %struct.kernel_param { ptr @__param_str_ht6560a, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ht6560a } }, section "__param", align 4
@__UNIQUE_ID_ht6560atype301 = internal constant [33 x i8] c"pata_legacy.parmtype=ht6560a:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ht6560a302 = internal constant [65 x i8] c"pata_legacy.parm=ht6560a:HT 6560A on primary 1, second 2, both 3\00", section ".modinfo", align 1
@__param_str_ht6560b = internal constant [20 x i8] c"pata_legacy.ht6560b\00", align 1
@ht6560b = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ht6560b = internal constant %struct.kernel_param { ptr @__param_str_ht6560b, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ht6560b } }, section "__param", align 4
@__UNIQUE_ID_ht6560btype303 = internal constant [33 x i8] c"pata_legacy.parmtype=ht6560b:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ht6560b304 = internal constant [68 x i8] c"pata_legacy.parm=ht6560b:HT 6560B on primary 1, secondary 2, both 3\00", section ".modinfo", align 1
@__param_str_opti82c611a = internal constant [24 x i8] c"pata_legacy.opti82c611a\00", align 1
@opti82c611a = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_opti82c611a = internal constant %struct.kernel_param { ptr @__param_str_opti82c611a, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @opti82c611a } }, section "__param", align 4
@__UNIQUE_ID_opti82c611atype305 = internal constant [37 x i8] c"pata_legacy.parmtype=opti82c611a:int\00", section ".modinfo", align 1
@__UNIQUE_ID_opti82c611a306 = internal constant [76 x i8] c"pata_legacy.parm=opti82c611a:Opti 82c611A on primary 1, secondary 2, both 3\00", section ".modinfo", align 1
@__param_str_opti82c46x = internal constant [23 x i8] c"pata_legacy.opti82c46x\00", align 1
@opti82c46x = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_opti82c46x = internal constant %struct.kernel_param { ptr @__param_str_opti82c46x, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @opti82c46x } }, section "__param", align 4
@__UNIQUE_ID_opti82c46xtype307 = internal constant [36 x i8] c"pata_legacy.parmtype=opti82c46x:int\00", section ".modinfo", align 1
@__UNIQUE_ID_opti82c46x308 = internal constant [76 x i8] c"pata_legacy.parm=opti82c46x:Opti 82c465MV on primary 1, secondary 2, both 3\00", section ".modinfo", align 1
@__param_str_qdi = internal constant [16 x i8] c"pata_legacy.qdi\00", align 1
@qdi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qdi = internal constant %struct.kernel_param { ptr @__param_str_qdi, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @qdi } }, section "__param", align 4
@__UNIQUE_ID_qditype309 = internal constant [29 x i8] c"pata_legacy.parmtype=qdi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_qdi310 = internal constant [50 x i8] c"pata_legacy.parm=qdi:Set to probe QDI controllers\00", section ".modinfo", align 1
@__param_str_winbond = internal constant [20 x i8] c"pata_legacy.winbond\00", align 1
@winbond = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_winbond = internal constant %struct.kernel_param { ptr @__param_str_winbond, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @winbond } }, section "__param", align 4
@__UNIQUE_ID_winbondtype311 = internal constant [33 x i8] c"pata_legacy.parmtype=winbond:int\00", section ".modinfo", align 1
@__UNIQUE_ID_winbond312 = internal constant [89 x i8] c"pata_legacy.parm=winbond:Set to probe Winbond controllers, give I/O port if non standard\00", section ".modinfo", align 1
@__UNIQUE_ID_author381 = internal constant [28 x i8] c"pata_legacy.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description382 = internal constant [56 x i8] c"pata_legacy.description=low-level driver for legacy ATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file383 = internal constant [41 x i8] c"pata_legacy.file=drivers/ata/pata_legacy\00", section ".modinfo", align 1
@__UNIQUE_ID_license384 = internal constant [24 x i8] c"pata_legacy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version385 = internal constant [26 x i8] c"pata_legacy.version=0.6.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_legacy\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.6.5\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias386 = internal constant [27 x i8] c"pata_legacy.alias=pata_qdi\00", section ".modinfo", align 1
@__UNIQUE_ID_alias387 = internal constant [31 x i8] c"pata_legacy.alias=pata_winbond\00", section ".modinfo", align 1
@__initcall__kmod_pata_legacy__388_1292_legacy_init6 = internal global ptr @legacy_init, section ".initcall6.init", align 4
@__exitcall_legacy_exit = internal global ptr @legacy_exit, section ".exitcall.exit", align 4
@probe_list = internal global { [6 x %struct.legacy_probe], [48 x i8] } zeroinitializer, align 32
@legacy_probe_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pata_legacy: Too many interfaces.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"legacy_probe_add\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_legacy.c\00", [38 x i8] zeroinitializer }, align 32
@legacy_probe_add._entry_ptr = internal global ptr @legacy_probe_add._entry, section ".printk_index", align 4
@probe_opti_vlb.optis = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3/463MV\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5MV\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5MVA\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5MVB\00", [27 x i8] zeroinitializer }, align 32
@probe_opti_vlb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pata_legacy: Opti 82C46%s chipset support.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"probe_opti_vlb\00", [17 x i8] zeroinitializer }, align 32
@probe_opti_vlb._entry_ptr = internal global ptr @probe_opti_vlb._entry, section ".printk_index", align 4
@probe_qdi_vlb.qd_port = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 176], [24 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_qdi\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qdi65_identify_port.ide_port = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 368, i32 496], [24 x i8] zeroinitializer }, align 32
@probe_chip_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016PDC20230-C/20630 VLB ATA controller detected.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"probe_chip_type\00", [16 x i8] zeroinitializer }, align 32
@probe_chip_type._entry_ptr = internal global ptr @probe_chip_type._entry, section ".printk_index", align 4
@probe_chip_type._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016PDC20230-B VLB ATA controller detected.\0A\00", [53 x i8] zeroinitializer }, align 32
@probe_chip_type._entry_ptr.17 = internal global ptr @probe_chip_type._entry.15, section ".printk_index", align 4
@winbond_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"winbond_lock\00", [19 x i8] zeroinitializer }, align 32
@legacy_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ata%u.%02u: configured for PIO\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"legacy_set_mode\00", [16 x i8] zeroinitializer }, align 32
@legacy_set_mode._entry_ptr = internal global ptr @legacy_set_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 368, i64 496]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 4216, i64 32902]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 368, i64 496]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 160, i64 192]
@___asan_gen_.38 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 64, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"probe_all\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 69, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"probe_mask\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 74, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"autospeed\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 78, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"pio_mask\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 82, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"iordy_mask\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 86, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"ht6560a\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 90, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"ht6560b\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 94, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"opti82c611a\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 98, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"opti82c46x\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 103, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [4 x i8] c"qdi\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 111, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [8 x i8] c"winbond\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 119, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1288, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"probe_list\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 173, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 214, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"optis\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1092, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1093, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1093, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1094, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1094, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1100, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [8 x i8] c"qd_port\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1155, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1167, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"ide_port\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1122, i32 29 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 931, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 942, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"winbond_lock\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 790, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [29 x i8] c"../drivers/ata/pata_legacy.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 244, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias386, ptr @__UNIQUE_ID_alias387, ptr @__UNIQUE_ID_all290, ptr @__UNIQUE_ID_alltype289, ptr @__UNIQUE_ID_author381, ptr @__UNIQUE_ID_autospeed296, ptr @__UNIQUE_ID_autospeedtype295, ptr @__UNIQUE_ID_description382, ptr @__UNIQUE_ID_file383, ptr @__UNIQUE_ID_ht6560a302, ptr @__UNIQUE_ID_ht6560atype301, ptr @__UNIQUE_ID_ht6560b304, ptr @__UNIQUE_ID_ht6560btype303, ptr @__UNIQUE_ID_iordy_mask300, ptr @__UNIQUE_ID_iordy_masktype299, ptr @__UNIQUE_ID_license384, ptr @__UNIQUE_ID_opti82c46x308, ptr @__UNIQUE_ID_opti82c46xtype307, ptr @__UNIQUE_ID_opti82c611a306, ptr @__UNIQUE_ID_opti82c611atype305, ptr @__UNIQUE_ID_pio_mask298, ptr @__UNIQUE_ID_pio_masktype297, ptr @__UNIQUE_ID_probe_all292, ptr @__UNIQUE_ID_probe_alltype291, ptr @__UNIQUE_ID_probe_mask294, ptr @__UNIQUE_ID_probe_masktype293, ptr @__UNIQUE_ID_qdi310, ptr @__UNIQUE_ID_qditype309, ptr @__UNIQUE_ID_version385, ptr @__UNIQUE_ID_winbond312, ptr @__UNIQUE_ID_winbondtype311, ptr @__exitcall_legacy_exit, ptr @__initcall__kmod_pata_legacy__388_1292_legacy_init6, ptr @__modver_attr, ptr @__param_all, ptr @__param_autospeed, ptr @__param_ht6560a, ptr @__param_ht6560b, ptr @__param_iordy_mask, ptr @__param_opti82c46x, ptr @__param_opti82c611a, ptr @__param_pio_mask, ptr @__param_probe_all, ptr @__param_probe_mask, ptr @__param_qdi, ptr @__param_winbond, ptr @legacy_exit, ptr @legacy_probe_add._entry, ptr @legacy_probe_add._entry_ptr, ptr @legacy_set_mode._entry, ptr @legacy_set_mode._entry_ptr, ptr @probe_chip_type._entry, ptr @probe_chip_type._entry.15, ptr @probe_chip_type._entry_ptr, ptr @probe_chip_type._entry_ptr.17, ptr @probe_opti_vlb._entry, ptr @probe_opti_vlb._entry_ptr, ptr @all, ptr @probe_all, ptr @probe_mask, ptr @autospeed, ptr @pio_mask, ptr @iordy_mask, ptr @ht6560a, ptr @ht6560b, ptr @opti82c611a, ptr @opti82c46x, ptr @qdi, ptr @winbond, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @probe_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @probe_opti_vlb.optis, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @probe_qdi_vlb.qd_port, ptr @.str.12, ptr @qdi65_identify_port.ide_port, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @winbond_lock, ptr @.str.18, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_all to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autospeed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iordy_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht6560a to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht6560b to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opti82c611a to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opti82c46x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qdi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winbond to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_list to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_probe_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_opti_vlb.optis to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_opti_vlb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_qdi_vlb.qd_port to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qdi65_identify_port.ide_port to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_chip_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_chip_type._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winbond_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @legacy_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @legacy_init() #3 section ".init.text" align 64 {
entry:
  %primary = alloca i32, align 4
  %secondary = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %primary) #6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %primary, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secondary) #6
  %1 = ptrtoint ptr %secondary to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %secondary, align 4
  %call109 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #6
  %cmp.not110 = icmp eq ptr %call109, null
  br i1 %cmp.not110, label %entry.while.end_crit_edge, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  br label %for.cond.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %call111 = phi ptr [ %call, %for.end.for.cond.preheader_crit_edge ], [ %call109, %entry.for.cond.preheader_crit_edge ]
  %2 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %2)
  %secondary.promoted = load i32, ptr %secondary, align 4
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %primary.promoted = load i32, ptr %primary, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %r.0108 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = phi i32 [ %secondary.promoted, %for.cond.preheader ], [ %10, %for.inc.for.body_crit_edge ]
  %5 = phi i32 [ %primary.promoted, %for.cond.preheader ], [ %9, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pci_dev, ptr %call111, i32 0, i32 47, i32 %r.0108
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %for.body.for.inc_crit_edge [
    i32 496, label %if.end.thread
    i32 368, label %if.then7
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.thread:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end.thread, %for.body.for.inc_crit_edge
  %9 = phi i32 [ %5, %for.body.for.inc_crit_edge ], [ 1, %if.end.thread ], [ %5, %if.then7 ]
  %10 = phi i32 [ %4, %for.body.for.inc_crit_edge ], [ %4, %if.end.thread ], [ 1, %if.then7 ]
  %inc = add nuw nsw i32 %r.0108, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %11 = ptrtoint ptr %secondary to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %secondary, align 4
  %12 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %primary, align 4
  call fastcc void @legacy_check_special_cases(ptr noundef nonnull %call111, ptr noundef nonnull %primary, ptr noundef nonnull %secondary) #9
  %call = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %call111) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.end.while.end_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  %13 = load i32, ptr @winbond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %if.then10, label %while.end.if.end11_crit_edge

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  store i32 304, ptr @winbond, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %while.end.if.end11_crit_edge
  %14 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %primary, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.end11.if.then13_crit_edge, label %lor.lhs.false

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end11
  %16 = load i32, ptr @all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  %17 = load i32, ptr @probe_mask, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then13.if.end15_crit_edge, label %if.end13.i

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end13.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  store i32 496, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  store i32 14, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), align 4
  store i32 -1, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13.i, %if.then13.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %18 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %secondary, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16 = icmp eq i32 %19, 0
  br i1 %cmp16, label %if.end15.if.then19_crit_edge, label %lor.lhs.false17

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false17:                                  ; preds = %if.end15
  %20 = load i32, ptr @all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %lor.lhs.false17.if.end21_crit_edge, label %lor.lhs.false17.if.then19_crit_edge

lor.lhs.false17.if.then19_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false17.if.end21_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %lor.lhs.false17.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  %21 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %21)
  %cmp5.i82 = icmp eq i32 %21, 368
  %not.cmp5.i82 = xor i1 %cmp5.i82, true
  %spec.select103 = zext i1 %not.cmp5.i82 to i32
  %22 = load i32, ptr @probe_mask, align 4
  %shl.i = shl nuw nsw i32 1, %spec.select103
  %and.i83 = and i32 %shl.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %if.then19.if.end21_crit_edge, label %if.end13.i85

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end13.i85:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %port14.i = select i1 %cmp5.i82, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 1)
  %23 = ptrtoint ptr %port14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 368, ptr %port14.i, align 4
  %irq15.i = select i1 %cmp5.i82, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 2)
  %24 = ptrtoint ptr %irq15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 15, ptr %irq15.i, align 4
  %type16.i = select i1 %cmp5.i82, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 4)
  %25 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %type16.i, align 4
  %private17.i = select i1 %cmp5.i82, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 5)
  %26 = ptrtoint ptr %private17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %private17.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end13.i85, %if.then19.if.end21_crit_edge, %lor.lhs.false17.if.end21_crit_edge
  %27 = load i32, ptr @probe_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not = icmp ne i32 %27, 0
  %brmerge = or i1 %cmp.not110, %tobool22.not
  br i1 %brmerge, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  %28 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 488, i32 %28)
  %cmp5.i87 = icmp eq i32 %28, 488
  br i1 %cmp5.i87, label %if.then25.if.then7.i93_crit_edge, label %if.end10.i95

if.then25.if.then7.i93_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i93

if.then7.i93:                                     ; preds = %if.end10.i95, %if.then25.if.then7.i93_crit_edge
  %i.05.lcssa.i88 = phi i32 [ 0, %if.then25.if.then7.i93_crit_edge ], [ %spec.select105, %if.end10.i95 ]
  %lp.04.lcssa.i89 = phi ptr [ @probe_list, %if.then25.if.then7.i93_crit_edge ], [ %spec.select106, %if.end10.i95 ]
  %29 = load i32, ptr @probe_mask, align 4
  %shl.i90 = shl nuw nsw i32 1, %i.05.lcssa.i88
  %and.i91 = and i32 %29, %shl.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %if.then7.i93.legacy_probe_add.exit101_crit_edge, label %if.end13.i100

if.then7.i93.legacy_probe_add.exit101_crit_edge:  ; preds = %if.then7.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %legacy_probe_add.exit101

if.end10.i95:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %30 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 488, i32 %30)
  %cmp5.1.i94 = icmp eq i32 %30, 488
  %spec.select105 = select i1 %cmp5.1.i94, i32 1, i32 2
  %spec.select106 = select i1 %cmp5.1.i94, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 2)
  br label %if.then7.i93

if.end13.i100:                                    ; preds = %if.then7.i93
  call void @__sanitizer_cov_trace_pc() #8
  %port14.i96 = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i89, i32 0, i32 1
  %31 = ptrtoint ptr %port14.i96 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 488, ptr %port14.i96, align 4
  %irq15.i97 = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i89, i32 0, i32 2
  %32 = ptrtoint ptr %irq15.i97 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 11, ptr %irq15.i97, align 4
  %type16.i98 = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i89, i32 0, i32 4
  %33 = ptrtoint ptr %type16.i98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %type16.i98, align 4
  %private17.i99 = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i89, i32 0, i32 5
  %34 = ptrtoint ptr %private17.i99 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %private17.i99, align 4
  br label %legacy_probe_add.exit101

legacy_probe_add.exit101:                         ; preds = %if.end13.i100, %if.then7.i93.legacy_probe_add.exit101_crit_edge
  tail call fastcc void @legacy_probe_add(i32 noundef 360, i32 noundef 10, i32 noundef -1, i32 noundef 0)
  tail call fastcc void @legacy_probe_add(i32 noundef 480, i32 noundef 8, i32 noundef -1, i32 noundef 0)
  tail call fastcc void @legacy_probe_add(i32 noundef 352, i32 noundef 12, i32 noundef -1, i32 noundef 0)
  br label %if.end30

if.end30:                                         ; preds = %legacy_probe_add.exit101, %if.end21.if.end30_crit_edge
  %35 = load i32, ptr @opti82c46x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool31.not = icmp eq i32 %35, 0
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @probe_opti_vlb() #9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %36 = load i32, ptr @qdi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool34.not = icmp eq i32 %36, 0
  br i1 %tobool34.not, label %if.end33.for.body39.preheader_crit_edge, label %if.then35

if.end33.for.body39.preheader_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39.preheader

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @probe_qdi_vlb() #9
  br label %for.body39.preheader

for.body39.preheader:                             ; preds = %if.then35, %if.end33.for.body39.preheader_crit_edge
  br label %for.body39

for.body39:                                       ; preds = %for.inc55.for.body39_crit_edge, %for.body39.preheader
  %slot.0116 = phi i32 [ %slot.1, %for.inc55.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  %pl.0114 = phi ptr [ %incdec.ptr, %for.inc55.for.body39_crit_edge ], [ @probe_list, %for.body39.preheader ]
  %ct.0113 = phi i32 [ %ct.1, %for.inc55.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  %i.0112 = phi i32 [ %inc56, %for.inc55.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  %port = getelementptr inbounds %struct.legacy_probe, ptr %pl.0114, i32 0, i32 1
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %for.body39.for.inc55_crit_edge, label %if.end42

for.body39.for.inc55_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55

if.end42:                                         ; preds = %for.body39
  %type = getelementptr inbounds %struct.legacy_probe, ptr %pl.0114, i32 0, i32 4
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp43 = icmp eq i32 %40, -1
  br i1 %cmp43, label %if.then44, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call fastcc i32 @probe_chip_type(ptr noundef %pl.0114) #9
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call45, ptr %type, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  %inc48 = add i32 %slot.0116, 1
  %slot49 = getelementptr inbounds %struct.legacy_probe, ptr %pl.0114, i32 0, i32 3
  %42 = ptrtoint ptr %slot49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %slot.0116, ptr %slot49, align 4
  %call50 = tail call fastcc i32 @legacy_init_one(ptr noundef %pl.0114) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  %inc53 = zext i1 %cmp51 to i32
  %spec.select = add i32 %ct.0113, %inc53
  br label %for.inc55

for.inc55:                                        ; preds = %if.end47, %for.body39.for.inc55_crit_edge
  %ct.1 = phi i32 [ %ct.0113, %for.body39.for.inc55_crit_edge ], [ %spec.select, %if.end47 ]
  %slot.1 = phi i32 [ %slot.0116, %for.body39.for.inc55_crit_edge ], [ %inc48, %if.end47 ]
  %inc56 = add nuw nsw i32 %i.0112, 1
  %incdec.ptr = getelementptr %struct.legacy_probe, ptr %pl.0114, i32 1
  %exitcond118.not = icmp eq i32 %inc56, 6
  br i1 %exitcond118.not, label %for.end57, label %for.inc55.for.body39_crit_edge

for.inc55.for.body39_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.end57:                                        ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ct.1)
  %cmp58.not = icmp eq i32 %ct.1, 0
  %. = select i1 %cmp58.not, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secondary) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %primary) #6
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @legacy_check_special_cases(ptr noundef %p, ptr nocapture noundef writeonly %primary, ptr nocapture noundef writeonly %secondary) unnamed_addr #3 section ".init.text" align 64 {
entry:
  %r = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %1, label %entry.if.end34_crit_edge [
    i16 4216, label %land.lhs.true
    i16 -32634, label %land.lhs.true20
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %p, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp3 = icmp eq i16 %4, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %secondary to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %secondary, align 4
  %6 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %primary, align 4
  br label %if.end34

land.lhs.true9:                                   ; preds = %land.lhs.true
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp12 = icmp eq i16 %8, 2
  br i1 %cmp12, label %if.then14, label %land.lhs.true9.if.end34_crit_edge

land.lhs.true9.if.end34_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then14:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %secondary to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %secondary, align 4
  %10 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %primary, align 4
  br label %if.end34

land.lhs.true20:                                  ; preds = %entry
  %device21 = getelementptr inbounds %struct.pci_dev, ptr %p, i32 0, i32 8
  %11 = ptrtoint ptr %device21 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4660, i16 %12)
  %cmp23 = icmp eq i16 %12, 4660
  br i1 %cmp23, label %if.then25, label %land.lhs.true20.if.end34_crit_edge

land.lhs.true20.if.end34_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r) #6
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %r, align 2, !annotation !236
  %call = call i32 @pci_read_config_word(ptr noundef %p, i32 noundef 108, ptr noundef nonnull %r) #6
  %14 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %r, align 2
  %conv26 = zext i16 %15 to i32
  %and = and i32 %conv26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25.if.end33_crit_edge, label %if.then27

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %and29 = and i32 %conv26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %primary.secondary = select i1 %tobool30.not, ptr %primary, ptr %secondary
  %16 = ptrtoint ptr %primary.secondary to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %primary.secondary, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then25.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r) #6
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true20.if.end34_crit_edge, %if.then14, %land.lhs.true9.if.end34_crit_edge, %if.then, %entry.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @legacy_probe_add(i32 noundef %port, i32 noundef %irq, i32 noundef %type, i32 noundef %private) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %port)
  %cmp5 = icmp eq i32 %0, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %port)
  %cmp6 = icmp eq i32 %port, 496
  %or.cond = or i1 %cmp5, %cmp6
  br i1 %or.cond, label %entry.if.then7_crit_edge, label %if.end10

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %if.end10.4.if.then7_crit_edge, %if.end10.3.if.then7_crit_edge, %if.end10.2.if.then7_crit_edge, %if.end10.1.if.then7_crit_edge, %if.end10.if.then7_crit_edge, %entry.if.then7_crit_edge
  %i.05.lcssa = phi i32 [ 0, %entry.if.then7_crit_edge ], [ 1, %if.end10.if.then7_crit_edge ], [ 2, %if.end10.1.if.then7_crit_edge ], [ 3, %if.end10.2.if.then7_crit_edge ], [ 4, %if.end10.3.if.then7_crit_edge ], [ 5, %if.end10.4.if.then7_crit_edge ]
  %lp.04.lcssa = phi ptr [ @probe_list, %entry.if.then7_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1), %if.end10.if.then7_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 2), %if.end10.1.if.then7_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 3), %if.end10.2.if.then7_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 4), %if.end10.3.if.then7_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 5), %if.end10.4.if.then7_crit_edge ]
  %1 = load i32, ptr @probe_mask, align 4
  %shl = shl nuw nsw i32 1, %i.05.lcssa
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %port)
  %cmp5.1 = icmp eq i32 %2, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %port)
  %cmp6.1 = icmp eq i32 %port, 368
  %or.cond13 = or i1 %cmp5.1, %cmp6.1
  br i1 %or.cond13, label %if.end10.if.then7_crit_edge, label %if.end10.1

if.end10.if.then7_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end10.1:                                       ; preds = %if.end10
  %3 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp5.2 = icmp eq i32 %3, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 488, i32 %port)
  %cmp6.2 = icmp eq i32 %port, 488
  %or.cond14 = or i1 %cmp5.2, %cmp6.2
  br i1 %or.cond14, label %if.end10.1.if.then7_crit_edge, label %if.end10.2

if.end10.1.if.then7_crit_edge:                    ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end10.2:                                       ; preds = %if.end10.1
  %4 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %port)
  %cmp5.3 = icmp eq i32 %4, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %port)
  %cmp6.3 = icmp eq i32 %port, 360
  %or.cond15 = or i1 %cmp5.3, %cmp6.3
  br i1 %or.cond15, label %if.end10.2.if.then7_crit_edge, label %if.end10.3

if.end10.2.if.then7_crit_edge:                    ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end10.3:                                       ; preds = %if.end10.2
  %5 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %port)
  %cmp5.4 = icmp eq i32 %5, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %port)
  %cmp6.4 = icmp eq i32 %port, 480
  %or.cond16 = or i1 %cmp5.4, %cmp6.4
  br i1 %or.cond16, label %if.end10.3.if.then7_crit_edge, label %if.end10.4

if.end10.3.if.then7_crit_edge:                    ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end10.4:                                       ; preds = %if.end10.3
  %6 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.5 = icmp eq i32 %6, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %port)
  %cmp6.5 = icmp eq i32 %port, 352
  %or.cond17 = or i1 %cmp5.5, %cmp6.5
  br i1 %or.cond17, label %if.end10.4.if.then7_crit_edge, label %for.end

if.end10.4.if.then7_crit_edge:                    ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.end:                                          ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.5 = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.4 = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.3 = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.2 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2.1 = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2 = icmp eq i32 %0, 0
  %not.cmp2 = xor i1 %cmp2, true
  %or.cond.1 = select i1 %cmp2.1, i1 %not.cmp2, i1 false
  %free.1 = select i1 %cmp2, ptr @probe_list, ptr null
  %free.1.1 = select i1 %or.cond.1, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1), ptr %free.1
  %cmp3.2 = icmp eq ptr %free.1.1, null
  %or.cond.2 = select i1 %cmp2.2, i1 %cmp3.2, i1 false
  %free.1.2 = select i1 %or.cond.2, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 2), ptr %free.1.1
  %cmp3.3 = icmp eq ptr %free.1.2, null
  %or.cond.3 = select i1 %cmp2.3, i1 %cmp3.3, i1 false
  %free.1.3 = select i1 %or.cond.3, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 3), ptr %free.1.2
  %cmp3.4 = icmp eq ptr %free.1.3, null
  %or.cond.4 = select i1 %cmp2.4, i1 %cmp3.4, i1 false
  %free.1.4 = select i1 %or.cond.4, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 4), ptr %free.1.3
  %cmp3.5 = icmp eq ptr %free.1.4, null
  %or.cond.5 = select i1 %cmp2.5, i1 %cmp3.5, i1 false
  %free.1.5 = select i1 %or.cond.5, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 5), ptr %free.1.4
  %cmp11 = icmp eq ptr %free.1.5, null
  br i1 %cmp11, label %do.end, label %for.end.if.end13_crit_edge

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end13:                                         ; preds = %for.end.if.end13_crit_edge, %if.then7.if.end13_crit_edge
  %free.212 = phi ptr [ %free.1.5, %for.end.if.end13_crit_edge ], [ %lp.04.lcssa, %if.then7.if.end13_crit_edge ]
  %port14 = getelementptr inbounds %struct.legacy_probe, ptr %free.212, i32 0, i32 1
  %7 = ptrtoint ptr %port14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %port, ptr %port14, align 4
  %irq15 = getelementptr inbounds %struct.legacy_probe, ptr %free.212, i32 0, i32 2
  %8 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %irq, ptr %irq15, align 4
  %type16 = getelementptr inbounds %struct.legacy_probe, ptr %free.212, i32 0, i32 4
  %9 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type16, align 4
  %private17 = getelementptr inbounds %struct.legacy_probe, ptr %free.212, i32 0, i32 5
  %10 = ptrtoint ptr %private17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %private, ptr %private17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.then7.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @probe_opti_vlb() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i8 @opti_syscfg(i8 noundef zeroext 48)
  %0 = lshr i8 %call, 6
  store i32 3, ptr @opti82c46x, align 4
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @probe_opti_vlb.optis, i32 0, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %0)
  %cmp = icmp eq i8 %0, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc zeroext i8 @opti_syscfg(i8 noundef zeroext 63)
  %3 = and i8 %call5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chans.0 = phi i32 [ %cond, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call9 = tail call fastcc zeroext i8 @opti_syscfg(i8 noundef zeroext -84)
  %conv10 = zext i8 %call9 to i32
  %and11 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else28, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chans.0)
  %cmp15 = icmp eq i32 %chans.0, 2
  br i1 %cmp15, label %if.then17, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.then13
  %4 = load i32, ptr @probe_mask, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %legacy_probe_add.exit, label %legacy_probe_add.exit.thread

legacy_probe_add.exit.thread:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  store i32 496, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  store i32 14, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), align 4
  store i32 6, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), align 4
  br label %if.end10.i

legacy_probe_add.exit:                            ; preds = %if.then17
  %5 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %5)
  %cmp5.i34 = icmp eq i32 %5, 368
  br i1 %cmp5.i34, label %legacy_probe_add.exit.if.then7.i_crit_edge, label %legacy_probe_add.exit.if.end10.i_crit_edge

legacy_probe_add.exit.if.end10.i_crit_edge:       ; preds = %legacy_probe_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

legacy_probe_add.exit.if.then7.i_crit_edge:       ; preds = %legacy_probe_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end10.i, %legacy_probe_add.exit.if.then7.i_crit_edge
  %i.05.lcssa.i = phi i32 [ 0, %legacy_probe_add.exit.if.then7.i_crit_edge ], [ 1, %if.end10.i ]
  %lp.04.lcssa.i = phi ptr [ @probe_list, %legacy_probe_add.exit.if.then7.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1), %if.end10.i ]
  %shl.i = shl nuw nsw i32 1, %i.05.lcssa.i
  %and.i35 = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %if.then7.i.if.end20_crit_edge, label %if.end13.i37

if.then7.i.if.end20_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end10.i:                                       ; preds = %legacy_probe_add.exit.if.end10.i_crit_edge, %legacy_probe_add.exit.thread
  br label %if.then7.i

if.end13.i37:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %port14.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 1
  %6 = ptrtoint ptr %port14.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 368, ptr %port14.i, align 4
  %irq15.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 2
  %7 = ptrtoint ptr %irq15.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %irq15.i, align 4
  %type16.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 4
  %8 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %type16.i, align 4
  %private17.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 5
  %9 = ptrtoint ptr %private17.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %private17.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end13.i37, %if.then7.i.if.end20_crit_edge, %if.then13.if.end20_crit_edge
  %and22 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  %10 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %10)
  %cmp5.i39 = icmp eq i32 %10, 368
  %not.cmp5.i39 = xor i1 %cmp5.i39, true
  %spec.select = zext i1 %not.cmp5.i39 to i32
  %11 = load i32, ptr @probe_mask, align 4
  %shl.i42 = shl nuw nsw i32 1, %spec.select
  %and.i43 = and i32 %shl.i42, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.then24.if.end30_crit_edge, label %if.end13.i52

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end13.i52:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %port14.i48 = select i1 %cmp5.i39, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 1)
  %12 = ptrtoint ptr %port14.i48 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 368, ptr %port14.i48, align 4
  %irq15.i49 = select i1 %cmp5.i39, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 2)
  %13 = ptrtoint ptr %irq15.i49 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 15, ptr %irq15.i49, align 4
  %type16.i50 = select i1 %cmp5.i39, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 4)
  %14 = ptrtoint ptr %type16.i50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %type16.i50, align 4
  %private17.i51 = select i1 %cmp5.i39, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1, i32 5)
  br label %if.end30.sink.split

if.else:                                          ; preds = %if.end20
  %15 = load i32, ptr @probe_mask, align 4
  %and.i58 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %if.else.if.end30_crit_edge, label %if.end13.i65

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end13.i65:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store i32 496, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  store i32 14, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), align 4
  store i32 6, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), align 4
  br label %if.end30.sink.split

if.else28:                                        ; preds = %if.end
  %16 = load i32, ptr @probe_mask, align 4
  %and.i71 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %if.else28.if.end30_crit_edge, label %if.end13.i78

if.else28.if.end30_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end13.i78:                                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  store i32 496, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  store i32 14, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), align 4
  store i32 6, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), align 4
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.end13.i78, %if.end13.i65, %if.end13.i52
  %.sink = phi ptr [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), %if.end13.i78 ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), %if.end13.i65 ], [ %private17.i51, %if.end13.i52 ]
  %17 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %.sink, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else28.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then24.if.end30_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @probe_qdi_vlb() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %cleanup.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %entry ], [ 1, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @probe_qdi_vlb.qd_port, i32 0, i32 %i.0105
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %do.body1

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %for.body
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !237
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not = icmp eq i32 %and.i, 0
  br i1 %tobool11.not, label %if.then12, label %do.body1.do.end14_crit_edge

do.body1.do.end14_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.then12:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end14

do.end14:                                         ; preds = %if.then12, %do.body1.do.end14_crit_edge
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 25) #6, !srcloc !241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %4) #6, !srcloc !241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  br i1 %tobool11.not, label %if.then45, label %do.end14.do.body47_crit_edge

do.end14.do.body47_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

if.then45:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body47

do.body47:                                        ; preds = %if.then45, %do.end14.do.body47_crit_edge
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !244
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool55.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool55.not, label %if.then59, label %do.body47.do.end62_crit_edge, !prof !245

do.body47.do.end62_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47.do.end62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #6, !srcloc !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %7)
  %cmp68 = icmp eq i8 %7, 25
  br i1 %cmp68, label %do.end62.cleanup.sink.split_crit_edge, label %if.end71

do.end62.cleanup.sink.split_crit_edge:            ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end71:                                         ; preds = %do.end62
  %add73 = add i32 %1, 1
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %11 = inttoptr i32 %add75 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = lshr i8 %12, 1
  %15 = and i8 %14, 1
  %16 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0105, i32 %16)
  %cmp81 = icmp eq i32 %i.0105, %16
  br i1 %cmp81, label %if.then83, label %if.end71.cleanup.sink.split_crit_edge

if.end71.cleanup.sink.split_crit_edge:            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then83:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qdi65_identify_port(i8 noundef zeroext %12, i32 noundef %1) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then83, %if.end71.cleanup.sink.split_crit_edge, %do.end62.cleanup.sink.split_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe_chip_type(ptr nocapture noundef readonly %probe) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slot = getelementptr inbounds %struct.legacy_probe, ptr %probe, i32 0, i32 3
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot, align 4
  %shl = shl nuw i32 1, %1
  %2 = load i32, ptr @winbond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.legacy_probe, ptr %probe, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %land.lhs.true.if.end16_crit_edge [
    i32 496, label %land.lhs.true.if.then_crit_edge
    i32 368, label %land.lhs.true.if.then_crit_edge226
  ]

land.lhs.true.if.then_crit_edge226:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge226
  %call = tail call fastcc zeroext i8 @winbond_readcfg(i32 noundef %2, i8 noundef zeroext -127)
  %6 = or i8 %call, -128
  %7 = load i32, ptr @winbond, align 4
  tail call fastcc void @winbond_writecfg(i32 noundef %7, i8 noundef zeroext -127, i8 noundef zeroext %6)
  %8 = load i32, ptr @winbond, align 4
  %call4 = tail call fastcc zeroext i8 @winbond_readcfg(i32 noundef %8, i8 noundef zeroext -125)
  %9 = or i8 %call4, -16
  %10 = load i32, ptr @winbond, align 4
  tail call fastcc void @winbond_writecfg(i32 noundef %10, i8 noundef zeroext -125, i8 noundef zeroext %9)
  %11 = load i32, ptr @winbond, align 4
  %call8 = tail call fastcc zeroext i8 @winbond_readcfg(i32 noundef %11, i8 noundef zeroext -123)
  %12 = or i8 %call8, -16
  %13 = load i32, ptr @winbond, align 4
  tail call fastcc void @winbond_writecfg(i32 noundef %13, i8 noundef zeroext -123, i8 noundef zeroext %12)
  %14 = load i32, ptr @winbond, align 4
  %call12 = tail call fastcc zeroext i8 @winbond_readcfg(i32 noundef %14, i8 noundef zeroext -127)
  %conv13 = zext i8 %call12 to i32
  %and = and i32 %shl, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then.if.end16_crit_edge, label %if.then.cleanup204_crit_edge

if.then.cleanup204_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup204

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %port17 = getelementptr inbounds %struct.legacy_probe, ptr %probe, i32 0, i32 1
  %15 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %16)
  %cmp18 = icmp eq i32 %16, 496
  br i1 %cmp18, label %if.then20, label %if.end183

if.then20:                                        ; preds = %if.end16
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !237
  %and.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not = icmp eq i32 %and.i, 0
  br i1 %tobool32.not, label %if.then33, label %if.then20.do.body37_crit_edge

if.then20.do.body37_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

if.then33:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.body37

do.body37:                                        ; preds = %if.then33, %if.then20.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  tail call void @arm_heavy_mb() #6
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %19 = or i8 %18, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr), i8 %19) #6, !srcloc !241
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873867 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873354 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873354 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp77 = icmp sgt i8 %26, -1
  br i1 %cmp77, label %do.end82, label %do.body120

do.end82:                                         ; preds = %do.body37
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #6
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873867 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  br i1 %tobool32.not, label %if.then98, label %do.end82.do.body100_crit_edge

do.end82.do.body100_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body100

if.then98:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body100

do.body100:                                       ; preds = %if.then98, %do.end82.do.body100_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !244
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool108.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool108.not, label %if.then112, label %do.body100.do.end115_crit_edge, !prof !245

do.body100.do.end115_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end115

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %do.body100.do.end115_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #6, !srcloc !246
  br label %cleanup204

do.body120:                                       ; preds = %do.body37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr), i8 85) #6, !srcloc !241
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873870 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp137 = icmp eq i8 %32, 0
  br i1 %cmp137, label %do.end142, label %do.body120.do.body146_crit_edge

do.body120.do.body146_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body146

do.end142:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #8
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %do.body146

do.body146:                                       ; preds = %do.end142, %do.body120.do.body146_crit_edge
  br i1 %tobool32.not, label %if.then155, label %do.body146.do.body157_crit_edge

do.body146.do.body157_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body157

if.then155:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body157

do.body157:                                       ; preds = %if.then155, %do.body146.do.body157_crit_edge
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !244
  %and.i.i225 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i225)
  %tobool165.not = icmp eq i32 %and.i.i225, 0
  br i1 %tobool165.not, label %if.then174, label %do.body157.do.end177_crit_edge, !prof !245

do.body157.do.end177_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end177

if.then174:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end177

do.end177:                                        ; preds = %if.then174, %do.body157.do.end177_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #6, !srcloc !246
  br label %cleanup204

if.end183:                                        ; preds = %if.end16
  %34 = load i32, ptr @ht6560a, align 4
  %and184 = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end187, label %if.end183.cleanup204_crit_edge

if.end183.cleanup204_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup204

if.end187:                                        ; preds = %if.end183
  %35 = load i32, ptr @ht6560b, align 4
  %and188 = and i32 %35, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end187.cleanup204_crit_edge

if.end187.cleanup204_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup204

if.end191:                                        ; preds = %if.end187
  %36 = load i32, ptr @opti82c611a, align 4
  %and192 = and i32 %36, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end195, label %if.end191.cleanup204_crit_edge

if.end191.cleanup204_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup204

if.end195:                                        ; preds = %if.end191
  %37 = load i32, ptr @opti82c46x, align 4
  %and196 = and i32 %37, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end199, label %if.end195.cleanup204_crit_edge

if.end195.cleanup204_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup204

if.end199:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %38 = load i32, ptr @autospeed, align 4
  %39 = lshr i32 %38, %1
  %40 = and i32 %39, 1
  br label %cleanup204

cleanup204:                                       ; preds = %if.end199, %if.end195.cleanup204_crit_edge, %if.end191.cleanup204_crit_edge, %if.end187.cleanup204_crit_edge, %if.end183.cleanup204_crit_edge, %do.end177, %do.end115, %if.then.cleanup204_crit_edge
  %retval.2 = phi i32 [ 10, %if.then.cleanup204_crit_edge ], [ 2, %do.end115 ], [ 0, %do.end177 ], [ 3, %if.end183.cleanup204_crit_edge ], [ 4, %if.end187.cleanup204_crit_edge ], [ 5, %if.end191.cleanup204_crit_edge ], [ 6, %if.end195.cleanup204_crit_edge ], [ %40, %if.end199 ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @legacy_init_one(ptr nocapture noundef readonly %probe) unnamed_addr #3 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.legacy_probe, ptr %probe, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %slot = getelementptr inbounds %struct.legacy_probe, ptr %probe, i32 0, i32 3
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %4 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 48)
  %6 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fwnode.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.1, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %properties.i.i, align 8
  %13 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %call8 = call ptr @__devm_request_region(ptr noundef %dev7, ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1) #6
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.end.fail_crit_edge, label %lor.lhs.false

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %1, 518
  %call10 = call ptr @__devm_request_region(ptr noundef %dev7, ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @.str.1) #6
  %cmp11 = icmp eq ptr %call10, null
  %spec.select = select i1 %cmp11, i32 -16, i32 -12
  br label %fail

fail:                                             ; preds = %lor.lhs.false, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.fail_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @platform_device_unregister(ptr noundef %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %ret.0, %fail ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @opti_syscfg(i8 noundef zeroext %reg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !237
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874334 to ptr), i8 %reg) #6, !srcloc !241
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874332 to ptr)) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  br i1 %tobool.not, label %if.then28, label %do.body12.do.body30_crit_edge

do.body12.do.body30_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.then28:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body30

do.body30:                                        ; preds = %if.then28, %do.body12.do.body30_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !244
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool38.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool38.not, label %if.then42, label %do.body30.do.end45_crit_edge, !prof !245

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body30.do.end45_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !246
  ret i8 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qdi65_identify_port(i8 noundef zeroext %r, i32 noundef %port) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %r to i32
  %and = and i8 %r, -16
  %0 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %and, label %entry.if.end45_crit_edge [
    i8 -64, label %if.then
    i8 -96, label %entry.if.then18_crit_edge
    i8 80, label %entry.if.then18_crit_edge7
  ]

entry.if.then18_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

entry.if.then18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then:                                          ; preds = %entry
  %and3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %if.then.if.end45_crit_edge

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %conv, 1
  %arrayidx = getelementptr [2 x i32], ptr @qdi65_identify_port.ide_port, i32 0, i32 %and6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = or i32 %and6, 14
  tail call fastcc void @legacy_probe_add(i32 noundef %2, i32 noundef %add, i32 noundef 7, i32 noundef %port)
  br label %if.end45

if.then18:                                        ; preds = %entry.if.then18_crit_edge, %entry.if.then18_crit_edge7
  %add19 = add i32 %port, 2
  %call20 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add19, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %port, i32 noundef 2) #6
  br label %if.end45

if.end23:                                         ; preds = %if.then18
  %add24 = add i32 %port, 3
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %3 = inttoptr i32 %add26 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool31.not = icmp eq i8 %5, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %and34 = and i32 %conv, 1
  %arrayidx35 = getelementptr [2 x i32], ptr @qdi65_identify_port.ide_port, i32 0, i32 %and34
  %6 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx35, align 4
  %add38 = or i32 %and34, 14
  tail call fastcc void @legacy_probe_add(i32 noundef %7, i32 noundef %add38, i32 noundef 8, i32 noundef %port)
  br label %if.end43

if.else:                                          ; preds = %if.end23
  %8 = load i32, ptr @probe_mask, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %legacy_probe_add.exit, label %legacy_probe_add.exit.thread

legacy_probe_add.exit.thread:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store i32 496, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  store i32 14, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 2), align 4
  store i32 9, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 4), align 4
  store i32 %port, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 5), align 4
  br label %if.end10.i

legacy_probe_add.exit:                            ; preds = %if.else
  %9 = load i32, ptr getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %9)
  %cmp5.i1 = icmp eq i32 %9, 368
  br i1 %cmp5.i1, label %legacy_probe_add.exit.if.then7.i_crit_edge, label %legacy_probe_add.exit.if.end10.i_crit_edge

legacy_probe_add.exit.if.end10.i_crit_edge:       ; preds = %legacy_probe_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

legacy_probe_add.exit.if.then7.i_crit_edge:       ; preds = %legacy_probe_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end10.i, %legacy_probe_add.exit.if.then7.i_crit_edge
  %i.05.lcssa.i = phi i32 [ 0, %legacy_probe_add.exit.if.then7.i_crit_edge ], [ 1, %if.end10.i ]
  %lp.04.lcssa.i = phi ptr [ @probe_list, %legacy_probe_add.exit.if.then7.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.legacy_probe], ptr @probe_list, i32 0, i32 1), %if.end10.i ]
  %shl.i = shl nuw nsw i32 1, %i.05.lcssa.i
  %and.i2 = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.then7.i.if.end43_crit_edge, label %if.end13.i4

if.then7.i.if.end43_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end10.i:                                       ; preds = %legacy_probe_add.exit.if.end10.i_crit_edge, %legacy_probe_add.exit.thread
  br label %if.then7.i

if.end13.i4:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %port14.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 1
  %10 = ptrtoint ptr %port14.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 368, ptr %port14.i, align 4
  %irq15.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 2
  %11 = ptrtoint ptr %irq15.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %irq15.i, align 4
  %type16.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 4
  %12 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9, ptr %type16.i, align 4
  %private17.i = getelementptr inbounds %struct.legacy_probe, ptr %lp.04.lcssa.i, i32 0, i32 5
  %13 = ptrtoint ptr %private17.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add19, ptr %private17.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end13.i4, %if.then7.i.if.end43_crit_edge, %if.then32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add19, i32 noundef 2) #6
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.then22, %if.end, %if.then.if.end45_crit_edge, %entry.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @winbond_readcfg(i32 noundef %port, i8 noundef zeroext %reg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @winbond_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  tail call void @arm_heavy_mb() #6
  %add = add i32 %port, 1
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %0 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %reg) #6, !srcloc !241
  %add10 = add i32 %port, 2
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %1 = inttoptr i32 %add12 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #6, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @winbond_lock, i32 noundef %call2) #6
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @winbond_writecfg(i32 noundef %port, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @winbond_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  tail call void @arm_heavy_mb() #6
  %add = add i32 %port, 1
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %0 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %reg) #6, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  tail call void @arm_heavy_mb() #6
  %add13 = add i32 %port, 2
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %1 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %val) #6, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @winbond_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !64, !66, !67, !69, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !120, !121, !122, !123, !125, !127, !128, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__param_all, !1, !"__param_all", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_legacy.c", i32 65, i32 1}
!2 = !{ptr @__UNIQUE_ID_alltype289, !1, !"__UNIQUE_ID_alltype289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_all290, !4, !"__UNIQUE_ID_all290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_legacy.c", i32 66, i32 1}
!5 = !{ptr @__param_probe_all, !6, !"__param_probe_all", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_legacy.c", i32 70, i32 1}
!7 = !{ptr @__UNIQUE_ID_probe_alltype291, !6, !"__UNIQUE_ID_probe_alltype291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_probe_all292, !9, !"__UNIQUE_ID_probe_all292", i1 false, i1 false}
!9 = !{!"../drivers/ata/pata_legacy.c", i32 71, i32 1}
!10 = !{ptr @__param_probe_mask, !11, !"__param_probe_mask", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_legacy.c", i32 75, i32 1}
!12 = !{ptr @__UNIQUE_ID_probe_masktype293, !11, !"__UNIQUE_ID_probe_masktype293", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_probe_mask294, !14, !"__UNIQUE_ID_probe_mask294", i1 false, i1 false}
!14 = !{!"../drivers/ata/pata_legacy.c", i32 76, i32 1}
!15 = !{ptr @__param_autospeed, !16, !"__param_autospeed", i1 false, i1 false}
!16 = !{!"../drivers/ata/pata_legacy.c", i32 79, i32 1}
!17 = !{ptr @__UNIQUE_ID_autospeedtype295, !16, !"__UNIQUE_ID_autospeedtype295", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_autospeed296, !19, !"__UNIQUE_ID_autospeed296", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_legacy.c", i32 80, i32 1}
!20 = !{ptr @__param_pio_mask, !21, !"__param_pio_mask", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_legacy.c", i32 83, i32 1}
!22 = !{ptr @__UNIQUE_ID_pio_masktype297, !21, !"__UNIQUE_ID_pio_masktype297", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_pio_mask298, !24, !"__UNIQUE_ID_pio_mask298", i1 false, i1 false}
!24 = !{!"../drivers/ata/pata_legacy.c", i32 84, i32 1}
!25 = !{ptr @__param_iordy_mask, !26, !"__param_iordy_mask", i1 false, i1 false}
!26 = !{!"../drivers/ata/pata_legacy.c", i32 87, i32 1}
!27 = !{ptr @__UNIQUE_ID_iordy_masktype299, !26, !"__UNIQUE_ID_iordy_masktype299", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_iordy_mask300, !29, !"__UNIQUE_ID_iordy_mask300", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_legacy.c", i32 88, i32 1}
!30 = !{ptr @__param_ht6560a, !31, !"__param_ht6560a", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_legacy.c", i32 91, i32 1}
!32 = !{ptr @__UNIQUE_ID_ht6560atype301, !31, !"__UNIQUE_ID_ht6560atype301", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_ht6560a302, !34, !"__UNIQUE_ID_ht6560a302", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_legacy.c", i32 92, i32 1}
!35 = !{ptr @__param_ht6560b, !36, !"__param_ht6560b", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_legacy.c", i32 95, i32 1}
!37 = !{ptr @__UNIQUE_ID_ht6560btype303, !36, !"__UNIQUE_ID_ht6560btype303", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_ht6560b304, !39, !"__UNIQUE_ID_ht6560b304", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_legacy.c", i32 96, i32 1}
!40 = !{ptr @__param_opti82c611a, !41, !"__param_opti82c611a", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_legacy.c", i32 99, i32 1}
!42 = !{ptr @__UNIQUE_ID_opti82c611atype305, !41, !"__UNIQUE_ID_opti82c611atype305", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_opti82c611a306, !44, !"__UNIQUE_ID_opti82c611a306", i1 false, i1 false}
!44 = !{!"../drivers/ata/pata_legacy.c", i32 100, i32 1}
!45 = !{ptr @__param_opti82c46x, !46, !"__param_opti82c46x", i1 false, i1 false}
!46 = !{!"../drivers/ata/pata_legacy.c", i32 104, i32 1}
!47 = !{ptr @__UNIQUE_ID_opti82c46xtype307, !46, !"__UNIQUE_ID_opti82c46xtype307", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_opti82c46x308, !49, !"__UNIQUE_ID_opti82c46x308", i1 false, i1 false}
!49 = !{!"../drivers/ata/pata_legacy.c", i32 105, i32 1}
!50 = !{ptr @__param_qdi, !51, !"__param_qdi", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_legacy.c", i32 113, i32 1}
!52 = !{ptr @__UNIQUE_ID_qditype309, !51, !"__UNIQUE_ID_qditype309", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_qdi310, !54, !"__UNIQUE_ID_qdi310", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_legacy.c", i32 114, i32 1}
!55 = !{ptr @__param_winbond, !56, !"__param_winbond", i1 false, i1 false}
!56 = !{!"../drivers/ata/pata_legacy.c", i32 121, i32 1}
!57 = !{ptr @__UNIQUE_ID_winbondtype311, !56, !"__UNIQUE_ID_winbondtype311", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_winbond312, !59, !"__UNIQUE_ID_winbond312", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_legacy.c", i32 122, i32 1}
!60 = !{ptr @__UNIQUE_ID_author381, !61, !"__UNIQUE_ID_author381", i1 false, i1 false}
!61 = !{!"../drivers/ata/pata_legacy.c", i32 1285, i32 1}
!62 = !{ptr @__UNIQUE_ID_description382, !63, !"__UNIQUE_ID_description382", i1 false, i1 false}
!63 = !{!"../drivers/ata/pata_legacy.c", i32 1286, i32 1}
!64 = !{ptr @__UNIQUE_ID_file383, !65, !"__UNIQUE_ID_file383", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_legacy.c", i32 1287, i32 1}
!66 = !{ptr @__UNIQUE_ID_license384, !65, !"__UNIQUE_ID_license384", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_version385, !68, !"__UNIQUE_ID_version385", i1 false, i1 false}
!68 = !{!"../drivers/ata/pata_legacy.c", i32 1288, i32 1}
!69 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.1, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.2, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__modver_attr, !68, !"__modver_attr", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_alias386, !74, !"__UNIQUE_ID_alias386", i1 false, i1 false}
!74 = !{!"../drivers/ata/pata_legacy.c", i32 1289, i32 1}
!75 = !{ptr @__UNIQUE_ID_alias387, !76, !"__UNIQUE_ID_alias387", i1 false, i1 false}
!76 = !{!"../drivers/ata/pata_legacy.c", i32 1290, i32 1}
!77 = !{ptr @__initcall__kmod_pata_legacy__388_1292_legacy_init6, !78, !"__initcall__kmod_pata_legacy__388_1292_legacy_init6", i1 false, i1 false}
!78 = !{!"../drivers/ata/pata_legacy.c", i32 1292, i32 1}
!79 = !{ptr @__exitcall_legacy_exit, !80, !"__exitcall_legacy_exit", i1 false, i1 false}
!80 = !{!"../drivers/ata/pata_legacy.c", i32 1293, i32 1}
!81 = !{ptr @all, !82, !"all", i1 false, i1 false}
!82 = !{!"../drivers/ata/pata_legacy.c", i32 64, i32 12}
!83 = !{ptr @probe_all, !84, !"probe_all", i1 false, i1 false}
!84 = !{!"../drivers/ata/pata_legacy.c", i32 69, i32 12}
!85 = !{ptr @autospeed, !86, !"autospeed", i1 false, i1 false}
!86 = !{!"../drivers/ata/pata_legacy.c", i32 78, i32 12}
!87 = !{ptr @ht6560a, !88, !"ht6560a", i1 false, i1 false}
!88 = !{!"../drivers/ata/pata_legacy.c", i32 90, i32 12}
!89 = !{ptr @ht6560b, !90, !"ht6560b", i1 false, i1 false}
!90 = !{!"../drivers/ata/pata_legacy.c", i32 94, i32 12}
!91 = !{ptr @opti82c611a, !92, !"opti82c611a", i1 false, i1 false}
!92 = !{!"../drivers/ata/pata_legacy.c", i32 98, i32 12}
!93 = !{ptr @opti82c46x, !94, !"opti82c46x", i1 false, i1 false}
!94 = !{!"../drivers/ata/pata_legacy.c", i32 103, i32 12}
!95 = !{ptr @qdi, !96, !"qdi", i1 false, i1 false}
!96 = !{!"../drivers/ata/pata_legacy.c", i32 111, i32 12}
!97 = !{ptr @winbond, !98, !"winbond", i1 false, i1 false}
!98 = !{!"../drivers/ata/pata_legacy.c", i32 119, i32 12}
!99 = distinct !{null, !100, !"legacy_data", i1 false, i1 false}
!100 = !{!"../drivers/ata/pata_legacy.c", i32 174, i32 27}
!101 = distinct !{null, !102, !"legacy_host", i1 false, i1 false}
!102 = !{!"../drivers/ata/pata_legacy.c", i32 175, i32 25}
!103 = distinct !{null, !104, !"nr_legacy_host", i1 false, i1 false}
!104 = !{!"../drivers/ata/pata_legacy.c", i32 176, i32 12}
!105 = !{ptr @__param_str_all, !1, !"__param_str_all", i1 false, i1 false}
!106 = !{ptr @__param_str_probe_all, !6, !"__param_str_probe_all", i1 false, i1 false}
!107 = !{ptr @__param_str_probe_mask, !11, !"__param_str_probe_mask", i1 false, i1 false}
!108 = !{ptr @probe_mask, !109, !"probe_mask", i1 false, i1 false}
!109 = !{!"../drivers/ata/pata_legacy.c", i32 74, i32 12}
!110 = !{ptr @__param_str_autospeed, !16, !"__param_str_autospeed", i1 false, i1 false}
!111 = !{ptr @__param_str_pio_mask, !21, !"__param_str_pio_mask", i1 false, i1 false}
!112 = !{ptr @pio_mask, !113, !"pio_mask", i1 false, i1 false}
!113 = !{!"../drivers/ata/pata_legacy.c", i32 82, i32 12}
!114 = !{ptr @__param_str_iordy_mask, !26, !"__param_str_iordy_mask", i1 false, i1 false}
!115 = !{ptr @iordy_mask, !116, !"iordy_mask", i1 false, i1 false}
!116 = !{!"../drivers/ata/pata_legacy.c", i32 86, i32 12}
!117 = !{ptr @__param_str_ht6560a, !31, !"__param_str_ht6560a", i1 false, i1 false}
!118 = !{ptr @__param_str_ht6560b, !36, !"__param_str_ht6560b", i1 false, i1 false}
!119 = !{ptr @__param_str_opti82c611a, !41, !"__param_str_opti82c611a", i1 false, i1 false}
!120 = !{ptr @__param_str_opti82c46x, !46, !"__param_str_opti82c46x", i1 false, i1 false}
!121 = !{ptr @__param_str_qdi, !51, !"__param_str_qdi", i1 false, i1 false}
!122 = !{ptr @__param_str_winbond, !56, !"__param_str_winbond", i1 false, i1 false}
!123 = !{ptr @probe_list, !124, !"probe_list", i1 false, i1 false}
!124 = !{!"../drivers/ata/pata_legacy.c", i32 173, i32 28}
!125 = !{ptr @.str.3, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ata/pata_legacy.c", i32 214, i32 3}
!127 = !{ptr @.str.4, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.5, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @legacy_probe_add._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @legacy_probe_add._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"legacy_port", i1 false, i1 false}
!132 = !{!"../drivers/ata/pata_legacy.c", i32 171, i32 12}
!133 = !{ptr @.str.6, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/ata/pata_legacy.c", i32 1093, i32 3}
!135 = !{ptr @.str.7, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ata/pata_legacy.c", i32 1093, i32 14}
!137 = !{ptr @.str.8, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/pata_legacy.c", i32 1094, i32 3}
!139 = !{ptr @.str.9, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/ata/pata_legacy.c", i32 1094, i32 11}
!141 = !{ptr @probe_opti_vlb.optis, !142, !"optis", i1 false, i1 false}
!142 = !{!"../drivers/ata/pata_legacy.c", i32 1092, i32 21}
!143 = !{ptr @.str.10, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/pata_legacy.c", i32 1100, i32 2}
!145 = !{ptr @.str.11, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @probe_opti_vlb._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @probe_opti_vlb._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @probe_qdi_vlb.qd_port, !149, !"qd_port", i1 false, i1 false}
!149 = !{!"../drivers/ata/pata_legacy.c", i32 1155, i32 29}
!150 = !{ptr @.str.12, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ata/pata_legacy.c", i32 1167, i32 7}
!152 = !{ptr @qdi65_identify_port.ide_port, !153, !"ide_port", i1 false, i1 false}
!153 = !{!"../drivers/ata/pata_legacy.c", i32 1122, i32 29}
!154 = !{ptr @.str.13, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/ata/pata_legacy.c", i32 931, i32 4}
!156 = !{ptr @.str.14, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @probe_chip_type._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @probe_chip_type._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.16, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/ata/pata_legacy.c", i32 942, i32 5}
!161 = !{ptr @probe_chip_type._entry.15, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @probe_chip_type._entry_ptr.17, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.18, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ata/pata_legacy.c", i32 790, i32 8}
!165 = !{ptr @winbond_lock, !164, !"winbond_lock", i1 false, i1 false}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ata/pata_legacy.c", i32 1023, i32 20}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/ata/pata_legacy.c", i32 862, i32 3}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/ata/pata_legacy.c", i32 864, i32 3}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ata/pata_legacy.c", i32 866, i32 3}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/ata/pata_legacy.c", i32 869, i32 3}
!176 = distinct !{null, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ata/pata_legacy.c", i32 871, i32 3}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/ata/pata_legacy.c", i32 873, i32 3}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/ata/pata_legacy.c", i32 875, i32 3}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/ata/pata_legacy.c", i32 877, i32 3}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/ata/pata_legacy.c", i32 880, i32 3}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/ata/pata_legacy.c", i32 882, i32 3}
!188 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/ata/pata_legacy.c", i32 884, i32 3}
!190 = distinct !{null, !191, !"controllers", i1 false, i1 false}
!191 = !{!"../drivers/ata/pata_legacy.c", i32 861, i32 33}
!192 = distinct !{null, !193, !"legacy_port_ops", i1 false, i1 false}
!193 = !{!"../drivers/ata/pata_legacy.c", i32 275, i32 35}
!194 = !{ptr @.str.31, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ata/pata_legacy.c", i32 244, i32 3}
!196 = !{ptr @.str.32, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @legacy_set_mode._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @legacy_set_mode._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = distinct !{null, !200, !"legacy_base_port_ops", i1 false, i1 false}
!200 = !{!"../drivers/ata/pata_legacy.c", i32 257, i32 41}
!201 = distinct !{null, !202, !"simple_port_ops", i1 false, i1 false}
!202 = !{!"../drivers/ata/pata_legacy.c", i32 270, i32 35}
!203 = distinct !{null, !204, !"pdc20230_port_ops", i1 false, i1 false}
!204 = !{!"../drivers/ata/pata_legacy.c", i32 373, i32 35}
!205 = distinct !{null, !206, !"ht6560a_port_ops", i1 false, i1 false}
!206 = !{!"../drivers/ata/pata_legacy.c", i32 406, i32 35}
!207 = distinct !{null, !208, !"ht6560b_port_ops", i1 false, i1 false}
!208 = !{!"../drivers/ata/pata_legacy.c", i32 448, i32 35}
!209 = distinct !{null, !210, !"opti82c611a_port_ops", i1 false, i1 false}
!210 = !{!"../drivers/ata/pata_legacy.c", i32 547, i32 35}
!211 = distinct !{null, !212, !"opti82c46x_port_ops", i1 false, i1 false}
!212 = !{!"../drivers/ata/pata_legacy.c", i32 657, i32 35}
!213 = distinct !{null, !214, !"qdi6500_port_ops", i1 false, i1 false}
!214 = !{!"../drivers/ata/pata_legacy.c", i32 770, i32 35}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/ata/pata_legacy.c", i32 764, i32 6}
!217 = distinct !{null, !218, !"qdi6580_port_ops", i1 false, i1 false}
!218 = !{!"../drivers/ata/pata_legacy.c", i32 777, i32 35}
!219 = distinct !{null, !220, !"qdi6580dp_port_ops", i1 false, i1 false}
!220 = !{!"../drivers/ata/pata_legacy.c", i32 783, i32 35}
!221 = distinct !{null, !222, !"winbond_port_ops", i1 false, i1 false}
!222 = !{!"../drivers/ata/pata_legacy.c", i32 855, i32 35}
!223 = distinct !{null, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/ata/pata_legacy.c", i32 849, i32 6}
!225 = distinct !{null, !226, !"legacy_sht", i1 false, i1 false}
!226 = !{!"../drivers/ata/pata_legacy.c", i32 253, i32 34}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"auto-init"}
!237 = !{i64 1012571, i64 1012632}
!238 = !{i64 5017037}
!239 = !{i64 2156074321}
!240 = !{i64 2156075063}
!241 = !{i64 5016642}
!242 = !{i64 2156075981}
!243 = !{i64 2156076720}
!244 = !{i64 1015303}
!245 = !{!"branch_weights", i32 1, i32 2000}
!246 = !{i64 1015588}
!247 = !{i64 2156078496}
!248 = !{i64 2156061102}
!249 = !{i64 2156060925}
!250 = !{i64 2156061487}
!251 = !{i64 2156061758}
!252 = !{i64 2156062029}
!253 = !{i64 2156062300}
!254 = !{i64 2156062571}
!255 = !{i64 2156062842}
!256 = !{i64 2156063113}
!257 = !{i64 2156065540}
!258 = !{i64 2156066541}
!259 = !{i64 2156066926}
!260 = !{i64 2156067197}
!261 = !{i64 2156067468}
!262 = !{i64 2155858331}
!263 = !{i64 2155858713}
!264 = !{i64 2156073115}
!265 = !{i64 2156011003}
!266 = !{i64 2156011406}
!267 = !{i64 2156009981}
!268 = !{i64 2156010313}
