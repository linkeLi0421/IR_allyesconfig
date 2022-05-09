; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btqca.c_pt.bc'
source_filename = "../drivers/bluetooth/btqca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qca_read_soc_version\22, \22a\22\09"
module asm "\09.weak\09__crc_qca_read_soc_version\09\09\09\09"
module asm "\09.long\09__crc_qca_read_soc_version\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qca_read_soc_version:\09\09\09\09\09"
module asm "\09.asciz \09\22qca_read_soc_version\22\09\09\09\09\09"
module asm "__kstrtabns_qca_read_soc_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qca_send_pre_shutdown_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_qca_send_pre_shutdown_cmd\09\09\09\09"
module asm "\09.long\09__crc_qca_send_pre_shutdown_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qca_send_pre_shutdown_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22qca_send_pre_shutdown_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_qca_send_pre_shutdown_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qca_set_bdaddr_rome\22, \22a\22\09"
module asm "\09.weak\09__crc_qca_set_bdaddr_rome\09\09\09\09"
module asm "\09.long\09__crc_qca_set_bdaddr_rome\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qca_set_bdaddr_rome:\09\09\09\09\09"
module asm "\09.asciz \09\22qca_set_bdaddr_rome\22\09\09\09\09\09"
module asm "__kstrtabns_qca_set_bdaddr_rome:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qca_uart_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_qca_uart_setup\09\09\09\09"
module asm "\09.long\09__crc_qca_uart_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qca_uart_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22qca_uart_setup\22\09\09\09\09\09"
module asm "__kstrtabns_qca_uart_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qca_set_bdaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_qca_set_bdaddr\09\09\09\09"
module asm "\09.long\09__crc_qca_set_bdaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qca_set_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22qca_set_bdaddr\22\09\09\09\09\09"
module asm "__kstrtabns_qca_set_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.2, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.edl_event_hdr = type { i8, i8, [0 x i8] }
%struct.qca_btsoc_version = type { i32, i16, i16, i32 }
%struct.qca_fw_config = type { i8, [64 x i8], i8, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.hci_event_hdr = type { i8, i8 }
%struct.hci_ev_cmd_complete = type <{ i8, i16 }>
%struct.tlv_type_hdr = type { i32, [0 x i8] }
%struct.tlv_type_patch = type { i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.tlv_type_nvm = type { i16, i16, i32, i32, [0 x i8] }

@qca_read_soc_version.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btqca\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca_read_soc_version\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/bluetooth/btqca.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: QCA Version Request\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Reading QCA version information failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: QCA Version size mismatch len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: QCA TLV with no header\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: QCA Wrong packet received %d %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: QCA Product ID   :0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: QCA SOC Version  :0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: QCA ROM Version  :0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: QCA Patch Version:0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: QCA Failed to get version (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_qca_read_soc_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_qca_read_soc_version = external dso_local constant [0 x i8], align 1
@__ksymtab_qca_read_soc_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qca_read_soc_version to i32), ptr @__kstrtab_qca_read_soc_version, ptr @__kstrtabns_qca_read_soc_version }, section "___ksymtab_gpl+qca_read_soc_version", align 4
@qca_send_pre_shutdown_cmd.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qca_send_pre_shutdown_cmd\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: QCA pre shutdown cmd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: QCA preshutdown_cmd failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_qca_send_pre_shutdown_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_qca_send_pre_shutdown_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_qca_send_pre_shutdown_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qca_send_pre_shutdown_cmd to i32), ptr @__kstrtab_qca_send_pre_shutdown_cmd, ptr @__kstrtabns_qca_send_pre_shutdown_cmd }, section "___ksymtab_gpl+qca_send_pre_shutdown_cmd", align 4
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: QCA Change address command failed (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_qca_set_bdaddr_rome = external dso_local constant [0 x i8], align 1
@__kstrtabns_qca_set_bdaddr_rome = external dso_local constant [0 x i8], align 1
@__ksymtab_qca_set_bdaddr_rome = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qca_set_bdaddr_rome to i32), ptr @__kstrtab_qca_set_bdaddr_rome, ptr @__kstrtabns_qca_set_bdaddr_rome }, section "___ksymtab_gpl+qca_set_bdaddr_rome", align 4
@qca_uart_setup.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qca_uart_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: QCA setup on UART\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: QCA controller version 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca/crbtfw%02x.tlv\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca/htbtfw%02x.tlv\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca/msbtfw%02x.mbn\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qca/rampatch_%08x.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: QCA Failed to download patch (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qca/%s\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qca/crnv%02xu.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca/crnv%02x.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca/htnv%02x.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca/msnv%02x.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca/nvm_%08x.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: QCA Failed to download NVM (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: QCA Failed to run HCI_RESET (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: QCA setup on UART is completed\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_qca_uart_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_qca_uart_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_qca_uart_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qca_uart_setup to i32), ptr @__kstrtab_qca_uart_setup, ptr @__kstrtabns_qca_uart_setup }, section "___ksymtab_gpl+qca_uart_setup", align 4
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: QCA Change address cmd failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_qca_set_bdaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_qca_set_bdaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_qca_set_bdaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qca_set_bdaddr to i32), ptr @__kstrtab_qca_set_bdaddr, ptr @__kstrtabns_qca_set_bdaddr }, section "___ksymtab_gpl+qca_set_bdaddr", align 4
@__UNIQUE_ID_author502 = internal constant [56 x i8] c"btqca.author=Ben Young Tae Kim <ytkim@qca.qualcomm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description503 = internal constant [72 x i8] c"btqca.description=Bluetooth support for Qualcomm Atheros family ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version504 = internal constant [18 x i8] c"btqca.version=0.1\00", section ".modinfo", align 1
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.36 }, section "__modver", align 4
@__UNIQUE_ID_file505 = internal constant [35 x i8] c"btqca.file=drivers/bluetooth/btqca\00", section ".modinfo", align 1
@__UNIQUE_ID_license506 = internal constant [18 x i8] c"btqca.license=GPL\00", section ".modinfo", align 1
@__const.qca_send_patch_config_cmd.cmd = private unnamed_addr constant [5 x i8] c"(\01\00\00\00", align 1
@qca_send_patch_config_cmd.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qca_send_patch_config_cmd\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: QCA Patch config\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Sending QCA Patch config failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: QCA Patch config cmd size mismatch len %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: QCA Patch config with no header\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: QCA Downloading %s\0A\00", [40 x i8] zeroinitializer }, align 32
@qca_download_firmware.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qca_download_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: QCA Failed to request file: %s (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca/msbtfw%02x.tlv\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: QCA Failed to allocate memory for file: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@qca_download_firmware.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.47, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Send segment %d, size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca_tlv_check_data\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: File Class        : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Data Encoding     : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: File version      : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TLV Type\09\09 : 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.53, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Total Length           : %d bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.54, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Patch Data Length      : %d bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.55, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Signing Format Version : 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.56, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Signature Algorithm    : 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.57, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Download mode          : 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.58, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reserved               : 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.59, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Product ID             : 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.60, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rom Build Version      : 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.61, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Patch Version          : 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.58, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@qca_tlv_check_data.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.62, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Patch Entry Address    : 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_tlv_check_data.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@qca_tlv_check_data.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.63, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Length\09\09 : %d bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown TLV type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: QCA Failed to send TLV segment (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: QCA TLV response size mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TLV with no header\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: QCA TLV with error stat 0x%x rtype 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: QCA TLV with error stat 0x%x rtype 0x%x (0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: QCA Failed to disable soc logging(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@qca_send_reset.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qca_send_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: QCA HCI_RESET\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: QCA Reset failed (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@qca_read_fw_build_info.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qca_read_fw_build_info\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: QCA read fw build info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Reading QCA fw build info failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: QCA read fw build info with no header\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 27]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 29, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 46, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 52, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 59, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 66, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 77, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 79, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 81, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 83, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 92, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 213, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 220, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 567, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 586, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 590, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 606, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 609, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 616, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 619, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 624, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 635, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 639, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 642, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 647, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 650, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 653, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 657, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 684, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 695, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 710, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 723, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 152, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 158, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 163, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 170, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 455, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 463, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 467, i32 6 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 485, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 501, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 251, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 252, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 253, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 269, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 270, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 272, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 274, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 276, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 278, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 280, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 282, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 284, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 286, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 290, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 301, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 342, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 382, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 387, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 394, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 400, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 410, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 544, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 194, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 199, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 105, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 112, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 119, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private constant [29 x i8] c"../drivers/bluetooth/btqca.c\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 138, i32 24 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author502, ptr @__UNIQUE_ID_description503, ptr @__UNIQUE_ID_file505, ptr @__UNIQUE_ID_license506, ptr @__UNIQUE_ID_version504, ptr @__ksymtab_qca_read_soc_version, ptr @__ksymtab_qca_send_pre_shutdown_cmd, ptr @__ksymtab_qca_set_bdaddr, ptr @__ksymtab_qca_set_bdaddr_rome, ptr @__ksymtab_qca_uart_setup, ptr @__modver_attr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_read_soc_version(ptr noundef %hdev, ptr nocapture noundef %ver, i32 noundef %soc_type) #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_read_soc_version.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_read_soc_version, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_read_soc_version.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.3, ptr noundef %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type)
  %cmp = icmp sgt i32 %soc_type, 3
  %not.cmp = xor i1 %cmp, true
  %event_type.0 = sext i1 %not.cmp to i8
  %rtype.0 = select i1 %cmp, i32 25, i32 2
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 25, ptr %cmd, align 1
  %call7 = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1024, i32 noundef 1, ptr noundef nonnull %cmd, i8 noundef zeroext %event_type.0, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7 to i32
  %name11 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %name11, i32 noundef %1) #6
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %rlen.0 = select i1 %cmp, i32 15, i32 14
  %len = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rlen.0)
  %cmp15.not = icmp eq i32 %3, %rlen.0
  br i1 %cmp15.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %name18 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %name18, i32 noundef %3) #6
  br label %if.then71

if.end21:                                         ; preds = %if.end13
  %data = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool22.not = icmp eq ptr %5, null
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %name24 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %name24) #6
  br label %if.then71

