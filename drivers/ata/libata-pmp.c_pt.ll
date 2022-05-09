; ModuleID = '/llk/IR_all_yes/drivers/ata/libata-pmp.c_pt.bc'
source_filename = "../drivers/ata/libata-pmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sata_pmp_port_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sata_pmp_port_ops\09\09\09\09"
module asm "\09.long\09__crc_sata_pmp_port_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_pmp_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_pmp_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sata_pmp_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sata_pmp_qc_defer_cmd_switch\22, \22a\22\09"
module asm "\09.weak\09__crc_sata_pmp_qc_defer_cmd_switch\09\09\09\09"
module asm "\09.long\09__crc_sata_pmp_qc_defer_cmd_switch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_pmp_qc_defer_cmd_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_pmp_qc_defer_cmd_switch\22\09\09\09\09\09"
module asm "__kstrtabns_sata_pmp_qc_defer_cmd_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sata_pmp_error_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_sata_pmp_error_handler\09\09\09\09"
module asm "\09.long\09__crc_sata_pmp_error_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_pmp_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_pmp_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_sata_pmp_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.78, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.78 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@sata_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sata_pmp_port_ops = dso_local constant { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_std_prereset, ptr null, ptr @sata_std_hardreset, ptr @ata_std_postreset, ptr @sata_pmp_error_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_port_ops }, [44 x i8] zeroinitializer }, align 32
@sata_pmp_scr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014ata%u.%02u: failed to read SCR %d (Emask=0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sata_pmp_scr_read\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/libata-pmp.c\00", [39 x i8] zeroinitializer }, align 32
@sata_pmp_scr_read._entry_ptr = internal global ptr @sata_pmp_scr_read._entry, section ".printk_index", align 4
@sata_pmp_scr_read._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014ata%u: failed to read SCR %d (Emask=0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@sata_pmp_scr_read._entry_ptr.5 = internal global ptr @sata_pmp_scr_read._entry.3, section ".printk_index", align 4
@sata_pmp_scr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014ata%u.%02u: failed to write SCR %d (Emask=0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_pmp_scr_write\00", [45 x i8] zeroinitializer }, align 32
@sata_pmp_scr_write._entry_ptr = internal global ptr @sata_pmp_scr_write._entry, section ".printk_index", align 4
@sata_pmp_scr_write._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014ata%u: failed to write SCR %d (Emask=0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@sata_pmp_scr_write._entry_ptr.10 = internal global ptr @sata_pmp_scr_write._entry.8, section ".printk_index", align 4
@sata_pmp_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ata%u.%02u: host does not support Port Multiplier\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sata_pmp_attach\00", [16 x i8] zeroinitializer }, align 32
@sata_pmp_attach._entry_ptr = internal global ptr @sata_pmp_attach._entry, section ".printk_index", align 4
@sata_pmp_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ata%u.%02u: Port Multipliers cannot be nested\0A\00", [47 x i8] zeroinitializer }, align 32
@sata_pmp_attach._entry_ptr.15 = internal global ptr @sata_pmp_attach._entry.13, section ".printk_index", align 4
@sata_pmp_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ata%u.%02u: Port Multiplier must be the first device\0A\00", [40 x i8] zeroinitializer }, align 32
@sata_pmp_attach._entry_ptr.18 = internal global ptr @sata_pmp_attach._entry.16, section ".printk_index", align 4
@sata_pmp_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ata%u.%02u: failed to initialize PMP links\0A\00", [50 x i8] zeroinitializer }, align 32
@sata_pmp_attach._entry_ptr.21 = internal global ptr @sata_pmp_attach._entry.19, section ".printk_index", align 4
@__kstrtab_sata_pmp_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_pmp_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_pmp_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_pmp_port_ops to i32), ptr @__kstrtab_sata_pmp_port_ops, ptr @__kstrtabns_sata_pmp_port_ops }, section "___ksymtab_gpl+sata_pmp_port_ops", align 4
@__kstrtab_sata_pmp_qc_defer_cmd_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_pmp_qc_defer_cmd_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_pmp_qc_defer_cmd_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_pmp_qc_defer_cmd_switch to i32), ptr @__kstrtab_sata_pmp_qc_defer_cmd_switch, ptr @__kstrtabns_sata_pmp_qc_defer_cmd_switch }, section "___ksymtab_gpl+sata_pmp_qc_defer_cmd_switch", align 4
@__kstrtab_sata_pmp_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_pmp_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_pmp_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_pmp_error_handler to i32), ptr @__kstrtab_sata_pmp_error_handler, ptr @__kstrtabns_sata_pmp_error_handler }, section "___ksymtab_gpl+sata_pmp_error_handler", align 4
@sata_pmp_read_gscr.gscr_to_read = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 32, i32 33, i32 64, i32 96], [36 x i8] zeroinitializer }, align 32
@sata_pmp_read_gscr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ata%u.%02u: failed to read PMP GSCR[%d] (Emask=0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_pmp_read_gscr\00", [45 x i8] zeroinitializer }, align 32
@sata_pmp_read_gscr._entry_ptr = internal global ptr @sata_pmp_read_gscr._entry, section ".printk_index", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid nr_ports\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write GSCR_ERROR_EN\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read Sil3x26 Private Register\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to write Sil3x26 Private Register\00", [55 x i8] zeroinitializer }, align 32
@sata_pmp_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016ata%u.%02u: Port Multiplier %s, 0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_pmp_configure\00", [45 x i8] zeroinitializer }, align 32
@sata_pmp_configure._entry_ptr = internal global ptr @sata_pmp_configure._entry, section ".printk_index", align 4
@sata_pmp_configure._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\016ata%u.%02u: Asynchronous notification not supported, hotplug won't work on fan-out ports. Use warm-plug instead.\0A\00", [44 x i8] zeroinitializer }, align 32
@sata_pmp_configure._entry_ptr.32 = internal global ptr @sata_pmp_configure._entry.30, section ".printk_index", align 4
@sata_pmp_configure._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013ata%u.%02u: failed to configure Port Multiplier (%s, Emask=0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@sata_pmp_configure._entry_ptr.35 = internal global ptr @sata_pmp_configure._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014ata%u.%02u: failed to disable NOTIFY (err_mask=0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_pmp_eh_recover\00", [44 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr = internal global ptr @sata_pmp_eh_recover._entry, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014ata%u: failed to disable NOTIFY (err_mask=0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.44 = internal global ptr @sata_pmp_eh_recover._entry.42, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ata%u.%02u: failed to write PMP_FEAT_EN (Emask=0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.47 = internal global ptr @sata_pmp_eh_recover._entry.45, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ata%u.%02u: failed to read PMP_GSCR_ERROR (Emask=0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.50 = internal global ptr @sata_pmp_eh_recover._entry.48, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014ata%u.%02u: PHY status changed but maxed out on retries, giving up\0A\00", [58 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.53 = internal global ptr @sata_pmp_eh_recover._entry.51, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014ata%u: PHY status changed but maxed out on retries, giving up\0A\00", [63 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.56 = internal global ptr @sata_pmp_eh_recover._entry.54, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.41, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ata%u.%02u: Manually issue scan to resume this link\0A\00", [41 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.59 = internal global ptr @sata_pmp_eh_recover._entry.57, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.41, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014ata%u: Manually issue scan to resume this link\0A\00", [46 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.62 = internal global ptr @sata_pmp_eh_recover._entry.60, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.41, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016ata%u: PMP SError.N set for some ports, repeating recovery\0A\00", [34 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.65 = internal global ptr @sata_pmp_eh_recover._entry.63, section ".printk_index", align 4
@sata_pmp_eh_recover._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.41, ptr @.str.2, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ata%u: failed to recover PMP after %d tries, giving up\0A\00", [38 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover._entry_ptr.68 = internal global ptr @sata_pmp_eh_recover._entry.66, section ".printk_index", align 4
@sata_pmp_eh_recover_pmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ata%u.%02u: failed to reset PMP, giving up\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sata_pmp_eh_recover_pmp\00", [40 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover_pmp._entry_ptr = internal global ptr @sata_pmp_eh_recover_pmp._entry, section ".printk_index", align 4
@sata_pmp_eh_recover_pmp._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ata%u: failed to reset PMP, giving up\0A\00", [55 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover_pmp._entry_ptr.73 = internal global ptr @sata_pmp_eh_recover_pmp._entry.71, section ".printk_index", align 4
@sata_pmp_eh_recover_pmp._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ata%u.%02u: failed to recover PMP after %d tries, giving up\0A\00", [33 x i8] zeroinitializer }, align 32
@sata_pmp_eh_recover_pmp._entry_ptr.76 = internal global ptr @sata_pmp_eh_recover_pmp._entry.74, section ".printk_index", align 4
@sata_pmp_revalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ata%u.%02u: PMP revalidation failed (errno=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_pmp_revalidate\00", [44 x i8] zeroinitializer }, align 32
@sata_pmp_revalidate._entry_ptr = internal global ptr @sata_pmp_revalidate._entry, section ".printk_index", align 4
@sata_pmp_same_pmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016ata%u.%02u: Port Multiplier vendor mismatch '0x%x' != '0x%x'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sata_pmp_same_pmp\00", [46 x i8] zeroinitializer }, align 32
@sata_pmp_same_pmp._entry_ptr = internal global ptr @sata_pmp_same_pmp._entry, section ".printk_index", align 4
@sata_pmp_same_pmp._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016ata%u.%02u: Port Multiplier device ID mismatch '0x%x' != '0x%x'\0A\00", [61 x i8] zeroinitializer }, align 32
@sata_pmp_same_pmp._entry_ptr.83 = internal global ptr @sata_pmp_same_pmp._entry.81, section ".printk_index", align 4
@sata_pmp_same_pmp._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ata%u.%02u: Port Multiplier nr_ports mismatch '0x%x' != '0x%x'\0A\00", [62 x i8] zeroinitializer }, align 32
@sata_pmp_same_pmp._entry_ptr.86 = internal global ptr @sata_pmp_same_pmp._entry.84, section ".printk_index", align 4
@sata_pmp_revalidate_quick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ata%u.%02u: failed to read PMP product ID (Emask=0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sata_pmp_revalidate_quick\00", [38 x i8] zeroinitializer }, align 32
@sata_pmp_revalidate_quick._entry_ptr = internal global ptr @sata_pmp_revalidate_quick._entry, section ".printk_index", align 4
@sata_pmp_revalidate_quick._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ata%u.%02u: PMP product ID mismatch\0A\00", [57 x i8] zeroinitializer }, align 32
@sata_pmp_revalidate_quick._entry_ptr.91 = internal global ptr @sata_pmp_revalidate_quick._entry.89, section ".printk_index", align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sata_pmp_eh_handle_disabled_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ata%u.%02u: failed to clear SError.N (errno=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sata_pmp_eh_handle_disabled_links\00", [62 x i8] zeroinitializer }, align 32
@sata_pmp_eh_handle_disabled_links._entry_ptr = internal global ptr @sata_pmp_eh_handle_disabled_links._entry, section ".printk_index", align 4
@sata_pmp_eh_handle_disabled_links._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ata%u: failed to clear SError.N (errno=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@sata_pmp_eh_handle_disabled_links._entry_ptr.96 = internal global ptr @sata_pmp_eh_handle_disabled_links._entry.94, section ".printk_index", align 4
@sata_pmp_handle_link_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014ata%u.%02u: failed to recover link after %d tries, disabling\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sata_pmp_handle_link_fail\00", [38 x i8] zeroinitializer }, align 32
@sata_pmp_handle_link_fail._entry_ptr = internal global ptr @sata_pmp_handle_link_fail._entry, section ".printk_index", align 4
@sata_pmp_handle_link_fail._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014ata%u: failed to recover link after %d tries, disabling\0A\00", [37 x i8] zeroinitializer }, align 32
@sata_pmp_handle_link_fail._entry_ptr.101 = internal global ptr @sata_pmp_handle_link_fail._entry.99, section ".printk_index", align 4
@sata_pmp_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ata%u.%02u: Port Multiplier detaching\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sata_pmp_detach\00", [16 x i8] zeroinitializer }, align 32
@sata_pmp_detach._entry_ptr = internal global ptr @sata_pmp_detach._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 16, i64 4245, i64 4523, i64 6523]
@__sancov_gen_cov_switch_values.105 = internal global [10 x i64] [i64 8, i64 16, i64 14118, i64 14374, i64 18211, i64 18214, i64 22307, i64 22323, i64 22324, i64 22340]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 805, i64 9042]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 16, i64 14118, i64 14374]
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"sata_pmp_port_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 16, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 150, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 181, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 495, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 500, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 505, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 524, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"gscr_to_read\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 225, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 234, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 272, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 285, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 301, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 308, i32 13 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 314, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 322, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 330, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 248, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 250, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 252, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 253, i32 9 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 969, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1013, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1024, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1040, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1042, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1048, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1077, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 774, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 815, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 690, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 611, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 618, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 625, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 713, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 720, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 861, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 885, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.394 = private constant [28 x i8] c"../drivers/ata/libata-pmp.c\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 566, i32 2 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__ksymtab_sata_pmp_error_handler, ptr @__ksymtab_sata_pmp_port_ops, ptr @__ksymtab_sata_pmp_qc_defer_cmd_switch, ptr @sata_pmp_attach._entry, ptr @sata_pmp_attach._entry.13, ptr @sata_pmp_attach._entry.16, ptr @sata_pmp_attach._entry.19, ptr @sata_pmp_attach._entry_ptr, ptr @sata_pmp_attach._entry_ptr.15, ptr @sata_pmp_attach._entry_ptr.18, ptr @sata_pmp_attach._entry_ptr.21, ptr @sata_pmp_configure._entry, ptr @sata_pmp_configure._entry.30, ptr @sata_pmp_configure._entry.33, ptr @sata_pmp_configure._entry_ptr, ptr @sata_pmp_configure._entry_ptr.32, ptr @sata_pmp_configure._entry_ptr.35, ptr @sata_pmp_detach._entry, ptr @sata_pmp_detach._entry_ptr, ptr @sata_pmp_eh_handle_disabled_links._entry, ptr @sata_pmp_eh_handle_disabled_links._entry.94, ptr @sata_pmp_eh_handle_disabled_links._entry_ptr, ptr @sata_pmp_eh_handle_disabled_links._entry_ptr.96, ptr @sata_pmp_eh_recover._entry, ptr @sata_pmp_eh_recover._entry.42, ptr @sata_pmp_eh_recover._entry.45, ptr @sata_pmp_eh_recover._entry.48, ptr @sata_pmp_eh_recover._entry.51, ptr @sata_pmp_eh_recover._entry.54, ptr @sata_pmp_eh_recover._entry.57, ptr @sata_pmp_eh_recover._entry.60, ptr @sata_pmp_eh_recover._entry.63, ptr @sata_pmp_eh_recover._entry.66, ptr @sata_pmp_eh_recover._entry_ptr, ptr @sata_pmp_eh_recover._entry_ptr.44, ptr @sata_pmp_eh_recover._entry_ptr.47, ptr @sata_pmp_eh_recover._entry_ptr.50, ptr @sata_pmp_eh_recover._entry_ptr.53, ptr @sata_pmp_eh_recover._entry_ptr.56, ptr @sata_pmp_eh_recover._entry_ptr.59, ptr @sata_pmp_eh_recover._entry_ptr.62, ptr @sata_pmp_eh_recover._entry_ptr.65, ptr @sata_pmp_eh_recover._entry_ptr.68, ptr @sata_pmp_eh_recover_pmp._entry, ptr @sata_pmp_eh_recover_pmp._entry.71, ptr @sata_pmp_eh_recover_pmp._entry.74, ptr @sata_pmp_eh_recover_pmp._entry_ptr, ptr @sata_pmp_eh_recover_pmp._entry_ptr.73, ptr @sata_pmp_eh_recover_pmp._entry_ptr.76, ptr @sata_pmp_handle_link_fail._entry, ptr @sata_pmp_handle_link_fail._entry.99, ptr @sata_pmp_handle_link_fail._entry_ptr, ptr @sata_pmp_handle_link_fail._entry_ptr.101, ptr @sata_pmp_read_gscr._entry, ptr @sata_pmp_read_gscr._entry_ptr, ptr @sata_pmp_revalidate._entry, ptr @sata_pmp_revalidate._entry_ptr, ptr @sata_pmp_revalidate_quick._entry, ptr @sata_pmp_revalidate_quick._entry.89, ptr @sata_pmp_revalidate_quick._entry_ptr, ptr @sata_pmp_revalidate_quick._entry_ptr.91, ptr @sata_pmp_same_pmp._entry, ptr @sata_pmp_same_pmp._entry.81, ptr @sata_pmp_same_pmp._entry.84, ptr @sata_pmp_same_pmp._entry_ptr, ptr @sata_pmp_same_pmp._entry_ptr.83, ptr @sata_pmp_same_pmp._entry_ptr.86, ptr @sata_pmp_scr_read._entry, ptr @sata_pmp_scr_read._entry.3, ptr @sata_pmp_scr_read._entry_ptr, ptr @sata_pmp_scr_read._entry_ptr.5, ptr @sata_pmp_scr_write._entry, ptr @sata_pmp_scr_write._entry.8, ptr @sata_pmp_scr_write._entry_ptr, ptr @sata_pmp_scr_write._entry_ptr.10, ptr @sata_pmp_port_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @sata_pmp_read_gscr.gscr_to_read, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_scr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_scr_read._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_scr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_scr_write._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_read_gscr.gscr_to_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_read_gscr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_configure._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_configure._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover_pmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover_pmp._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_recover_pmp._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_revalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_same_pmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_same_pmp._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_same_pmp._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_revalidate_quick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_revalidate_quick._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_handle_disabled_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_eh_handle_disabled_links._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_handle_link_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_handle_link_fail._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pmp_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_prereset(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_postreset(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sata_pmp_error_handler(ptr noundef %ap) #1 align 64 {
entry:
  %tf.i42.i = alloca %struct.ata_taskfile, align 4
  %tf.i22.i = alloca %struct.ata_taskfile, align 4
  %tf.i.i = alloca %struct.ata_taskfile, align 4
  %tf.i.i.i.i = alloca %struct.ata_taskfile, align 4
  %link_tries.i = alloca [15 x i32], align 4
  %link3.i = alloca ptr, align 4
  %sntf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ata_eh_autopsy(ptr noundef %ap) #5
  tail call void @ata_eh_report(ptr noundef %ap) #5
  %ops1.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %0 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %link_tries.i) #5
  %2 = call ptr @memset(ptr %link_tries.i, i32 255, i32 60)
  %link.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %device.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link3.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sntf.i) #5
  %3 = ptrtoint ptr %sntf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sntf.i, align 4, !annotation !185
  %call.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #5
  %tobool.not87.i = icmp eq ptr %call.i, null
  br i1 %tobool.not87.i, label %entry.retry.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.retry.preheader.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry.preheader.i

retry.preheader.i:                                ; preds = %for.body.i.retry.preheader.i_crit_edge, %entry.retry.preheader.i_crit_edge
  %4 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %link3.i, align 4
  %nr_pmp_links.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %prereset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 14
  %softreset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 15
  %hardreset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 16
  %postreset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 17
  %class.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 9
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 3
  %classes.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 3
  %action.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 25
  %arrayidx9.i.i.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 25, i32 0, i32 2
  %devno.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 1
  %probe_mask51.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 0, i32 6
  %6 = getelementptr inbounds i8, ptr %tf.i.i.i.i, i32 4
  %ctl1.i.i.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 13
  %command.i.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 14
  %nsect.i.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 9
  %lbal.i.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 10
  %lbam.i.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 11
  %lbah.i.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i.i.i, i32 0, i32 12
  %pmp.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 1
  %flags79.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 0, i32 5
  %arrayidx38.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 25, i32 0, i32 96
  %8 = getelementptr inbounds i8, ptr %tf.i.i, i32 4
  %ctl1.i.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 13
  %command.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 14
  %feature.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 8
  %nsect.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 9
  %lbal.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 10
  %lbam.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 11
  %lbah.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i.i, i32 0, i32 12
  %lock.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 2
  %pmp_prereset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 18
  %pmp_softreset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 19
  %pmp_hardreset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 20
  %pmp_postreset.i = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 21
  %10 = getelementptr inbounds i8, ptr %tf.i22.i, i32 4
  %ctl1.i.i25.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 13
  %command.i26.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 14
  %feature.i27.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 8
  %nsect.i31.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 9
  %lbal.i34.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 10
  %lbam.i37.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 11
  %lbah.i40.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i22.i, i32 0, i32 12
  %12 = getelementptr inbounds i8, ptr %tf.i42.i, i32 4
  %ctl1.i.i45.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 13
  %command.i46.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 14
  %feature.i47.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 8
  %pflags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %nsect.i52.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 9
  %lbal.i54.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 10
  %lbam.i55.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 11
  %lbah.i56.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i42.i, i32 0, i32 12
  %print_id208.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  br label %retry.outer76.i.outer

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %storemerge88.i = phi ptr [ %call4.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %storemerge88.i, i32 0, i32 1
  %14 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pmp.i, align 4
  %arrayidx.i = getelementptr [15 x i32], ptr %link_tries.i, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %arrayidx.i, align 4
  %call4.i = tail call ptr @ata_link_next(ptr noundef nonnull %storemerge88.i, ptr noundef %ap, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.body.i.retry.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.retry.preheader.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry.preheader.i

retry.i:                                          ; preds = %retry.i.backedge, %retry.outer76.i
  %17 = ptrtoint ptr %nr_pmp_links.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pmp_links.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not.i = icmp eq i32 %18, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %retry.i.if.end29.i_crit_edge

retry.i.if.end29.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then.i:                                        ; preds = %retry.i
  %19 = ptrtoint ptr %prereset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prereset.i, align 4
  %21 = ptrtoint ptr %softreset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %softreset.i, align 4
  %23 = ptrtoint ptr %hardreset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hardreset.i, align 4
  %25 = ptrtoint ptr %postreset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %postreset.i, align 4
  %call6.i = call i32 @ata_eh_recover(ptr noundef %ap, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then.i
  %call10.i = call ptr @ata_dev_next(ptr noundef null, ptr noundef %link.i, i32 noundef 2) #5
  %tobool12.not98.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not98.i, label %if.then8.i.sata_pmp_eh_recover.exit_crit_edge, label %if.then8.i.for.body13.i_crit_edge

if.then8.i.for.body13.i_crit_edge:                ; preds = %if.then8.i
  br label %for.body13.i

if.then8.i.sata_pmp_eh_recover.exit_crit_edge:    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %if.then8.i.for.body13.i_crit_edge
  %dev.099.i = phi ptr [ %call16.i, %for.body13.i.for.body13.i_crit_edge ], [ %call10.i, %if.then8.i.for.body13.i_crit_edge ]
  call void @ata_dev_disable(ptr noundef nonnull %dev.099.i) #5
  %call16.i = call ptr @ata_dev_next(ptr noundef nonnull %dev.099.i, ptr noundef %link.i, i32 noundef 2) #5
  %tobool12.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool12.not.i, label %for.body13.i.sata_pmp_eh_recover.exit_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.body13.i.sata_pmp_eh_recover.exit_crit_edge:  ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

if.end.i:                                         ; preds = %if.then.i
  %27 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 5
  br i1 %cmp.not.i, label %if.end19.i, label %if.end.i.sata_pmp_eh_recover.exit_crit_edge

if.end.i.sata_pmp_eh_recover.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

if.end19.i:                                       ; preds = %if.end.i
  %call20.i = call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #5
  %29 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call20.i, ptr %link3.i, align 4
  %tobool22.not89.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not89.i, label %if.end19.i.if.end29.i_crit_edge, label %if.end19.i.for.body23.i_crit_edge

if.end19.i.for.body23.i_crit_edge:                ; preds = %if.end19.i
  br label %for.body23.i

if.end19.i.if.end29.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %if.end19.i.for.body23.i_crit_edge
  %storemerge190.i = phi ptr [ %call27.i, %for.body23.i.for.body23.i_crit_edge ], [ %call20.i, %if.end19.i.for.body23.i_crit_edge ]
  %pmp24.i = getelementptr inbounds %struct.ata_link, ptr %storemerge190.i, i32 0, i32 1
  %30 = ptrtoint ptr %pmp24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmp24.i, align 4
  %arrayidx25.i = getelementptr [15 x i32], ptr %link_tries.i, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %arrayidx25.i, align 4
  %call27.i = call ptr @ata_link_next(ptr noundef nonnull %storemerge190.i, ptr noundef %ap, i32 noundef 0) #5
  %33 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call27.i, ptr %link3.i, align 4
  %tobool22.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool22.not.i, label %for.body23.i.if.end29.i_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body23.i

for.body23.i.if.end29.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %for.body23.i.if.end29.i_crit_edge, %if.end19.i.if.end29.i_crit_edge, %retry.i.if.end29.i_crit_edge
  %34 = ptrtoint ptr %prereset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prereset.i, align 4
  %36 = ptrtoint ptr %softreset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %softreset.i, align 4
  %38 = ptrtoint ptr %hardreset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hardreset.i, align 4
  %40 = ptrtoint ptr %postreset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %postreset.i, align 4
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end29.i.retry.i.i_crit_edge, label %fail.thread.i.i

if.end29.i.retry.i.i_crit_edge:                   ; preds = %if.end29.i
  br label %retry.i.i

fail.thread.i.i:                                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @sata_pmp_detach(ptr noundef %device.i) #5
  br label %if.then81.i.i

retry.i.i:                                        ; preds = %if.end62.i.i, %if.end29.i.retry.i.i_crit_edge
  %detach.0.i.i = phi i32 [ %detach.1150.i.i, %if.end62.i.i ], [ 0, %if.end29.i.retry.i.i_crit_edge ]
  %tobool58.not.i.i = phi i1 [ false, %if.end62.i.i ], [ true, %if.end29.i.retry.i.i_crit_edge ]
  %tries.0.i.i = phi i32 [ %tries.1151.i.i, %if.end62.i.i ], [ 5, %if.end29.i.retry.i.i_crit_edge ]
  %44 = ptrtoint ptr %classes.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %classes.i.i, align 4
  %45 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %action.i.i, align 4
  %and2.i.i = and i32 %46, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %retry.i.i.if.end35.i.i_crit_edge, label %if.then4.i.i

retry.i.i.if.end35.i.i_crit_edge:                 ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i.i

if.then4.i.i:                                     ; preds = %retry.i.i
  %call.i.i = call i32 @ata_eh_reset(ptr noundef %link.i, i32 noundef 0, ptr noundef %35, ptr noundef %37, ptr noundef %39, ptr noundef %41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end25.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then4.i.i
  %47 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link.i, align 128
  %nr_pmp_links.i.i.i = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %nr_pmp_links.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_pmp_links.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %do.body.i.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 26
  %51 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slave_link.i.i, align 128
  %tobool10.not.i.i = icmp eq ptr %52, null
  br i1 %tobool10.not.i.i, label %do.end17.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %print_id.i.i = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %53 = ptrtoint ptr %print_id.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %print_id.i.i, align 4
  %55 = ptrtoint ptr %pmp.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pmp.i.i, align 4
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %54, i32 noundef %56) #8
  br label %fail.i.i

do.end17.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %print_id20.i.i = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %57 = ptrtoint ptr %print_id20.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %print_id20.i.i, align 4
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %58) #8
  br label %fail.i.i

if.end25.i.i:                                     ; preds = %if.then4.i.i
  %call26.i.i = call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #5
  %tobool27.not159.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool27.not159.i.i, label %if.end25.i.i.if.end35.i.i_crit_edge, label %if.end25.i.i.for.body.i.i_crit_edge

if.end25.i.i.for.body.i.i_crit_edge:              ; preds = %if.end25.i.i
  br label %for.body.i.i

if.end25.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end25.i.i.for.body.i.i_crit_edge
  %tlink.0160.i.i = phi ptr [ %call34.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call26.i.i, %if.end25.i.i.for.body.i.i_crit_edge ]
  %probe_mask.i.i = getelementptr inbounds %struct.ata_link, ptr %tlink.0160.i.i, i32 0, i32 12, i32 0, i32 6
  %59 = ptrtoint ptr %probe_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %probe_mask.i.i, align 4
  %or.i.i = or i32 %60, 3
  store i32 %or.i.i, ptr %probe_mask.i.i, align 4
  %action32.i.i = getelementptr inbounds %struct.ata_link, ptr %tlink.0160.i.i, i32 0, i32 12, i32 0, i32 3
  %61 = ptrtoint ptr %action32.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %action32.i.i, align 4
  %or33.i.i = or i32 %62, 6
  store i32 %or33.i.i, ptr %action32.i.i, align 4
  %call34.i.i = call ptr @ata_link_next(ptr noundef nonnull %tlink.0160.i.i, ptr noundef %ap, i32 noundef 0) #5
  %tobool27.not.i.i = icmp eq ptr %call34.i.i, null
  br i1 %tobool27.not.i.i, label %for.body.i.i.if.end35.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.if.end35.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %for.body.i.i.if.end35.i.i_crit_edge, %if.end25.i.i.if.end35.i.i_crit_edge, %retry.i.i.if.end35.i.i_crit_edge
  %63 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %action.i.i, align 4
  %and38.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.else44.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %65 = ptrtoint ptr %classes.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %classes.i.i, align 4
  %67 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device.i, align 128
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 128
  %sector_buf.i.i.i = getelementptr inbounds %struct.ata_port, ptr %70, i32 0, i32 49
  call void @ata_eh_about_to_do(ptr noundef %68, ptr noundef null, i32 noundef 1) #5
  %71 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %class.i, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %if.then40.i.i.if.then48.i.i_crit_edge [
    i32 1, label %if.then40.i.i.if.end.i.i.i_crit_edge
    i32 3, label %if.then40.i.i.if.end.i.i.i_crit_edge59
    i32 5, label %if.then40.i.i.if.end.i.i.i_crit_edge60
    i32 7, label %if.then40.i.i.if.end.i.i.i_crit_edge61
    i32 9, label %if.then40.i.i.if.end.i.i.i_crit_edge62
  ]

if.then40.i.i.if.end.i.i.i_crit_edge62:           ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then40.i.i.if.end.i.i.i_crit_edge61:           ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then40.i.i.if.end.i.i.i_crit_edge60:           ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then40.i.i.if.end.i.i.i_crit_edge59:           ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then40.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then40.i.i.if.then48.i.i_crit_edge:            ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48.i.i

if.end.i.i.i:                                     ; preds = %if.then40.i.i.if.end.i.i.i_crit_edge, %if.then40.i.i.if.end.i.i.i_crit_edge59, %if.then40.i.i.if.end.i.i.i_crit_edge60, %if.then40.i.i.if.end.i.i.i_crit_edge61, %if.then40.i.i.if.end.i.i.i_crit_edge62
  %switch.tableidx = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %74 = icmp ult i32 %switch.tableidx, 9
  br i1 %74, label %switch.hole_check, label %if.end.i.i.i.if.end6.i.i.i_crit_edge

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %switch.hole_check.if.end6.i.i.i_crit_edge, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %call7.i.i.i = call fastcc i32 @sata_pmp_read_gscr(ptr noundef %device.i, ptr noundef %sector_buf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end10.i.i.i, label %if.end6.i.i.i.if.then48.i.i_crit_edge

if.end6.i.i.i.if.then48.i.i_crit_edge:            ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48.i.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %5, align 4
  %77 = ptrtoint ptr %sector_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sector_buf.i.i.i, align 4
  %79 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %and10.i.i.i.i = and i32 %80, 15
  %arrayidx11.i.i.i.i = getelementptr %struct.ata_port, ptr %70, i32 0, i32 49, i32 8
  %81 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  %and12.i.i.i.i = and i32 %82, 15
  %conv13.i.i.i.i = and i32 %76, 65535
  %conv14.i.i.i.i = and i32 %78, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13.i.i.i.i, i32 %conv14.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %conv13.i.i.i.i, %conv14.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 128
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 128
  %print_id.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %print_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %print_id.i.i.i.i, align 4
  %pmp.i.i.i.i = getelementptr inbounds %struct.ata_link, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %pmp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pmp.i.i.i.i, align 4
  %91 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %devno.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %92, %90
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %88, i32 noundef %add.i.i.i.i, i32 noundef %conv13.i.i.i.i, i32 noundef %conv14.i.i.i.i) #8
  br label %if.then48.i.i

if.end.i.i.i.i:                                   ; preds = %if.end10.i.i.i
  %shr7.i.i.i.i = lshr i32 %78, 16
  %shr.i.i.i.i = lshr i32 %76, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i, i32 %shr7.i.i.i.i)
  %cmp21.not.i.i.i.i = icmp eq i32 %shr.i.i.i.i, %shr7.i.i.i.i
  br i1 %cmp21.not.i.i.i.i, label %if.end38.i.i.i.i, label %do.end26.i.i.i.i

do.end26.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device.i, align 128
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 128
  %print_id30.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %print_id30.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %print_id30.i.i.i.i, align 4
  %pmp32.i.i.i.i = getelementptr inbounds %struct.ata_link, ptr %94, i32 0, i32 1
  %99 = ptrtoint ptr %pmp32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pmp32.i.i.i.i, align 4
  %101 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %devno.i.i.i.i, align 4
  %add34.i.i.i.i = add i32 %102, %100
  %call37.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %98, i32 noundef %add34.i.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %shr7.i.i.i.i) #8
  br label %if.then48.i.i

if.end38.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.i.i.i.i, i32 %and12.i.i.i.i)
  %cmp39.not.i.i.i.i = icmp eq i32 %and10.i.i.i.i, %and12.i.i.i.i
  br i1 %cmp39.not.i.i.i.i, label %if.end14.i.i.i, label %do.end44.i.i.i.i

do.end44.i.i.i.i:                                 ; preds = %if.end38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device.i, align 128
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 128
  %print_id48.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %print_id48.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %print_id48.i.i.i.i, align 4
  %pmp50.i.i.i.i = getelementptr inbounds %struct.ata_link, ptr %104, i32 0, i32 1
  %109 = ptrtoint ptr %pmp50.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pmp50.i.i.i.i, align 4
  %111 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %devno.i.i.i.i, align 4
  %add52.i.i.i.i = add i32 %112, %110
  %call53.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %108, i32 noundef %add52.i.i.i.i, i32 noundef %and10.i.i.i.i, i32 noundef %and12.i.i.i.i) #8
  br label %if.then48.i.i

if.end14.i.i.i:                                   ; preds = %if.end38.i.i.i.i
  %113 = call ptr @memcpy(ptr %5, ptr %sector_buf.i.i.i, i32 512)
  %call16.i.i.i = call fastcc i32 @sata_pmp_configure(ptr noundef %device.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end19.i.i.i, label %if.end14.i.i.i.if.then48.i.i_crit_edge

if.end14.i.i.i.if.then48.i.i_crit_edge:           ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48.i.i

if.end19.i.i.i:                                   ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ata_eh_done(ptr noundef %68, ptr noundef null, i32 noundef 1) #5
  br label %if.end37.i

if.else44.i.i:                                    ; preds = %if.end35.i.i
  %114 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device.i, align 128
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 128
  %device.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %117, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i.i.i.i) #5
  %118 = call ptr @memset(ptr %6, i32 0, i32 20)
  %119 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device.i.i.i.i, align 128
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 128
  %ctl.i.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %ctl.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ctl.i.i.i.i.i, align 4
  %125 = ptrtoint ptr %ctl1.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %ctl1.i.i.i.i.i, align 1
  %126 = ptrtoint ptr %command.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -28, ptr %command.i.i.i.i, align 1
  %127 = ptrtoint ptr %tf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 7, ptr %tf.i.i.i.i, align 4
  %pmp.i.i126.i.i = getelementptr inbounds %struct.ata_link, ptr %115, i32 0, i32 1
  %128 = ptrtoint ptr %pmp.i.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pmp.i.i126.i.i, align 4
  %conv3.i.i.i.i = trunc i32 %129 to i8
  %130 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv3.i.i.i.i, ptr %7, align 4
  %call.i.i127.i.i = call i32 @ata_exec_internal(ptr noundef %device.i.i.i.i, ptr noundef nonnull %tf.i.i.i.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i127.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i134.i.i, label %do.end.i132.i.i

do.end.i132.i.i:                                  ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i.i.i.i) #5
  %131 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device.i, align 128
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 128
  %print_id.i128.i.i = getelementptr inbounds %struct.ata_port, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %print_id.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %print_id.i128.i.i, align 4
  %pmp.i129.i.i = getelementptr inbounds %struct.ata_link, ptr %132, i32 0, i32 1
  %137 = ptrtoint ptr %pmp.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pmp.i129.i.i, align 4
  %139 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %devno.i.i.i.i, align 4
  %add.i131.i.i = add i32 %140, %138
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %136, i32 noundef %add.i131.i.i, i32 noundef %call.i.i127.i.i) #8
  br label %if.then48.thread.i.i

if.end.i134.i.i:                                  ; preds = %if.else44.i.i
  %141 = ptrtoint ptr %nsect.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %nsect.i.i.i.i, align 4
  %conv5.i.i.i.i = zext i8 %142 to i32
  %143 = ptrtoint ptr %lbal.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %lbal.i.i.i.i, align 1
  %conv6.i.i.i.i = zext i8 %144 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv6.i.i.i.i, 8
  %or7.i.i.i.i = or i32 %shl.i.i.i.i, %conv5.i.i.i.i
  %145 = ptrtoint ptr %lbam.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %lbam.i.i.i.i, align 2
  %conv8.i.i.i.i = zext i8 %146 to i32
  %shl9.i.i.i.i = shl nuw nsw i32 %conv8.i.i.i.i, 16
  %or10.i.i.i.i = or i32 %or7.i.i.i.i, %shl9.i.i.i.i
  %147 = ptrtoint ptr %lbah.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %lbah.i.i.i.i, align 1
  %conv11.i.i.i.i = zext i8 %148 to i32
  %shl12.i.i.i.i = shl nuw i32 %conv11.i.i.i.i, 24
  %or13.i.i.i.i = or i32 %or10.i.i.i.i, %shl12.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i.i.i.i) #5
  %149 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %or13.i.i.i.i, i32 %150)
  %cmp.not.i133.i.i = icmp eq i32 %or13.i.i.i.i, %150
  br i1 %cmp.not.i133.i.i, label %if.end.i134.i.i.if.end37.i_crit_edge, label %do.end7.i.i.i

