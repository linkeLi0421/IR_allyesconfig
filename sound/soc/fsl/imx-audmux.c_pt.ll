; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/imx-audmux.c_pt.bc'
source_filename = "../sound/soc/fsl/imx-audmux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_audmux_v1_configure_port\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_audmux_v1_configure_port\09\09\09\09"
module asm "\09.long\09__crc_imx_audmux_v1_configure_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_audmux_v1_configure_port:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_audmux_v1_configure_port\22\09\09\09\09\09"
module asm "__kstrtabns_imx_audmux_v1_configure_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_audmux_v2_configure_port\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_audmux_v2_configure_port\09\09\09\09"
module asm "\09.long\09__crc_imx_audmux_v2_configure_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_audmux_v2_configure_port:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_audmux_v2_configure_port\22\09\09\09\09\09"
module asm "__kstrtabns_imx_audmux_v2_configure_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@audmux_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@audmux_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@port_mapping = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\04\08\10\14\1C", [26 x i8] zeroinitializer }, align 32
@__kstrtab_imx_audmux_v1_configure_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_audmux_v1_configure_port = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_audmux_v1_configure_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_audmux_v1_configure_port to i32), ptr @__kstrtab_imx_audmux_v1_configure_port, ptr @__kstrtabns_imx_audmux_v1_configure_port }, section "___ksymtab_gpl+imx_audmux_v1_configure_port", align 4
@audmux_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_imx_audmux_v2_configure_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_audmux_v2_configure_port = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_audmux_v2_configure_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_audmux_v2_configure_port to i32), ptr @__kstrtab_imx_audmux_v2_configure_port, ptr @__kstrtabns_imx_audmux_v2_configure_port }, section "___ksymtab_gpl+imx_audmux_v2_configure_port", align 4
@__initcall__kmod_snd_soc_imx_audmux__224_381_imx_audmux_init4 = internal global ptr @imx_audmux_init, section ".initcall4.init", align 4
@imx_audmux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_audmux_probe, ptr @imx_audmux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_audmux_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_audmux_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_audmux_exit = internal global ptr @imx_audmux_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description225 = internal constant [60 x i8] c"snd_soc_imx_audmux.description=Freescale i.MX AUDMUX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [64 x i8] c"snd_soc_imx_audmux.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [57 x i8] c"snd_soc_imx_audmux.file=sound/soc/fsl/snd-soc-imx-audmux\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [34 x i8] c"snd_soc_imx_audmux.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias229 = internal constant [45 x i8] c"snd_soc_imx_audmux.alias=platform:imx-audmux\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx-audmux\00", [21 x i8] zeroinitializer }, align 32
@imx_audmux_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-audmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-audmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@imx_audmux_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_audmux_suspend, ptr @imx_audmux_resume, ptr @imx_audmux_suspend, ptr @imx_audmux_resume, ptr @imx_audmux_suspend, ptr @imx_audmux_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audmux\00", [25 x i8] zeroinitializer }, align 32
@imx_audmux_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_imx_audmux\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_audmux_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/fsl/imx-audmux.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get clock: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@reg_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx_audmux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 312, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported version!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_audmux_probe._entry_ptr = internal global ptr @imx_audmux_probe._entry, section ".printk_index", align 4
@regcache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@audmux_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ssi%lu\00", [25 x i8] zeroinitializer }, align 32
@audmux_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @audmux_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PDCR: %08x\0APTCR: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxFS output from %s, \00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TxFS input, \00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TxClk output from %s\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxClk input\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Port is symmetric\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RxFS output from %s, \00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RxFS input, \00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RxClk output from %s\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxClk input\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0AData received from %s\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-ssi.0\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-ssi.1\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSI3\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSI4\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSI5\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSI6\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,audmux-port\00", [16 x i8] zeroinitializer }, align 32
@imx_audmux_parse_dt_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 245, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to get fsl,audmux-port of child node \22%pOF\22\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"imx_audmux_parse_dt_defaults\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_audmux_parse_dt_defaults._entry_ptr = internal global ptr @imx_audmux_parse_dt_defaults._entry, section ".printk_index", align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,port-config\00", [16 x i8] zeroinitializer }, align 32
@imx_audmux_parse_dt_defaults._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.4, i32 250, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"child node \22%pOF\22 does not have property fsl,port-config\0A\00", [38 x i8] zeroinitializer }, align 32
@imx_audmux_parse_dt_defaults._entry_ptr.36 = internal global ptr @imx_audmux_parse_dt_defaults._entry.34, section ".printk_index", align 4
@imx_audmux_parse_dt_defaults._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.4, i32 269, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read u32 at index %d of child %pOF\0A\00", [50 x i8] zeroinitializer }, align 32
@imx_audmux_parse_dt_defaults._entry_ptr.39 = internal global ptr @imx_audmux_parse_dt_defaults._entry.37, section ".printk_index", align 4
@imx_audmux_parse_dt_defaults._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.31, ptr @.str.4, i32 276, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"One pdcr value is missing in child node %pOF\0A\00", [50 x i8] zeroinitializer }, align 32
@imx_audmux_parse_dt_defaults._entry_ptr.42 = internal global ptr @imx_audmux_parse_dt_defaults._entry.40, section ".printk_index", align 4
@switch.table.audmux_read_file = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@switch.table.audmux_read_file.43 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@switch.table.audmux_read_file.44 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@switch.table.audmux_read_file.45 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@switch.table.audmux_read_file.46 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967221]
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"audmux_type\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 171, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"audmux_base\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 25, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"port_mapping\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 180, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"audmux_clk\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 24, i32 20 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"imx_audmux_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 367, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 371, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"imx_audmux_dt_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 173, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"imx_audmux_pm\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 363, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 294, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 296, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"reg_max\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 27, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 312, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"regcache\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 26, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"audmux_debugfs_root\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 33, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 148, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"audmux_debugfs_fops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 134, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 81, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 86, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 90, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 94, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 98, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 100, i32 47 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 104, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 108, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 112, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 116, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 120, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 124, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 41, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 43, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 45, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 47, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 49, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 51, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 53, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 242, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 244, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 248, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 249, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 268, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [30 x i8] c"../sound/soc/fsl/imx-audmux.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 275, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant [30 x i8] c"switch.table.audmux_read_file\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [33 x i8] c"switch.table.audmux_read_file.43\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [33 x i8] c"switch.table.audmux_read_file.44\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [33 x i8] c"switch.table.audmux_read_file.45\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [33 x i8] c"switch.table.audmux_read_file.46\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_imx_audmux_exit, ptr @__initcall__kmod_snd_soc_imx_audmux__224_381_imx_audmux_init4, ptr @__ksymtab_imx_audmux_v1_configure_port, ptr @__ksymtab_imx_audmux_v2_configure_port, ptr @imx_audmux_exit, ptr @imx_audmux_parse_dt_defaults._entry, ptr @imx_audmux_parse_dt_defaults._entry.34, ptr @imx_audmux_parse_dt_defaults._entry.37, ptr @imx_audmux_parse_dt_defaults._entry.40, ptr @imx_audmux_parse_dt_defaults._entry_ptr, ptr @imx_audmux_parse_dt_defaults._entry_ptr.36, ptr @imx_audmux_parse_dt_defaults._entry_ptr.39, ptr @imx_audmux_parse_dt_defaults._entry_ptr.42, ptr @imx_audmux_probe._entry, ptr @imx_audmux_probe._entry_ptr, ptr @audmux_type, ptr @audmux_base, ptr @port_mapping, ptr @audmux_clk, ptr @imx_audmux_driver, ptr @.str, ptr @imx_audmux_dt_ids, ptr @imx_audmux_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @reg_max, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @regcache, ptr @audmux_debugfs_root, ptr @.str.9, ptr @audmux_debugfs_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @switch.table.audmux_read_file, ptr @switch.table.audmux_read_file.43, ptr @switch.table.audmux_read_file.44, ptr @switch.table.audmux_read_file.45, ptr @switch.table.audmux_read_file.46], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audmux_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audmux_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_mapping to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audmux_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audmux_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audmux_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_parse_dt_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_parse_dt_defaults._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_parse_dt_defaults._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmux_parse_dt_defaults._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audmux_read_file to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audmux_read_file.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audmux_read_file.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audmux_read_file.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audmux_read_file.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_audmux_v1_configure_port(i32 noundef %port, i32 noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audmux_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @audmux_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp3 = icmp ugt i32 %port, 5
  br i1 %cmp3, label %if.end2.return_crit_edge, label %do.body

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %pcr)
  %3 = load ptr, ptr @audmux_base, align 4
  %arrayidx = getelementptr [6 x i8], ptr @port_mapping, i32 0, i32 %port
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !127
  br label %return