if.end26:                                         ; preds = %if.end21
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp28.not = icmp eq i8 %7, 0
  br i1 %cmp28.not, label %lor.lhs.false, label %if.end26.if.then35_crit_edge

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end26
  %rtype30 = getelementptr inbounds %struct.edl_event_hdr, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %rtype30 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rtype30, align 1
  %conv31 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rtype.0, i32 %conv31)
  %cmp33.not = icmp eq i32 %rtype.0, %conv31
  br i1 %cmp33.not, label %if.end42, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end26.if.then35_crit_edge
  %name36 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv39 = zext i8 %7 to i32
  %rtype40 = getelementptr inbounds %struct.edl_event_hdr, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %rtype40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rtype40, align 1
  %conv41 = zext i8 %11 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7, ptr noundef %name36, i32 noundef %conv39, i32 noundef %conv41) #6
  br label %if.then71

if.end42:                                         ; preds = %lor.lhs.false
  %data48 = getelementptr inbounds %struct.edl_event_hdr, ptr %5, i32 0, i32 2
  %add.ptr = getelementptr %struct.edl_event_hdr, ptr %5, i32 1, i32 1
  %data48.sink = select i1 %cmp, ptr %add.ptr, ptr %data48
  %12 = call ptr @memcpy(ptr %ver, ptr %data48.sink, i32 12)
  %name50 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %13 = ptrtoint ptr %ver to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %ver, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.8, ptr noundef %name50, i32 noundef %15) #6
  %soc_id = getelementptr inbounds %struct.qca_btsoc_version, ptr %ver, i32 0, i32 3
  %16 = ptrtoint ptr %soc_id to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %soc_id, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.9, ptr noundef %name50, i32 noundef %18) #6
  %rom_ver = getelementptr inbounds %struct.qca_btsoc_version, ptr %ver, i32 0, i32 2
  %19 = ptrtoint ptr %rom_ver to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %rom_ver, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv56 = zext i16 %21 to i32
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.10, ptr noundef %name50, i32 noundef %conv56) #6
  %patch_ver = getelementptr inbounds %struct.qca_btsoc_version, ptr %ver, i32 0, i32 1
  %22 = ptrtoint ptr %patch_ver to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %patch_ver, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv59 = zext i16 %24 to i32
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.11, ptr noundef %name50, i32 noundef %conv59) #6
  %25 = ptrtoint ptr %soc_id to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %soc_id, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp61 = icmp eq i32 %26, 0
  br i1 %cmp61, label %if.end42.if.then71_crit_edge, label %lor.lhs.false63

if.end42.if.then71_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71

lor.lhs.false63:                                  ; preds = %if.end42
  %27 = ptrtoint ptr %rom_ver to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %rom_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp66 = icmp eq i16 %28, 0
  br i1 %cmp66, label %lor.lhs.false63.if.then71_crit_edge, label %out

lor.lhs.false63.if.then71_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71

out:                                              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %call7, i32 noundef 0) #6
  br label %cleanup