if.end.i134.i.i.if.end37.i_crit_edge:             ; preds = %if.end.i134.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

do.end7.i.i.i:                                    ; preds = %if.end.i134.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device.i, align 128
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 128
  %print_id11.i.i.i = getelementptr inbounds %struct.ata_port, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %print_id11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %print_id11.i.i.i, align 4
  %pmp13.i.i.i = getelementptr inbounds %struct.ata_link, ptr %152, i32 0, i32 1
  %157 = ptrtoint ptr %pmp13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pmp13.i.i.i, align 4
  %159 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %devno.i.i.i.i, align 4
  %add15.i.i.i = add i32 %160, %158
  %call16.i135.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %156, i32 noundef %add15.i.i.i) #8
  br label %if.then48.thread.i.i

if.then48.thread.i.i:                             ; preds = %do.end7.i.i.i, %do.end.i132.i.i
  %dec143.i.i = add i32 %tries.0.i.i, -1
  br label %if.end55.i.i

switch.hole_check:                                ; preds = %if.end.i.i.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 325, %switch.maskindex
  %161 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %switch.lobit.not = icmp eq i16 %161, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end6.i.i.i_crit_edge, label %switch.hole_check.if.then48.i.i_crit_edge

switch.hole_check.if.then48.i.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48.i.i