return:                                           ; preds = %do.body, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.return_crit_edge ], [ -38, %if.end.return_crit_edge ], [ -22, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_audmux_v2_configure_port(i32 noundef %port, i32 noundef %ptcr, i32 noundef %pdcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audmux_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @audmux_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr @audmux_clk, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end2.do.body_crit_edge, label %if.then4

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then4:                                         ; preds = %if.end2
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %if.end2.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %ptcr)
  %4 = load ptr, ptr @audmux_base, align 4
  %mul = shl i32 %port, 3
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %pdcr)
  %6 = load ptr, ptr @audmux_base, align 4
  %add = or i32 %mul, 4
  %add.ptr13 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %5) #8, !srcloc !127
  %7 = load ptr, ptr @audmux_clk, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %if.then15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %7) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then15, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then15 ], [ %2, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then15 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ %call.i, %if.then4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmux_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_audmux_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_audmux_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_audmux_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmux_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %port.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  store ptr %call, ptr @audmux_base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  store ptr %call3, ptr @audmux_clk, align 4
  %cmp.i34 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %do.body, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_audmux_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_audmux_probe, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !130

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @audmux_clk, align 4
  %2 = ptrtoint ptr %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_audmux_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %2) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  store ptr null, ptr @audmux_clk, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %call15 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %3 = ptrtoint ptr %call15 to i32
  store i32 %3, ptr @audmux_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end18 [
    i32 1, label %sw.bb
    i32 0, label %if.end13.sw.epilog_crit_edge
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #8
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #8
  store ptr %call.i, ptr @audmux_debugfs_root, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 0) #8
  %6 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %6, ptr noundef null, ptr noundef nonnull @audmux_debugfs_fops) #8
  %call1.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 1) #8
  %7 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.1.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull @audmux_debugfs_fops) #8
  %call1.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 2) #8
  %8 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.2.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull inttoptr (i32 2 to ptr), ptr noundef nonnull @audmux_debugfs_fops) #8
  %call1.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 3) #8
  %9 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.3.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %9, ptr noundef nonnull inttoptr (i32 3 to ptr), ptr noundef nonnull @audmux_debugfs_fops) #8
  %call1.4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 4) #8
  %10 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.4.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %10, ptr noundef nonnull inttoptr (i32 4 to ptr), ptr noundef nonnull @audmux_debugfs_fops) #8
  %call1.5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 5) #8
  %11 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.5.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull inttoptr (i32 5 to ptr), ptr noundef nonnull @audmux_debugfs_fops) #8
  %call1.6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef 6) #8
  %12 = load ptr, ptr @audmux_debugfs_root, align 4
  %call3.6.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 292, ptr noundef %12, ptr noundef nonnull inttoptr (i32 6 to ptr), ptr noundef nonnull @audmux_debugfs_fops) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #8
  br label %sw.epilog

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  br label %return