if.then71:                                        ; preds = %lor.lhs.false63.if.then71_crit_edge, %if.end42.if.then71_crit_edge, %if.then35, %if.then23, %if.then17
  %err.0.ph = phi i32 [ -84, %if.then17 ], [ -84, %if.then23 ], [ -5, %if.then35 ], [ -84, %lor.lhs.false63.if.then71_crit_edge ], [ -84, %if.end42.if.then71_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %call7, i32 noundef 0) #6
  %name72 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %name72, i32 noundef %err.0.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %out, %if.then9
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %err.0.ph, %if.then71 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync_ev(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_send_pre_shutdown_cmd(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_send_pre_shutdown_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_send_pre_shutdown_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_send_pre_shutdown_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.14, ptr noundef %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1016, i32 noundef 0, ptr noundef null, i8 noundef zeroext 14, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call4 to i32
  %name8 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %name8, i32 noundef %0) #6
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %call4, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6
  %retval.0 = phi i32 [ %0, %if.then6 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_set_bdaddr_rome(ptr noundef %hdev, ptr nocapture noundef readonly %bdaddr) #0 align 64 {
entry:
  %cmd = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds [9 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %cmd, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %1, align 1
  %6 = call ptr @memcpy(ptr %2, ptr %bdaddr, i32 6)
  %call4 = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1013, i32 noundef 9, ptr noundef nonnull %cmd, i8 noundef zeroext -1, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call4 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %7) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %call4, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_uart_setup(ptr noundef %hdev, i8 noundef zeroext %baudrate, i32 noundef %soc_type, [3 x i32] %ver.coerce, ptr noundef %firmware_name) #0 align 64 {
entry:
  %cmd.i = alloca [2 x i8], align 1
  %config = alloca %struct.qca_fw_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ver.coerce.fca.1.extract = extractvalue [3 x i32] %ver.coerce, 1
  %ver.sroa.2.4.extract.trunc = trunc i32 %ver.coerce.fca.1.extract to i16
  %ver.coerce.fca.2.extract = extractvalue [3 x i32] %ver.coerce, 2
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %config) #6
  %0 = call ptr @memset(ptr %config, i32 255, i32 76)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_uart_setup.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_uart_setup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_uart_setup.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.18, ptr noundef %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = tail call i32 @llvm.bswap.i32(i32 %ver.coerce.fca.2.extract)
  %shl = shl i32 %1, 16
  %2 = tail call i16 @llvm.bswap.i16(i16 %ver.sroa.2.4.extract.trunc)
  %conv = zext i16 %2 to i32
  %or = or i32 %shl, %conv
  %name4 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.19, ptr noundef %name4, i32 noundef %or) #6
  %user_baud_rate = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 2
  %3 = ptrtoint ptr %user_baud_rate to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %baudrate, ptr %user_baud_rate, align 1
  %and = lshr i16 %2, 4
  %shr = and i16 %and, 240
  %and6 = and i16 %2, 15
  %or7 = or i16 %shr, %and6
  %conv8 = trunc i16 %or7 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %soc_type)
  %cmp = icmp eq i32 %soc_type, 6
  br i1 %cmp, label %if.then28, label %if.end12

if.end12:                                         ; preds = %do.end
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %config, align 4
  %soc_type.off.i = add i32 %soc_type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type.off.i)
  %switch.i = icmp ult i32 %soc_type.off.i, 3
  br i1 %switch.i, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %fwname = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  %conv16 = zext i16 %or7 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname, i32 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %conv16)
  br label %if.end40

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %soc_type)
  %cmp18 = icmp eq i32 %soc_type, 5
  %fwname21 = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  br i1 %cmp18, label %if.then20, label %if.else34

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = zext i16 %or7 to i32
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname21, i32 noundef 64, ptr noundef nonnull @.str.21, i32 noundef %conv23)
  br label %if.end40

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qca_send_patch_config_cmd(ptr noundef %hdev)
  %5 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %config, align 4
  %fwname30 = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  %conv32 = zext i16 %or7 to i32
  %call33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname30, i32 noundef 64, ptr noundef nonnull @.str.22, i32 noundef %conv32)
  br label %if.end40

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname21, i32 noundef 64, ptr noundef nonnull @.str.23, i32 noundef %or)
  br label %if.end40

if.end40:                                         ; preds = %if.else34, %if.then28, %if.then20, %if.then14
  %switch.i194 = phi i1 [ false, %if.then20 ], [ false, %if.else34 ], [ false, %if.then28 ], [ true, %if.then14 ]
  %call41 = call fastcc i32 @qca_download_firmware(ptr noundef %hdev, ptr noundef nonnull %config, i32 noundef %soc_type, i8 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name4, i32 noundef %call41) #6
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  call void @msleep(i32 noundef 10) #6
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %config, align 4
  %tobool49.not = icmp eq ptr %firmware_name, null
  br i1 %tobool49.not, label %if.else54, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %fwname51 = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  %call53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname51, i32 noundef 64, ptr noundef nonnull @.str.25, ptr noundef nonnull %firmware_name)
  br label %if.end94

if.else54:                                        ; preds = %if.end47
  br i1 %switch.i194, label %if.then56, label %if.else71

if.then56:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073824544, i32 %ver.coerce.fca.2.extract)
  %cmp58 = icmp eq i32 %ver.coerce.fca.2.extract, 1073824544
  %fwname61 = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  %conv63 = zext i16 %or7 to i32
  br i1 %cmp58, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname61, i32 noundef 64, ptr noundef nonnull @.str.26, i32 noundef %conv63)
  br label %if.end94

if.else65:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname61, i32 noundef 64, ptr noundef nonnull @.str.27, i32 noundef %conv63)
  br label %if.end94

if.else71:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %soc_type)
  %cmp72 = icmp eq i32 %soc_type, 5
  %fwname75 = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  br i1 %cmp72, label %if.then74, label %if.else79

if.then74:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  %conv77 = zext i16 %or7 to i32
  %call78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname75, i32 noundef 64, ptr noundef nonnull @.str.28, i32 noundef %conv77)
  br label %if.end94

if.else79:                                        ; preds = %if.else71
  br i1 %cmp, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  %conv85 = zext i16 %or7 to i32
  %call86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname75, i32 noundef 64, ptr noundef nonnull @.str.29, i32 noundef %conv85)
  br label %if.end94

if.else87:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  %call90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname75, i32 noundef 64, ptr noundef nonnull @.str.30, i32 noundef %or)
  br label %if.end94

if.end94:                                         ; preds = %if.else87, %if.then82, %if.then74, %if.else65, %if.then60, %if.then50
  %call95 = call fastcc i32 @qca_download_firmware(ptr noundef %hdev, ptr noundef nonnull %config, i32 noundef %soc_type, i8 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end101

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %name4, i32 noundef %call95) #6
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type)
  %cmp102 = icmp sgt i32 %soc_type, 3
  br i1 %cmp102, label %if.then104, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then104:                                       ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #6
  %7 = getelementptr inbounds [2 x i8], ptr %cmd.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %cmd.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %7, align 1
  %call2.i = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1001, i32 noundef 2, ptr noundef nonnull %cmd.i, i8 noundef zeroext 14, i32 noundef 1000) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %qca_disable_soc_logging.exit, label %qca_disable_soc_logging.exit.thread

qca_disable_soc_logging.exit.thread:              ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %call2.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #6
  br label %if.end110

qca_disable_soc_logging.exit:                     ; preds = %if.then104
  %10 = ptrtoint ptr %call2.i to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.70, ptr noundef %name4, i32 noundef %10) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #6
  %cmp106 = icmp slt ptr %call2.i, null
  br i1 %cmp106, label %qca_disable_soc_logging.exit.cleanup_crit_edge, label %qca_disable_soc_logging.exit.if.end110_crit_edge

qca_disable_soc_logging.exit.if.end110_crit_edge: ; preds = %qca_disable_soc_logging.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

qca_disable_soc_logging.exit.cleanup_crit_edge:   ; preds = %qca_disable_soc_logging.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end110:                                        ; preds = %qca_disable_soc_logging.exit.if.end110_crit_edge, %qca_disable_soc_logging.exit.thread, %if.end101.if.end110_crit_edge
  %11 = zext i32 %soc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %soc_type, label %if.end110.sw.epilog_crit_edge [
    i32 2, label %if.end110.sw.bb_crit_edge
    i32 4, label %if.end110.sw.bb_crit_edge205
    i32 3, label %if.end110.sw.bb_crit_edge206
    i32 6, label %if.end110.sw.bb_crit_edge207
  ]