switch.hole_check.if.end6.i.i.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i.i

if.then48.i.i:                                    ; preds = %switch.hole_check.if.then48.i.i_crit_edge, %if.end14.i.i.i.if.then48.i.i_crit_edge, %do.end44.i.i.i.i, %do.end26.i.i.i.i, %do.end.i.i.i.i, %if.end6.i.i.i.if.then48.i.i_crit_edge, %if.then40.i.i.if.then48.i.i_crit_edge
  %rc.0.i.i.i = phi i32 [ %call7.i.i.i, %if.end6.i.i.i.if.then48.i.i_crit_edge ], [ %call16.i.i.i, %if.end14.i.i.i.if.then48.i.i_crit_edge ], [ -19, %do.end.i.i.i.i ], [ -19, %do.end26.i.i.i.i ], [ -19, %do.end44.i.i.i.i ], [ -19, %if.then40.i.i.if.then48.i.i_crit_edge ], [ -19, %switch.hole_check.if.then48.i.i_crit_edge ]
  %162 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %device.i, align 128
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 128
  %print_id.i.i.i = getelementptr inbounds %struct.ata_port, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %print_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %print_id.i.i.i, align 4
  %pmp.i.i.i = getelementptr inbounds %struct.ata_link, ptr %163, i32 0, i32 1
  %168 = ptrtoint ptr %pmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pmp.i.i.i, align 4
  %170 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %devno.i.i.i.i, align 4
  %add.i.i.i = add i32 %171, %169
  %call23.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %167, i32 noundef %add.i.i.i, i32 noundef %rc.0.i.i.i) #8
  %dec.i.i = add i32 %tries.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %rc.0.i.i.i)
  %cmp.i4.i = icmp eq i32 %rc.0.i.i.i, -19
  br i1 %cmp.i4.i, label %if.then49.i.i, label %if.then48.i.i.if.end55.i.i_crit_edge

if.then48.i.i.if.end55.i.i_crit_edge:             ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i

if.then49.i.i:                                    ; preds = %if.then48.i.i
  %172 = ptrtoint ptr %probe_mask51.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %probe_mask51.i.i, align 4
  %or52.i.i = or i32 %173, 3
  store i32 %or52.i.i, ptr %probe_mask51.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec.i.i)
  %cmp54.i.i = icmp slt i32 %dec.i.i, 2
  br i1 %cmp54.i.i, label %if.then49.i.i.if.end55.i.i_crit_edge, label %if.then49.i.i.if.then57.i.i_crit_edge

if.then49.i.i.if.then57.i.i_crit_edge:            ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57.i.i

if.then49.i.i.if.end55.i.i_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then49.i.i.if.end55.i.i_crit_edge, %if.then48.i.i.if.end55.i.i_crit_edge, %if.then48.thread.i.i
  %detach.1.i.i = phi i32 [ %detach.0.i.i, %if.then48.i.i.if.end55.i.i_crit_edge ], [ %detach.0.i.i, %if.then48.thread.i.i ], [ 1, %if.then49.i.i.if.end55.i.i_crit_edge ]
  %tries.1.i.i = phi i32 [ %dec.i.i, %if.then48.i.i.if.end55.i.i_crit_edge ], [ %dec143.i.i, %if.then48.thread.i.i ], [ %dec.i.i, %if.then49.i.i.if.end55.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.1.i.i)
  %tobool56.not.i.i = icmp eq i32 %tries.1.i.i, 0
  br i1 %tobool56.not.i.i, label %do.end69.i.i, label %if.end55.i.i.if.then57.i.i_crit_edge

if.end55.i.i.if.then57.i.i_crit_edge:             ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.end55.i.i.if.then57.i.i_crit_edge, %if.then49.i.i.if.then57.i.i_crit_edge
  %tries.1151.i.i = phi i32 [ %tries.1.i.i, %if.end55.i.i.if.then57.i.i_crit_edge ], [ 2, %if.then49.i.i.if.then57.i.i_crit_edge ]
  %detach.1150.i.i = phi i32 [ %detach.1.i.i, %if.end55.i.i.if.then57.i.i_crit_edge ], [ 1, %if.then49.i.i.if.then57.i.i_crit_edge ]
  br i1 %tobool58.not.i.i, label %if.then57.i.i.if.end62.i.i_crit_edge, label %if.then59.i.i

if.then57.i.i.if.end62.i.i_crit_edge:             ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i.i

if.then59.i.i:                                    ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call60.i.i = call i32 @sata_down_spd_limit(ptr noundef %link.i, i32 noundef 0) #5
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then59.i.i, %if.then57.i.i.if.end62.i.i_crit_edge
  %174 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %action.i.i, align 4
  %or65.i.i = or i32 %175, 6
  store i32 %or65.i.i, ptr %action.i.i, align 4
  br label %retry.i.i

do.end69.i.i:                                     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %176 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %device.i, align 128
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 128
  %print_id73.i.i = getelementptr inbounds %struct.ata_port, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %print_id73.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %print_id73.i.i, align 4
  %pmp75.i.i = getelementptr inbounds %struct.ata_link, ptr %177, i32 0, i32 1
  %182 = ptrtoint ptr %pmp75.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pmp75.i.i, align 4
  %184 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %devno.i.i.i.i, align 4
  %add.i.i = add i32 %185, %183
  %call76.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %181, i32 noundef %add.i.i, i32 noundef 5) #8
  br label %fail.i.i

fail.i.i:                                         ; preds = %do.end69.i.i, %do.end17.i.i, %do.end.i.i
  %detach.2.i.i = phi i32 [ %detach.1.i.i, %do.end69.i.i ], [ %detach.0.i.i, %do.end17.i.i ], [ %detach.0.i.i, %do.end.i.i ]
  call fastcc void @sata_pmp_detach(ptr noundef %device.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %detach.2.i.i)
  %tobool80.not.i.i = icmp eq i32 %detach.2.i.i, 0
  br i1 %tobool80.not.i.i, label %if.else82.i.i, label %fail.i.i.if.then81.i.i_crit_edge

fail.i.i.if.then81.i.i_crit_edge:                 ; preds = %fail.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then81.i.i

if.then81.i.i:                                    ; preds = %fail.i.i.if.then81.i.i_crit_edge, %fail.thread.i.i
  call void @ata_eh_detach_dev(ptr noundef %device.i) #5
  br label %pmp_fail.i

if.else82.i.i:                                    ; preds = %fail.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ata_dev_disable(ptr noundef %device.i) #5
  br label %pmp_fail.i

if.end37.i:                                       ; preds = %if.end.i134.i.i.if.end37.i_crit_edge, %if.end19.i.i.i
  %186 = ptrtoint ptr %flags79.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %flags79.i.i, align 4
  %187 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx38.i, align 4
  %and.i = and i32 %188, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end67.i_crit_edge, label %if.then40.i

if.end37.i.if.end67.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.then40.i:                                      ; preds = %if.end37.i
  %and42.i = and i32 %188, -9
  %189 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %and42.i, ptr %arrayidx38.i, align 4
  %190 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %link.i, align 128
  %device.i5.i = getelementptr inbounds %struct.ata_port, ptr %191, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i.i) #5
  %192 = call ptr @memset(ptr %8, i32 0, i32 20)
  %193 = ptrtoint ptr %device.i5.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %device.i5.i, align 128
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 128
  %ctl.i.i.i = getelementptr inbounds %struct.ata_port, ptr %196, i32 0, i32 9
  %197 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ctl.i.i.i, align 4
  %199 = ptrtoint ptr %ctl1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %ctl1.i.i.i, align 1
  %200 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -24, ptr %command.i.i, align 1
  %201 = ptrtoint ptr %tf.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 7, ptr %tf.i.i, align 4
  %202 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 96, ptr %feature.i.i, align 1
  %203 = ptrtoint ptr %pmp.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pmp.i.i, align 4
  %conv3.i.i = trunc i32 %204 to i8
  %205 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv3.i.i, ptr %9, align 4
  %conv5.i.i = trunc i32 %and42.i to i8
  %206 = ptrtoint ptr %nsect.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv5.i.i, ptr %nsect.i.i, align 4
  %shr.i.i = lshr i32 %188, 8
  %conv7.i.i = trunc i32 %shr.i.i to i8
  %207 = ptrtoint ptr %lbal.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv7.i.i, ptr %lbal.i.i, align 1
  %shr8.i.i = lshr i32 %188, 16
  %conv10.i.i = trunc i32 %shr8.i.i to i8
  %208 = ptrtoint ptr %lbam.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv10.i.i, ptr %lbam.i.i, align 2
  %shr11.i.i = lshr i32 %188, 24
  %conv13.i.i = trunc i32 %shr11.i.i to i8
  %209 = ptrtoint ptr %lbah.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv13.i.i, ptr %lbah.i.i, align 1
  %call.i7.i = call i32 @ata_exec_internal(ptr noundef %device.i5.i, ptr noundef nonnull %tf.i.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool45.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool45.not.i, label %if.then40.i.if.end67.i_crit_edge, label %do.body.i

if.then40.i.if.end67.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

do.body.i:                                        ; preds = %if.then40.i
  %210 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %link.i, align 128
  %nr_pmp_links.i8.i = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 27
  %212 = ptrtoint ptr %nr_pmp_links.i8.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nr_pmp_links.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp.i9.not.i = icmp eq i32 %213, 0
  br i1 %cmp.i9.not.i, label %lor.lhs.false.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 26
  %214 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %slave_link.i, align 128
  %tobool50.not.i = icmp eq ptr %215, null
  br i1 %tobool50.not.i, label %do.end58.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 5
  %216 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %print_id.i, align 4
  %218 = ptrtoint ptr %pmp.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pmp.i.i, align 4
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %217, i32 noundef %219, i32 noundef %call.i7.i) #8
  br label %pmp_fail.i

do.end58.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %print_id61.i = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 5
  %220 = ptrtoint ptr %print_id61.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %print_id61.i, align 4
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %221, i32 noundef %call.i7.i) #8
  br label %pmp_fail.i

if.end67.i:                                       ; preds = %if.then40.i.if.end67.i_crit_edge, %if.end37.i.if.end67.i_crit_edge
  %222 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %lock.i.i, align 8
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %223) #5
  %call5.i.i = call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #5
  %tobool.not76.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not76.i.i, label %if.end67.i.if.end71.i_crit_edge, label %if.end67.i.for.body.i11.i_crit_edge

if.end67.i.for.body.i11.i_crit_edge:              ; preds = %if.end67.i
  br label %for.body.i11.i

if.end67.i.if.end71.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i

for.body.i11.i:                                   ; preds = %for.inc.i.i.for.body.i11.i_crit_edge, %if.end67.i.for.body.i11.i_crit_edge
  %link.078.i.i = phi ptr [ %call52.i.i, %for.inc.i.i.for.body.i11.i_crit_edge ], [ %call5.i.i, %if.end67.i.for.body.i11.i_crit_edge ]
  %flags.077.i.i = phi i32 [ %flags.1.i.i, %for.inc.i.i.for.body.i11.i_crit_edge ], [ %call2.i.i, %if.end67.i.for.body.i11.i_crit_edge ]
  %flags6.i.i = getelementptr inbounds %struct.ata_link, ptr %link.078.i.i, i32 0, i32 5
  %224 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %flags6.i.i, align 16
  %and.i10.i = and i32 %225, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool7.not.i.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool7.not.i.i, label %for.body.i11.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i11.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i11.i
  %226 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %lock.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %227, i32 noundef %flags.077.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %add.i.i12.i = add i32 %228, 500
  %call10.i.i = call i32 @sata_link_hardreset(ptr noundef nonnull %link.078.i.i, ptr noundef nonnull @sata_deb_timing_normal, i32 noundef %add.i.i12.i, ptr noundef null, ptr noundef null) #5
  %call11.i.i = call i32 @sata_scr_write(ptr noundef nonnull %link.078.i.i, i32 noundef 1, i32 noundef 65536) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body39.i.i, label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.end.i.i
  %229 = ptrtoint ptr %link.078.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %link.078.i.i, align 128
  %nr_pmp_links.i.i13.i = getelementptr inbounds %struct.ata_port, ptr %230, i32 0, i32 27
  %231 = ptrtoint ptr %nr_pmp_links.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %nr_pmp_links.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp.i.not.i14.i = icmp eq i32 %232, 0
  br i1 %cmp.i.not.i14.i, label %lor.lhs.false.i16.i, label %do.body14.i.i.do.end23.i.i_crit_edge

do.body14.i.i.do.end23.i.i_crit_edge:             ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

lor.lhs.false.i16.i:                              ; preds = %do.body14.i.i
  %slave_link.i15.i = getelementptr inbounds %struct.ata_port, ptr %230, i32 0, i32 26
  %233 = ptrtoint ptr %slave_link.i15.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %slave_link.i15.i, align 128
  %tobool19.not.i.i = icmp eq ptr %234, null
  br i1 %tobool19.not.i.i, label %do.end29.i.i, label %lor.lhs.false.i16.i.do.end23.i.i_crit_edge

lor.lhs.false.i16.i.do.end23.i.i_crit_edge:       ; preds = %lor.lhs.false.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %lor.lhs.false.i16.i.do.end23.i.i_crit_edge, %do.body14.i.i.do.end23.i.i_crit_edge
  %print_id.i17.i = getelementptr inbounds %struct.ata_port, ptr %230, i32 0, i32 5
  %235 = ptrtoint ptr %print_id.i17.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %print_id.i17.i, align 4
  %pmp.i18.i = getelementptr inbounds %struct.ata_link, ptr %link.078.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %pmp.i18.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pmp.i18.i, align 4
  %call26.i19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %236, i32 noundef %238, i32 noundef %call11.i.i) #8
  br label %pmp_fail.i