sw.epilog:                                        ; preds = %sw.bb, %if.end13.sw.epilog_crit_edge
  %storemerge = phi i32 [ 14, %sw.bb ], [ 6, %if.end13.sw.epilog_crit_edge ]
  store i32 %storemerge, ptr @reg_max, align 4
  %mul = shl nuw nsw i32 %storemerge, 2
  %call.i35 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #8
  store ptr %call.i35, ptr @regcache, align 4
  %tobool22.not = icmp eq ptr %call.i35, null
  br i1 %tobool22.not, label %sw.epilog.return_crit_edge, label %if.end24

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end24:                                         ; preds = %sw.epilog
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i36 = call ptr @of_get_next_available_child(ptr noundef %14, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i36, null
  br i1 %cmp.not5.i, label %if.end24.return_crit_edge, label %if.end24.for.body.i_crit_edge

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %child.06.i = phi ptr [ %call50.i, %cleanup.i.for.body.i_crit_edge ], [ %call.i36, %if.end24.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i) #8
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %port.i, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !131
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.06.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %port.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %child.06.i) #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %child.06.i, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %do.end6.i, label %if.end.i.for.cond9.i_crit_edge

if.end.i.for.cond9.i_crit_edge:                   ; preds = %if.end.i
  br label %for.cond9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull %child.06.i) #11
  br label %cleanup.i

