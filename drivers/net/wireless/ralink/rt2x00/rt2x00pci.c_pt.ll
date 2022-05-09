; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt2x00pci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00pci_probe\09\09\09\09"
module asm "\09.long\09__crc_rt2x00pci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt2x00pci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00pci_remove\09\09\09\09"
module asm "\09.long\09__crc_rt2x00pci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00pci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt2x00pci_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00pci_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_rt2x00pci_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00pci_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00pci_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00pci_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, ptr, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.130, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.anon.130 = type { %union.anon.131, [0 x i32] }
%union.anon.131 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }

@rt2x00pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013rt2x00pci: %s: Error - Enable device failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt2x00pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00pci.c\00", [49 x i8] zeroinitializer }, align 32
@rt2x00pci_probe._entry_ptr = internal global ptr @rt2x00pci_probe._entry, section ".printk_index", align 4
@rt2x00pci_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rt2x00pci: %s: Error - PCI request regions failed\0A\00", [43 x i8] zeroinitializer }, align 32
@rt2x00pci_probe._entry_ptr.5 = internal global ptr @rt2x00pci_probe._entry.3, section ".printk_index", align 4
@rt2x00pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rt2x00pci: %s: Error - MWI not available\0A\00", [52 x i8] zeroinitializer }, align 32
@rt2x00pci_probe._entry_ptr.8 = internal global ptr @rt2x00pci_probe._entry.6, section ".printk_index", align 4
@rt2x00pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013rt2x00pci: %s: Error - PCI DMA not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@rt2x00pci_probe._entry_ptr.11 = internal global ptr @rt2x00pci_probe._entry.9, section ".printk_index", align 4
@rt2x00pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rt2x00pci: %s: Error - Failed to allocate hardware\0A\00", [42 x i8] zeroinitializer }, align 32
@rt2x00pci_probe._entry_ptr.14 = internal global ptr @rt2x00pci_probe._entry.12, section ".printk_index", align 4
@__kstrtab_rt2x00pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00pci_probe to i32), ptr @__kstrtab_rt2x00pci_probe, ptr @__kstrtabns_rt2x00pci_probe }, section "___ksymtab_gpl+rt2x00pci_probe", align 4
@__kstrtab_rt2x00pci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00pci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00pci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00pci_remove to i32), ptr @__kstrtab_rt2x00pci_remove, ptr @__kstrtabns_rt2x00pci_remove }, section "___ksymtab_gpl+rt2x00pci_remove", align 4
@rt2x00pci_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rt2x00pci_suspend, ptr @rt2x00pci_resume, ptr @rt2x00pci_suspend, ptr @rt2x00pci_resume, ptr @rt2x00pci_suspend, ptr @rt2x00pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_rt2x00pci_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00pci_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00pci_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00pci_pm_ops to i32), ptr @__kstrtab_rt2x00pci_pm_ops, ptr @__kstrtabns_rt2x00pci_pm_ops }, section "___ksymtab_gpl+rt2x00pci_pm_ops", align 4
@__UNIQUE_ID_author370 = internal constant [48 x i8] c"rt2x00pci.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version371 = internal constant [24 x i8] c"rt2x00pci.version=2.3.0\00", section ".modinfo", align 1
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2x00pci\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.16, ptr @.str.17 }, section "__modver", align 4
@__UNIQUE_ID_description372 = internal constant [41 x i8] c"rt2x00pci.description=rt2x00 pci library\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [60 x i8] c"rt2x00pci.file=drivers/net/wireless/ralink/rt2x00/rt2x00pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [22 x i8] c"rt2x00pci.license=GPL\00", section ".modinfo", align 1
@rt2x00pci_alloc_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rt2x00pci: %s: Error - Failed to allocate registers\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt2x00pci_alloc_reg\00", [44 x i8] zeroinitializer }, align 32
@rt2x00pci_alloc_reg._entry_ptr = internal global ptr @rt2x00pci_alloc_reg._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 74, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 80, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 87, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 90, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 97, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"rt2x00pci_pm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 188, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 195, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [50 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 58, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author370, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__UNIQUE_ID_version371, ptr @__ksymtab_rt2x00pci_pm_ops, ptr @__ksymtab_rt2x00pci_probe, ptr @__ksymtab_rt2x00pci_remove, ptr @__modver_attr, ptr @rt2x00pci_alloc_reg._entry, ptr @rt2x00pci_alloc_reg._entry_ptr, ptr @rt2x00pci_probe._entry, ptr @rt2x00pci_probe._entry.12, ptr @rt2x00pci_probe._entry.3, ptr @rt2x00pci_probe._entry.6, ptr @rt2x00pci_probe._entry.9, ptr @rt2x00pci_probe._entry_ptr, ptr @rt2x00pci_probe._entry_ptr.11, ptr @rt2x00pci_probe._entry_ptr.14, ptr @rt2x00pci_probe._entry_ptr.5, ptr @rt2x00pci_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @rt2x00pci_pm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00pci_alloc_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt2x00pci_probe(ptr noundef %pci_dev, ptr noundef %ops) #0 align 64 {
entry:
  %chip = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chip) #5
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %chip, align 2, !annotation !57
  %call = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.end.pci_name.exit_crit_edge ]
  %call4 = tail call i32 @pci_request_regions(ptr noundef %pci_dev, ptr noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #8
  br label %exit_disable_device

if.end12:                                         ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pci_dev) #5
  %call13 = tail call i32 @pci_set_mwi(ptr noundef %pci_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %do.end18

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.end12.if.end21_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call22 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #8
  br label %exit_release_regions

if.end30:                                         ; preds = %if.end21
  %hw31 = getelementptr inbounds %struct.rt2x00_ops, ptr %ops, i32 0, i32 9
  %5 = ptrtoint ptr %hw31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw31, align 4
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 3264, ptr noundef %6, ptr noundef null) #5
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #8
  br label %exit_release_regions