do.end29.i.i:                                     ; preds = %lor.lhs.false.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %print_id32.i.i = getelementptr inbounds %struct.ata_port, ptr %230, i32 0, i32 5
  %239 = ptrtoint ptr %print_id32.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %print_id32.i.i, align 4
  %call33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %240, i32 noundef %call11.i.i) #8
  br label %pmp_fail.i

do.body39.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %lock.i.i, align 8
  %call47.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %242) #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.body39.i.i, %for.body.i11.i.for.inc.i.i_crit_edge
  %flags.1.i.i = phi i32 [ %call47.i.i, %do.body39.i.i ], [ %flags.077.i.i, %for.body.i11.i.for.inc.i.i_crit_edge ]
  %call52.i.i = call ptr @ata_link_next(ptr noundef nonnull %link.078.i.i, ptr noundef %ap, i32 noundef 0) #5
  %tobool.not.i20.i = icmp eq ptr %call52.i.i, null
  br i1 %tobool.not.i20.i, label %for.inc.i.i.if.end71.i_crit_edge, label %for.inc.i.i.for.body.i11.i_crit_edge

for.inc.i.i.for.body.i11.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i11.i

for.inc.i.i.if.end71.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i

if.end71.i:                                       ; preds = %for.inc.i.i.if.end71.i_crit_edge, %if.end67.i.if.end71.i_crit_edge
  %flags.0.lcssa.i.i = phi i32 [ %call2.i.i, %if.end67.i.if.end71.i_crit_edge ], [ %flags.1.i.i, %for.inc.i.i.if.end71.i_crit_edge ]
  %243 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %lock.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %244, i32 noundef %flags.0.lcssa.i.i) #5
  %245 = ptrtoint ptr %pmp_prereset.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pmp_prereset.i, align 4
  %247 = ptrtoint ptr %pmp_softreset.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pmp_softreset.i, align 4
  %249 = ptrtoint ptr %pmp_hardreset.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pmp_hardreset.i, align 4
  %251 = ptrtoint ptr %pmp_postreset.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pmp_postreset.i, align 4
  %call72.i = call i32 @ata_eh_recover(ptr noundef %ap, ptr noundef %246, ptr noundef %248, ptr noundef %250, ptr noundef %252, ptr noundef nonnull %link3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %link_fail.i

if.end75.i:                                       ; preds = %if.end71.i
  %call77.i = call i32 @sata_scr_read(ptr noundef %link.i, i32 noundef 4, ptr noundef nonnull %sntf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp eq i32 %call77.i, 0
  br i1 %cmp78.i, label %if.then79.i, label %if.end75.i.if.end82.i_crit_edge

if.end75.i.if.end82.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

if.then79.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #7
  %253 = ptrtoint ptr %sntf.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %sntf.i, align 4
  %call81.i = call i32 @sata_scr_write(ptr noundef %link.i, i32 noundef 4, i32 noundef %254) #5
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then79.i, %if.end75.i.if.end82.i_crit_edge
  %call83.i = call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #5
  %255 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call83.i, ptr %link3.i, align 4
  %tobool85.not91.i = icmp eq ptr %call83.i, null
  br i1 %tobool85.not91.i, label %if.end82.i.for.end92.i_crit_edge, label %if.end82.i.for.body86.i_crit_edge

if.end82.i.for.body86.i_crit_edge:                ; preds = %if.end82.i
  br label %for.body86.i

if.end82.i.for.end92.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end92.i

for.body86.i:                                     ; preds = %for.inc90.i.for.body86.i_crit_edge, %if.end82.i.for.body86.i_crit_edge
  %storemerge292.i = phi ptr [ %call91.i, %for.inc90.i.for.body86.i_crit_edge ], [ %call83.i, %if.end82.i.for.body86.i_crit_edge ]
  %lpm_policy.i = getelementptr inbounds %struct.ata_link, ptr %storemerge292.i, i32 0, i32 10
  %256 = ptrtoint ptr %lpm_policy.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %lpm_policy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %257)
  %cmp87.i = icmp ugt i32 %257, 1
  br i1 %cmp87.i, label %for.body86.i.sata_pmp_eh_recover.exit_crit_edge, label %for.inc90.i

for.body86.i.sata_pmp_eh_recover.exit_crit_edge:  ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

for.inc90.i:                                      ; preds = %for.body86.i
  %call91.i = call ptr @ata_link_next(ptr noundef nonnull %storemerge292.i, ptr noundef %ap, i32 noundef 0) #5
  %258 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call91.i, ptr %link3.i, align 4
  %tobool85.not.i = icmp eq ptr %call91.i, null
  br i1 %tobool85.not.i, label %for.inc90.i.for.end92.i_crit_edge, label %for.inc90.i.for.body86.i_crit_edge

for.inc90.i.for.body86.i_crit_edge:               ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body86.i

for.inc90.i.for.end92.i_crit_edge:                ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end92.i

for.end92.i:                                      ; preds = %for.inc90.i.for.end92.i_crit_edge, %if.end82.i.for.end92.i_crit_edge
  %259 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %flags.i.i, align 4
  %and93.i = and i32 %260, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %for.end92.i.if.end112.i_crit_edge, label %if.then95.i

for.end92.i.if.end112.i_crit_edge:                ; preds = %for.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112.i

if.then95.i:                                      ; preds = %for.end92.i
  %261 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx38.i, align 4
  %or.i = or i32 %262, 8
  store i32 %or.i, ptr %arrayidx38.i, align 4
  %263 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %link.i, align 128
  %device.i23.i = getelementptr inbounds %struct.ata_port, ptr %264, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i22.i) #5
  %265 = call ptr @memset(ptr %10, i32 0, i32 20)
  %266 = ptrtoint ptr %device.i23.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %device.i23.i, align 128
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 128
  %ctl.i.i24.i = getelementptr inbounds %struct.ata_port, ptr %269, i32 0, i32 9
  %270 = ptrtoint ptr %ctl.i.i24.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %ctl.i.i24.i, align 4
  %272 = ptrtoint ptr %ctl1.i.i25.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %ctl1.i.i25.i, align 1
  %273 = ptrtoint ptr %command.i26.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -24, ptr %command.i26.i, align 1
  %274 = ptrtoint ptr %tf.i22.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 7, ptr %tf.i22.i, align 4
  %275 = ptrtoint ptr %feature.i27.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 96, ptr %feature.i27.i, align 1
  %276 = ptrtoint ptr %pmp.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %pmp.i.i, align 4
  %conv3.i29.i = trunc i32 %277 to i8
  %278 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv3.i29.i, ptr %11, align 4
  %conv5.i30.i = trunc i32 %or.i to i8
  %279 = ptrtoint ptr %nsect.i31.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv5.i30.i, ptr %nsect.i31.i, align 4
  %shr.i32.i = lshr i32 %262, 8
  %conv7.i33.i = trunc i32 %shr.i32.i to i8
  %280 = ptrtoint ptr %lbal.i34.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv7.i33.i, ptr %lbal.i34.i, align 1
  %shr8.i35.i = lshr i32 %262, 16
  %conv10.i36.i = trunc i32 %shr8.i35.i to i8
  %281 = ptrtoint ptr %lbam.i37.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv10.i36.i, ptr %lbam.i37.i, align 2
  %shr11.i38.i = lshr i32 %262, 24
  %conv13.i39.i = trunc i32 %shr11.i38.i to i8
  %282 = ptrtoint ptr %lbah.i40.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv13.i39.i, ptr %lbah.i40.i, align 1
  %call.i41.i = call i32 @ata_exec_internal(ptr noundef %device.i23.i, ptr noundef nonnull %tf.i22.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i22.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool99.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool99.not.i, label %if.then95.i.if.end112.i_crit_edge, label %do.end103.i

if.then95.i.if.end112.i_crit_edge:                ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112.i

do.end103.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #7
  %283 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %device.i, align 128
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 128
  %print_id107.i = getelementptr inbounds %struct.ata_port, ptr %286, i32 0, i32 5
  %287 = ptrtoint ptr %print_id107.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %print_id107.i, align 4
  %pmp109.i = getelementptr inbounds %struct.ata_link, ptr %284, i32 0, i32 1
  %289 = ptrtoint ptr %pmp109.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %pmp109.i, align 4
  %291 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %devno.i.i.i.i, align 4
  %add.i = add i32 %292, %290
  %call110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %288, i32 noundef %add.i, i32 noundef %call.i41.i) #8
  br label %pmp_fail.i

if.end112.i:                                      ; preds = %if.then95.i.if.end112.i_crit_edge, %for.end92.i.if.end112.i_crit_edge
  %293 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %link.i, align 128
  %device.i43.i = getelementptr inbounds %struct.ata_port, ptr %294, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i42.i) #5
  %295 = call ptr @memset(ptr %12, i32 0, i32 20)
  %296 = ptrtoint ptr %device.i43.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %device.i43.i, align 128
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %297, align 128
  %ctl.i.i44.i = getelementptr inbounds %struct.ata_port, ptr %299, i32 0, i32 9
  %300 = ptrtoint ptr %ctl.i.i44.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %ctl.i.i44.i, align 4
  %302 = ptrtoint ptr %ctl1.i.i45.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %ctl1.i.i45.i, align 1
  %303 = ptrtoint ptr %command.i46.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 -28, ptr %command.i46.i, align 1
  %304 = ptrtoint ptr %tf.i42.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 7, ptr %tf.i42.i, align 4
  %305 = ptrtoint ptr %feature.i47.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 32, ptr %feature.i47.i, align 1
  %306 = ptrtoint ptr %pmp.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %pmp.i.i, align 4
  %conv3.i49.i = trunc i32 %307 to i8
  %308 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %conv3.i49.i, ptr %13, align 4
  %call.i50.i = call i32 @ata_exec_internal(ptr noundef %device.i43.i, ptr noundef nonnull %tf.i42.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.end128.i, label %do.end118.i

do.end118.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i42.i) #5
  %309 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %device.i, align 128
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %310, align 128
  %print_id122.i = getelementptr inbounds %struct.ata_port, ptr %312, i32 0, i32 5
  %313 = ptrtoint ptr %print_id122.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %print_id122.i, align 4
  %pmp124.i = getelementptr inbounds %struct.ata_link, ptr %310, i32 0, i32 1
  %315 = ptrtoint ptr %pmp124.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %pmp124.i, align 4
  %317 = ptrtoint ptr %devno.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %devno.i.i.i.i, align 4
  %add126.i = add i32 %318, %316
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %314, i32 noundef %add126.i, i32 noundef %call.i50.i) #8
  br label %pmp_fail.i

if.end128.i:                                      ; preds = %if.end112.i
  %319 = ptrtoint ptr %nsect.i52.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %nsect.i52.i, align 4
  %conv5.i53.i = zext i8 %320 to i32
  %321 = ptrtoint ptr %lbal.i54.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %lbal.i54.i, align 1
  %conv6.i.i = zext i8 %322 to i32
  %shl.i.i = shl nuw nsw i32 %conv6.i.i, 8
  %or7.i.i = or i32 %shl.i.i, %conv5.i53.i
  %323 = ptrtoint ptr %lbam.i55.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %lbam.i55.i, align 2
  %conv8.i.i = zext i8 %324 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 16
  %or10.i.i = or i32 %or7.i.i, %shl9.i.i
  %325 = ptrtoint ptr %lbah.i56.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %lbah.i56.i, align 1
  %conv11.i.i = zext i8 %326 to i32
  %shl12.i.i = shl nuw i32 %conv11.i.i, 24
  %or13.i.i = or i32 %or10.i.i, %shl12.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i42.i) #5
  %call129.i = call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #5
  %327 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call129.i, ptr %link3.i, align 4
  %tobool131.not93.i = icmp eq ptr %call129.i, null
  br i1 %tobool131.not93.i, label %if.end128.i.sata_pmp_eh_recover.exit_crit_edge, label %if.end128.i.for.body132.i_crit_edge

if.end128.i.for.body132.i_crit_edge:              ; preds = %if.end128.i
  br label %for.body132.i

if.end128.i.sata_pmp_eh_recover.exit_crit_edge:   ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

for.body132.i:                                    ; preds = %for.inc199.i.for.body132.i_crit_edge, %if.end128.i.for.body132.i_crit_edge
  %cnt.095.i = phi i32 [ %cnt.1.i, %for.inc199.i.for.body132.i_crit_edge ], [ 0, %if.end128.i.for.body132.i_crit_edge ]
  %storemerge394.i = phi ptr [ %call200.i, %for.inc199.i.for.body132.i_crit_edge ], [ %call129.i, %if.end128.i.for.body132.i_crit_edge ]
  %pmp133.i = getelementptr inbounds %struct.ata_link, ptr %storemerge394.i, i32 0, i32 1
  %328 = ptrtoint ptr %pmp133.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %pmp133.i, align 4
  %shl.i = shl nuw i32 1, %329
  %and134.i = and i32 %shl.i, %or13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %for.body132.i.for.inc199.i_crit_edge, label %if.end137.i

for.body132.i.for.inc199.i_crit_edge:             ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc199.i

if.end137.i:                                      ; preds = %for.body132.i
  %call139.i = call fastcc i32 @sata_pmp_handle_link_fail(ptr noundef nonnull %storemerge394.i, ptr noundef nonnull %link_tries.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  %330 = ptrtoint ptr %link3.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %link3.i, align 4
  br i1 %tobool140.not.i, label %do.body144.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  %probe_mask.i58.i = getelementptr inbounds %struct.ata_link, ptr %331, i32 0, i32 12, i32 0, i32 6
  %332 = ptrtoint ptr %probe_mask.i58.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %probe_mask.i58.i, align 4
  %or.i59.i = or i32 %333, 3
  store i32 %or.i59.i, ptr %probe_mask.i58.i, align 4
  %flags.i60.i = getelementptr inbounds %struct.ata_link, ptr %331, i32 0, i32 12, i32 0, i32 5
  %334 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %flags.i60.i, align 4
  %or1.i.i = or i32 %335, 1
  store i32 %or1.i.i, ptr %flags.i60.i, align 4
  %action.i61.i = getelementptr inbounds %struct.ata_link, ptr %331, i32 0, i32 12, i32 0, i32 3
  %336 = ptrtoint ptr %action.i61.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %action.i61.i, align 4
  %or2.i.i = or i32 %337, 14
  store i32 %or2.i.i, ptr %action.i61.i, align 4
  %err_mask.i.i = getelementptr inbounds %struct.ata_link, ptr %331, i32 0, i32 12, i32 0, i32 2
  %338 = ptrtoint ptr %err_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %err_mask.i.i, align 4
  %or3.i.i = or i32 %339, 16
  store i32 %or3.i.i, ptr %err_mask.i.i, align 4
  %inc.i = add i32 %cnt.095.i, 1
  br label %for.inc199.i

do.body144.i:                                     ; preds = %if.end137.i
  %340 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %331, align 128
  %nr_pmp_links.i62.i = getelementptr inbounds %struct.ata_port, ptr %341, i32 0, i32 27
  %342 = ptrtoint ptr %nr_pmp_links.i62.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %nr_pmp_links.i62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %cmp.i63.not.i = icmp eq i32 %343, 0
  br i1 %cmp.i63.not.i, label %lor.lhs.false147.i, label %do.body144.i.do.end154.i_crit_edge

do.body144.i.do.end154.i_crit_edge:               ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end154.i

lor.lhs.false147.i:                               ; preds = %do.body144.i
  %slave_link149.i = getelementptr inbounds %struct.ata_port, ptr %341, i32 0, i32 26
  %344 = ptrtoint ptr %slave_link149.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %slave_link149.i, align 128
  %tobool150.not.i = icmp eq ptr %345, null
  br i1 %tobool150.not.i, label %do.end163.i, label %lor.lhs.false147.i.do.end154.i_crit_edge

lor.lhs.false147.i.do.end154.i_crit_edge:         ; preds = %lor.lhs.false147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end154.i

do.end154.i:                                      ; preds = %lor.lhs.false147.i.do.end154.i_crit_edge, %do.body144.i.do.end154.i_crit_edge
  %print_id157.i = getelementptr inbounds %struct.ata_port, ptr %341, i32 0, i32 5
  %346 = ptrtoint ptr %print_id157.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %print_id157.i, align 4
  %pmp158.i = getelementptr inbounds %struct.ata_link, ptr %331, i32 0, i32 1
  %348 = ptrtoint ptr %pmp158.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %pmp158.i, align 4
  %call159.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %347, i32 noundef %349) #8
  br label %do.body171.i

do.end163.i:                                      ; preds = %lor.lhs.false147.i
  call void @__sanitizer_cov_trace_pc() #7
  %print_id166.i = getelementptr inbounds %struct.ata_port, ptr %341, i32 0, i32 5
  %350 = ptrtoint ptr %print_id166.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %print_id166.i, align 4
  %call167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %351) #8
  br label %do.body171.i

do.body171.i:                                     ; preds = %do.end163.i, %do.end154.i
  %352 = ptrtoint ptr %link3.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %link3.i, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %353, align 128
  %nr_pmp_links.i64.i = getelementptr inbounds %struct.ata_port, ptr %355, i32 0, i32 27
  %356 = ptrtoint ptr %nr_pmp_links.i64.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %nr_pmp_links.i64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %cmp.i65.not.i = icmp eq i32 %357, 0
  br i1 %cmp.i65.not.i, label %lor.lhs.false174.i, label %do.body171.i.do.end181.i_crit_edge

do.body171.i.do.end181.i_crit_edge:               ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end181.i

lor.lhs.false174.i:                               ; preds = %do.body171.i
  %slave_link176.i = getelementptr inbounds %struct.ata_port, ptr %355, i32 0, i32 26
  %358 = ptrtoint ptr %slave_link176.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %slave_link176.i, align 128
  %tobool177.not.i = icmp eq ptr %359, null
  br i1 %tobool177.not.i, label %do.end190.i, label %lor.lhs.false174.i.do.end181.i_crit_edge

lor.lhs.false174.i.do.end181.i_crit_edge:         ; preds = %lor.lhs.false174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end181.i