if.end110.sw.bb_crit_edge207:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end110.sw.bb_crit_edge206:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end110.sw.bb_crit_edge205:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end110.sw.bb_crit_edge:                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end110.sw.epilog_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end110.sw.bb_crit_edge, %if.end110.sw.bb_crit_edge205, %if.end110.sw.bb_crit_edge206, %if.end110.sw.bb_crit_edge207
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %12 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -656, ptr %msft_opcode.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end110.sw.epilog_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_send_reset.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_uart_setup, %if.then.i188)) #6
          to label %do.end.i [label %if.then.i188], !srcloc !202

if.then.i188:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_send_reset.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.72, ptr noundef %name4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i188, %sw.epilog
  %call4.i = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 1000) #6
  %cmp.i.i189 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i189, label %qca_send_reset.exit, label %qca_send_reset.exit.thread

qca_send_reset.exit.thread:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %call4.i, i32 noundef 0) #6
  br label %if.end117

qca_send_reset.exit:                              ; preds = %do.end.i
  %13 = ptrtoint ptr %call4.i to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.73, ptr noundef %name4, i32 noundef %13) #6
  %cmp112 = icmp slt ptr %call4.i, null
  br i1 %cmp112, label %if.then114, label %qca_send_reset.exit.if.end117_crit_edge

qca_send_reset.exit.if.end117_crit_edge:          ; preds = %qca_send_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then114:                                       ; preds = %qca_send_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name4, i32 noundef %13) #6
  br label %cleanup

if.end117:                                        ; preds = %qca_send_reset.exit.if.end117_crit_edge, %qca_send_reset.exit.thread
  %14 = zext i32 %soc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %soc_type, label %if.end117.if.end128_crit_edge [
    i32 6, label %if.end117.if.then122_crit_edge
    i32 4, label %if.end117.if.then122_crit_edge208
  ]

if.end117.if.then122_crit_edge208:                ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

if.end117.if.then122_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

if.end117.if.end128_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then122:                                       ; preds = %if.end117.if.then122_crit_edge, %if.end117.if.then122_crit_edge208
  %call123 = call fastcc i32 @qca_read_fw_build_info(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then122.cleanup_crit_edge, label %if.then122.if.end128_crit_edge

if.then122.if.end128_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then122.cleanup_crit_edge:                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end128:                                        ; preds = %if.then122.if.end128_crit_edge, %if.end117.if.end128_crit_edge
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.33, ptr noundef %name4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %if.then122.cleanup_crit_edge, %if.then114, %qca_disable_soc_logging.exit.cleanup_crit_edge, %if.then98, %if.then44
  %retval.0 = phi i32 [ %call41, %if.then44 ], [ %call95, %if.then98 ], [ %13, %if.then114 ], [ 0, %if.end128 ], [ %10, %qca_disable_soc_logging.exit.cleanup_crit_edge ], [ %call123, %if.then122.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca_send_patch_config_cmd(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #6
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.qca_send_patch_config_cmd.cmd, i32 5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_send_patch_config_cmd.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_send_patch_config_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_send_patch_config_cmd.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.38, ptr noundef %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1024, i32 noundef 5, ptr noundef nonnull %cmd, i8 noundef zeroext -1, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call5 to i32
  %name9 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, ptr noundef %name9, i32 noundef %1) #6
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %name13 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, ptr noundef %name13, i32 noundef %3) #6
  br label %out

if.end16:                                         ; preds = %if.end11
  %data = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool17.not = icmp eq ptr %5, null
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %name19 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.41, ptr noundef %name19) #6
  br label %out

if.end21:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp22.not = icmp eq i8 %7, 0
  br i1 %cmp22.not, label %lor.lhs.false, label %if.end21.if.then27_crit_edge

if.end21.if.then27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end21
  %rtype = getelementptr inbounds %struct.edl_event_hdr, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %rtype to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %9)
  %cmp25.not = icmp eq i8 %9, 40
  br i1 %cmp25.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end21.if.then27_crit_edge
  %name28 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv31 = zext i8 %7 to i32
  %rtype32 = getelementptr inbounds %struct.edl_event_hdr, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %rtype32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rtype32, align 1
  %conv33 = zext i8 %11 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7, ptr noundef %name28, i32 noundef %conv31, i32 noundef %conv33) #6
  br label %out

out:                                              ; preds = %if.then27, %lor.lhs.false.out_crit_edge, %if.then18, %if.then12
  call void @kfree_skb_reason(ptr noundef %call5, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca_download_firmware(ptr noundef %hdev, ptr noundef %config, i32 noundef %soc_type, i8 noundef zeroext %rom_ver) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [245 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !203
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %fwname = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 1
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef %fwname) #6
  %dev = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %soc_type)
  %cmp = icmp eq i32 %soc_type, 6
  br i1 %cmp, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp4 = icmp eq i8 %2, 3
  br i1 %cmp4, label %do.body, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_download_firmware.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_download_firmware, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !202

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_download_firmware.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.44, ptr noundef %name, ptr noundef %fwname, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %config, align 4
  %conv19 = zext i8 %rom_ver to i32
  %call20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fwname, i32 noundef 64, ptr noundef nonnull @.str.45, i32 noundef %conv19)
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef %fwname) #6
  %call28 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end.if.end41_crit_edge, label %if.then30

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.44, ptr noundef %name, ptr noundef %fwname, i32 noundef %call28) #6
  br label %cleanup95

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.44, ptr noundef %name, ptr noundef %fwname, i32 noundef %call) #6
  br label %cleanup95

if.end41:                                         ; preds = %do.end.if.end41_crit_edge, %entry.if.end41_crit_edge
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call44 = call noalias ptr @vmalloc(i32 noundef %7) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.46, ptr noundef %name, ptr noundef %fwname) #6
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %9) #6
  br label %cleanup95

if.end51:                                         ; preds = %if.end41
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %data52 = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data52, align 4
  %14 = call ptr @memcpy(ptr %call44, ptr %13, i32 %7)
  call void @release_firmware(ptr noundef %11) #6
  call fastcc void @qca_tlv_check_data(ptr noundef %hdev, ptr noundef %config, ptr noundef nonnull %call44, i32 noundef %soc_type)
  %dnld_mode = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 3
  %15 = getelementptr inbounds i8, ptr %cmd.i, i32 2
  %arrayidx1.i = getelementptr inbounds [245 x i8], ptr %cmd.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type)
  %cmp6.i = icmp sgt i32 %soc_type, 3
  %not.cmp6.i = xor i1 %cmp6.i, true
  %event_type.0.i = sext i1 %not.cmp6.i to i8
  %rtype.0.i = select i1 %cmp6.i, i32 30, i32 4
  %rlen.0.i = select i1 %cmp6.i, i32 2, i32 3
  br label %while.cond