for.cond9.i:                                      ; preds = %for.inc.i, %if.end.i.for.cond9.i_crit_edge
  %ptcr.0.i = phi i32 [ %ptcr.1.i, %for.inc.i ], [ 0, %if.end.i.for.cond9.i_crit_edge ]
  %pdcr.0.i = phi i32 [ %pdcr.1.i, %for.inc.i ], [ 0, %if.end.i.for.cond9.i_crit_edge ]
  %pcr.0.i = phi i32 [ %pcr.1.i, %for.inc.i ], [ 0, %if.end.i.for.cond9.i_crit_edge ]
  %i.0.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %if.end.i.for.cond9.i_crit_edge ]
  %call10.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.06.i, ptr noundef nonnull @.str.33, i32 noundef %i.0.i, ptr noundef nonnull %val.i) #8
  %17 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call10.i, label %do.end26.i [
    i32 0, label %for.body12.i
    i32 -75, label %if.end28.i
  ]

for.body12.i:                                     ; preds = %for.cond9.i
  %18 = load i32, ptr @audmux_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp13.i = icmp eq i32 %18, 1
  br i1 %cmp13.i, label %if.then14.i, label %if.else19.i

if.then14.i:                                      ; preds = %for.body12.i
  %19 = and i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not.i = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %21, %pdcr.0.i
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %or17.i = or i32 %21, %ptcr.0.i
  br label %for.inc.i

if.else19.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %or20.i = or i32 %23, %pcr.0.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else19.i, %if.else.i, %if.then16.i
  %ptcr.1.i = phi i32 [ %ptcr.0.i, %if.then16.i ], [ %or17.i, %if.else.i ], [ %ptcr.0.i, %if.else19.i ]
  %pdcr.1.i = phi i32 [ %or.i, %if.then16.i ], [ %pdcr.0.i, %if.else.i ], [ %pdcr.0.i, %if.else19.i ]
  %pcr.1.i = phi i32 [ %pcr.0.i, %if.then16.i ], [ %pcr.0.i, %if.else.i ], [ %or20.i, %if.else19.i ]
  %inc.i = add i32 %i.0.i, 1
  br label %for.cond9.i

do.end26.i:                                       ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %i.0.i, ptr noundef nonnull %child.06.i) #11
  br label %cleanup.i

if.end28.i:                                       ; preds = %for.cond9.i
  %24 = load i32, ptr @audmux_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp29.i = icmp eq i32 %24, 1
  br i1 %cmp29.i, label %if.then30.i, label %if.else40.i

if.then30.i:                                      ; preds = %if.end28.i
  %25 = and i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool32.not.i = icmp eq i32 %25, 0
  br i1 %tobool32.not.i, label %if.end38.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull %child.06.i) #11
  br label %cleanup.i

if.end38.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %call39.i = call i32 @imx_audmux_v2_configure_port(i32 noundef %27, i32 noundef %ptcr.0.i, i32 noundef %pdcr.0.i) #8
  br label %cleanup.i

if.else40.i:                                      ; preds = %if.end28.i
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.else40.i.cleanup.i_crit_edge

if.else40.i.cleanup.i_crit_edge:                  ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.else40.i
  %30 = load ptr, ptr @audmux_base, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp3.i.i = icmp ugt i32 %29, 5
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp3.i.i
  br i1 %or.cond.i, label %if.end.i.i.cleanup.i_crit_edge, label %do.body.i.i