do.end181.i:                                      ; preds = %lor.lhs.false174.i.do.end181.i_crit_edge, %do.body171.i.do.end181.i_crit_edge
  %print_id184.i = getelementptr inbounds %struct.ata_port, ptr %355, i32 0, i32 5
  %360 = ptrtoint ptr %print_id184.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %print_id184.i, align 4
  %pmp185.i = getelementptr inbounds %struct.ata_link, ptr %353, i32 0, i32 1
  %362 = ptrtoint ptr %pmp185.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %pmp185.i, align 4
  %call186.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %361, i32 noundef %363) #8
  br label %for.inc199.i

do.end190.i:                                      ; preds = %lor.lhs.false174.i
  call void @__sanitizer_cov_trace_pc() #7
  %print_id193.i = getelementptr inbounds %struct.ata_port, ptr %355, i32 0, i32 5
  %364 = ptrtoint ptr %print_id193.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %print_id193.i, align 4
  %call194.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %365) #8
  br label %for.inc199.i

for.inc199.i:                                     ; preds = %do.end190.i, %do.end181.i, %if.then141.i, %for.body132.i.for.inc199.i_crit_edge
  %cnt.1.i = phi i32 [ %inc.i, %if.then141.i ], [ %cnt.095.i, %do.end181.i ], [ %cnt.095.i, %do.end190.i ], [ %cnt.095.i, %for.body132.i.for.inc199.i_crit_edge ]
  %366 = ptrtoint ptr %link3.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %link3.i, align 4
  %call200.i = call ptr @ata_link_next(ptr noundef %367, ptr noundef %ap, i32 noundef 0) #5
  %368 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %call200.i, ptr %link3.i, align 4
  %tobool131.not.i = icmp eq ptr %call200.i, null
  br i1 %tobool131.not.i, label %for.end201.i, label %for.inc199.i.for.body132.i_crit_edge

for.inc199.i.for.body132.i_crit_edge:             ; preds = %for.inc199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body132.i

for.end201.i:                                     ; preds = %for.inc199.i
  %tobool202.not.i = icmp eq i32 %cnt.1.i, 0
  br i1 %tobool202.not.i, label %for.end201.i.sata_pmp_eh_recover.exit_crit_edge, label %do.end206.i

for.end201.i.sata_pmp_eh_recover.exit_crit_edge:  ; preds = %for.end201.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

do.end206.i:                                      ; preds = %for.end201.i
  call void @__sanitizer_cov_trace_pc() #7
  %369 = ptrtoint ptr %print_id208.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %print_id208.i, align 4
  %call209.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %370) #8
  br label %retry.outer76.i

retry.outer76.i:                                  ; preds = %retry.outer76.i.outer, %do.end206.i
  br label %retry.i

link_fail.i:                                      ; preds = %if.end71.i
  %371 = ptrtoint ptr %link3.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %link3.i, align 4
  %call212.i = call fastcc i32 @sata_pmp_handle_link_fail(ptr noundef %372, ptr noundef nonnull %link_tries.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212.i)
  %tobool213.not.i = icmp eq i32 %call212.i, 0
  br i1 %tobool213.not.i, label %link_fail.i.pmp_fail.i_crit_edge, label %if.then214.i

link_fail.i.pmp_fail.i_crit_edge:                 ; preds = %link_fail.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pmp_fail.i

if.then214.i:                                     ; preds = %link_fail.i
  call void @__sanitizer_cov_trace_pc() #7
  %373 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %action.i.i, align 4
  %or216.i = or i32 %374, 6
  store i32 %or216.i, ptr %action.i.i, align 4
  br label %retry.i.backedge

pmp_fail.i:                                       ; preds = %link_fail.i.pmp_fail.i_crit_edge, %do.end118.i, %do.end103.i, %do.end29.i.i, %do.end23.i.i, %do.end58.i, %do.end.i, %if.else82.i.i, %if.then81.i.i
  %375 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %pflags.i, align 16
  %and218.i = and i32 %376, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %tobool219.not.i, label %if.end221.i, label %pmp_fail.i.sata_pmp_eh_recover.exit_crit_edge

pmp_fail.i.sata_pmp_eh_recover.exit_crit_edge:    ; preds = %pmp_fail.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_eh_recover.exit

if.end221.i:                                      ; preds = %pmp_fail.i
  %377 = ptrtoint ptr %nr_pmp_links.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %nr_pmp_links.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %cmp.i67.not.i = icmp eq i32 %378, 0
  br i1 %cmp.i67.not.i, label %if.end221.i.retry.i.backedge_crit_edge, label %if.end224.i

if.end221.i.retry.i.backedge_crit_edge:           ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry.i.backedge

retry.i.backedge:                                 ; preds = %if.end221.i.retry.i.backedge_crit_edge, %if.then214.i
  br label %retry.i

if.end224.i:                                      ; preds = %if.end221.i
  %dec.i = add i32 %pmp_tries.0.ph77.i.ph, -1
  %tobool225.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool225.not.i, label %do.end233.i, label %if.then226.i

if.then226.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #7
  %379 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %action.i.i, align 4
  %or229.i = or i32 %380, 6
  store i32 %or229.i, ptr %action.i.i, align 4
  br label %retry.outer76.i.outer

retry.outer76.i.outer:                            ; preds = %if.then226.i, %retry.preheader.i
  %pmp_tries.0.ph77.i.ph = phi i32 [ 5, %retry.preheader.i ], [ %dec.i, %if.then226.i ]
  br label %retry.outer76.i

do.end233.i:                                      ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #7
  %381 = ptrtoint ptr %print_id208.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %print_id208.i, align 4
  %call236.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %382, i32 noundef 5) #8
  call fastcc void @sata_pmp_detach(ptr noundef %device.i) #5
  call void @ata_dev_disable(ptr noundef %device.i) #5
  br label %sata_pmp_eh_recover.exit

sata_pmp_eh_recover.exit:                         ; preds = %do.end233.i, %pmp_fail.i.sata_pmp_eh_recover.exit_crit_edge, %for.end201.i.sata_pmp_eh_recover.exit_crit_edge, %if.end128.i.sata_pmp_eh_recover.exit_crit_edge, %for.body86.i.sata_pmp_eh_recover.exit_crit_edge, %if.end.i.sata_pmp_eh_recover.exit_crit_edge, %for.body13.i.sata_pmp_eh_recover.exit_crit_edge, %if.then8.i.sata_pmp_eh_recover.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sntf.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link3.i) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %link_tries.i) #5
  call void @ata_eh_finish(ptr noundef %ap) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_qc_defer_cmd_switch(ptr noundef %qc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %excl_link = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %excl_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %excl_link, align 4
  %cmp = icmp eq ptr %7, null
  %cmp4 = icmp eq ptr %7, %3
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %nr_active_links = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %nr_active_links to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_active_links, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then.if.then7_crit_edge, label %lor.lhs.false6

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

lor.lhs.false6:                                   ; preds = %if.then
  %active_tag.i = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %11)
  %12 = icmp ult i32 %11, 33
  br i1 %12, label %lor.lhs.false6.if.then7_crit_edge, label %ata_link_active.exit

lor.lhs.false6.if.then7_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

ata_link_active.exit:                             ; preds = %lor.lhs.false6
  %sactive.i = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %sactive.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sactive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %ata_link_active.exit.if.then7_crit_edge

ata_link_active.exit.if.then7_crit_edge:          ; preds = %ata_link_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %ata_link_active.exit.if.then7_crit_edge, %lor.lhs.false6.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 32
  store i32 %or, ptr %flags, align 4
  %call8 = tail call i32 @ata_std_qc_defer(ptr noundef %qc) #5
  br label %cleanup

if.end:                                           ; preds = %ata_link_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %excl_link to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %excl_link, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_scr_read(ptr nocapture noundef readonly %link, i32 noundef %reg, ptr nocapture noundef writeonly %r_val) local_unnamed_addr #1 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp = icmp sgt i32 %reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %device.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #5
  %2 = getelementptr inbounds i8, ptr %tf.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %ctl.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctl.i.i, align 4
  %ctl1.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 2
  %10 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ctl1.i.i, align 1
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 13
  %command.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 14
  %12 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -28, ptr %command.i, align 1
  %13 = ptrtoint ptr %tf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %tf.i, align 4
  %conv.i = trunc i32 %reg to i8
  %feature.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 8
  %14 = ptrtoint ptr %feature.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %feature.i, align 1
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %15 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp.i, align 4
  %conv3.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %11, align 4
  %call.i = call i32 @ata_exec_internal(ptr noundef %device.i, ptr noundef nonnull %tf.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sata_pmp_read.exit.thread, label %do.body

sata_pmp_read.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %nsect.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 9
  %18 = ptrtoint ptr %nsect.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nsect.i, align 4
  %conv5.i = zext i8 %19 to i32
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 10
  %20 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lbal.i, align 1
  %conv6.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or7.i = or i32 %shl.i, %conv5.i
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 11
  %22 = ptrtoint ptr %lbam.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lbam.i, align 2
  %conv8.i = zext i8 %23 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or7.i, %shl9.i
  %lbah.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 12
  %24 = ptrtoint ptr %lbah.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lbah.i, align 1
  %conv11.i = zext i8 %25 to i32
  %shl12.i = shl nuw i32 %conv11.i, 24
  %or13.i = or i32 %or10.i, %shl12.i
  %26 = ptrtoint ptr %r_val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or13.i, ptr %r_val, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #5
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #5
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 26
  %31 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slave_link, align 128
  %tobool4.not = icmp eq ptr %32, null
  br i1 %tobool4.not, label %do.end11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %print_id, align 4
  %35 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pmp.i, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %34, i32 noundef %36, i32 noundef %reg, i32 noundef %call.i) #8
  br label %cleanup

do.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %print_id14 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %print_id14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %print_id14, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %38, i32 noundef %reg, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end, %sata_pmp_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %do.end11 ], [ -5, %do.end ], [ 0, %sata_pmp_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_scr_write(ptr nocapture noundef readonly %link, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp = icmp sgt i32 %reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %device.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #5
  %2 = getelementptr inbounds i8, ptr %tf.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %ctl.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctl.i.i, align 4
  %ctl1.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 2
  %10 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ctl1.i.i, align 1
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 13
  %command.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 14
  %12 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -24, ptr %command.i, align 1
  %13 = ptrtoint ptr %tf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %tf.i, align 4
  %conv.i = trunc i32 %reg to i8
  %feature.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 8
  %14 = ptrtoint ptr %feature.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %feature.i, align 1
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %15 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp.i, align 4
  %conv3.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %11, align 4
  %conv5.i = trunc i32 %val to i8
  %nsect.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 9
  %18 = ptrtoint ptr %nsect.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv5.i, ptr %nsect.i, align 4
  %shr.i = lshr i32 %val, 8
  %conv7.i = trunc i32 %shr.i to i8
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 10
  %19 = ptrtoint ptr %lbal.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7.i, ptr %lbal.i, align 1
  %shr8.i = lshr i32 %val, 16
  %conv10.i = trunc i32 %shr8.i to i8
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 11
  %20 = ptrtoint ptr %lbam.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10.i, ptr %lbam.i, align 2
  %shr11.i = lshr i32 %val, 24
  %conv13.i = trunc i32 %shr11.i to i8
  %lbah.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 12
  %21 = ptrtoint ptr %lbah.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13.i, ptr %lbah.i, align 1
  %call.i = call i32 @ata_exec_internal(ptr noundef %device.i, ptr noundef nonnull %tf.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not = icmp eq i32 %25, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 26
  %26 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave_link, align 128
  %tobool4.not = icmp eq ptr %27, null
  br i1 %tobool4.not, label %do.end11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 5
  %28 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %print_id, align 4
  %30 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmp.i, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %29, i32 noundef %31, i32 noundef %reg, i32 noundef %call.i) #8
  br label %cleanup

do.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %print_id14 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 5
  %32 = ptrtoint ptr %print_id14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %print_id14, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %33, i32 noundef %reg, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %do.end11 ], [ -5, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_set_lpm(ptr noundef %link, i32 noundef %policy, i32 noundef %hints) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sata_link_scr_lpm(ptr noundef %link, i32 noundef %policy, i1 noundef zeroext true) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_scr_lpm(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_attach(ptr nocapture noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %print_id = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno, align 4
  %add = add i32 %11, %9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %7, i32 noundef %add) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %link1.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %cmp.i = icmp eq ptr %link1.i, %1
  br i1 %cmp.i, label %if.end.if.end21_crit_edge, label %ata_is_host_link.exit

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

ata_is_host_link.exit:                            ; preds = %if.end
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 26
  %12 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_link.i, align 128
  %cmp3.i = icmp eq ptr %13, %1
  br i1 %cmp3.i, label %ata_is_host_link.exit.if.end21_crit_edge, label %do.end11

ata_is_host_link.exit.if.end21_crit_edge:         ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end11:                                         ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  %print_id15 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %print_id15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id15, align 4
  %pmp17 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pmp17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pmp17, align 4
  %devno18 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %devno18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devno18, align 4
  %add19 = add i32 %19, %17
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %add19) #8
  br label %cleanup

if.end21:                                         ; preds = %ata_is_host_link.exit.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %devno22 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %devno22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devno22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end36, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %print_id30 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %print_id30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %print_id30, align 4
  %pmp32 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %pmp32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pmp32, align 4
  %add34 = add i32 %25, %21
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %23, i32 noundef %add34) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %pmp37 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %pmp37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmp37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %if.end36.if.end55_crit_edge, label %do.end49, !prof !186

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.end49:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 509, i32 noundef 9, ptr noundef null) #5
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.end36.if.end55_crit_edge
  %28 = ptrtoint ptr %pmp37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 15, ptr %pmp37, align 4
  %29 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 25
  %call64 = tail call fastcc i32 @sata_pmp_read_gscr(ptr noundef %dev, ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end55.fail_crit_edge

if.end55.fail_crit_edge:                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end67:                                         ; preds = %if.end55
  %call68 = tail call fastcc i32 @sata_pmp_configure(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.fail_crit_edge

if.end67.fail_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end71:                                         ; preds = %if.end67
  %arrayidx = getelementptr %struct.ata_device, ptr %dev, i32 0, i32 25, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  %and = and i32 %31, 15
  %pmp_link1.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 28
  %32 = ptrtoint ptr %pmp_link1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pmp_link1.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end71.if.end16.i_crit_edge

if.end71.if.end16.i_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i:                                        ; preds = %if.end71
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 88320, i32 noundef 3328, i32 noundef 5) #9
  %tobool2.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.do.end77_crit_edge, label %for.body.preheader.i

if.then.i.do.end77_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end77

for.body.preheader.i:                             ; preds = %if.then.i
  tail call void @ata_link_init(ptr noundef %3, ptr noundef nonnull %call1.i.i.i.i.i, i32 noundef 0) #5
  %arrayidx.1.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 1
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.1.i, i32 noundef 1) #5
  %arrayidx.2.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 2
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.2.i, i32 noundef 2) #5
  %arrayidx.3.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 3
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.3.i, i32 noundef 3) #5
  %arrayidx.4.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 4
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.4.i, i32 noundef 4) #5
  %arrayidx.5.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 5
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.5.i, i32 noundef 5) #5
  %arrayidx.6.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 6
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.6.i, i32 noundef 6) #5
  %arrayidx.7.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 7
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.7.i, i32 noundef 7) #5
  %arrayidx.8.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 8
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.8.i, i32 noundef 8) #5
  %arrayidx.9.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 9
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.9.i, i32 noundef 9) #5
  %arrayidx.10.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 10
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.10.i, i32 noundef 10) #5
  %arrayidx.11.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 11
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.11.i, i32 noundef 11) #5
  %arrayidx.12.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 12
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.12.i, i32 noundef 12) #5
  %arrayidx.13.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 13
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.13.i, i32 noundef 13) #5
  %arrayidx.14.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 14
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %arrayidx.14.i, i32 noundef 14) #5
  %34 = ptrtoint ptr %pmp_link1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i.i.i.i.i, ptr %pmp_link1.i, align 8
  %call9.i = tail call i32 @ata_tlink_add(ptr noundef nonnull %call1.i.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.inc13.i, label %sata_pmp_init_links.exit.thread200

sata_pmp_init_links.exit.thread200:               ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i) #5
  %35 = ptrtoint ptr %pmp_link1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pmp_link1.i, align 8
  br label %do.end77