while.cond:                                       ; preds = %qca_tlv_send_segment.exit.while.cond_crit_edge, %if.end51
  %remain.0 = phi i32 [ %7, %if.end51 ], [ %sub, %qca_tlv_send_segment.exit.while.cond_crit_edge ]
  %i.0 = phi i32 [ 0, %if.end51 ], [ %i.1, %qca_tlv_send_segment.exit.while.cond_crit_edge ]
  %segment.0 = phi ptr [ %call44, %if.end51 ], [ %add.ptr, %qca_tlv_send_segment.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0)
  %cmp53 = icmp sgt i32 %remain.0, 0
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = call i32 @llvm.umin.i32(i32 %remain.0, i32 243)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_download_firmware.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_download_firmware, %if.then70)) #6
          to label %do.end75 [label %if.then70], !srcloc !202

if.then70:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %i.0, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_download_firmware.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %i.0, i32 noundef %16) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %while.body
  %i.1 = phi i32 [ %inc, %if.then70 ], [ %i.0, %while.body ]
  %sub = sub nsw i32 %remain.0, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool76.not = icmp eq i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 243, i32 %remain.0)
  %cmp77 = icmp ult i32 %remain.0, 243
  %or.cond = or i1 %cmp77, %tobool76.not
  br i1 %or.cond, label %if.end80.thread, label %if.end80

if.end80.thread:                                  ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dnld_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dnld_mode, align 4
  call void @llvm.lifetime.start.p0(i64 245, ptr nonnull %cmd.i) #6
  %18 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 30, ptr %cmd.i, align 1
  %conv.i161 = trunc i32 %16 to i8
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i161, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 242, i32 %16)
  %20 = icmp ugt i32 %16, 242
  %21 = sub nuw nsw i32 243, %16
  %22 = select i1 %20, i32 0, i32 %21
  %23 = getelementptr i8, ptr %15, i32 %16
  %24 = call ptr @memset(ptr %23, i32 255, i32 %22)
  %25 = call ptr @memcpy(ptr %15, ptr %segment.0, i32 %16)
  br label %if.end.i

if.end80:                                         ; preds = %do.end75
  %26 = ptrtoint ptr %dnld_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %dnld_mode, align 4
  call void @llvm.lifetime.start.p0(i64 245, ptr nonnull %cmd.i) #6
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 30, ptr %cmd.i, align 1
  %conv.i = trunc i32 %16 to i8
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 242, i32 %16)
  %29 = icmp ugt i32 %16, 242
  %30 = sub nuw nsw i32 243, %16
  %31 = select i1 %29, i32 0, i32 %30
  %32 = getelementptr i8, ptr %15, i32 %16
  %33 = call ptr @memset(ptr %32, i32 255, i32 %31)
  %34 = call ptr @memcpy(ptr %15, ptr %segment.0, i32 %16)
  %35 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %.pr, label %if.end80.if.end.i_crit_edge [
    i32 3, label %if.end80.if.then.i_crit_edge
    i32 1, label %if.end80.if.then.i_crit_edge162
  ]

if.end80.if.then.i_crit_edge162:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end80.if.then.i_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end80.if.end.i_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end80.if.then.i_crit_edge, %if.end80.if.then.i_crit_edge162
  %add.i = add nuw nsw i32 %16, 2
  %call.i = call i32 @__hci_cmd_send(ptr noundef %hdev, i16 noundef zeroext -1024, i32 noundef %add.i, ptr noundef nonnull %cmd.i) #6
  br label %qca_tlv_send_segment.exit

if.end.i:                                         ; preds = %if.end80.if.end.i_crit_edge, %if.end80.thread
  %add10.i = add nuw nsw i32 %16, 2
  %call13.i = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1024, i32 noundef %add10.i, ptr noundef nonnull %cmd.i, i8 noundef zeroext %event_type.0.i, i32 noundef 1000) #6
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call13.i to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.65, ptr noundef %name, i32 noundef %36) #6
  br label %qca_tlv_send_segment.exit

if.end18.i:                                       ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call13.i, i32 0, i32 6
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %rlen.0.i)
  %cmp20.not.i = icmp eq i32 %38, %rlen.0.i
  br i1 %cmp20.not.i, label %if.end25.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.66, ptr noundef %name) #6
  br label %out.i

if.end25.i:                                       ; preds = %if.end18.i
  %data26.i = getelementptr inbounds %struct.sk_buff, ptr %call13.i, i32 0, i32 19
  %39 = ptrtoint ptr %data26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data26.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then27.i, label %if.end30.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.67, ptr noundef %name) #6
  br label %out.i

if.end30.i:                                       ; preds = %if.end25.i
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp32.not.i = icmp eq i8 %42, 0
  br i1 %cmp32.not.i, label %lor.lhs.false34.i, label %if.end30.i.if.then40.i_crit_edge

if.end30.i.if.then40.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

lor.lhs.false34.i:                                ; preds = %if.end30.i
  %rtype35.i = getelementptr inbounds %struct.edl_event_hdr, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %rtype35.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rtype35.i, align 1
  %conv36.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rtype.0.i, i32 %conv36.i)
  %cmp38.not.i = icmp eq i32 %rtype.0.i, %conv36.i
  br i1 %cmp38.not.i, label %lor.lhs.false34.i.if.end47.i_crit_edge, label %lor.lhs.false34.i.if.then40.i_crit_edge

lor.lhs.false34.i.if.then40.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

lor.lhs.false34.i.if.end47.i_crit_edge:           ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then40.i:                                      ; preds = %lor.lhs.false34.i.if.then40.i_crit_edge, %if.end30.i.if.then40.i_crit_edge
  %conv44.i = zext i8 %42 to i32
  %rtype45.i = getelementptr inbounds %struct.edl_event_hdr, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %rtype45.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rtype45.i, align 1
  %conv46.i = zext i8 %46 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %conv44.i, i32 noundef %conv46.i) #6
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then40.i, %lor.lhs.false34.i.if.end47.i_crit_edge
  %err.0.i = phi i32 [ -5, %if.then40.i ], [ 0, %lor.lhs.false34.i.if.end47.i_crit_edge ]
  br i1 %cmp6.i, label %if.end47.i.out.i_crit_edge, label %if.end51.i

if.end47.i.out.i_crit_edge:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end51.i:                                       ; preds = %if.end47.i
  %data52.i = getelementptr inbounds %struct.edl_event_hdr, ptr %40, i32 0, i32 2
  %47 = ptrtoint ptr %data52.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data52.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool54.not.i = icmp eq i8 %48, 0
  br i1 %tobool54.not.i, label %if.end51.i.out.i_crit_edge, label %if.then55.i

if.end51.i.out.i_crit_edge:                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %40, align 1
  %conv59.i = zext i8 %50 to i32
  %rtype60.i = getelementptr inbounds %struct.edl_event_hdr, ptr %40, i32 0, i32 1
  %51 = ptrtoint ptr %rtype60.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rtype60.i, align 1
  %conv61.i = zext i8 %52 to i32
  %conv63.i = zext i8 %48 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %conv59.i, i32 noundef %conv61.i, i32 noundef %conv63.i) #6
  br label %out.i

out.i:                                            ; preds = %if.then55.i, %if.end51.i.out.i_crit_edge, %if.end47.i.out.i_crit_edge, %if.then27.i, %if.then22.i
  %err.1.i = phi i32 [ -84, %if.then22.i ], [ %err.0.i, %if.end47.i.out.i_crit_edge ], [ %err.0.i, %if.then55.i ], [ %err.0.i, %if.end51.i.out.i_crit_edge ], [ -84, %if.then27.i ]
  call void @kfree_skb_reason(ptr noundef %call13.i, i32 noundef 0) #6
  br label %qca_tlv_send_segment.exit

