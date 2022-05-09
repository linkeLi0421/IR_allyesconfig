; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/cw1200_sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/cw1200_sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cw1200_platform_data_sdio = type { i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.hwbus_priv = type { ptr, ptr, ptr }

@__UNIQUE_ID_author371 = internal constant [72 x i8] c"cw1200_wlan_sdio.author=Dmitry Tarnyagin <dmitry.tarnyagin@lockless.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [69 x i8] c"cw1200_wlan_sdio.description=mac80211 ST-Ericsson CW1200 SDIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [70 x i8] c"cw1200_wlan_sdio.file=drivers/net/wireless/st/cw1200/cw1200_wlan_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [29 x i8] c"cw1200_wlan_sdio.license=GPL\00", section ".modinfo", align 1
@global_plat_data = internal global { ptr, [28 x i8] } { ptr @sagrad_109x_evk_platform_data, [28 x i8] zeroinitializer }, align 32
@sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.1, ptr @cw1200_sdio_ids, ptr @cw1200_sdio_probe, ptr @cw1200_sdio_disconnect, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw1200_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cw1200_wlan_sdio__377_416_cw1200_sdio_init6 = internal global ptr @cw1200_sdio_init, section ".initcall6.init", align 4
@__exitcall_cw1200_sdio_exit = internal global ptr @cw1200_sdio_exit, section ".exitcall.exit", align 4
@sagrad_109x_evk_platform_data = internal global { %struct.cw1200_platform_data_sdio, [32 x i8] } { %struct.cw1200_platform_data_sdio { i16 -27136, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @.str }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdd_sagrad_1091_1098.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_wlan_sdio\00", [47 x i8] zeroinitializer }, align 32
@cw1200_sdio_ids = internal constant { [2 x %struct.sdio_device_id], [40 x i8] } { [2 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 32, i16 8832, i32 0 }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cw1200_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cw1200_sdio_suspend, ptr @cw1200_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cw1200_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016cw1200_wlan_sdio: Probe called\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_sdio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/st/cw1200/cw1200_sdio.c\00", [51 x i8] zeroinitializer }, align 32
@cw1200_sdio_probe._entry_ptr = internal global ptr @cw1200_sdio_probe._entry, section ".printk_index", align 4
@cw1200_sdio_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Can't allocate SDIO hwbus_priv.\0A\00", [61 x i8] zeroinitializer }, align 32
@cw1200_sdio_probe._entry_ptr.7 = internal global ptr @cw1200_sdio_probe._entry.5, section ".printk_index", align 4
@cw1200_sdio_hwbus_ops = internal constant { %struct.hwbus_ops, [40 x i8] } { %struct.hwbus_ops { ptr @cw1200_sdio_memcpy_fromio, ptr @cw1200_sdio_memcpy_toio, ptr @cw1200_sdio_lock, ptr @cw1200_sdio_unlock, ptr @cw1200_sdio_align_size, ptr @cw1200_sdio_pm }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cw1200_sdio_irq_subscribe.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cw1200_sdio_irq_subscribe\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SW IRQ subscribe\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cw1200_wlan_irq\00", [16 x i8] zeroinitializer }, align 32
@cw1200_sdio_irq_unsubscribe.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cw1200_sdio_irq_unsubscribe\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SW IRQ unsubscribe\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_sdio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Error setting SDIO pm flags: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_sdio_suspend\00", [44 x i8] zeroinitializer }, align 32
@cw1200_sdio_suspend._entry_ptr = internal global ptr @cw1200_sdio_suspend._entry, section ".printk_index", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_wlan_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_wlan_powerup\00", [44 x i8] zeroinitializer }, align 32
@cw1200_sdio_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013power_ctrl() failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw1200_sdio_on\00", [17 x i8] zeroinitializer }, align 32
@cw1200_sdio_on._entry_ptr = internal global ptr @cw1200_sdio_on._entry, section ".printk_index", align 4
@cw1200_sdio_on._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013clk_ctrl() failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@cw1200_sdio_on._entry_ptr.21 = internal global ptr @cw1200_sdio_on._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"global_plat_data\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 39, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"sdio_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 367, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"sagrad_109x_evk_platform_data\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 32, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 35, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 368, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"cw1200_sdio_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 52, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"cw1200_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 361, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 276, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 284, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"cw1200_sdio_hwbus_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 260, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 153, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 139, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 168, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 351, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 201, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 205, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 214, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [48 x i8] c"../drivers/net/wireless/st/cw1200/cw1200_sdio.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 222, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__exitcall_cw1200_sdio_exit, ptr @__initcall__kmod_cw1200_wlan_sdio__377_416_cw1200_sdio_init6, ptr @cw1200_sdio_exit, ptr @cw1200_sdio_on._entry, ptr @cw1200_sdio_on._entry.19, ptr @cw1200_sdio_on._entry_ptr, ptr @cw1200_sdio_on._entry_ptr.21, ptr @cw1200_sdio_probe._entry, ptr @cw1200_sdio_probe._entry.5, ptr @cw1200_sdio_probe._entry_ptr, ptr @cw1200_sdio_probe._entry_ptr.7, ptr @cw1200_sdio_suspend._entry, ptr @cw1200_sdio_suspend._entry_ptr, ptr @global_plat_data, ptr @sdio_driver, ptr @sagrad_109x_evk_platform_data, ptr @.str, ptr @.str.1, ptr @cw1200_sdio_ids, ptr @cw1200_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @cw1200_sdio_hwbus_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_plat_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sagrad_109x_evk_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_hwbus_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdio_on._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cw1200_sdio_set_platform_data(ptr noundef %pdata) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %pdata, ptr @global_plat_data, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_sdio_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @global_plat_data, align 4
  tail call void @sdio_unregister_driver(ptr noundef nonnull @sdio_driver) #8
  tail call fastcc void @cw1200_sdio_off(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_sdio_off(ptr noundef %pdata) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %pdata, i32 0, i32 3
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 30) #8
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset, align 4
  tail call void @gpio_free(i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %power_ctrl = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %pdata, i32 0, i32 6
  %4 = ptrtoint ptr %power_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_ctrl, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef %pdata, i1 noundef zeroext false) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %clk_ctrl = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %pdata, i32 0, i32 7
  %6 = ptrtoint ptr %clk_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ctrl, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %7(ptr noundef %pdata, i1 noundef zeroext false) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @global_plat_data, align 4
  %reset.i = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @gpio_request(i32 noundef %2, ptr noundef nonnull @.str.15) #8
  %3 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %4) #8
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %powerup.i = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %0, i32 0, i32 4
  %5 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %powerup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 @gpio_request(i32 noundef %6, ptr noundef nonnull @.str.16) #8
  %7 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %powerup.i, align 4
  %call.i70.i = tail call ptr @gpio_to_desc(i32 noundef %8) #8
  %call1.i71.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i70.i, i32 noundef 0) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not.i = icmp eq i32 %10, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %if.end10.i.if.then15.i_crit_edge

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %11 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %powerup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not.i = icmp eq i32 %12, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.end10.i.if.then15.i_crit_edge
  tail call void @msleep(i32 noundef 10) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %lor.lhs.false.i.if.end16.i_crit_edge
  %power_ctrl.i = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %0, i32 0, i32 6
  %13 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %power_ctrl.i, align 4
  %tobool17.not.i = icmp eq ptr %14, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then18.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then18.i:                                      ; preds = %if.end16.i
  %call20.i = tail call i32 %14(ptr noundef %0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then18.i.if.end25.i_crit_edge, label %if.then18.i.err.sink.split_crit_edge

if.then18.i.err.sink.split_crit_edge:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.sink.split

if.then18.i.if.end25.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then18.i.if.end25.i_crit_edge, %if.end16.i.if.end25.i_crit_edge
  %clk_ctrl.i = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %0, i32 0, i32 7
  %15 = ptrtoint ptr %clk_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ctrl.i, align 4
  %tobool26.not.i = icmp eq ptr %16, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end37.i_crit_edge, label %if.then27.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then27.i:                                      ; preds = %if.end25.i
  %call29.i = tail call i32 %16(ptr noundef %0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %if.then27.i.err.sink.split_crit_edge

if.then27.i.err.sink.split_crit_edge:             ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.sink.split

if.end36.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 10) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end36.i, %if.end25.i.if.end37.i_crit_edge
  %17 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %powerup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool39.not.i = icmp eq i32 %18, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end42.i_crit_edge, label %if.then40.i

if.end37.i.if.end42.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i72.i = tail call ptr @gpio_to_desc(i32 noundef %18) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i72.i, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 250) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end42.i_crit_edge
  %19 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool44.not.i = icmp eq i32 %20, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end_crit_edge, label %if.then45.i

if.end42.i.if.end_crit_edge:                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i73.i = tail call ptr @gpio_to_desc(i32 noundef %20) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i73.i, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 50) #8
  br label %if.end

if.end:                                           ; preds = %if.then45.i, %if.end42.i.if.end_crit_edge
  %call1 = tail call i32 @sdio_register_driver(ptr noundef nonnull @sdio_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err.sink.split:                                   ; preds = %if.then27.i.err.sink.split_crit_edge, %if.then18.i.err.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.then18.i.err.sink.split_crit_edge ], [ @.str.20, %if.then27.i.err.sink.split_crit_edge ]
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #11
  br label %err

err:                                              ; preds = %err.sink.split, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_crit_edge ], [ -1, %err.sink.split ]
  tail call fastcc void @cw1200_sdio_off(ptr noundef %0)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 8
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks, align 8
  %or = or i32 %6, 1
  store i32 %or, ptr %quirks, align 8
  %7 = load ptr, ptr @global_plat_data, align 4
  %pdata = getelementptr inbounds %struct.hwbus_priv, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pdata, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %func, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  tail call void @sdio_claim_host(ptr noundef %func) #8
  %call10 = tail call i32 @sdio_enable_func(ptr noundef %func) #8
  tail call void @sdio_release_host(ptr noundef %func) #8
  tail call fastcc void @cw1200_sdio_irq_subscribe(ptr noundef nonnull %call7.i.i)
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %conv = zext i16 %14 to i32
  %macaddr = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %macaddr, align 4
  %sdd_file = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %12, i32 0, i32 9
  %17 = ptrtoint ptr %sdd_file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdd_file, align 4
  %have_5ghz = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %have_5ghz to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %have_5ghz, align 2, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17 = icmp ne i8 %20, 0
  %call18 = tail call i32 @cw1200_core_probe(ptr noundef nonnull @cw1200_sdio_hwbus_ops, ptr noundef nonnull %call7.i.i, ptr noundef %dev, ptr noundef %core, i32 noundef %conv, ptr noundef %16, ptr noundef %18, i1 noundef zeroext %tobool17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end8.cleanup_crit_edge, label %if.then20

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cw1200_sdio_irq_unsubscribe(ptr noundef nonnull %call7.i.i)
  tail call void @sdio_claim_host(ptr noundef %func) #8
  %call22 = tail call i32 @sdio_disable_func(ptr noundef %func) #8
  tail call void @sdio_release_host(ptr noundef %func) #8
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end8.cleanup_crit_edge, %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end5 ], [ -19, %entry.cleanup_crit_edge ], [ %call18, %if.then20 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_sdio_disconnect(ptr noundef %func) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  tail call fastcc void @cw1200_sdio_irq_unsubscribe(ptr noundef nonnull %1)
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_core_release(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %core, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @sdio_claim_host(ptr noundef %func) #8
  %call6 = tail call i32 @sdio_disable_func(ptr noundef %func) #8
  tail call void @sdio_release_host(ptr noundef %func) #8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_sdio_irq_subscribe(ptr noundef %self) unnamed_addr #4 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_sdio_irq_subscribe.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_sdio_irq_subscribe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_sdio_irq_subscribe.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #8
  %pdata = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %irq = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #8
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i, align 4, !annotation !76
  %7 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self, align 4
  %call.i = call zeroext i8 @sdio_f0_readb(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %ret.i) #8
  %9 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end22.critedge.i, label %if.then4.err.i_crit_edge, !prof !77

if.then4.err.i_crit_edge:                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end22.critedge.i:                              ; preds = %if.then4
  %11 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self, align 4
  %num.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i, align 4
  %shl.i = shl nuw i32 1, %14
  %15 = trunc i32 %shl.i to i8
  %16 = or i8 %call.i, %15
  %conv27.i = or i8 %16, 1
  call void @sdio_f0_writeb(ptr noundef %12, i8 noundef zeroext %conv27.i, i32 noundef 4, ptr noundef nonnull %ret.i) #8
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not.i = icmp eq i32 %18, 0
  br i1 %tobool30.not.i, label %if.end62.critedge.i, label %if.end22.critedge.i.err.i_crit_edge, !prof !77

if.end22.critedge.i.err.i_crit_edge:              ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end62.critedge.i:                              ; preds = %if.end22.critedge.i
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata, align 4
  %irq.i = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 4
  %call.i.i = call i32 @irq_set_irq_wake(i32 noundef %22, i32 noundef 1) #8
  %23 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool65.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool65.not.i, label %if.end97.critedge.i, label %if.end62.critedge.i.err.i_crit_edge, !prof !77

if.end62.critedge.i.err.i_crit_edge:              ; preds = %if.end62.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end97.critedge.i:                              ; preds = %if.end62.critedge.i
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 4
  %irq99.i = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %irq99.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq99.i, align 4
  %call100.i = call i32 @request_threaded_irq(i32 noundef %27, ptr noundef nonnull @cw1200_gpio_hardirq, ptr noundef nonnull @cw1200_gpio_irq, i32 noundef 8196, ptr noundef nonnull @.str.10, ptr noundef %self) #8
  %28 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call100.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool102.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool102.not.i, label %if.end97.critedge.i.cw1200_request_irq.exit_crit_edge, label %if.end97.critedge.i.err.i_crit_edge, !prof !77

if.end97.critedge.i.err.i_crit_edge:              ; preds = %if.end97.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end97.critedge.i.cw1200_request_irq.exit_crit_edge: ; preds = %if.end97.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_request_irq.exit

err.i:                                            ; preds = %if.end97.critedge.i.err.i_crit_edge, %if.end62.critedge.i.err.i_crit_edge, %if.end22.critedge.i.err.i_crit_edge, %if.then4.err.i_crit_edge
  %.sink.i = phi i32 [ 118, %if.then4.err.i_crit_edge ], [ 128, %if.end22.critedge.i.err.i_crit_edge ], [ 132, %if.end62.critedge.i.err.i_crit_edge ], [ 140, %if.end97.critedge.i.err.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #8
  br label %cw1200_request_irq.exit

cw1200_request_irq.exit:                          ; preds = %err.i, %if.end97.critedge.i.cw1200_request_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #8
  br label %if.end8

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %self, align 4
  %call7 = tail call i32 @sdio_claim_irq(ptr noundef %30, ptr noundef nonnull @cw1200_sdio_irq_handler) #8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %cw1200_request_irq.exit
  %31 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %self, align 4
  call void @sdio_release_host(ptr noundef %32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_core_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_sdio_irq_unsubscribe(ptr noundef %self) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_sdio_irq_unsubscribe.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_sdio_irq_unsubscribe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_sdio_irq_unsubscribe.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdata = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %irq = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %irq9 = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq9, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %self) #8
  br label %if.end14

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self, align 4
  tail call void @sdio_claim_host(ptr noundef %9) #8
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %self, align 4
  %call12 = tail call i32 @sdio_release_irq(ptr noundef %11) #8
  %12 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %self, align 4
  tail call void @sdio_release_host(ptr noundef %13) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_sdio_irq_handler(ptr nocapture noundef readonly %func) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_irq_handler(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cw1200_gpio_hardirq(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_gpio_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  tail call void @cw1200_irq_handler(ptr noundef %5) #8
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  tail call void @sdio_release_host(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_sdio_lock(ptr nocapture noundef readonly %self) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_irq_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_sdio_unlock(ptr nocapture noundef readonly %self) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  tail call void @sdio_release_host(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_memcpy_fromio(ptr nocapture noundef readonly %self, i32 noundef %addr, ptr noundef %dst, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %call = tail call i32 @sdio_memcpy_fromio(ptr noundef %1, ptr noundef %dst, i32 noundef %addr, i32 noundef %count) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_memcpy_toio(ptr nocapture noundef readonly %self, i32 noundef %addr, ptr noundef %src, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %call = tail call i32 @sdio_memcpy_toio(ptr noundef %1, i32 noundef %addr, ptr noundef %src, i32 noundef %count) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_align_size(ptr nocapture noundef readonly %self, i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %no_nptb = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %no_nptb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_nptb, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %size, -1
  %or = or i32 %sub, 511
  %add = add i32 %or, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 4
  %call = tail call i32 @sdio_align_size(ptr noundef %5, i32 noundef %size) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %size.addr.0 = phi i32 [ %add, %if.then ], [ %call, %if.else ]
  ret i32 %size.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_pm(ptr nocapture noundef readonly %self, i1 noundef zeroext %suspend) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %irq = getelementptr inbounds %struct.cw1200_platform_data_sdio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i1 %suspend to i32
  %call = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_align_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_core_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_sdio_suspend(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call2 = tail call i32 @cw1200_can_suspend(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %call3 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %call3, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cw1200_sdio_resume(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_can_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author371, !1, !"__UNIQUE_ID_author371", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description372, !3, !"__UNIQUE_ID_description372", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file373, !5, !"__UNIQUE_ID_file373", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license374, !5, !"__UNIQUE_ID_license374", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cw1200_wlan_sdio__377_416_cw1200_sdio_init6, !8, !"__initcall__kmod_cw1200_wlan_sdio__377_416_cw1200_sdio_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 416, i32 1}
!9 = !{ptr @__exitcall_cw1200_sdio_exit, !10, !"__exitcall_cw1200_sdio_exit", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 417, i32 1}
!11 = !{ptr @global_plat_data, !12, !"global_plat_data", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 39, i32 42}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 35, i32 14}
!15 = !{ptr @sagrad_109x_evk_platform_data, !16, !"sagrad_109x_evk_platform_data", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 32, i32 41}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 368, i32 11}
!19 = !{ptr @sdio_driver, !20, !"sdio_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 367, i32 27}
!21 = !{ptr @cw1200_sdio_ids, !22, !"cw1200_sdio_ids", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 52, i32 36}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 276, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cw1200_sdio_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cw1200_sdio_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 284, i32 3}
!31 = !{ptr @cw1200_sdio_probe._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cw1200_sdio_probe._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 153, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cw1200_sdio_irq_subscribe.__UNIQUE_ID_ddebug375, !34, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 139, i32 9}
!39 = !{ptr @cw1200_sdio_hwbus_ops, !40, !"cw1200_sdio_hwbus_ops", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 260, i32 31}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 168, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cw1200_sdio_irq_unsubscribe.__UNIQUE_ID_ddebug376, !42, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!45 = !{ptr @cw1200_pm_ops, !46, !"cw1200_pm_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 361, i32 32}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 351, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cw1200_sdio_suspend._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cw1200_sdio_suspend._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 201, i32 30}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 205, i32 32}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 214, i32 4}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cw1200_sdio_on._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @cw1200_sdio_on._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/st/cw1200/cw1200_sdio.c", i32 222, i32 4}
!63 = !{ptr @cw1200_sdio_on._entry.19, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cw1200_sdio_on._entry_ptr.21, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{i64 2148960850, i64 2148960855, i64 2148960868, i64 2148960912, i64 2148960946, i64 2148960967}
!76 = !{!"auto-init"}
!77 = !{!"branch_weights", i32 2000, i32 1}