if.end40:                                         ; preds = %if.end30
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %9, align 8
  %ops43 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %ops43 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ops, ptr %ops43, align 4
  %hw44 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %hw44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %hw44, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %irq45 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 15
  %15 = ptrtoint ptr %irq45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq45, align 8
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %name46 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 16
  %18 = ptrtoint ptr %name46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %name46, align 4
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 19
  %19 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not = icmp ne i8 %20, 0
  %spec.select = zext i1 %tobool.i.not to i32
  %21 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 17, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %21, align 8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 -136
  %call.i98 = tail call ptr @pci_ioremap_bar(ptr noundef %add.ptr.i, i32 noundef 0) #5
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 20
  %25 = ptrtoint ptr %csr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i98, ptr %csr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i98, null
  br i1 %tobool.not.i, label %if.end40.do.end.i_crit_edge, label %if.end8.i.i.i

if.end40.do.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end8.i.i.i:                                    ; preds = %if.end40
  %26 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops43, align 4
  %eeprom_size.i = getelementptr inbounds %struct.rt2x00_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %eeprom_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eeprom_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #9
  %eeprom.i = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 31
  %30 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i.i, ptr %eeprom.i, align 8
  %tobool4.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool4.not.i, label %if.end8.i.i.i.do.end.i_crit_edge, label %if.end8.i.i50.i

if.end8.i.i.i.do.end.i_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end8.i.i50.i:                                  ; preds = %if.end8.i.i.i
  %31 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops43, align 4
  %rf_size.i = getelementptr inbounds %struct.rt2x00_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %rf_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rf_size.i, align 4
  %call9.i.i49.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #9
  %rf.i = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 32
  %35 = ptrtoint ptr %rf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i49.i, ptr %rf.i, align 4
  %tobool10.not.i = icmp eq ptr %call9.i.i49.i, null
  br i1 %tobool10.not.i, label %if.end8.i.i50.i.do.end.i_crit_edge, label %if.end53

if.end8.i.i50.i.do.end.i_crit_edge:               ; preds = %if.end8.i.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.end8.i.i50.i.do.end.i_crit_edge, %if.end8.i.i.i.do.end.i_crit_edge, %if.end40.do.end.i_crit_edge
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #8
  %rf.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 32
  %36 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rf.i.i, align 4
  tail call void @kfree(ptr noundef %37) #5
  %38 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rf.i.i, align 4
  %eeprom.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 31
  %39 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eeprom.i.i, align 8
  tail call void @kfree(ptr noundef %40) #5
  %41 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %eeprom.i.i, align 8
  %42 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csr.i, align 4
  %tobool.not.i.i99 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i99, label %do.end.i.exit_free_device_crit_edge, label %if.then.i.i

do.end.i.exit_free_device_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free_device

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %43) #5
  br label %exit_free_device.sink.split

