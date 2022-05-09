; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/spi.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.134 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.wl1251_platform_data = type { i32, i32, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_wl1251_spi__392_349_wl1251_spi_driver_init6 = internal global ptr @wl1251_spi_driver_init, section ".initcall6.init", align 4
@wl1251_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @wl1251_spi_probe, ptr @wl1251_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wl1251_spi_driver_exit = internal global ptr @wl1251_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file393 = internal constant [58 x i8] c"wl1251_spi.file=drivers/net/wireless/ti/wl1251/wl1251_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [23 x i8] c"wl1251_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author395 = internal constant [48 x i8] c"wl1251_spi.author=Kalle Valo <kvalo@adurom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias396 = internal constant [28 x i8] c"wl1251_spi.alias=spi:wl1251\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl1251\00", [25 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013wl1251: ERROR no platform data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1251_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wl1251/spi.c\00", [59 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr = internal global ptr @wl1251_spi_probe._entry, section ".printk_index", align 4
@wl1251_spi_ops = internal constant { %struct.wl1251_if_operations, [32 x i8] } { %struct.wl1251_if_operations { ptr @wl1251_spi_read, ptr @wl1251_spi_write, ptr null, ptr null, ptr @wl1251_spi_set_power, ptr @wl1251_spi_reset_wake, ptr @wl1251_spi_enable_irq, ptr @wl1251_spi_disable_irq }, [32 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013wl1251: ERROR spi_setup failed\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr.6 = internal global ptr @wl1251_spi_probe._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,wl1251-has-eeprom\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,power-gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl1251 power\00", [19 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wl1251: ERROR Failed to request gpio: %d\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr.12 = internal global ptr @wl1251_spi_probe._entry.10, section ".printk_index", align 4
@wl1251_spi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wl1251: ERROR set power gpio missing in platform data\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr.15 = internal global ptr @wl1251_spi_probe._entry.13, section ".printk_index", align 4
@wl1251_spi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wl1251: ERROR irq missing in platform data\0A\00", [50 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr.18 = internal global ptr @wl1251_spi_probe._entry.16, section ".printk_index", align 4
@wl1251_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wl1251: ERROR request_irq() failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr.21 = internal global ptr @wl1251_spi_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wl1251: ERROR vio regulator missing: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wl1251_spi_probe._entry_ptr.25 = internal global ptr @wl1251_spi_probe._entry.23, section ".printk_index", align 4
@wl1251_spi_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wl1251: ERROR could not allocate cmd for spi reset\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1251_spi_reset\00", [47 x i8] zeroinitializer }, align 32
@wl1251_spi_reset._entry_ptr = internal global ptr @wl1251_spi_reset._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wl1251_spi_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wl1251: ERROR could not allocate cmd for spi init\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_spi_wake\00", [16 x i8] zeroinitializer }, align 32
@wl1251_spi_wake._entry_ptr = internal global ptr @wl1251_spi_wake._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"wl1251_spi_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 340, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 342, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 236, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"wl1251_spi_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 218, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 258, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 263, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 264, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 277, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 279, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 283, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 290, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 299, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 305, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 308, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 51, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [40 x i8] c"../drivers/net/wireless/ti/wl1251/spi.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 78, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias396, ptr @__UNIQUE_ID_author395, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__exitcall_wl1251_spi_driver_exit, ptr @__initcall__kmod_wl1251_spi__392_349_wl1251_spi_driver_init6, ptr @wl1251_spi_driver_exit, ptr @wl1251_spi_probe._entry, ptr @wl1251_spi_probe._entry.10, ptr @wl1251_spi_probe._entry.13, ptr @wl1251_spi_probe._entry.16, ptr @wl1251_spi_probe._entry.19, ptr @wl1251_spi_probe._entry.23, ptr @wl1251_spi_probe._entry.4, ptr @wl1251_spi_probe._entry_ptr, ptr @wl1251_spi_probe._entry_ptr.12, ptr @wl1251_spi_probe._entry_ptr.15, ptr @wl1251_spi_probe._entry_ptr.18, ptr @wl1251_spi_probe._entry_ptr.21, ptr @wl1251_spi_probe._entry_ptr.25, ptr @wl1251_spi_probe._entry_ptr.6, ptr @wl1251_spi_reset._entry, ptr @wl1251_spi_reset._entry_ptr, ptr @wl1251_spi_wake._entry, ptr @wl1251_spi_wake._entry_ptr, ptr @wl1251_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wl1251_spi_ops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_spi_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wl1251_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wl1251_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @wl1251_alloc_hw() #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call4, i32 0, i32 3
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56, i32 1
  %9 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spi, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %driver_data.i.i, align 4
  %if_priv = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %if_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %if_priv, align 4
  %if_ops = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %if_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wl1251_spi_ops, ptr %if_ops, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %13 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %bits_per_word, align 1
  %call10 = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %out_free

if.end17:                                         ; preds = %if.end8
  br i1 %tobool.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i, null
  %use_eeprom = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 6
  %frombool = zext i1 %tobool.i to i8
  %14 = ptrtoint ptr %use_eeprom to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %use_eeprom, align 4
  %call.i160 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef null) #7
  %power_gpio = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %power_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i160, ptr %power_gpio, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end17
  br i1 %tobool2.not, label %if.else.if.end31_crit_edge, label %if.then23

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %power_gpio25 = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %power_gpio25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %power_gpio25, align 4
  %use_eeprom26 = getelementptr inbounds %struct.wl1251_platform_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %use_eeprom26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_eeprom26, align 4, !range !73
  %use_eeprom28 = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 6
  %21 = ptrtoint ptr %use_eeprom28 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %use_eeprom28, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.else.if.end31_crit_edge, %if.then19
  %power_gpio32 = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %power_gpio32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %power_gpio32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %23)
  %cmp33 = icmp eq i32 %23, -517
  br i1 %cmp33, label %if.end31.out_free_crit_edge, label %if.end35

if.end31.out_free_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %23)
  %24 = icmp ult i32 %23, 2048
  br i1 %24, label %if.then38, label %do.end53

if.then38:                                        ; preds = %if.end35
  %call41 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %23, i32 noundef 0, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end56, label %do.end46

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call41) #10
  br label %out_free