while.body.preheader.i:                           ; preds = %for.inc13.13.i.while.body.preheader.i_crit_edge, %for.inc13.12.i.while.body.preheader.i_crit_edge, %for.inc13.11.i.while.body.preheader.i_crit_edge, %for.inc13.10.i.while.body.preheader.i_crit_edge, %for.inc13.9.i.while.body.preheader.i_crit_edge, %for.inc13.8.i.while.body.preheader.i_crit_edge, %for.inc13.7.i.while.body.preheader.i_crit_edge, %for.inc13.6.i.while.body.preheader.i_crit_edge, %for.inc13.5.i.while.body.preheader.i_crit_edge, %for.inc13.4.i.while.body.preheader.i_crit_edge, %for.inc13.3.i.while.body.preheader.i_crit_edge, %for.inc13.2.i.while.body.preheader.i_crit_edge, %for.inc13.1.i.while.body.preheader.i_crit_edge, %for.inc13.i.while.body.preheader.i_crit_edge
  %i.158.lcssa.ph.i = phi i32 [ 13, %for.inc13.13.i.while.body.preheader.i_crit_edge ], [ 12, %for.inc13.12.i.while.body.preheader.i_crit_edge ], [ 11, %for.inc13.11.i.while.body.preheader.i_crit_edge ], [ 10, %for.inc13.10.i.while.body.preheader.i_crit_edge ], [ 9, %for.inc13.9.i.while.body.preheader.i_crit_edge ], [ 8, %for.inc13.8.i.while.body.preheader.i_crit_edge ], [ 7, %for.inc13.7.i.while.body.preheader.i_crit_edge ], [ 6, %for.inc13.6.i.while.body.preheader.i_crit_edge ], [ 5, %for.inc13.5.i.while.body.preheader.i_crit_edge ], [ 4, %for.inc13.4.i.while.body.preheader.i_crit_edge ], [ 3, %for.inc13.3.i.while.body.preheader.i_crit_edge ], [ 2, %for.inc13.2.i.while.body.preheader.i_crit_edge ], [ 1, %for.inc13.1.i.while.body.preheader.i_crit_edge ], [ 0, %for.inc13.i.while.body.preheader.i_crit_edge ]
  %call9.lcssa.ph.i = phi i32 [ %call9.14.i, %for.inc13.13.i.while.body.preheader.i_crit_edge ], [ %call9.13.i, %for.inc13.12.i.while.body.preheader.i_crit_edge ], [ %call9.12.i, %for.inc13.11.i.while.body.preheader.i_crit_edge ], [ %call9.11.i, %for.inc13.10.i.while.body.preheader.i_crit_edge ], [ %call9.10.i, %for.inc13.9.i.while.body.preheader.i_crit_edge ], [ %call9.9.i, %for.inc13.8.i.while.body.preheader.i_crit_edge ], [ %call9.8.i, %for.inc13.7.i.while.body.preheader.i_crit_edge ], [ %call9.7.i, %for.inc13.6.i.while.body.preheader.i_crit_edge ], [ %call9.6.i, %for.inc13.5.i.while.body.preheader.i_crit_edge ], [ %call9.5.i, %for.inc13.4.i.while.body.preheader.i_crit_edge ], [ %call9.4.i, %for.inc13.3.i.while.body.preheader.i_crit_edge ], [ %call9.3.i, %for.inc13.2.i.while.body.preheader.i_crit_edge ], [ %call9.2.i, %for.inc13.1.i.while.body.preheader.i_crit_edge ], [ %call9.1.i, %for.inc13.i.while.body.preheader.i_crit_edge ]
  br label %while.body.i

for.inc13.i:                                      ; preds = %for.body.preheader.i
  %call9.1.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i)
  %tobool10.not.1.i = icmp eq i32 %call9.1.i, 0
  br i1 %tobool10.not.1.i, label %for.inc13.1.i, label %for.inc13.i.while.body.preheader.i_crit_edge

for.inc13.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.1.i:                                    ; preds = %for.inc13.i
  %call9.2.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2.i)
  %tobool10.not.2.i = icmp eq i32 %call9.2.i, 0
  br i1 %tobool10.not.2.i, label %for.inc13.2.i, label %for.inc13.1.i.while.body.preheader.i_crit_edge

for.inc13.1.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.2.i:                                    ; preds = %for.inc13.1.i
  %call9.3.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3.i)
  %tobool10.not.3.i = icmp eq i32 %call9.3.i, 0
  br i1 %tobool10.not.3.i, label %for.inc13.3.i, label %for.inc13.2.i.while.body.preheader.i_crit_edge

for.inc13.2.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.3.i:                                    ; preds = %for.inc13.2.i
  %call9.4.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.4.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.4.i)
  %tobool10.not.4.i = icmp eq i32 %call9.4.i, 0
  br i1 %tobool10.not.4.i, label %for.inc13.4.i, label %for.inc13.3.i.while.body.preheader.i_crit_edge

for.inc13.3.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.4.i:                                    ; preds = %for.inc13.3.i
  %call9.5.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.5.i)
  %tobool10.not.5.i = icmp eq i32 %call9.5.i, 0
  br i1 %tobool10.not.5.i, label %for.inc13.5.i, label %for.inc13.4.i.while.body.preheader.i_crit_edge

for.inc13.4.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.5.i:                                    ; preds = %for.inc13.4.i
  %call9.6.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.6.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.6.i)
  %tobool10.not.6.i = icmp eq i32 %call9.6.i, 0
  br i1 %tobool10.not.6.i, label %for.inc13.6.i, label %for.inc13.5.i.while.body.preheader.i_crit_edge

for.inc13.5.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.6.i:                                    ; preds = %for.inc13.5.i
  %call9.7.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.7.i)
  %tobool10.not.7.i = icmp eq i32 %call9.7.i, 0
  br i1 %tobool10.not.7.i, label %for.inc13.7.i, label %for.inc13.6.i.while.body.preheader.i_crit_edge

for.inc13.6.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.7.i:                                    ; preds = %for.inc13.6.i
  %call9.8.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.8.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.8.i)
  %tobool10.not.8.i = icmp eq i32 %call9.8.i, 0
  br i1 %tobool10.not.8.i, label %for.inc13.8.i, label %for.inc13.7.i.while.body.preheader.i_crit_edge

for.inc13.7.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.8.i:                                    ; preds = %for.inc13.7.i
  %call9.9.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.9.i)
  %tobool10.not.9.i = icmp eq i32 %call9.9.i, 0
  br i1 %tobool10.not.9.i, label %for.inc13.9.i, label %for.inc13.8.i.while.body.preheader.i_crit_edge

for.inc13.8.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.9.i:                                    ; preds = %for.inc13.8.i
  %call9.10.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.10.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.10.i)
  %tobool10.not.10.i = icmp eq i32 %call9.10.i, 0
  br i1 %tobool10.not.10.i, label %for.inc13.10.i, label %for.inc13.9.i.while.body.preheader.i_crit_edge

for.inc13.9.i.while.body.preheader.i_crit_edge:   ; preds = %for.inc13.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.10.i:                                   ; preds = %for.inc13.9.i
  %call9.11.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.11.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.11.i)
  %tobool10.not.11.i = icmp eq i32 %call9.11.i, 0
  br i1 %tobool10.not.11.i, label %for.inc13.11.i, label %for.inc13.10.i.while.body.preheader.i_crit_edge

for.inc13.10.i.while.body.preheader.i_crit_edge:  ; preds = %for.inc13.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.11.i:                                   ; preds = %for.inc13.10.i
  %call9.12.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.12.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.12.i)
  %tobool10.not.12.i = icmp eq i32 %call9.12.i, 0
  br i1 %tobool10.not.12.i, label %for.inc13.12.i, label %for.inc13.11.i.while.body.preheader.i_crit_edge

for.inc13.11.i.while.body.preheader.i_crit_edge:  ; preds = %for.inc13.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.12.i:                                   ; preds = %for.inc13.11.i
  %call9.13.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.13.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.13.i)
  %tobool10.not.13.i = icmp eq i32 %call9.13.i, 0
  br i1 %tobool10.not.13.i, label %for.inc13.13.i, label %for.inc13.12.i.while.body.preheader.i_crit_edge

for.inc13.12.i.while.body.preheader.i_crit_edge:  ; preds = %for.inc13.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.13.i:                                   ; preds = %for.inc13.12.i
  %call9.14.i = tail call i32 @ata_tlink_add(ptr noundef %arrayidx.14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.14.i)
  %tobool10.not.14.i = icmp eq i32 %call9.14.i, 0
  br i1 %tobool10.not.14.i, label %for.inc13.13.i.if.end16.i_crit_edge, label %for.inc13.13.i.while.body.preheader.i_crit_edge

for.inc13.13.i.while.body.preheader.i_crit_edge:  ; preds = %for.inc13.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader.i

for.inc13.13.i.if.end16.i_crit_edge:              ; preds = %for.inc13.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.inc13.13.i.if.end16.i_crit_edge, %if.end71.if.end16.i_crit_edge
  %pmp_link.0.i = phi ptr [ %33, %if.end71.if.end16.i_crit_edge ], [ %call1.i.i.i.i.i, %for.inc13.13.i.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1859.i.not = icmp eq i32 %and, 0
  br i1 %cmp1859.i.not, label %if.end16.i.do.body89_crit_edge, label %if.end16.i.for.body19.i_crit_edge

if.end16.i.for.body19.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body19.i

if.end16.i.do.body89_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %if.end16.i.for.body19.i_crit_edge
  %i.260.i = phi i32 [ %inc25.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %if.end16.i.for.body19.i_crit_edge ]
  %eh_context.i = getelementptr %struct.ata_link, ptr %pmp_link.0.i, i32 %i.260.i, i32 12
  %flags.i188 = getelementptr %struct.ata_link, ptr %pmp_link.0.i, i32 %i.260.i, i32 5
  %36 = ptrtoint ptr %flags.i188 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %flags.i188, align 16
  %probe_mask.i = getelementptr inbounds %struct.ata_eh_info, ptr %eh_context.i, i32 0, i32 6
  %37 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %38, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %action.i = getelementptr inbounds %struct.ata_eh_info, ptr %eh_context.i, i32 0, i32 3
  %39 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %action.i, align 4
  %or23.i = or i32 %40, 6
  store i32 %or23.i, ptr %action.i, align 4
  %inc25.i = add nuw nsw i32 %i.260.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, %and
  br i1 %exitcond.not.i, label %for.body19.i.do.body89_crit_edge, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19.i

for.body19.i.do.body89_crit_edge:                 ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec63.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.158.lcssa.ph.i, %while.body.preheader.i ]
  %arrayidx28.i = getelementptr %struct.ata_link, ptr %call1.i.i.i.i.i, i32 %dec63.i
  tail call void @ata_tlink_delete(ptr noundef %arrayidx28.i) #5
  %dec.i = add nsw i32 %dec63.i, -1
  %cmp27.not.i = icmp eq i32 %dec63.i, 0
  br i1 %cmp27.not.i, label %sata_pmp_init_links.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

sata_pmp_init_links.exit:                         ; preds = %while.body.i
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i) #5
  %41 = ptrtoint ptr %pmp_link1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %pmp_link1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.lcssa.ph.i)
  %tobool73.not = icmp eq i32 %call9.lcssa.ph.i, 0
  br i1 %tobool73.not, label %sata_pmp_init_links.exit.do.body89_crit_edge, label %sata_pmp_init_links.exit.do.end77_crit_edge

sata_pmp_init_links.exit.do.end77_crit_edge:      ; preds = %sata_pmp_init_links.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end77

sata_pmp_init_links.exit.do.body89_crit_edge:     ; preds = %sata_pmp_init_links.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89

do.end77:                                         ; preds = %sata_pmp_init_links.exit.do.end77_crit_edge, %sata_pmp_init_links.exit.thread200, %if.then.i.do.end77_crit_edge
  %retval.0.i199 = phi i32 [ %call9.lcssa.ph.i, %sata_pmp_init_links.exit.do.end77_crit_edge ], [ %call9.i, %sata_pmp_init_links.exit.thread200 ], [ -12, %if.then.i.do.end77_crit_edge ]
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 128
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  %print_id81 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %print_id81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %print_id81, align 4
  %pmp83 = getelementptr inbounds %struct.ata_link, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %pmp83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pmp83, align 4
  %50 = ptrtoint ptr %devno22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devno22, align 4
  %add85 = add i32 %51, %49
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %47, i32 noundef %add85) #8
  br label %fail

do.body89:                                        ; preds = %sata_pmp_init_links.exit.do.body89_crit_edge, %for.body19.i.do.body89_crit_edge, %if.end16.i.do.body89_crit_edge
  %lock = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock, align 8
  %call93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #5
  %nr_pmp_links = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 27
  %54 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_pmp_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool99.not = icmp eq i32 %55, 0
  br i1 %tobool99.not, label %do.body89.if.end121_crit_edge, label %do.end115, !prof !186

do.body89.if.end121_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

do.end115:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 530, i32 noundef 9, ptr noundef null) #5
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %do.body89.if.end121_crit_edge
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 8
  %and130 = and i32 %57, 15
  %58 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and130, ptr %nr_pmp_links, align 4
  %59 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %call93) #5
  %61 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 0, i32 25
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %shr.i = lshr i32 %63, 16
  %trunc.i = trunc i32 %63 to i16
  %64 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %trunc.i, label %if.end121.sata_pmp_quirks.exit_crit_edge [
    i16 4245, label %land.lhs.true.i
    i16 6523, label %land.lhs.true103.i
    i16 4523, label %land.lhs.true125.i
  ]

if.end121.sata_pmp_quirks.exit_crit_edge:         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

land.lhs.true.i:                                  ; preds = %if.end121
  %trunc204.i = trunc i32 %shr.i to i16
  %65 = zext i16 %trunc204.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %trunc204.i, label %land.lhs.true.i.sata_pmp_quirks.exit_crit_edge [
    i16 14118, label %land.lhs.true.i.if.then.i189_crit_edge
    i16 14374, label %land.lhs.true.i.if.then.i189_crit_edge226
    i16 18211, label %if.then33.i
    i16 18214, label %if.then51.i
    i16 22307, label %land.lhs.true.i.if.then95.i_crit_edge
    i16 22323, label %land.lhs.true.i.if.then95.i_crit_edge227
    i16 22324, label %land.lhs.true.i.if.then95.i_crit_edge228
    i16 22340, label %land.lhs.true.i.if.then95.i_crit_edge229
  ]

land.lhs.true.i.if.then95.i_crit_edge229:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then95.i

land.lhs.true.i.if.then95.i_crit_edge228:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then95.i

land.lhs.true.i.if.then95.i_crit_edge227:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then95.i

land.lhs.true.i.if.then95.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then95.i

land.lhs.true.i.if.then.i189_crit_edge226:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i189

land.lhs.true.i.if.then.i189_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i189

land.lhs.true.i.sata_pmp_quirks.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

if.then.i189:                                     ; preds = %land.lhs.true.i.if.then.i189_crit_edge, %land.lhs.true.i.if.then.i189_crit_edge226
  %call.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool.not218.i = icmp eq ptr %call.i, null
  br i1 %tobool.not218.i, label %if.then.i189.sata_pmp_quirks.exit_crit_edge, label %if.then.i189.for.body.i_crit_edge

if.then.i189.for.body.i_crit_edge:                ; preds = %if.then.i189
  br label %for.body.i

if.then.i189.sata_pmp_quirks.exit_crit_edge:      ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i189.for.body.i_crit_edge
  %link4.0219.i = phi ptr [ %call25.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.then.i189.for.body.i_crit_edge ]
  %flags.i190 = getelementptr inbounds %struct.ata_link, ptr %link4.0219.i, i32 0, i32 5
  %66 = ptrtoint ptr %flags.i190 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i190, align 16
  %or.i191 = or i32 %67, 256
  store i32 %or.i191, ptr %flags.i190, align 16
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link4.0219.i, i32 0, i32 1
  %68 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %69)
  %cmp13.i = icmp slt i32 %69, 5
  br i1 %cmp13.i, label %for.body.i.for.inc.sink.split.i_crit_edge, label %if.end.i

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %69)
  %cmp19.i = icmp eq i32 %69, 5
  br i1 %cmp19.i, label %if.end.i.for.inc.sink.split.i_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i.for.inc.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %.sink = phi i32 [ 268, %for.body.i.for.inc.sink.split.i_crit_edge ], [ 276, %if.end.i.for.inc.sink.split.i_crit_edge ]
  %or23.i192 = or i32 %67, %.sink
  %70 = ptrtoint ptr %flags.i190 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or23.i192, ptr %flags.i190, align 16
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end.i.for.inc.i_crit_edge
  %call25.i = tail call ptr @ata_link_next(ptr noundef nonnull %link4.0219.i, ptr noundef %3, i32 noundef 0) #5
  %tobool.not.i193 = icmp eq ptr %call25.i, null
  br i1 %tobool.not.i193, label %for.inc.i.sata_pmp_quirks.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.sata_pmp_quirks.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

if.then33.i:                                      ; preds = %land.lhs.true.i
  %call34.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool36.not216.i = icmp eq ptr %call34.i, null
  br i1 %tobool36.not216.i, label %if.then33.i.sata_pmp_quirks.exit_crit_edge, label %if.then33.i.for.body37.i_crit_edge

if.then33.i.for.body37.i_crit_edge:               ; preds = %if.then33.i
  br label %for.body37.i

if.then33.i.sata_pmp_quirks.exit_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

for.body37.i:                                     ; preds = %for.body37.i.for.body37.i_crit_edge, %if.then33.i.for.body37.i_crit_edge
  %link4.1217.i = phi ptr [ %call41.i, %for.body37.i.for.body37.i_crit_edge ], [ %call34.i, %if.then33.i.for.body37.i_crit_edge ]
  %flags38.i = getelementptr inbounds %struct.ata_link, ptr %link4.1217.i, i32 0, i32 5
  %71 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags38.i, align 16
  %or39.i = or i32 %72, 268
  store i32 %or39.i, ptr %flags38.i, align 16
  %call41.i = tail call ptr @ata_link_next(ptr noundef nonnull %link4.1217.i, ptr noundef %3, i32 noundef 0) #5
  %tobool36.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool36.not.i, label %for.body37.i.sata_pmp_quirks.exit_crit_edge, label %for.body37.i.for.body37.i_crit_edge

for.body37.i.for.body37.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37.i

for.body37.i.sata_pmp_quirks.exit_crit_edge:      ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

if.then51.i:                                      ; preds = %land.lhs.true.i
  %call52.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool54.not214.i = icmp eq ptr %call52.i, null
  br i1 %tobool54.not214.i, label %if.then51.i.sata_pmp_quirks.exit_crit_edge, label %if.then51.i.for.body55.i_crit_edge

if.then51.i.for.body55.i_crit_edge:               ; preds = %if.then51.i
  br label %for.body55.i

if.then51.i.sata_pmp_quirks.exit_crit_edge:       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

for.body55.i:                                     ; preds = %for.inc72.i.for.body55.i_crit_edge, %if.then51.i.for.body55.i_crit_edge
  %link4.2215.i = phi ptr [ %call73.i, %for.inc72.i.for.body55.i_crit_edge ], [ %call52.i, %if.then51.i.for.body55.i_crit_edge ]
  %flags56.i = getelementptr inbounds %struct.ata_link, ptr %link4.2215.i, i32 0, i32 5
  %73 = ptrtoint ptr %flags56.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags56.i, align 16
  %or57.i = or i32 %74, 256
  store i32 %or57.i, ptr %flags56.i, align 16
  %pmp58.i = getelementptr inbounds %struct.ata_link, ptr %link4.2215.i, i32 0, i32 1
  %75 = ptrtoint ptr %pmp58.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pmp58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %76)
  %cmp59.i = icmp slt i32 %76, 6
  br i1 %cmp59.i, label %for.body55.i.for.inc72.sink.split.i_crit_edge, label %if.end64.i