if.end53:                                         ; preds = %if.end8.i.i50.i
  %call54 = call i32 @pci_read_config_word(ptr noundef %pci_dev, i32 noundef 2, ptr noundef nonnull %chip) #5
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %chip, align 2
  %chip55 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 17
  %46 = ptrtoint ptr %chip55 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %chip55, align 8
  %call56 = call i32 @rt2x00lib_probe_dev(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end53.cleanup_crit_edge, label %exit_free_reg

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exit_free_reg:                                    ; preds = %if.end53
  %rf.i100 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 32
  %47 = ptrtoint ptr %rf.i100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rf.i100, align 4
  call void @kfree(ptr noundef %48) #5
  %49 = ptrtoint ptr %rf.i100 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rf.i100, align 4
  %eeprom.i101 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 31
  %50 = ptrtoint ptr %eeprom.i101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eeprom.i101, align 8
  call void @kfree(ptr noundef %51) #5
  %52 = ptrtoint ptr %eeprom.i101 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %eeprom.i101, align 8
  %53 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr.i, align 4
  %tobool.not.i103 = icmp eq ptr %54, null
  br i1 %tobool.not.i103, label %exit_free_reg.exit_free_device_crit_edge, label %if.then.i

exit_free_reg.exit_free_device_crit_edge:         ; preds = %exit_free_reg
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free_device

if.then.i:                                        ; preds = %exit_free_reg
  call void @__sanitizer_cov_trace_pc() #7
  call void @iounmap(ptr noundef nonnull %54) #5
  br label %exit_free_device.sink.split

exit_free_device.sink.split:                      ; preds = %if.then.i, %if.then.i.i
  %retval1.0.ph = phi i32 [ %call56, %if.then.i ], [ -12, %if.then.i.i ]
  %55 = ptrtoint ptr %csr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %csr.i, align 4
  br label %exit_free_device

exit_free_device:                                 ; preds = %exit_free_device.sink.split, %exit_free_reg.exit_free_device_crit_edge, %do.end.i.exit_free_device_crit_edge
  %retval1.0 = phi i32 [ -12, %do.end.i.exit_free_device_crit_edge ], [ %call56, %exit_free_reg.exit_free_device_crit_edge ], [ %retval1.0.ph, %exit_free_device.sink.split ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #5
  br label %exit_release_regions

exit_release_regions:                             ; preds = %exit_free_device, %do.end37, %do.end27
  %retval1.1 = phi i32 [ -5, %do.end27 ], [ %retval1.0, %exit_free_device ], [ -12, %do.end37 ]
  call void @pci_clear_mwi(ptr noundef %pci_dev) #5
  call void @pci_release_regions(ptr noundef %pci_dev) #5
  br label %exit_disable_device

exit_disable_device:                              ; preds = %exit_release_regions, %do.end9
  %retval1.2 = phi i32 [ %call4, %do.end9 ], [ %retval1.1, %exit_release_regions ]
  call void @pci_disable_device(ptr noundef %pci_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_disable_device, %if.end53.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval1.2, %exit_disable_device ], [ 0, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chip) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00lib_probe_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00pci_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @rt2x00lib_remove_dev(ptr noundef %3) #5
  %rf.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf.i, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %rf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rf.i, align 4
  %eeprom.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 31
  %7 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eeprom.i, align 8
  tail call void @kfree(ptr noundef %8) #5
  %9 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %eeprom.i, align 8
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.rt2x00pci_free_reg.exit_crit_edge, label %if.then.i

entry.rt2x00pci_free_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00pci_free_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %11) #5
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %csr.i, align 4
  br label %rt2x00pci_free_reg.exit

rt2x00pci_free_reg.exit:                          ; preds = %if.then.i, %entry.rt2x00pci_free_reg.exit_crit_edge
  tail call void @ieee80211_free_hw(ptr noundef %1) #5
  tail call void @pci_clear_mwi(ptr noundef %pci_dev) #5
  tail call void @pci_disable_device(ptr noundef %pci_dev) #5
  tail call void @pci_release_regions(ptr noundef %pci_dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_remove_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call i32 @rt2x00lib_suspend(ptr noundef %3) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call i32 @rt2x00lib_resume(ptr noundef %3) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00lib_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00lib_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 74, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rt2x00pci_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rt2x00pci_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 80, i32 3}
!8 = !{ptr @rt2x00pci_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rt2x00pci_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 87, i32 3}
!12 = !{ptr @rt2x00pci_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rt2x00pci_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 90, i32 3}
!16 = !{ptr @rt2x00pci_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rt2x00pci_probe._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 97, i32 3}
!20 = !{ptr @rt2x00pci_probe._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rt2x00pci_probe._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_rt2x00pci_probe, !23, !"__ksymtab_rt2x00pci_probe", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 149, i32 1}
!24 = !{ptr @__ksymtab_rt2x00pci_remove, !25, !"__ksymtab_rt2x00pci_remove", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 170, i32 1}
!26 = !{ptr @rt2x00pci_pm_ops, !27, !"rt2x00pci_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 188, i32 1}
!28 = !{ptr @__ksymtab_rt2x00pci_pm_ops, !29, !"__ksymtab_rt2x00pci_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 189, i32 1}
!30 = !{ptr @__UNIQUE_ID_author370, !31, !"__UNIQUE_ID_author370", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 194, i32 1}
!32 = !{ptr @__UNIQUE_ID_version371, !33, !"__UNIQUE_ID_version371", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 195, i32 1}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__modver_attr, !33, !"__modver_attr", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_description372, !39, !"__UNIQUE_ID_description372", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 196, i32 1}
!40 = !{ptr @__UNIQUE_ID_file373, !41, !"__UNIQUE_ID_file373", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 197, i32 1}
!42 = !{ptr @__UNIQUE_ID_license374, !41, !"__UNIQUE_ID_license374", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00pci.c", i32 58, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rt2x00pci_alloc_reg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rt2x00pci_alloc_reg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