if.end.i.i.cleanup.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @arm_heavy_mb() #8
  %31 = call i32 @llvm.bswap.i32(i32 %pcr.0.i) #8
  %32 = load ptr, ptr @audmux_base, align 4
  %arrayidx.i.i = getelementptr [6 x i8], ptr @port_mapping, i32 0, i32 %29
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %conv.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #8, !srcloc !127
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body.i.i, %if.end.i.i.cleanup.i_crit_edge, %if.else40.i.cleanup.i_crit_edge, %if.end38.i, %do.end36.i, %do.end26.i, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i) #8
  %call50.i = call ptr @of_get_next_available_child(ptr noundef %14, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call50.i, null
  br i1 %cmp.not.i, label %cleanup.i.return_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.return_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %cleanup.i.return_crit_edge, %if.end24.return_crit_edge, %sw.epilog.return_crit_edge, %do.end18, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -22, %do.end18 ], [ -12, %sw.epilog.return_crit_edge ], [ 0, %if.end24.return_crit_edge ], [ 0, %cleanup.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmux_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audmux_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @audmux_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audmux_read_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = load ptr, ptr @audmux_clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end3_crit_edge, label %if.then3.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %4 = load ptr, ptr @audmux_base, align 4
  %mul = shl i32 %2, 3
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !132
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %7 = load ptr, ptr @audmux_base, align 4
  %add = or i32 %mul, 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !132
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %10 = load ptr, ptr @audmux_clk, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end3.if.end15_crit_edge, label %if.then14

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %10) #8
  tail call void @clk_unprepare(ptr noundef nonnull %10) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end3.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4096) #12
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool21.not = icmp sgt i32 %6, -1
  %add.ptr28 = getelementptr i8, ptr %call7.i, i32 %call20
  %sub29 = sub i32 4096, %call20
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %shr = lshr i32 %6, 27
  %and24 = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and24)
  %12 = icmp ult i32 %and24, 6
  br i1 %12, label %switch.lookup, label %if.then22.audmux_port_string.exit_crit_edge

if.then22.audmux_port_string.exit_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %audmux_port_string.exit

switch.lookup:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.audmux_read_file, i32 0, i32 %and24
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %audmux_port_string.exit

audmux_port_string.exit:                          ; preds = %switch.lookup, %if.then22.audmux_port_string.exit_crit_edge
  %retval.0.i168 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then22.audmux_port_string.exit_crit_edge ]
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.11, ptr noundef nonnull %retval.0.i168) #8
  br label %if.end32

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.12) #8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %audmux_port_string.exit
  %call26.pn = phi i32 [ %call26, %audmux_port_string.exit ], [ %call30, %if.else ]
  %ret.0 = add i32 %call26.pn, %call20
  %and33 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %add.ptr44 = getelementptr i8, ptr %call7.i, i32 %ret.0
  %sub45 = sub i32 4096, %ret.0
  br i1 %tobool34.not, label %if.else43, label %if.then35

if.then35:                                        ; preds = %if.end32
  %shr38 = lshr i32 %6, 22
  %and39 = and i32 %shr38, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and39)
  %14 = icmp ult i32 %and39, 6
  br i1 %14, label %switch.lookup203, label %if.then35.audmux_port_string.exit176_crit_edge

if.then35.audmux_port_string.exit176_crit_edge:   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %audmux_port_string.exit176

switch.lookup203:                                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep204 = getelementptr inbounds [6 x ptr], ptr @switch.table.audmux_read_file.43, i32 0, i32 %and39
  %15 = ptrtoint ptr %switch.gep204 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load205 = load ptr, ptr %switch.gep204, align 4
  br label %audmux_port_string.exit176

audmux_port_string.exit176:                       ; preds = %switch.lookup203, %if.then35.audmux_port_string.exit176_crit_edge
  %retval.0.i175 = phi ptr [ %switch.load205, %switch.lookup203 ], [ @.str.28, %if.then35.audmux_port_string.exit176_crit_edge ]
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.13, ptr noundef nonnull %retval.0.i175) #8
  br label %if.end48

if.else43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.14) #8
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %audmux_port_string.exit176
  %call41.pn = phi i32 [ %call41, %audmux_port_string.exit176 ], [ %call46, %if.else43 ]
  %ret.1 = add i32 %call41.pn, %ret.0
  %add.ptr49 = getelementptr i8, ptr %call7.i, i32 %ret.1
  %sub50 = sub i32 4096, %ret.1
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.15) #8
  %add52 = add i32 %ret.1, %call51
  %and53 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else60, label %if.then55

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr56 = getelementptr i8, ptr %call7.i, i32 %add52
  %sub57 = sub i32 4096, %add52
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.16) #8
  %add59 = add i32 %call58, %add52
  br label %if.end93

if.else60:                                        ; preds = %if.end48
  %and61 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %add.ptr72 = getelementptr i8, ptr %call7.i, i32 %add52
  %sub73 = sub i32 4096, %add52
  br i1 %tobool62.not, label %if.else71, label %if.then63

if.then63:                                        ; preds = %if.else60
  %shr66 = lshr i32 %6, 17
  %and67 = and i32 %shr66, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and67)
  %16 = icmp ult i32 %and67, 6
  br i1 %16, label %switch.lookup206, label %if.then63.audmux_port_string.exit184_crit_edge