for.body55.i.for.inc72.sink.split.i_crit_edge:    ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc72.sink.split.i

if.end64.i:                                       ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %76)
  %cmp66.i = icmp eq i32 %76, 6
  br i1 %cmp66.i, label %if.end64.i.for.inc72.sink.split.i_crit_edge, label %if.end64.i.for.inc72.i_crit_edge

if.end64.i.for.inc72.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc72.i

if.end64.i.for.inc72.sink.split.i_crit_edge:      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc72.sink.split.i

for.inc72.sink.split.i:                           ; preds = %if.end64.i.for.inc72.sink.split.i_crit_edge, %for.body55.i.for.inc72.sink.split.i_crit_edge
  %.sink217 = phi i32 [ 268, %for.body55.i.for.inc72.sink.split.i_crit_edge ], [ 276, %if.end64.i.for.inc72.sink.split.i_crit_edge ]
  %or70.i = or i32 %74, %.sink217
  %77 = ptrtoint ptr %flags56.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or70.i, ptr %flags56.i, align 16
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %for.inc72.sink.split.i, %if.end64.i.for.inc72.i_crit_edge
  %call73.i = tail call ptr @ata_link_next(ptr noundef nonnull %link4.2215.i, ptr noundef %3, i32 noundef 0) #5
  %tobool54.not.i = icmp eq ptr %call73.i, null
  br i1 %tobool54.not.i, label %for.inc72.i.sata_pmp_quirks.exit_crit_edge, label %for.inc72.i.for.body55.i_crit_edge

for.inc72.i.for.body55.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body55.i

for.inc72.i.sata_pmp_quirks.exit_crit_edge:       ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

if.then95.i:                                      ; preds = %land.lhs.true.i.if.then95.i_crit_edge, %land.lhs.true.i.if.then95.i_crit_edge227, %land.lhs.true.i.if.then95.i_crit_edge228, %land.lhs.true.i.if.then95.i_crit_edge229
  %78 = ptrtoint ptr %pmp_link1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pmp_link1.i, align 8
  %80 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_pmp_links, align 4
  %sub.i = add i32 %81, -1
  %flags97.i = getelementptr %struct.ata_link, ptr %79, i32 %sub.i, i32 5
  %82 = ptrtoint ptr %flags97.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags97.i, align 16
  %or98.i = or i32 %83, 32
  store i32 %or98.i, ptr %flags97.i, align 16
  br label %sata_pmp_quirks.exit

land.lhs.true103.i:                               ; preds = %if.end121
  %trunc203.i = trunc i32 %shr.i to i16
  %84 = zext i16 %trunc203.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %trunc203.i, label %land.lhs.true103.i.sata_pmp_quirks.exit_crit_edge [
    i16 9042, label %land.lhs.true103.i.if.then111.i_crit_edge
    i16 805, label %land.lhs.true103.i.if.then111.i_crit_edge230
  ]

land.lhs.true103.i.if.then111.i_crit_edge230:     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111.i

land.lhs.true103.i.if.then111.i_crit_edge:        ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111.i

land.lhs.true103.i.sata_pmp_quirks.exit_crit_edge: ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

if.then111.i:                                     ; preds = %land.lhs.true103.i.if.then111.i_crit_edge, %land.lhs.true103.i.if.then111.i_crit_edge230
  %call112.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool114.not212.i = icmp eq ptr %call112.i, null
  br i1 %tobool114.not212.i, label %if.then111.i.sata_pmp_quirks.exit_crit_edge, label %if.then111.i.for.body115.i_crit_edge

if.then111.i.for.body115.i_crit_edge:             ; preds = %if.then111.i
  br label %for.body115.i

if.then111.i.sata_pmp_quirks.exit_crit_edge:      ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

for.body115.i:                                    ; preds = %for.body115.i.for.body115.i_crit_edge, %if.then111.i.for.body115.i_crit_edge
  %link4.3213.i = phi ptr [ %call119.i, %for.body115.i.for.body115.i_crit_edge ], [ %call112.i, %if.then111.i.for.body115.i_crit_edge ]
  %flags116.i = getelementptr inbounds %struct.ata_link, ptr %link4.3213.i, i32 0, i32 5
  %85 = ptrtoint ptr %flags116.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags116.i, align 16
  %or117.i = or i32 %86, 268
  store i32 %or117.i, ptr %flags116.i, align 16
  %call119.i = tail call ptr @ata_link_next(ptr noundef nonnull %link4.3213.i, ptr noundef %3, i32 noundef 0) #5
  %tobool114.not.i = icmp eq ptr %call119.i, null
  br i1 %tobool114.not.i, label %for.body115.i.sata_pmp_quirks.exit_crit_edge, label %for.body115.i.for.body115.i_crit_edge

for.body115.i.for.body115.i_crit_edge:            ; preds = %for.body115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body115.i

for.body115.i.sata_pmp_quirks.exit_crit_edge:     ; preds = %for.body115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

land.lhs.true125.i:                               ; preds = %if.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 16704, i32 %shr.i)
  %cmp127.old.i = icmp eq i32 %shr.i, 16704
  br i1 %cmp127.old.i, label %if.then129.i, label %land.lhs.true125.i.sata_pmp_quirks.exit_crit_edge

land.lhs.true125.i.sata_pmp_quirks.exit_crit_edge: ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

if.then129.i:                                     ; preds = %land.lhs.true125.i
  %call130.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool132.not209.i = icmp eq ptr %call130.i, null
  br i1 %tobool132.not209.i, label %if.then129.i.sata_pmp_quirks.exit_crit_edge, label %if.then129.i.for.body133.i_crit_edge

if.then129.i.for.body133.i_crit_edge:             ; preds = %if.then129.i
  br label %for.body133.i

if.then129.i.sata_pmp_quirks.exit_crit_edge:      ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

for.body133.i:                                    ; preds = %for.inc141.i.for.body133.i_crit_edge, %if.then129.i.for.body133.i_crit_edge
  %link4.4210.i = phi ptr [ %call142.i, %for.inc141.i.for.body133.i_crit_edge ], [ %call130.i, %if.then129.i.for.body133.i_crit_edge ]
  %pmp134.i = getelementptr inbounds %struct.ata_link, ptr %link4.4210.i, i32 0, i32 1
  %87 = ptrtoint ptr %pmp134.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pmp134.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp135.i = icmp eq i32 %88, 4
  br i1 %cmp135.i, label %if.then137.i, label %for.body133.i.for.inc141.i_crit_edge

for.body133.i.for.inc141.i_crit_edge:             ; preds = %for.body133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc141.i

if.then137.i:                                     ; preds = %for.body133.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags138.i = getelementptr inbounds %struct.ata_link, ptr %link4.4210.i, i32 0, i32 5
  %89 = ptrtoint ptr %flags138.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags138.i, align 16
  %or139.i = or i32 %90, 64
  store i32 %or139.i, ptr %flags138.i, align 16
  br label %for.inc141.i

for.inc141.i:                                     ; preds = %if.then137.i, %for.body133.i.for.inc141.i_crit_edge
  %call142.i = tail call ptr @ata_link_next(ptr noundef nonnull %link4.4210.i, ptr noundef %3, i32 noundef 0) #5
  %tobool132.not.i = icmp eq ptr %call142.i, null
  br i1 %tobool132.not.i, label %for.inc141.i.sata_pmp_quirks.exit_crit_edge, label %for.inc141.i.for.body133.i_crit_edge

for.inc141.i.for.body133.i_crit_edge:             ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body133.i

for.inc141.i.sata_pmp_quirks.exit_crit_edge:      ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_quirks.exit

sata_pmp_quirks.exit:                             ; preds = %for.inc141.i.sata_pmp_quirks.exit_crit_edge, %if.then129.i.sata_pmp_quirks.exit_crit_edge, %land.lhs.true125.i.sata_pmp_quirks.exit_crit_edge, %for.body115.i.sata_pmp_quirks.exit_crit_edge, %if.then111.i.sata_pmp_quirks.exit_crit_edge, %land.lhs.true103.i.sata_pmp_quirks.exit_crit_edge, %if.then95.i, %for.inc72.i.sata_pmp_quirks.exit_crit_edge, %if.then51.i.sata_pmp_quirks.exit_crit_edge, %for.body37.i.sata_pmp_quirks.exit_crit_edge, %if.then33.i.sata_pmp_quirks.exit_crit_edge, %for.inc.i.sata_pmp_quirks.exit_crit_edge, %if.then.i189.sata_pmp_quirks.exit_crit_edge, %land.lhs.true.i.sata_pmp_quirks.exit_crit_edge, %if.end121.sata_pmp_quirks.exit_crit_edge
  %ops = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 4
  %pmp_attach = getelementptr inbounds %struct.ata_port_operations, ptr %92, i32 0, i32 29
  %93 = ptrtoint ptr %pmp_attach to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pmp_attach, align 4
  %tobool133.not = icmp eq ptr %94, null
  br i1 %tobool133.not, label %sata_pmp_quirks.exit.if.end137_crit_edge, label %if.then134

sata_pmp_quirks.exit.if.end137_crit_edge:         ; preds = %sata_pmp_quirks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

if.then134:                                       ; preds = %sata_pmp_quirks.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %94(ptr noundef %3) #5
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %sata_pmp_quirks.exit.if.end137_crit_edge
  %call138 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool139.not207 = icmp eq ptr %call138, null
  br i1 %tobool139.not207, label %if.end137.cleanup_crit_edge, label %if.end137.for.body_crit_edge

if.end137.for.body_crit_edge:                     ; preds = %if.end137
  br label %for.body

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end137.for.body_crit_edge
  %tlink.0208 = phi ptr [ %call141, %for.body.for.body_crit_edge ], [ %call138, %if.end137.for.body_crit_edge ]
  %call140 = tail call i32 @sata_link_init_spd(ptr noundef nonnull %tlink.0208) #5
  %call141 = tail call ptr @ata_link_next(ptr noundef nonnull %tlink.0208, ptr noundef %3, i32 noundef 0) #5
  %tobool139.not = icmp eq ptr %call141, null
  br i1 %tobool139.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail:                                             ; preds = %do.end77, %if.end67.fail_crit_edge, %if.end55.fail_crit_edge
  %rc.0 = phi i32 [ %call64, %if.end55.fail_crit_edge ], [ %call68, %if.end67.fail_crit_edge ], [ %retval.0.i199, %do.end77 ]
  %95 = ptrtoint ptr %pmp37 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %pmp37, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.body.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %do.end26, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end26 ], [ %rc.0, %fail ], [ -22, %do.end11 ], [ -22, %do.end ], [ 0, %if.end137.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sata_pmp_read_gscr(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %gscr) unnamed_addr #1 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %tf.i, i32 4
  %ctl1.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 13
  %command.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 14
  %feature.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 8
  %nsect.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 9
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 10
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 11
  %lbah.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x i32], ptr @sata_pmp_read_gscr.gscr_to_read, i32 0, i32 %i.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %device.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #5
  %8 = call ptr @memset(ptr %0, i32 0, i32 20)
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 128
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %ctl.i.i = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctl.i.i, align 4
  %15 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ctl1.i.i, align 1
  %16 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -28, ptr %command.i, align 1
  %17 = ptrtoint ptr %tf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %tf.i, align 4
  %conv.i = trunc i32 %3 to i8
  %18 = ptrtoint ptr %feature.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %feature.i, align 1
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pmp.i, align 4
  %conv3.i = trunc i32 %20 to i8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3.i, ptr %1, align 4
  %call.i = call i32 @ata_exec_internal(ptr noundef %device.i, ptr noundef nonnull %tf.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.critedge, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #5
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 128
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %30 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devno, align 4
  %add = add i32 %31, %29
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %27, i32 noundef %add, i32 noundef %3, i32 noundef %call.i) #8
  br label %cleanup6

for.inc.critedge:                                 ; preds = %for.body
  %arrayidx1 = getelementptr i32, ptr %gscr, i32 %3
  %32 = ptrtoint ptr %nsect.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nsect.i, align 4
  %conv5.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lbal.i, align 1
  %conv6.i = zext i8 %35 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or7.i = or i32 %shl.i, %conv5.i
  %36 = ptrtoint ptr %lbam.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %lbam.i, align 2
  %conv8.i = zext i8 %37 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or7.i, %shl9.i
  %38 = ptrtoint ptr %lbah.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lbah.i, align 1
  %conv11.i = zext i8 %39 to i32
  %shl12.i = shl nuw i32 %conv11.i, 24
  %or13.i = or i32 %or10.i, %shl12.i
  %40 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or13.i, ptr %arrayidx1, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #5
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.critedge.cleanup6_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.critedge.cleanup6_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.critedge.cleanup6_crit_edge, %do.end
  %retval.2 = phi i32 [ -5, %do.end ], [ 0, %for.inc.critedge.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sata_pmp_configure(ptr nocapture noundef %dev, i32 noundef %print_info) unnamed_addr #1 align 64 {
entry:
  %tf.i141 = alloca %struct.ata_taskfile, align 4
  %tf.i128 = alloca %struct.ata_taskfile, align 4
  %tf.i = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr = lshr i32 %6, 16
  %arrayidx4 = getelementptr %struct.ata_device, ptr %dev, i32 0, i32 25, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp = icmp eq i32 %and5, 0
  br i1 %cmp, label %entry.do.end78_crit_edge, label %if.end

entry.do.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end78

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and9 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %arrayidx10 = getelementptr %struct.ata_device, ptr %dev, i32 0, i32 25, i32 0, i32 64
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %flags14 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags14, align 4
  %or = or i32 %14, 128
  store i32 %or, ptr %flags14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %device.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #5
  %17 = getelementptr inbounds i8, ptr %tf.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 20)
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 128
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 128
  %ctl.i.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctl.i.i, align 4
  %ctl1.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 2
  %25 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ctl1.i.i, align 1
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 13
  %command.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 14
  %27 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -24, ptr %command.i, align 1
  %28 = ptrtoint ptr %tf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %tf.i, align 4
  %feature.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 8
  %29 = ptrtoint ptr %feature.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 33, ptr %feature.i, align 1
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmp.i, align 4
  %conv3.i = trunc i32 %31 to i8
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv3.i, ptr %26, align 4
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 10
  %33 = ptrtoint ptr %lbal.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %lbal.i, align 1
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 11
  %34 = ptrtoint ptr %lbam.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %lbam.i, align 2
  %call.i = call i32 @ata_exec_internal(ptr noundef %device.i, ptr noundef nonnull %tf.i, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.do.end78_crit_edge

if.end15.do.end78_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end78

if.end19:                                         ; preds = %if.end15
  %conv20 = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4245, i32 %conv20)
  %cmp21 = icmp eq i32 %conv20, 4245
  br i1 %cmp21, label %land.lhs.true23, label %if.end19.if.end43_crit_edge

if.end19.if.end43_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true23:                                  ; preds = %if.end19
  %trunc = trunc i32 %shr to i16
  %35 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %trunc, label %land.lhs.true23.if.end43_crit_edge [
    i16 14118, label %land.lhs.true23.if.then31_crit_edge
    i16 14374, label %land.lhs.true23.if.then31_crit_edge164
  ]

land.lhs.true23.if.then31_crit_edge164:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

land.lhs.true23.if.then31_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

land.lhs.true23.if.end43_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then31:                                        ; preds = %land.lhs.true23.if.then31_crit_edge, %land.lhs.true23.if.then31_crit_edge164
  %link32 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %36 = ptrtoint ptr %link32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link32, align 128
  %device.i129 = getelementptr inbounds %struct.ata_port, ptr %37, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i128) #5
  %38 = getelementptr inbounds i8, ptr %tf.i128, i32 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 20)
  %40 = ptrtoint ptr %device.i129 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i129, align 128
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 128
  %ctl.i.i130 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %ctl.i.i130 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctl.i.i130, align 4
  %ctl1.i.i131 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 2
  %46 = ptrtoint ptr %ctl1.i.i131 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %ctl1.i.i131, align 1
  %47 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 13
  %command.i132 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 14
  %48 = ptrtoint ptr %command.i132 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -28, ptr %command.i132, align 1
  %49 = ptrtoint ptr %tf.i128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %tf.i128, align 4
  %feature.i133 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 8
  %50 = ptrtoint ptr %feature.i133 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -127, ptr %feature.i133, align 1
  %pmp.i134 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 1
  %51 = ptrtoint ptr %pmp.i134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pmp.i134, align 4
  %conv3.i135 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv3.i135, ptr %47, align 4
  %call.i136 = call i32 @ata_exec_internal(ptr noundef %device.i129, ptr noundef nonnull %tf.i128, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i, label %if.end36, label %sata_pmp_read.exit

sata_pmp_read.exit:                               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i128) #5
  br label %do.end78