qca_tlv_send_segment.exit:                        ; preds = %out.i, %if.then15.i, %if.then.i
  %retval.0.i156 = phi i32 [ %call.i, %if.then.i ], [ %36, %if.then15.i ], [ %err.1.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 245, ptr nonnull %cmd.i) #6
  %tobool83.not = icmp eq i32 %retval.0.i156, 0
  %add.ptr = getelementptr i8, ptr %segment.0, i32 %16
  br i1 %tobool83.not, label %qca_tlv_send_segment.exit.while.cond_crit_edge, label %qca_tlv_send_segment.exit.out_crit_edge

qca_tlv_send_segment.exit.out_crit_edge:          ; preds = %qca_tlv_send_segment.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

qca_tlv_send_segment.exit.while.cond_crit_edge:   ; preds = %qca_tlv_send_segment.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %dnld_type = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 4
  %53 = ptrtoint ptr %dnld_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dnld_type, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %54, label %while.end.out_crit_edge [
    i32 3, label %while.end.if.then92_crit_edge
    i32 1, label %while.end.if.then92_crit_edge163
  ]

while.end.if.then92_crit_edge163:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

while.end.if.then92_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then92:                                        ; preds = %while.end.if.then92_crit_edge, %while.end.if.then92_crit_edge163
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 14, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then92.out_crit_edge, label %if.end.i157

if.then92.out_crit_edge:                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i157:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %59, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #6
  %60 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 14, ptr %call1.i, align 1
  %plen.i = getelementptr inbounds %struct.hci_event_hdr, ptr %call1.i, i32 0, i32 1
  %61 = ptrtoint ptr %plen.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %plen.i, align 1
  %call3.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #6
  %62 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %call3.i, align 1
  %opcode.i = getelementptr inbounds %struct.hci_ev_cmd_complete, ptr %call3.i, i32 0, i32 1
  %63 = ptrtoint ptr %opcode.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 252, ptr %opcode.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #6
  %64 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %call.i.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %cb.i, align 8
  %call4.i = call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef nonnull %call.i.i.i) #6
  br label %out

out:                                              ; preds = %if.end.i157, %if.then92.out_crit_edge, %while.end.out_crit_edge, %qca_tlv_send_segment.exit.out_crit_edge
  %ret.2 = phi i32 [ 0, %while.end.out_crit_edge ], [ %call4.i, %if.end.i157 ], [ -12, %if.then92.out_crit_edge ], [ %retval.0.i156, %qca_tlv_send_segment.exit.out_crit_edge ]
  call void @vfree(ptr noundef nonnull %call44) #6
  br label %cleanup95

cleanup95:                                        ; preds = %out, %if.then46, %if.else, %if.then30
  %retval.0 = phi i32 [ %call28, %if.then30 ], [ %ret.2, %out ], [ -12, %if.then46 ], [ %call, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca_read_fw_build_info(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  %build_label = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %build_label) #6
  %0 = call ptr @memset(ptr %build_label, i32 255, i32 255)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_read_fw_build_info.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_read_fw_build_info, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_read_fw_build_info.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.75, ptr noundef %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %cmd, align 1
  %call4 = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1024, i32 noundef 1, ptr noundef nonnull %cmd, i8 noundef zeroext 0, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call4 to i32
  %name8 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.76, ptr noundef %name8, i32 noundef %2) #6
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %name13 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.77, ptr noundef %name13) #6
  br label %out

if.end15:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end15.if.then20_crit_edge

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end15
  %rtype = getelementptr inbounds %struct.edl_event_hdr, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %rtype to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp18.not = icmp eq i8 %8, 32
  br i1 %cmp18.not, label %if.end27, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  %name21 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv24 = zext i8 %6 to i32
  %rtype25 = getelementptr inbounds %struct.edl_event_hdr, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %rtype25 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtype25, align 1
  %conv26 = zext i8 %10 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7, ptr noundef %name21, i32 noundef %conv24, i32 noundef %conv26) #6
  br label %out

if.end27:                                         ; preds = %lor.lhs.false
  %data28 = getelementptr inbounds %struct.edl_event_hdr, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %data28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp30.not = icmp eq i8 %12, -1
  br i1 %cmp30.not, label %if.end27.if.end38_crit_edge, label %if.then32

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %conv29 = zext i8 %12 to i32
  %add.ptr = getelementptr %struct.edl_event_hdr, ptr %4, i32 1, i32 1
  %13 = call ptr @memcpy(ptr %build_label, ptr %add.ptr, i32 %conv29)
  %add.ptr37 = getelementptr i8, ptr %build_label, i32 %conv29
  %14 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %add.ptr37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end27.if.end38_crit_edge
  call void (ptr, ptr, ...) @hci_set_fw_info(ptr noundef %hdev, ptr noundef nonnull @.str.78, ptr noundef nonnull %build_label) #6
  br label %out

out:                                              ; preds = %if.end38, %if.then20, %if.then12
  %err.0 = phi i32 [ -5, %if.then20 ], [ 0, %if.end38 ], [ -84, %if.then12 ]
  call void @kfree_skb_reason(ptr noundef %call4, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %build_label) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_set_bdaddr(ptr noundef %hdev, ptr noundef %bdaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1004, i32 noundef 6, ptr noundef %bdaddr, i8 noundef zeroext -1, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call1 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca_tlv_check_data(ptr noundef %hdev, ptr nocapture noundef %config, ptr nocapture noundef %fw_data, i32 noundef %soc_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %user_baud_rate = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %user_baud_rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %user_baud_rate, align 1
  %dnld_mode = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 3
  %2 = ptrtoint ptr %dnld_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dnld_mode, align 4
  %dnld_type = getelementptr inbounds %struct.qca_fw_config, ptr %config, i32 0, i32 4
  %3 = ptrtoint ptr %dnld_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dnld_type, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %5, label %sw.default [
    i8 3, label %sw.bb
    i8 1, label %sw.bb46
    i8 2, label %sw.bb256
  ]

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %dnld_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %dnld_mode, align 4
  %8 = ptrtoint ptr %dnld_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %dnld_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then)) #6
          to label %do.body6 [label %if.then], !srcloc !202

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %arrayidx = getelementptr i8, ptr %fw_data, i32 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %conv5) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then18)) #6
          to label %do.body26 [label %if.then18], !srcloc !202

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %name19 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %arrayidx21 = getelementptr i8, ptr %fw_data, i32 5
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.50, ptr noundef %name19, i32 noundef %conv22) #6
  br label %do.body26

do.body26:                                        ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then38)) #6
          to label %sw.epilog321 [label %if.then38], !srcloc !202

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %name39 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %arrayidx41 = getelementptr i8, ptr %fw_data, i32 6
  %13 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.51, ptr noundef %name39, i32 noundef %conv42) #6
  br label %sw.epilog321