if.then63.audmux_port_string.exit184_crit_edge:   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %audmux_port_string.exit184

switch.lookup206:                                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep207 = getelementptr inbounds [6 x ptr], ptr @switch.table.audmux_read_file.44, i32 0, i32 %and67
  %17 = ptrtoint ptr %switch.gep207 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load208 = load ptr, ptr %switch.gep207, align 4
  br label %audmux_port_string.exit184

audmux_port_string.exit184:                       ; preds = %switch.lookup206, %if.then63.audmux_port_string.exit184_crit_edge
  %retval.0.i183 = phi ptr [ %switch.load208, %switch.lookup206 ], [ @.str.28, %if.then63.audmux_port_string.exit184_crit_edge ]
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.17, ptr noundef nonnull %retval.0.i183) #8
  br label %if.end76

if.else71:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.18) #8
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %audmux_port_string.exit184
  %call69.pn = phi i32 [ %call69, %audmux_port_string.exit184 ], [ %call74, %if.else71 ]
  %ret.2 = add i32 %call69.pn, %add52
  %and77 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %add.ptr88 = getelementptr i8, ptr %call7.i, i32 %ret.2
  %sub89 = sub i32 4096, %ret.2
  br i1 %tobool78.not, label %if.else87, label %if.then79

if.then79:                                        ; preds = %if.end76
  %shr82 = lshr i32 %6, 12
  %and83 = and i32 %shr82, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and83)
  %18 = icmp ult i32 %and83, 6
  br i1 %18, label %switch.lookup209, label %if.then79.audmux_port_string.exit192_crit_edge

if.then79.audmux_port_string.exit192_crit_edge:   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %audmux_port_string.exit192

switch.lookup209:                                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep210 = getelementptr inbounds [6 x ptr], ptr @switch.table.audmux_read_file.45, i32 0, i32 %and83
  %19 = ptrtoint ptr %switch.gep210 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load211 = load ptr, ptr %switch.gep210, align 4
  br label %audmux_port_string.exit192

audmux_port_string.exit192:                       ; preds = %switch.lookup209, %if.then79.audmux_port_string.exit192_crit_edge
  %retval.0.i191 = phi ptr [ %switch.load211, %switch.lookup209 ], [ @.str.28, %if.then79.audmux_port_string.exit192_crit_edge ]
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.19, ptr noundef nonnull %retval.0.i191) #8
  %add86 = add i32 %call85, %ret.2
  br label %if.end93

if.else87:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.20) #8
  %add91 = add i32 %call90, %ret.2
  br label %if.end93

if.end93:                                         ; preds = %if.else87, %audmux_port_string.exit192, %if.then55
  %ret.3 = phi i32 [ %add59, %if.then55 ], [ %add86, %audmux_port_string.exit192 ], [ %add91, %if.else87 ]
  %add.ptr94 = getelementptr i8, ptr %call7.i, i32 %ret.3
  %sub95 = sub i32 4096, %ret.3
  %shr96 = lshr i32 %9, 13
  %and97 = and i32 %shr96, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and97)
  %20 = icmp ult i32 %and97, 6
  br i1 %20, label %switch.lookup212, label %if.end93.audmux_port_string.exit200_crit_edge

if.end93.audmux_port_string.exit200_crit_edge:    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %audmux_port_string.exit200

switch.lookup212:                                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep213 = getelementptr inbounds [6 x ptr], ptr @switch.table.audmux_read_file.46, i32 0, i32 %and97
  %21 = ptrtoint ptr %switch.gep213 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load214 = load ptr, ptr %switch.gep213, align 4
  br label %audmux_port_string.exit200