if.end36:                                         ; preds = %if.then31
  %nsect.i137 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 9
  %54 = ptrtoint ptr %nsect.i137 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nsect.i137, align 4
  %lbal.i138 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 10
  %56 = ptrtoint ptr %lbal.i138 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %lbal.i138, align 1
  %lbam.i139 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 11
  %58 = ptrtoint ptr %lbam.i139 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lbam.i139, align 2
  %lbah.i140 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i128, i32 0, i32 12
  %60 = ptrtoint ptr %lbah.i140 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lbah.i140, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i128) #5
  %62 = and i8 %55, -2
  %63 = ptrtoint ptr %link32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %link32, align 128
  %device.i142 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i141) #5
  %65 = getelementptr inbounds i8, ptr %tf.i141, i32 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 20)
  %67 = ptrtoint ptr %device.i142 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device.i142, align 128
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 128
  %ctl.i.i143 = getelementptr inbounds %struct.ata_port, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %ctl.i.i143 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ctl.i.i143, align 4
  %ctl1.i.i144 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 2
  %73 = ptrtoint ptr %ctl1.i.i144 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %ctl1.i.i144, align 1
  %74 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 13
  %command.i145 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 14
  %75 = ptrtoint ptr %command.i145 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -24, ptr %command.i145, align 1
  %76 = ptrtoint ptr %tf.i141 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 7, ptr %tf.i141, align 4
  %feature.i146 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 8
  %77 = ptrtoint ptr %feature.i146 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -127, ptr %feature.i146, align 1
  %78 = ptrtoint ptr %pmp.i134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pmp.i134, align 4
  %conv3.i148 = trunc i32 %79 to i8
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv3.i148, ptr %74, align 4
  %nsect.i150 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 9
  %81 = ptrtoint ptr %nsect.i150 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %62, ptr %nsect.i150, align 4
  %lbal.i151 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 10
  %82 = ptrtoint ptr %lbal.i151 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %57, ptr %lbal.i151, align 1
  %lbam.i152 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 11
  %83 = ptrtoint ptr %lbam.i152 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %59, ptr %lbam.i152, align 2
  %lbah.i153 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i141, i32 0, i32 12
  %84 = ptrtoint ptr %lbah.i153 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %61, ptr %lbah.i153, align 1
  %call.i154 = call i32 @ata_exec_internal(ptr noundef %device.i142, ptr noundef nonnull %tf.i141, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i141) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool40.not = icmp eq i32 %call.i154, 0
  br i1 %tobool40.not, label %if.end36.if.end43_crit_edge, label %if.end36.do.end78_crit_edge

if.end36.do.end78_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end78

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %if.end36.if.end43_crit_edge, %land.lhs.true23.if.end43_crit_edge, %if.end19.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print_info)
  %tobool44.not = icmp eq i32 %print_info, 0
  br i1 %tobool44.not, label %if.end43.cleanup88_crit_edge, label %do.end

if.end43.cleanup88_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup88

do.end:                                           ; preds = %if.end43
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 128
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %93 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %devno, align 4
  %add = add i32 %94, %92
  %arrayidx.i = getelementptr %struct.ata_device, ptr %dev, i32 0, i32 25, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i155 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i155, label %if.end.i156, label %do.end.sata_pmp_spec_rev_str.exit_crit_edge

do.end.sata_pmp_spec_rev_str.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_spec_rev_str.exit

if.end.i156:                                      ; preds = %do.end
  %and1.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i156.sata_pmp_spec_rev_str.exit_crit_edge

if.end.i156.sata_pmp_spec_rev_str.exit_crit_edge: ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_pmp_spec_rev_str.exit

if.end4.i:                                        ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #7
  %and5.i = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %.str.39..str.38.i = select i1 %tobool6.not.i, ptr @.str.39, ptr @.str.38
  br label %sata_pmp_spec_rev_str.exit

sata_pmp_spec_rev_str.exit:                       ; preds = %if.end4.i, %if.end.i156.sata_pmp_spec_rev_str.exit_crit_edge, %do.end.sata_pmp_spec_rev_str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.36, %do.end.sata_pmp_spec_rev_str.exit_crit_edge ], [ @.str.37, %if.end.i156.sata_pmp_spec_rev_str.exit_crit_edge ], [ %.str.39..str.38.i, %if.end4.i ]
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i, align 4
  %shr53 = lshr i32 %98, 8
  %and54 = and i32 %shr53, 255
  %arrayidx55 = getelementptr %struct.ata_device, ptr %dev, i32 0, i32 25, i32 0, i32 96
  %99 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr %struct.ata_device, ptr %dev, i32 0, i32 25, i32 0, i32 64
  %101 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx56, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %90, i32 noundef %add, ptr noundef nonnull %retval.0.i, i32 noundef %conv20, i32 noundef %shr, i32 noundef %and54, i32 noundef %and5, i32 noundef %100, i32 noundef %102) #8
  %flags58 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 3
  %103 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags58, align 4
  %and59 = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.end64, label %sata_pmp_spec_rev_str.exit.cleanup88_crit_edge

sata_pmp_spec_rev_str.exit.cleanup88_crit_edge:   ; preds = %sata_pmp_spec_rev_str.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup88

do.end64:                                         ; preds = %sata_pmp_spec_rev_str.exit
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 128
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 128
  %print_id68 = getelementptr inbounds %struct.ata_port, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %print_id68 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %print_id68, align 4
  %pmp70 = getelementptr inbounds %struct.ata_link, ptr %106, i32 0, i32 1
  %111 = ptrtoint ptr %pmp70 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pmp70, align 4
  %113 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %devno, align 4
  %add72 = add i32 %114, %112
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %110, i32 noundef %add72) #8
  br label %cleanup88

do.end78:                                         ; preds = %if.end36.do.end78_crit_edge, %sata_pmp_read.exit, %if.end15.do.end78_crit_edge, %entry.do.end78_crit_edge
  %err_mask.1 = phi i32 [ 0, %entry.do.end78_crit_edge ], [ %call.i, %if.end15.do.end78_crit_edge ], [ %call.i154, %if.end36.do.end78_crit_edge ], [ %call.i136, %sata_pmp_read.exit ]
  %reason.1 = phi ptr [ @.str.24, %entry.do.end78_crit_edge ], [ @.str.25, %if.end15.do.end78_crit_edge ], [ @.str.27, %if.end36.do.end78_crit_edge ], [ @.str.26, %sata_pmp_read.exit ]
  %rc.1 = phi i32 [ -22, %entry.do.end78_crit_edge ], [ -5, %if.end15.do.end78_crit_edge ], [ -5, %if.end36.do.end78_crit_edge ], [ -5, %sata_pmp_read.exit ]
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 128
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 128
  %print_id82 = getelementptr inbounds %struct.ata_port, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %print_id82 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %print_id82, align 4
  %pmp84 = getelementptr inbounds %struct.ata_link, ptr %116, i32 0, i32 1
  %121 = ptrtoint ptr %pmp84 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pmp84, align 4
  %devno85 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %123 = ptrtoint ptr %devno85 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %devno85, align 4
  %add86 = add i32 %124, %122
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %120, i32 noundef %add86, ptr noundef nonnull %reason.1, i32 noundef %err_mask.1) #8
  br label %cleanup88

cleanup88:                                        ; preds = %do.end78, %do.end64, %sata_pmp_spec_rev_str.exit.cleanup88_crit_edge, %if.end43.cleanup88_crit_edge
  %retval.0 = phi i32 [ %rc.1, %do.end78 ], [ 0, %sata_pmp_spec_rev_str.exit.cleanup88_crit_edge ], [ 0, %do.end64 ], [ 0, %if.end43.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_init_spd(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_autopsy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_report(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_finish(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_exec_internal(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_link_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_tlink_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tlink_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_eh_recover(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_dev_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sata_pmp_handle_link_fail(ptr noundef %link, ptr nocapture noundef %link_tries) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %2 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmp, align 4
  %arrayidx = getelementptr i32, ptr %link_tries, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags5 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 5
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags5, align 16
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body:                                          ; preds = %if.end
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 26
  %13 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave_link, align 128
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %do.end18, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %print_id, align 4
  %17 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pmp, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %16, i32 noundef %18, i32 noundef 3) #8
  br label %do.body27

do.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %print_id21 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %19 = ptrtoint ptr %print_id21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %20, i32 noundef 3) #8
  br label %do.body27

do.body27:                                        ; preds = %do.end18, %do.end
  %lock = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 8
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #5
  %23 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags5, align 16
  %or = or i32 %24, 64
  store i32 %or, ptr %flags5, align 16
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %call30) #5
  br label %if.end37

if.end37:                                         ; preds = %do.body27, %if.end.if.end37_crit_edge
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  tail call void @ata_dev_disable(ptr noundef %device) #5
  %action = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 3
  %27 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_pmp_detach(ptr nocapture noundef readonly %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno, align 4
  %add = add i32 %9, %7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %5, i32 noundef %add) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %link1.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 25
  %cmp.i = icmp eq ptr %link1.i, %1
  br i1 %cmp.i, label %entry.lor.lhs.false_crit_edge, label %ata_is_host_link.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

ata_is_host_link.exit:                            ; preds = %entry
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_link.i, align 128
  %cmp3.i = icmp eq ptr %13, %1
  br i1 %cmp3.i, label %ata_is_host_link.exit.lor.lhs.false_crit_edge, label %ata_is_host_link.exit.do.end19_crit_edge

ata_is_host_link.exit.do.end19_crit_edge:         ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

ata_is_host_link.exit.lor.lhs.false_crit_edge:    ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ata_is_host_link.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %14 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.rhs:                                          ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %17)
  %cmp.not = icmp eq i32 %17, 15
  br i1 %cmp.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.do.end19_crit_edge, !prof !186

lor.rhs.do.end19_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end19:                                         ; preds = %lor.rhs.do.end19_crit_edge, %lor.lhs.false.do.end19_crit_edge, %ata_is_host_link.exit.do.end19_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 569, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end19, %lor.rhs.if.end_crit_edge
  %ops = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %pmp_detach = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %pmp_detach to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmp_detach, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end.if.end36_crit_edge, label %if.then33

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %21(ptr noundef %3) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end.if.end36_crit_edge
  %call37 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #5
  %tobool38.not70 = icmp eq ptr %call37, null
  br i1 %tobool38.not70, label %if.end36.do.body41_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

if.end36.do.body41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end36.for.body_crit_edge
  %tlink.071 = phi ptr [ %call39, %for.body.for.body_crit_edge ], [ %call37, %if.end36.for.body_crit_edge ]
  %device = getelementptr inbounds %struct.ata_link, ptr %tlink.071, i32 0, i32 14
  tail call void @ata_eh_detach_dev(ptr noundef %device) #5
  %call39 = tail call ptr @ata_link_next(ptr noundef nonnull %tlink.071, ptr noundef %3, i32 noundef 0) #5
  %tobool38.not = icmp eq ptr %call39, null
  br i1 %tobool38.not, label %for.body.do.body41_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.do.body41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

do.body41:                                        ; preds = %for.body.do.body41_crit_edge, %if.end36.do.body41_crit_edge
  %lock = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 8
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #5
  %nr_pmp_links = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 27
  %24 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nr_pmp_links, align 4
  %25 = ptrtoint ptr %pmp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pmp, align 4
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call45) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_eh_reset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_down_spd_limit(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_detach_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_about_to_do(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !101, !103, !104, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !169, !170, !171, !173, !174, !175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @sata_pmp_port_ops, !1, !"sata_pmp_port_ops", i1 false, i1 false}
!1 = !{!"../drivers/ata/libata-pmp.c", i32 16, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/ata/libata-pmp.c", i32 150, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sata_pmp_scr_read._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sata_pmp_scr_read._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sata_pmp_scr_read._entry.3, !3, !"_entry", i1 false, i1 false}
!10 = !{ptr @sata_pmp_scr_read._entry_ptr.5, !3, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/ata/libata-pmp.c", i32 181, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sata_pmp_scr_write._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @sata_pmp_scr_write._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sata_pmp_scr_write._entry.8, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @sata_pmp_scr_write._entry_ptr.10, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/ata/libata-pmp.c", i32 495, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sata_pmp_attach._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @sata_pmp_attach._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/libata-pmp.c", i32 500, i32 3}
!26 = !{ptr @sata_pmp_attach._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sata_pmp_attach._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/libata-pmp.c", i32 505, i32 3}
!30 = !{ptr @sata_pmp_attach._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sata_pmp_attach._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/libata-pmp.c", i32 524, i32 3}
!34 = !{ptr @sata_pmp_attach._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sata_pmp_attach._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_sata_pmp_port_ops, !37, !"__ksymtab_sata_pmp_port_ops", i1 false, i1 false}
!37 = !{!"../drivers/ata/libata-pmp.c", i32 1103, i32 1}
!38 = !{ptr @__ksymtab_sata_pmp_qc_defer_cmd_switch, !39, !"__ksymtab_sata_pmp_qc_defer_cmd_switch", i1 false, i1 false}
!39 = !{!"../drivers/ata/libata-pmp.c", i32 1104, i32 1}
!40 = !{ptr @__ksymtab_sata_pmp_error_handler, !41, !"__ksymtab_sata_pmp_error_handler", i1 false, i1 false}
!41 = !{!"../drivers/ata/libata-pmp.c", i32 1105, i32 1}
!42 = !{ptr @sata_pmp_read_gscr.gscr_to_read, !43, !"gscr_to_read", i1 false, i1 false}
!43 = !{!"../drivers/ata/libata-pmp.c", i32 225, i32 19}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/libata-pmp.c", i32 234, i32 4}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sata_pmp_read_gscr._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sata_pmp_read_gscr._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/libata-pmp.c", i32 272, i32 12}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/libata-pmp.c", i32 285, i32 12}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/libata-pmp.c", i32 301, i32 13}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/libata-pmp.c", i32 308, i32 13}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/libata-pmp.c", i32 314, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sata_pmp_configure._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sata_pmp_configure._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/libata-pmp.c", i32 322, i32 4}
!64 = !{ptr @sata_pmp_configure._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sata_pmp_configure._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/libata-pmp.c", i32 330, i32 2}
!68 = !{ptr @sata_pmp_configure._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sata_pmp_configure._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/libata-pmp.c", i32 248, i32 10}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/libata-pmp.c", i32 250, i32 10}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/libata-pmp.c", i32 252, i32 10}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/libata-pmp.c", i32 253, i32 9}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/libata-pmp.c", i32 969, i32 4}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sata_pmp_eh_recover._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @sata_pmp_eh_recover._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sata_pmp_eh_recover._entry.42, !79, !"_entry", i1 false, i1 false}
!85 = !{ptr @sata_pmp_eh_recover._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/libata-pmp.c", i32 1013, i32 4}
!88 = !{ptr @sata_pmp_eh_recover._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sata_pmp_eh_recover._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ata/libata-pmp.c", i32 1024, i32 3}
!92 = !{ptr @sata_pmp_eh_recover._entry.48, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sata_pmp_eh_recover._entry_ptr.50, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/libata-pmp.c", i32 1040, i32 4}
!96 = !{ptr @sata_pmp_eh_recover._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sata_pmp_eh_recover._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sata_pmp_eh_recover._entry.54, !95, !"_entry", i1 false, i1 false}
!100 = !{ptr @sata_pmp_eh_recover._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/libata-pmp.c", i32 1042, i32 4}
!103 = !{ptr @sata_pmp_eh_recover._entry.57, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @sata_pmp_eh_recover._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sata_pmp_eh_recover._entry.60, !102, !"_entry", i1 false, i1 false}
!107 = !{ptr @sata_pmp_eh_recover._entry_ptr.62, !102, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/libata-pmp.c", i32 1048, i32 3}
!110 = !{ptr @sata_pmp_eh_recover._entry.63, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @sata_pmp_eh_recover._entry_ptr.65, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/libata-pmp.c", i32 1077, i32 2}
!114 = !{ptr @sata_pmp_eh_recover._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sata_pmp_eh_recover._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/libata-pmp.c", i32 774, i32 4}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sata_pmp_eh_recover_pmp._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @sata_pmp_eh_recover_pmp._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sata_pmp_eh_recover_pmp._entry.71, !117, !"_entry", i1 false, i1 false}
!123 = !{ptr @sata_pmp_eh_recover_pmp._entry_ptr.73, !117, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/libata-pmp.c", i32 815, i32 4}
!126 = !{ptr @sata_pmp_eh_recover_pmp._entry.74, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @sata_pmp_eh_recover_pmp._entry_ptr.76, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.77, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/libata-pmp.c", i32 690, i32 2}
!130 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @sata_pmp_revalidate._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @sata_pmp_revalidate._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.79, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/ata/libata-pmp.c", i32 611, i32 3}
!135 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @sata_pmp_same_pmp._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @sata_pmp_same_pmp._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/ata/libata-pmp.c", i32 618, i32 3}
!140 = !{ptr @sata_pmp_same_pmp._entry.81, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sata_pmp_same_pmp._entry_ptr.83, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.85, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/ata/libata-pmp.c", i32 625, i32 3}
!144 = !{ptr @sata_pmp_same_pmp._entry.84, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @sata_pmp_same_pmp._entry_ptr.86, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.87, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/ata/libata-pmp.c", i32 713, i32 3}
!148 = !{ptr @.str.88, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @sata_pmp_revalidate_quick._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @sata_pmp_revalidate_quick._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ata/libata-pmp.c", i32 720, i32 3}
!153 = !{ptr @sata_pmp_revalidate_quick._entry.89, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @sata_pmp_revalidate_quick._entry_ptr.91, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.92, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/libata-pmp.c", i32 861, i32 4}
!157 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sata_pmp_eh_handle_disabled_links._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @sata_pmp_eh_handle_disabled_links._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.95, !156, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sata_pmp_eh_handle_disabled_links._entry.94, !156, !"_entry", i1 false, i1 false}
!162 = !{ptr @sata_pmp_eh_handle_disabled_links._entry_ptr.96, !156, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.97, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ata/libata-pmp.c", i32 885, i32 3}
!165 = !{ptr @.str.98, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @sata_pmp_handle_link_fail._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @sata_pmp_handle_link_fail._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.100, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @sata_pmp_handle_link_fail._entry.99, !164, !"_entry", i1 false, i1 false}
!170 = !{ptr @sata_pmp_handle_link_fail._entry_ptr.101, !164, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.102, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/ata/libata-pmp.c", i32 566, i32 2}
!173 = !{ptr @.str.103, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @sata_pmp_detach._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @sata_pmp_detach._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{!"auto-init"}
!186 = !{!"branch_weights", i32 2000, i32 1}