sw.bb46:                                          ; preds = %entry
  %15 = ptrtoint ptr %fw_data to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %fw_data, align 1
  %data48 = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 0, i32 1
  %download_mode = getelementptr inbounds %struct.tlv_type_patch, ptr %data48, i32 0, i32 4
  %17 = ptrtoint ptr %download_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %download_mode, align 1
  %conv50 = zext i8 %18 to i32
  %19 = ptrtoint ptr %dnld_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv50, ptr %dnld_mode, align 4
  %20 = ptrtoint ptr %dnld_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv50, ptr %dnld_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then66)) #6
          to label %do.body70 [label %if.then66], !srcloc !202

if.then66:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  %21 = lshr i32 %16, 24
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.52, i32 noundef %21) #6
  br label %do.body70

do.body70:                                        ; preds = %if.then66, %sw.bb46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then82)) #6
          to label %do.body86 [label %if.then82], !srcloc !202

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %data48 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %data48, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.53, i32 noundef %24) #6
  br label %do.body86

do.body86:                                        ; preds = %if.then82, %do.body70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then98)) #6
          to label %do.body102 [label %if.then98], !srcloc !202

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %data_length = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 2
  %25 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %data_length, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.54, i32 noundef %27) #6
  br label %do.body102

do.body102:                                       ; preds = %if.then98, %do.body86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then114)) #6
          to label %do.body119 [label %if.then114], !srcloc !202

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %format_version = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 3
  %28 = ptrtoint ptr %format_version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %format_version, align 1
  %conv115 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.55, i32 noundef %conv115) #6
  br label %do.body119

do.body119:                                       ; preds = %if.then114, %do.body102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then131)) #6
          to label %do.body136 [label %if.then131], !srcloc !202

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  %signature = getelementptr inbounds %struct.tlv_type_patch, ptr %data48, i32 0, i32 3
  %30 = ptrtoint ptr %signature to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %signature, align 1
  %conv132 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.56, i32 noundef %conv132) #6
  br label %do.body136

do.body136:                                       ; preds = %if.then131, %do.body119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then148)) #6
          to label %do.body154 [label %if.then148], !srcloc !202

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %download_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %download_mode, align 1
  %conv150 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.57, i32 noundef %conv150) #6
  br label %do.body154

do.body154:                                       ; preds = %if.then148, %do.body136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then166)) #6
          to label %do.body171 [label %if.then166], !srcloc !202

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #8
  %reserved1 = getelementptr inbounds %struct.tlv_type_patch, ptr %data48, i32 0, i32 5
  %34 = ptrtoint ptr %reserved1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reserved1, align 1
  %conv167 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.58, i32 noundef %conv167) #6
  br label %do.body171

do.body171:                                       ; preds = %if.then166, %do.body154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then183)) #6
          to label %do.body188 [label %if.then183], !srcloc !202

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #8
  %product_id = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 4
  %36 = ptrtoint ptr %product_id to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %product_id, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv184 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.59, i32 noundef %conv184) #6
  br label %do.body188

do.body188:                                       ; preds = %if.then183, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then200)) #6
          to label %do.body205 [label %if.then200], !srcloc !202

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #8
  %rom_build = getelementptr inbounds %struct.tlv_type_patch, ptr %data48, i32 0, i32 7
  %39 = ptrtoint ptr %rom_build to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %rom_build, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv201 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.60, i32 noundef %conv201) #6
  br label %do.body205

do.body205:                                       ; preds = %if.then200, %do.body188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then217)) #6
          to label %do.body222 [label %if.then217], !srcloc !202

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  %patch_version = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 5
  %42 = ptrtoint ptr %patch_version to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %patch_version, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv218 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.61, i32 noundef %conv218) #6
  br label %do.body222

do.body222:                                       ; preds = %if.then217, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then234)) #6
          to label %do.body239 [label %if.then234], !srcloc !202

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #8
  %reserved2 = getelementptr inbounds %struct.tlv_type_patch, ptr %data48, i32 0, i32 9
  %45 = ptrtoint ptr %reserved2 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %reserved2, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv235 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.58, i32 noundef %conv235) #6
  br label %do.body239

do.body239:                                       ; preds = %if.then234, %do.body222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then251)) #6
          to label %sw.epilog321 [label %if.then251], !srcloc !202

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #8
  %entry252 = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 6
  %48 = ptrtoint ptr %entry252 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %entry252, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.62, i32 noundef %50) #6
  br label %sw.epilog321

sw.bb256:                                         ; preds = %entry
  %51 = ptrtoint ptr %fw_data to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %fw_data, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %shr = lshr i32 %53, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then271)) #6
          to label %do.body276 [label %if.then271], !srcloc !202

if.then271:                                       ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #8
  %and272 = and i32 %53, 255
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.52, i32 noundef %and272) #6
  br label %do.body276

do.body276:                                       ; preds = %if.then271, %sw.bb256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tlv_check_data, %if.then288)) #6
          to label %do.end291 [label %if.then288], !srcloc !202

if.then288:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_tlv_check_data.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.63, i32 noundef %shr) #6
  br label %do.end291

do.end291:                                        ; preds = %if.then288, %do.body276
  %data292 = getelementptr inbounds %struct.tlv_type_hdr, ptr %fw_data, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %53)
  %cmp427.not = icmp ult i32 %53, 256
  br i1 %cmp427.not, label %do.end291.sw.epilog321_crit_edge, label %while.body.lr.ph

do.end291.sw.epilog321_crit_edge:                 ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog321