audmux_port_string.exit200:                       ; preds = %switch.lookup212, %if.end93.audmux_port_string.exit200_crit_edge
  %retval.0.i199 = phi ptr [ %switch.load214, %switch.lookup212 ], [ @.str.28, %if.end93.audmux_port_string.exit200_crit_edge ]
  %call99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr94, i32 noundef %sub95, ptr noundef nonnull @.str.21, ptr noundef nonnull %retval.0.i199) #8
  %add100 = add i32 %call99, %ret.3
  %call101 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add100) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %audmux_port_string.exit200, %if.end15.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call101, %audmux_port_string.exit200 ], [ -12, %if.end15.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmux_suspend(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @audmux_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %1 = load i32, ptr @reg_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %clk_prepare_enable.exit.for.end_crit_edge, label %clk_prepare_enable.exit.for.body_crit_edge

clk_prepare_enable.exit.for.body_crit_edge:       ; preds = %clk_prepare_enable.exit
  br label %for.body

clk_prepare_enable.exit.for.end_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %clk_prepare_enable.exit.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %clk_prepare_enable.exit.for.body_crit_edge ]
  %2 = load ptr, ptr @audmux_base, align 4
  %mul = shl i32 %i.07, 2
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !132
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %5 = load ptr, ptr @regcache, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.07
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.07, 1
  %7 = load i32, ptr @reg_max, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %clk_prepare_enable.exit.for.end_crit_edge
  %8 = load ptr, ptr @audmux_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmux_resume(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @audmux_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %1 = load i32, ptr @reg_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %clk_prepare_enable.exit.for.end_crit_edge, label %clk_prepare_enable.exit.do.body_crit_edge

clk_prepare_enable.exit.do.body_crit_edge:        ; preds = %clk_prepare_enable.exit
  br label %do.body

clk_prepare_enable.exit.for.end_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %clk_prepare_enable.exit.do.body_crit_edge
  %i.05 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %clk_prepare_enable.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %2 = load ptr, ptr @regcache, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %i.05
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = load ptr, ptr @audmux_base, align 4
  %mul = shl i32 %i.05, 2
  %add.ptr = getelementptr i8, ptr %6, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !127
  %inc = add nuw i32 %i.05, 1
  %7 = load i32, ptr @reg_max, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %clk_prepare_enable.exit.for.end_crit_edge
  %8 = load ptr, ptr @audmux_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__ksymtab_imx_audmux_v1_configure_port, !1, !"__ksymtab_imx_audmux_v1_configure_port", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/imx-audmux.c", i32 199, i32 1}
!2 = !{ptr @__ksymtab_imx_audmux_v2_configure_port, !3, !"__ksymtab_imx_audmux_v2_configure_port", i1 false, i1 false}
!3 = !{!"../sound/soc/fsl/imx-audmux.c", i32 226, i32 1}
!4 = !{ptr @__initcall__kmod_snd_soc_imx_audmux__224_381_imx_audmux_init4, !5, !"__initcall__kmod_snd_soc_imx_audmux__224_381_imx_audmux_init4", i1 false, i1 false}
!5 = !{!"../sound/soc/fsl/imx-audmux.c", i32 381, i32 1}
!6 = !{ptr @__exitcall_imx_audmux_exit, !7, !"__exitcall_imx_audmux_exit", i1 false, i1 false}
!7 = !{!"../sound/soc/fsl/imx-audmux.c", i32 387, i32 1}
!8 = !{ptr @__UNIQUE_ID_description225, !9, !"__UNIQUE_ID_description225", i1 false, i1 false}
!9 = !{!"../sound/soc/fsl/imx-audmux.c", i32 389, i32 1}
!10 = !{ptr @__UNIQUE_ID_author226, !11, !"__UNIQUE_ID_author226", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/imx-audmux.c", i32 390, i32 1}
!12 = !{ptr @__UNIQUE_ID_file227, !13, !"__UNIQUE_ID_file227", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/imx-audmux.c", i32 391, i32 1}
!14 = !{ptr @__UNIQUE_ID_license228, !13, !"__UNIQUE_ID_license228", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias229, !16, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!16 = !{!"../sound/soc/fsl/imx-audmux.c", i32 392, i32 1}
!17 = !{ptr @audmux_clk, !18, !"audmux_clk", i1 false, i1 false}
!18 = !{!"../sound/soc/fsl/imx-audmux.c", i32 24, i32 20}
!19 = !{ptr @audmux_base, !20, !"audmux_base", i1 false, i1 false}
!20 = !{!"../sound/soc/fsl/imx-audmux.c", i32 25, i32 22}
!21 = !{ptr @audmux_type, !22, !"audmux_type", i1 false, i1 false}
!22 = !{!"../sound/soc/fsl/imx-audmux.c", i32 171, i32 3}
!23 = !{ptr @port_mapping, !24, !"port_mapping", i1 false, i1 false}
!24 = !{!"../sound/soc/fsl/imx-audmux.c", i32 180, i32 22}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/fsl/imx-audmux.c", i32 371, i32 11}
!27 = !{ptr @imx_audmux_driver, !28, !"imx_audmux_driver", i1 false, i1 false}
!28 = !{!"../sound/soc/fsl/imx-audmux.c", i32 367, i32 31}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/fsl/imx-audmux.c", i32 294, i32 40}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/imx-audmux.c", i32 296, i32 3}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @imx_audmux_probe.__UNIQUE_ID_ddebug223, !32, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/fsl/imx-audmux.c", i32 312, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @imx_audmux_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx_audmux_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/fsl/imx-audmux.c", i32 148, i32 30}
!45 = !{ptr @audmux_debugfs_root, !46, !"audmux_debugfs_root", i1 false, i1 false}
!46 = !{!"../sound/soc/fsl/imx-audmux.c", i32 33, i32 23}
!47 = !{ptr @audmux_debugfs_fops, !48, !"audmux_debugfs_fops", i1 false, i1 false}
!48 = !{!"../sound/soc/fsl/imx-audmux.c", i32 134, i32 37}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/fsl/imx-audmux.c", i32 81, i32 34}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/fsl/imx-audmux.c", i32 86, i32 5}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/fsl/imx-audmux.c", i32 90, i32 5}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/fsl/imx-audmux.c", i32 94, i32 5}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/fsl/imx-audmux.c", i32 98, i32 5}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/fsl/imx-audmux.c", i32 100, i32 47}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/fsl/imx-audmux.c", i32 104, i32 5}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/fsl/imx-audmux.c", i32 108, i32 6}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/imx-audmux.c", i32 112, i32 6}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/imx-audmux.c", i32 116, i32 6}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/imx-audmux.c", i32 120, i32 6}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/fsl/imx-audmux.c", i32 124, i32 4}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/imx-audmux.c", i32 41, i32 10}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/fsl/imx-audmux.c", i32 43, i32 10}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/fsl/imx-audmux.c", i32 45, i32 10}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/fsl/imx-audmux.c", i32 47, i32 10}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/imx-audmux.c", i32 49, i32 10}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/fsl/imx-audmux.c", i32 51, i32 10}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/fsl/imx-audmux.c", i32 53, i32 10}
!87 = !{ptr @reg_max, !88, !"reg_max", i1 false, i1 false}
!88 = !{!"../sound/soc/fsl/imx-audmux.c", i32 27, i32 12}
!89 = !{ptr @regcache, !90, !"regcache", i1 false, i1 false}
!90 = !{!"../sound/soc/fsl/imx-audmux.c", i32 26, i32 13}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/fsl/imx-audmux.c", i32 242, i32 37}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/fsl/imx-audmux.c", i32 244, i32 4}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @imx_audmux_parse_dt_defaults._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @imx_audmux_parse_dt_defaults._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/fsl/imx-audmux.c", i32 248, i32 37}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/fsl/imx-audmux.c", i32 249, i32 4}
!103 = !{ptr @imx_audmux_parse_dt_defaults._entry.34, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @imx_audmux_parse_dt_defaults._entry_ptr.36, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/fsl/imx-audmux.c", i32 268, i32 4}
!107 = !{ptr @imx_audmux_parse_dt_defaults._entry.37, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx_audmux_parse_dt_defaults._entry_ptr.39, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/fsl/imx-audmux.c", i32 275, i32 5}
!111 = !{ptr @imx_audmux_parse_dt_defaults._entry.40, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @imx_audmux_parse_dt_defaults._entry_ptr.42, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @imx_audmux_dt_ids, !114, !"imx_audmux_dt_ids", i1 false, i1 false}
!114 = !{!"../sound/soc/fsl/imx-audmux.c", i32 173, i32 34}
!115 = !{ptr @imx_audmux_pm, !116, !"imx_audmux_pm", i1 false, i1 false}
!116 = !{!"../sound/soc/fsl/imx-audmux.c", i32 363, i32 32}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2153699141}
!127 = !{i64 5136087}
!128 = !{i64 2153701348}
!129 = !{i64 2153701786}
!130 = !{i64 2148728775, i64 2148728780, i64 2148728793, i64 2148728837, i64 2148728871, i64 2148728892}
!131 = !{!"auto-init"}
!132 = !{i64 5136505}
!133 = !{i64 2153696909}
!134 = !{i64 2153697474}
!135 = !{i64 2153715987}
!136 = !{i64 2153716211}