do.end53:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %out_free

if.end56:                                         ; preds = %if.then38
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %irq57 = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 5
  %27 = ptrtoint ptr %irq57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp59 = icmp slt i32 %26, 0
  br i1 %cmp59, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %out_free

if.end66:                                         ; preds = %if.end56
  tail call void @irq_modify_status(i32 noundef %26, i32 noundef 0, i32 noundef 4096) #7
  %28 = ptrtoint ptr %irq57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq57, align 4
  %call.i161 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %29, ptr noundef nonnull @wl1251_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp71 = icmp slt i32 %call.i161, 0
  br i1 %cmp71, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call.i161) #10
  br label %out_free

if.end78:                                         ; preds = %if.end66
  %30 = ptrtoint ptr %irq57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq57, align 4
  %call80 = tail call i32 @irq_set_irq_type(i32 noundef %31, i32 noundef 1) #7
  %call82 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.22) #7
  %vio = getelementptr inbounds %struct.wl1251, ptr %6, i32 0, i32 7
  %32 = ptrtoint ptr %vio to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call82, ptr %vio, align 4
  %cmp.i162 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then85, label %if.end93

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call82 to i32
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %33) #10
  br label %out_free

if.end93:                                         ; preds = %if.end78
  %call95 = tail call i32 @regulator_enable(ptr noundef %call82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.out_free_crit_edge

if.end93.out_free_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end98:                                         ; preds = %if.end93
  %call99 = tail call i32 @wl1251_init_ieee80211(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %disable_regulator

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

disable_regulator:                                ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vio, align 4
  %call104 = tail call i32 @regulator_disable(ptr noundef %35) #7
  br label %out_free

out_free:                                         ; preds = %disable_regulator, %if.end93.out_free_crit_edge, %if.then85, %do.end75, %do.end63, %do.end53, %do.end46, %if.end31.out_free_crit_edge, %do.end14
  %ret.0 = phi i32 [ %call10, %do.end14 ], [ %call41, %do.end46 ], [ -19, %do.end63 ], [ %call.i161, %do.end75 ], [ %33, %if.then85 ], [ %call95, %if.end93.out_free_crit_edge ], [ %call99, %disable_regulator ], [ -19, %do.end53 ], [ -517, %if.end31.out_free_crit_edge ]
  tail call void @ieee80211_free_hw(ptr noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end98.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %ret.0, %out_free ], [ -19, %do.end ], [ 0, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @wl1251_free_hw(ptr noundef %1) #7
  %vio = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vio, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wl1251_alloc_hw() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_irq(i32 noundef %irq, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %irq_work = getelementptr inbounds %struct.wl1251, ptr %cookie, i32 0, i32 42
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %irq_work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_init_ieee80211(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_spi_read(ptr noundef %wl, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %t = alloca [3 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  %buffer_cmd = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 63
  %buffer_busyword = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 64
  %shl = shl i32 %len, 17
  %and = and i32 %shl, 536739840
  %and2 = and i32 %addr, 131071
  %or1 = or i32 %and2, %and
  %or3 = or i32 %or1, 1073741824
  %0 = ptrtoint ptr %buffer_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or3, ptr %buffer_cmd, align 4
  %1 = getelementptr inbounds i8, ptr %m, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %5 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %7 = getelementptr inbounds i8, ptr %t, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 284)
  %9 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer_cmd, ptr %t, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len6, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buffer_busyword, ptr %rx_buf, align 4
  %len10 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %len10, align 4
  %transfer_list.i28 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i30 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i28, ptr noundef %18, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i30, label %if.end.i.i.i32, label %spi_message_add_tail.exit.spi_message_add_tail.exit33_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit33_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit33

if.end.i.i.i32:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i28, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %transfer_list.i28, align 4
  %prev3.i.i.i31 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i31, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i28, ptr %18, align 4
  br label %spi_message_add_tail.exit33

spi_message_add_tail.exit33:                      ; preds = %if.end.i.i.i32, %spi_message_add_tail.exit.spi_message_add_tail.exit33_crit_edge
  %rx_buf13 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %rx_buf13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %rx_buf13, align 4
  %len15 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %len15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %len15, align 4
  %transfer_list.i34 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i36 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i34, ptr noundef %26, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i36, label %if.end.i.i.i38, label %spi_message_add_tail.exit33.spi_message_add_tail.exit39_crit_edge

spi_message_add_tail.exit33.spi_message_add_tail.exit39_crit_edge: ; preds = %spi_message_add_tail.exit33
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit39

if.end.i.i.i38:                                   ; preds = %spi_message_add_tail.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i34, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %transfer_list.i34, align 4
  %prev3.i.i.i37 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i37, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i34, ptr %26, align 4
  br label %spi_message_add_tail.exit39

spi_message_add_tail.exit39:                      ; preds = %if.end.i.i.i38, %spi_message_add_tail.exit33.spi_message_add_tail.exit39_crit_edge
  %if_priv.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 2
  %31 = ptrtoint ptr %if_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %if_priv.i, align 4
  %call17 = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_spi_write(ptr noundef %wl, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  %buffer_cmd = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 63
  %shl = shl i32 %len, 17
  %and = and i32 %shl, 536739840
  %and2 = and i32 %addr, 131071
  %or3 = or i32 %and, %and2
  %0 = ptrtoint ptr %buffer_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or3, ptr %buffer_cmd, align 4
  %1 = getelementptr inbounds i8, ptr %m, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %5 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %7 = getelementptr inbounds i8, ptr %t, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 188)
  %9 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer_cmd, ptr %t, align 4
  %len5 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len5, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %arrayidx7 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %arrayidx7, align 4
  %len10 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %len10, align 4
  %transfer_list.i22 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i24 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i22, ptr noundef %18, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i24, label %if.end.i.i.i26, label %spi_message_add_tail.exit.spi_message_add_tail.exit27_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit27_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit27

if.end.i.i.i26:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i22, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %transfer_list.i22, align 4
  %prev3.i.i.i25 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i25, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i22, ptr %18, align 4
  br label %spi_message_add_tail.exit27

spi_message_add_tail.exit27:                      ; preds = %if.end.i.i.i26, %spi_message_add_tail.exit.spi_message_add_tail.exit27_crit_edge
  %if_priv.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 2
  %23 = ptrtoint ptr %if_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %if_priv.i, align 4
  %call12 = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_spi_set_power(ptr nocapture noundef readonly %wl, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_gpio = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 4
  %0 = ptrtoint ptr %power_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i1 %enable to i32
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_spi_reset_wake(ptr nocapture noundef readonly %wl) #2 align 64 {
entry:
  %t.i2 = alloca %struct.spi_transfer, align 4
  %m.i3 = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %m.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %wl1251_spi_reset.exit

if.end.i:                                         ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %t.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 92)
  %3 = getelementptr inbounds i8, ptr %m.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %call7.i.i.i, align 8
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i_crit_edge

if.end.i.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i_crit_edge
  %if_priv.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 2
  %16 = ptrtoint ptr %if_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %if_priv.i.i, align 4
  %call3.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %m.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %wl1251_spi_reset.exit

wl1251_spi_reset.exit:                            ; preds = %spi_message_add_tail.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i2) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i4 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not.i5 = icmp eq ptr %call7.i.i.i4, null
  br i1 %tobool.not.i5, label %do.end.i7, label %if.end.i14

do.end.i7:                                        ; preds = %wl1251_spi_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %wl1251_spi_wake.exit

if.end.i14:                                       ; preds = %wl1251_spi_reset.exit
  %19 = getelementptr inbounds i8, ptr %t.i2, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = getelementptr inbounds i8, ptr %m.i3, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %m.i3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %m.i3, ptr %m.i3, align 4
  %prev.i.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %m.i3, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m.i3, ptr %prev.i.i.i.i8, align 4
  %resources.i.i.i9 = getelementptr inbounds %struct.spi_message, ptr %m.i3, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i9, ptr %resources.i.i.i9, align 4
  %prev.i2.i.i.i10 = getelementptr inbounds %struct.spi_message, ptr %m.i3, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i9, ptr %prev.i2.i.i.i10, align 4
  %27 = ptrtoint ptr %call7.i.i.i4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %call7.i.i.i4, align 8
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i.i4, i32 1
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i.i4, i32 2
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 64, ptr %arrayidx3.i, align 2
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i.i4, i32 3
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %call7.i.i.i4, i32 4
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i.i4, i32 5
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx6.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %call7.i.i.i4, i32 6
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -7, ptr %arrayidx9.i, align 2
  %call14.i = call zeroext i8 @crc7_be(i8 noundef zeroext 0, ptr noundef %arrayidx3.i, i32 noundef 5) #7
  %34 = or i8 %call14.i, 1
  %arrayidx18.i = getelementptr i8, ptr %call7.i.i.i4, i32 7
  %35 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx18.i, align 1
  %36 = ptrtoint ptr %call7.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i.i4, align 8
  %38 = call i32 @llvm.bswap.i32(i32 %37) #7
  %39 = ptrtoint ptr %call7.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %call7.i.i.i4, align 8
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx5.i, align 4
  %44 = ptrtoint ptr %t.i2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i4, ptr %t.i2, align 4
  %len.i11 = getelementptr inbounds %struct.spi_transfer, ptr %t.i2, i32 0, i32 2
  %45 = ptrtoint ptr %len.i11 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %len.i11, align 4
  %transfer_list.i.i12 = getelementptr inbounds %struct.spi_transfer, ptr %t.i2, i32 0, i32 18
  %46 = ptrtoint ptr %prev.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i8, align 4
  %call.i.i.i.i13 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i12, ptr noundef %47, ptr noundef nonnull %m.i3) #7
  br i1 %call.i.i.i.i13, label %if.end.i.i.i.i16, label %if.end.i14.spi_message_add_tail.exit.i18_crit_edge

if.end.i14.spi_message_add_tail.exit.i18_crit_edge: ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i18

if.end.i.i.i.i16:                                 ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %prev.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i12, ptr %prev.i.i.i.i8, align 4
  %49 = ptrtoint ptr %transfer_list.i.i12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %m.i3, ptr %transfer_list.i.i12, align 4
  %prev3.i.i.i.i15 = getelementptr inbounds %struct.spi_transfer, ptr %t.i2, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i.i15, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i12, ptr %47, align 4
  br label %spi_message_add_tail.exit.i18

spi_message_add_tail.exit.i18:                    ; preds = %if.end.i.i.i.i16, %if.end.i14.spi_message_add_tail.exit.i18_crit_edge
  %if_priv.i.i17 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 2
  %52 = ptrtoint ptr %if_priv.i.i17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %if_priv.i.i17, align 4
  %call21.i = call i32 @spi_sync(ptr noundef %53, ptr noundef nonnull %m.i3) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i4) #7
  br label %wl1251_spi_wake.exit

wl1251_spi_wake.exit:                             ; preds = %spi_message_add_tail.exit.i18, %do.end.i7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i3) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_spi_enable_irq(ptr nocapture noundef readonly %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_spi_disable_irq(ptr nocapture noundef readonly %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc7_be(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_wl1251_spi__392_349_wl1251_spi_driver_init6, !1, !"__initcall__kmod_wl1251_spi__392_349_wl1251_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 349, i32 1}
!2 = !{ptr @__exitcall_wl1251_spi_driver_exit, !1, !"__exitcall_wl1251_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file393, !4, !"__UNIQUE_ID_file393", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 351, i32 1}
!5 = !{ptr @__UNIQUE_ID_license394, !4, !"__UNIQUE_ID_license394", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author395, !7, !"__UNIQUE_ID_author395", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 352, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias396, !9, !"__UNIQUE_ID_alias396", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 353, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 342, i32 12}
!12 = !{ptr @wl1251_spi_driver, !13, !"wl1251_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 340, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 236, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wl1251_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @wl1251_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 258, i32 3}
!22 = !{ptr @wl1251_spi_probe._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @wl1251_spi_probe._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 263, i32 46}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 264, i32 42}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 277, i32 26}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 279, i32 4}
!32 = !{ptr @wl1251_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wl1251_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 283, i32 3}
!36 = !{ptr @wl1251_spi_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wl1251_spi_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 290, i32 3}
!40 = !{ptr @wl1251_spi_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wl1251_spi_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 299, i32 3}
!44 = !{ptr @wl1251_spi_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wl1251_spi_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 305, i32 42}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 308, i32 3}
!50 = !{ptr @wl1251_spi_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wl1251_spi_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @wl1251_spi_ops, !53, !"wl1251_spi_ops", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 218, i32 42}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 51, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @wl1251_spi_reset._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @wl1251_spi_reset._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ti/wl1251/spi.c", i32 78, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @wl1251_spi_wake._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @wl1251_spi_wake._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