while.body.lr.ph:                                 ; preds = %do.end291
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type)
  %cmp303 = icmp sgt i32 %soc_type, 3
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %idx.0428 = phi i32 [ 0, %while.body.lr.ph ], [ %add318, %sw.epilog.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data292, i32 %idx.0428
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %add.ptr, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %tag_len296 = getelementptr inbounds %struct.tlv_type_nvm, ptr %add.ptr, i32 0, i32 1
  %57 = ptrtoint ptr %tag_len296 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %tag_len296, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %60 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %56, label %while.body.sw.epilog_crit_edge [
    i16 17, label %sw.bb298
    i16 27, label %sw.bb311
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb298:                                         ; preds = %while.body
  %data299 = getelementptr inbounds %struct.tlv_type_nvm, ptr %add.ptr, i32 0, i32 4
  %61 = ptrtoint ptr %data299 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %data299, align 1
  %63 = or i8 %62, -128
  store i8 %63, ptr %data299, align 1
  br i1 %cmp303, label %if.then305, label %if.else

if.then305:                                       ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx307 = getelementptr [0 x i8], ptr %data299, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %1, ptr %arrayidx307, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx309 = getelementptr [0 x i8], ptr %data299, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %1, ptr %arrayidx309, align 1
  br label %sw.epilog

sw.bb311:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %data312 = getelementptr inbounds %struct.tlv_type_nvm, ptr %add.ptr, i32 0, i32 4
  %66 = ptrtoint ptr %data312 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %data312, align 1
  %68 = or i8 %67, 1
  store i8 %68, ptr %data312, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb311, %if.else, %if.then305, %while.body.sw.epilog_crit_edge
  %conv317 = zext i16 %59 to i32
  %add = add i32 %idx.0428, 12
  %add318 = add i32 %add, %conv317
  %cmp = icmp slt i32 %add318, %shr
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.sw.epilog321_crit_edge

sw.epilog.sw.epilog321_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog321

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %5 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.64, i32 noundef %conv) #6
  br label %sw.epilog321

sw.epilog321:                                     ; preds = %sw.default, %sw.epilog.sw.epilog321_crit_edge, %do.end291.sw.epilog321_crit_edge, %if.then251, %do.body239, %if.then38, %do.body26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hci_cmd_send(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_set_fw_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !105, !106, !108, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !157, !158, !160, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !183, !185, !186, !187, !189, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btqca.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @qca_read_soc_version.__UNIQUE_ID_ddebug475, !1, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/btqca.c", i32 46, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/btqca.c", i32 52, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/btqca.c", i32 59, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/btqca.c", i32 66, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/btqca.c", i32 77, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/btqca.c", i32 79, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btqca.c", i32 81, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/btqca.c", i32 83, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/btqca.c", i32 92, i32 3}
!24 = !{ptr @__ksymtab_qca_read_soc_version, !25, !"__ksymtab_qca_read_soc_version", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/btqca.c", i32 96, i32 1}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/btqca.c", i32 213, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qca_send_pre_shutdown_cmd.__UNIQUE_ID_ddebug479, !27, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/btqca.c", i32 220, i32 3}
!32 = !{ptr @__ksymtab_qca_send_pre_shutdown_cmd, !33, !"__ksymtab_qca_send_pre_shutdown_cmd", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/btqca.c", i32 228, i32 1}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/btqca.c", i32 567, i32 3}
!36 = !{ptr @__ksymtab_qca_set_bdaddr_rome, !37, !"__ksymtab_qca_set_bdaddr_rome", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/btqca.c", i32 575, i32 1}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/btqca.c", i32 586, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qca_uart_setup.__UNIQUE_ID_ddebug501, !39, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/btqca.c", i32 590, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/btqca.c", i32 606, i32 5}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/btqca.c", i32 609, i32 5}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/btqca.c", i32 616, i32 5}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/btqca.c", i32 619, i32 5}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/btqca.c", i32 624, i32 3}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/btqca.c", i32 635, i32 5}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/btqca.c", i32 639, i32 6}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/btqca.c", i32 642, i32 6}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/btqca.c", i32 647, i32 5}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/btqca.c", i32 650, i32 5}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/btqca.c", i32 653, i32 5}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/btqca.c", i32 657, i32 3}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bluetooth/btqca.c", i32 684, i32 3}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bluetooth/btqca.c", i32 695, i32 2}
!72 = !{ptr @__ksymtab_qca_uart_setup, !73, !"__ksymtab_qca_uart_setup", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/btqca.c", i32 699, i32 1}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bluetooth/btqca.c", i32 710, i32 3}
!76 = !{ptr @__ksymtab_qca_set_bdaddr, !77, !"__ksymtab_qca_set_bdaddr", i1 false, i1 false}
!77 = !{!"../drivers/bluetooth/btqca.c", i32 718, i32 1}
!78 = !{ptr @__UNIQUE_ID_author502, !79, !"__UNIQUE_ID_author502", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/btqca.c", i32 721, i32 1}
!80 = !{ptr @__UNIQUE_ID_description503, !81, !"__UNIQUE_ID_description503", i1 false, i1 false}
!81 = !{!"../drivers/bluetooth/btqca.c", i32 722, i32 1}
!82 = !{ptr @__UNIQUE_ID_version504, !83, !"__UNIQUE_ID_version504", i1 false, i1 false}
!83 = !{!"../drivers/bluetooth/btqca.c", i32 723, i32 1}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__modver_attr, !83, !"__modver_attr", i1 false, i1 false}
!87 = !{ptr @__UNIQUE_ID_file505, !88, !"__UNIQUE_ID_file505", i1 false, i1 false}
!88 = !{!"../drivers/bluetooth/btqca.c", i32 724, i32 1}
!89 = !{ptr @__UNIQUE_ID_license506, !88, !"__UNIQUE_ID_license506", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bluetooth/btqca.c", i32 152, i32 2}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @qca_send_patch_config_cmd.__UNIQUE_ID_ddebug477, !91, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bluetooth/btqca.c", i32 158, i32 3}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bluetooth/btqca.c", i32 163, i32 3}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bluetooth/btqca.c", i32 170, i32 3}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bluetooth/btqca.c", i32 455, i32 2}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bluetooth/btqca.c", i32 463, i32 4}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qca_download_firmware.__UNIQUE_ID_ddebug497, !103, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/bluetooth/btqca.c", i32 467, i32 6}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/bluetooth/btqca.c", i32 485, i32 3}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bluetooth/btqca.c", i32 501, i32 3}
!112 = !{ptr @qca_download_firmware.__UNIQUE_ID_ddebug500, !111, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/bluetooth/btqca.c", i32 251, i32 3}
!115 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug480, !114, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/bluetooth/btqca.c", i32 252, i32 3}
!119 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug481, !118, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/bluetooth/btqca.c", i32 253, i32 3}
!122 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug482, !121, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bluetooth/btqca.c", i32 269, i32 3}
!125 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug483, !124, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bluetooth/btqca.c", i32 270, i32 3}
!128 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug484, !127, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bluetooth/btqca.c", i32 272, i32 3}
!131 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug485, !130, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/bluetooth/btqca.c", i32 274, i32 3}
!134 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug486, !133, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bluetooth/btqca.c", i32 276, i32 3}
!137 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug487, !136, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/bluetooth/btqca.c", i32 278, i32 3}
!140 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug488, !139, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/bluetooth/btqca.c", i32 280, i32 3}
!143 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug489, !142, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/bluetooth/btqca.c", i32 282, i32 3}
!146 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug490, !145, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/bluetooth/btqca.c", i32 284, i32 3}
!149 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug491, !148, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/bluetooth/btqca.c", i32 286, i32 3}
!152 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug492, !151, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!153 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug493, !154, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!154 = !{!"../drivers/bluetooth/btqca.c", i32 288, i32 3}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/bluetooth/btqca.c", i32 290, i32 3}
!157 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug494, !156, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!158 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug495, !159, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!159 = !{!"../drivers/bluetooth/btqca.c", i32 300, i32 3}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/bluetooth/btqca.c", i32 301, i32 3}
!162 = !{ptr @qca_tlv_check_data.__UNIQUE_ID_ddebug496, !161, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/bluetooth/btqca.c", i32 342, i32 3}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/bluetooth/btqca.c", i32 382, i32 3}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/bluetooth/btqca.c", i32 387, i32 3}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/bluetooth/btqca.c", i32 394, i32 3}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/bluetooth/btqca.c", i32 400, i32 3}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/bluetooth/btqca.c", i32 410, i32 3}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/bluetooth/btqca.c", i32 544, i32 3}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/bluetooth/btqca.c", i32 194, i32 2}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qca_send_reset.__UNIQUE_ID_ddebug478, !178, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/bluetooth/btqca.c", i32 199, i32 3}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/bluetooth/btqca.c", i32 105, i32 2}
!185 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @qca_read_fw_build_info.__UNIQUE_ID_ddebug476, !184, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/bluetooth/btqca.c", i32 112, i32 3}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/bluetooth/btqca.c", i32 119, i32 3}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/bluetooth/btqca.c", i32 138, i32 24}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 2148969758, i64 2148969763, i64 2148969776, i64 2148969820, i64 2148969854, i64 2148969875}
!203 = !{!"auto-init"}
