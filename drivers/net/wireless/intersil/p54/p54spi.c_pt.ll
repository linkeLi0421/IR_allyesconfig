; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/p54spi.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/p54spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.p54s_priv = type { %struct.p54_common, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.completion, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.132, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.p54_hdr = type { i16, i16, i32, i16, i8, i8, [0 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__UNIQUE_ID_firmware350 = internal constant [25 x i8] c"p54spi.firmware=3826.arm\00", section ".modinfo", align 1
@__param_str_p54spi_gpio_power = internal constant [25 x i8] c"p54spi.p54spi_gpio_power\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@p54spi_gpio_power = internal global { i32, [28 x i8] } { i32 97, [28 x i8] zeroinitializer }, align 32
@__param_p54spi_gpio_power = internal constant %struct.kernel_param { ptr @__param_str_p54spi_gpio_power, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @p54spi_gpio_power } }, section "__param", align 4
@__UNIQUE_ID_p54spi_gpio_powertype351 = internal constant [38 x i8] c"p54spi.parmtype=p54spi_gpio_power:int\00", section ".modinfo", align 1
@__UNIQUE_ID_p54spi_gpio_power352 = internal constant [57 x i8] c"p54spi.parm=p54spi_gpio_power:gpio number for power line\00", section ".modinfo", align 1
@__param_str_p54spi_gpio_irq = internal constant [23 x i8] c"p54spi.p54spi_gpio_irq\00", align 1
@p54spi_gpio_irq = internal global { i32, [28 x i8] } { i32 87, [28 x i8] zeroinitializer }, align 32
@__param_p54spi_gpio_irq = internal constant %struct.kernel_param { ptr @__param_str_p54spi_gpio_irq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @p54spi_gpio_irq } }, section "__param", align 4
@__UNIQUE_ID_p54spi_gpio_irqtype353 = internal constant [36 x i8] c"p54spi.parmtype=p54spi_gpio_irq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_p54spi_gpio_irq354 = internal constant [53 x i8] c"p54spi.parm=p54spi_gpio_irq:gpio number for irq line\00", section ".modinfo", align 1
@__initcall__kmod_p54spi__358_701_p54spi_driver_init6 = internal global ptr @p54spi_driver_init, section ".initcall6.init", align 4
@p54spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @p54spi_probe, ptr @p54spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_p54spi_driver_exit = internal global ptr @p54spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file359 = internal constant [53 x i8] c"p54spi.file=drivers/net/wireless/intersil/p54/p54spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [19 x i8] c"p54spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author361 = internal constant [52 x i8] c"p54spi.author=Christian Lamparter <chunkeey@web.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias362 = internal constant [25 x i8] c"p54spi.alias=spi:cx3110x\00", section ".modinfo", align 1
@__UNIQUE_ID_alias363 = internal constant [24 x i8] c"p54spi.alias=spi:p54spi\00", section ".modinfo", align 1
@__UNIQUE_ID_alias364 = internal constant [26 x i8] c"p54spi.alias=spi:stlc45xx\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p54spi\00", [25 x i8] zeroinitializer }, align 32
@p54spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not alloc ieee80211_hw\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p54spi_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intersil/p54/p54spi.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54spi_probe._entry_ptr = internal global ptr @p54spi_probe._entry, section ".printk_index", align 4
@p54spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_setup failed\00", [47 x i8] zeroinitializer }, align 32
@p54spi_probe._entry_ptr.8 = internal global ptr @p54spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p54spi power\00", [19 x i8] zeroinitializer }, align 32
@p54spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"power GPIO request failed: %d\00", [34 x i8] zeroinitializer }, align 32
@p54spi_probe._entry_ptr.12 = internal global ptr @p54spi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"p54spi irq\00", [21 x i8] zeroinitializer }, align 32
@p54spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"irq GPIO request failed: %d\00", [36 x i8] zeroinitializer }, align 32
@p54spi_probe._entry_ptr.16 = internal global ptr @p54spi_probe._entry.14, section ".printk_index", align 4
@p54spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request_irq() failed\00", [43 x i8] zeroinitializer }, align 32
@p54spi_probe._entry_ptr.19 = internal global ptr @p54spi_probe._entry.17, section ".printk_index", align 4
@p54spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&priv->work)\00", [33 x i8] zeroinitializer }, align 32
@p54spi_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@p54spi_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@p54spi_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx request of zero bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p54spi_rx\00", [22 x i8] zeroinitializer }, align 32
@p54spi_rx._entry_ptr = internal global ptr @p54spi_rx._entry, section ".printk_index", align 4
@p54spi_rx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not alloc skb\00", [44 x i8] zeroinitializer }, align 32
@p54spi_rx._entry_ptr.29 = internal global ptr @p54spi_rx._entry.27, section ".printk_index", align 4
@p54spi_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INT_READY timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p54spi_wakeup\00", [18 x i8] zeroinitializer }, align 32
@p54spi_wakeup._entry_ptr = internal global ptr @p54spi_wakeup._entry, section ".printk_index", align 4
@p54spi_tx_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WR_READY timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p54spi_tx_frame\00", [16 x i8] zeroinitializer }, align 32
@p54spi_tx_frame._entry_ptr = internal global ptr @p54spi_tx_frame._entry, section ".printk_index", align 4
@p54spi_spi_write_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"spi_write_dma not allowed to DMA write.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"p54spi_spi_write_dma\00", [43 x i8] zeroinitializer }, align 32
@p54spi_spi_write_dma._entry_ptr = internal global ptr @p54spi_spi_write_dma._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@p54spi_op_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 544, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware boot failed\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p54spi_op_start\00", [16 x i8] zeroinitializer }, align 32
@p54spi_op_start._entry_ptr = internal global ptr @p54spi_op_start._entry, section ".printk_index", align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3826.arm\00", [23 x i8] zeroinitializer }, align 32
@p54spi_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request_firmware() failed: %d\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"p54spi_request_firmware\00", [40 x i8] zeroinitializer }, align 32
@p54spi_request_firmware._entry_ptr = internal global ptr @p54spi_request_firmware._entry, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"3826.eeprom\00", [20 x i8] zeroinitializer }, align 32
@p54spi_request_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 186, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"loading default eeprom...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"p54spi_request_eeprom\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@p54spi_request_eeprom._entry_ptr = internal global ptr @p54spi_request_eeprom._entry, section ".printk_index", align 4
@p54spi_eeprom = internal global { [3706 x i8], [902 x i8] } { [3706 x i8] c"GMU\AA\00\00\00\00\00\00\00\00\04\00\01\01\00\02\EE\C0\FF\EE\06\00\01\10\00\00\0F\00\85\00\01\00\1F\00\03\00\02\10\03 \00C\0D\00\07\10\10\00\00\00 \00\00\000\00\00\001\00\00\002\00\00\00@\00\00\00\03\00\08\100\00\00\00\03\00\00\11\08\08\08\08\0A\00\FF\CA\01\00\0A\00\00\00\0A\00\85\09\0A\01r\FE\1A\00\00\00\10\06]\B0\0D\00\EE\00\00\00\16\0Cl\09\10\01\9A\84\AA\8A\AA\8A\AA\8A\AA\8A<\B6<\B6<\B6<\B6<\B6<\B6<\B6<\B6\F0\00\94l\99\82\99\82\99\82\99\82+\AE+\AE+\AE+\AE+\AE+\AE+\AE+\AE\D0\00\AAZ\88z\88z\88z\88z\1A\A6\1A\A6\1A\A6\1A\A6\1A\A6\1A\A6\1A\A6\1A\A6\A0\00\F3Gnnnnnnnn\00\9A\00\9A\00\9A\00\9A\00\9A\00\9A\00\9A\00\9AP\00Y6CZCZCZCZ\D5\85\D5\85\D5\85\D5\85\D5\85\D5\85\D5\85\D5\85\00\00\E4-\18F\18F\18F\18F\AAq\AAq\AAq\AAq\AAq\AAq\AAq\AAq\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00q\09\10\01\B9\83}\8A}\8A}\8A}\8A\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\F0\00.lh\82h\82h\82h\82\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\D0\00\8DZRzRzRzRz\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\A0\00\0AH2n2n2n2n\C4\99\C4\99\C4\99\C4\99\C4\99\C4\99\C4\99\C4\99P\00|6\FCY\FCY\FCY\FCY\8E\85\8E\85\8E\85\8E\85\8E\85\8E\85\8E\85\8E\85\00\00\F5-\C6E\C6E\C6E\C6EXqXqXqXqXqXqXqXq\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00v\09\10\01\B9\83}\8A}\8A}\8A}\8A\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\0F\B6\F0\00.lh\82h\82h\82h\82\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\FA\AD\D0\00\8DZRzRzRzRz\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\E4\A5\A0\00\0AH2n2n2n2n\C4\99\C4\99\C4\99\C4\99\C4\99\C4\99\C4\99\C4\99P\00|6\FCY\FCY\FCY\FCY\8E\85\8E\85\8E\85\8E\85\8E\85\8E\85\8E\85\8E\85\00\00\F5-\C6E\C6E\C6E\C6EXqXqXqXqXqXqXqXq\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00{\09\10\01H\83g\8Ag\8Ag\8Ag\8A\F9\B5\F9\B5\F9\B5\F9\B5\F9\B5\F9\B5\F9\B5\F9\B5\F0\00\FBkP\82P\82P\82P\82\E2\AD\E2\AD\E2\AD\E2\AD\E2\AD\E2\AD\E2\AD\E2\AD\D0\00~Z8z8z8z8z\CA\A5\CA\A5\CA\A5\CA\A5\CA\A5\CA\A5\CA\A5\CA\A5\A0\00\15H\14n\14n\14n\14n\A6\99\A6\99\A6\99\A6\99\A6\99\A6\99\A6\99\A6\99P\00\8E6\D9Y\D9Y\D9Y\D9Yk\85k\85k\85k\85k\85k\85k\85k\85\00\00\FE-\9DE\9DE\9DE\9DE/q/q/q/q/q/q/q/q\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\80\09\10\01\D7\82Q\8AQ\8AQ\8AQ\8A\E3\B5\E3\B5\E3\B5\E3\B5\E3\B5\E3\B5\E3\B5\E3\B5\F0\00\C8k7\827\827\827\82\C9\AD\C9\AD\C9\AD\C9\AD\C9\AD\C9\AD\C9\AD\C9\AD\D0\00oZ\1Dz\1Dz\1Dz\1Dz\AF\A5\AF\A5\AF\A5\AF\A5\AF\A5\AF\A5\AF\A5\AF\A5\A0\00 H\F6m\F6m\F6m\F6m\88\99\88\99\88\99\88\99\88\99\88\99\88\99\88\99P\00\9F6\B5Y\B5Y\B5Y\B5YG\85G\85G\85G\85G\85G\85G\85G\85\00\00\06.tEtEtEtE\06q\06q\06q\06q\06q\06q\06q\06q\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\85\09\10\01g\82:\8A:\8A:\8A:\8A\CC\B5\CC\B5\CC\B5\CC\B5\CC\B5\CC\B5\CC\B5\CC\B5\F0\00\95k\1F\82\1F\82\1F\82\1F\82\B1\AD\B1\AD\B1\AD\B1\AD\B1\AD\B1\AD\B1\AD\B1\AD\D0\00aZ\02z\02z\02z\02z\94\A5\94\A5\94\A5\94\A5\94\A5\94\A5\94\A5\94\A5\A0\00,H\D8m\D8m\D8m\D8mj\99j\99j\99j\99j\99j\99j\99j\99P\00\B16\92Y\92Y\92Y\92Y$\85$\85$\85$\85$\85$\85$\85$\85\00\00\0F.KEKEKEKE\DDp\DDp\DDp\DDp\DDp\DDp\DDp\DDp\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\8A\09\10\01\F6\81$\8A$\8A$\8A$\8A\B6\B5\B6\B5\B6\B5\B6\B5\B6\B5\B6\B5\B6\B5\B6\B5\F0\00bk\06\82\06\82\06\82\06\82\98\AD\98\AD\98\AD\98\AD\98\AD\98\AD\98\AD\98\AD\D0\00RZ\E7y\E7y\E7y\E7yy\A5y\A5y\A5y\A5y\A5y\A5y\A5y\A5\A0\007H\BAm\BAm\BAm\BAmL\99L\99L\99L\99L\99L\99L\99L\99P\00\C26nYnYnYnY\00\85\00\85\00\85\00\85\00\85\00\85\00\85\00\85\00\00\17.\22E\22E\22E\22E\B4p\B4p\B4p\B4p\B4p\B4p\B4p\B4p\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\8F\09\10\01u\83a\8Aa\8Aa\8Aa\8A\F3\B5\F3\B5\F3\B5\F3\B5\F3\B5\F3\B5\F3\B5\F3\B5\F0\00Kl?\82?\82?\82?\82\D1\AD\D1\AD\D1\AD\D1\AD\D1\AD\D1\AD\D1\AD\D1\AD\D0\00\DAZ\1Cz\1Cz\1Cz\1Cz\AE\A5\AE\A5\AE\A5\AE\A5\AE\A5\AE\A5\AE\A5\AE\A5\A0\00mH\E9m\E9m\E9m\E9m{\99{\99{\99{\99{\99{\99{\99{\99P\00\C66\92Y\92Y\92Y\92Y$\85$\85$\85$\85$\85$\85$\85$\85\00\00\15.<E<E<E<E\CEp\CEp\CEp\CEp\CEp\CEp\CEp\CEp\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\94\09\10\01\F4\84\9E\8A\9E\8A\9E\8A\9E\8A0\B60\B60\B60\B60\B60\B60\B60\B6\F0\004mw\82w\82w\82w\82\09\AE\09\AE\09\AE\09\AE\09\AE\09\AE\09\AE\09\AE\D0\00b[PzPzPzPz\E2\A5\E2\A5\E2\A5\E2\A5\E2\A5\E2\A5\E2\A5\E2\A5\A0\00\A2H\17n\17n\17n\17n\A9\99\A9\99\A9\99\A9\99\A9\99\A9\99\A9\99\A9\99P\00\C96\B7Y\B7Y\B7Y\B7YI\85I\85I\85I\85I\85I\85I\85I\85\00\00\12.WEWEWEWE\E9p\E9p\E9p\E9p\E9p\E9p\E9p\E9p\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\99\09\10\01t\86\DB\8A\DB\8A\DB\8A\DB\8Am\B6m\B6m\B6m\B6m\B6m\B6m\B6m\B6\F0\00\1En\B0\82\B0\82\B0\82\B0\82B\AEB\AEB\AEB\AEB\AEB\AEB\AEB\AE\D0\00\EB[\85z\85z\85z\85z\17\A6\17\A6\17\A6\17\A6\17\A6\17\A6\17\A6\17\A6\A0\00\D8HFnFnFnFn\D8\99\D8\99\D8\99\D8\99\D8\99\D8\99\D8\99\D8\99P\00\CD6\DBY\DBY\DBY\DBYm\85m\85m\85m\85m\85m\85m\85m\85\00\00\10.qEqEqEqE\03q\03q\03q\03q\03q\03q\03q\03q\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\9E\09\10\01\F3\87\17\8B\17\8B\17\8B\17\8B\A9\B6\A9\B6\A9\B6\A9\B6\A9\B6\A9\B6\A9\B6\A9\B6\F0\00\07o\E9\82\E9\82\E9\82\E9\82{\AE{\AE{\AE{\AE{\AE{\AE{\AE{\AE\D0\00s\\\BAz\BAz\BAz\BAzL\A6L\A6L\A6L\A6L\A6L\A6L\A6L\A6\A0\00\0DItntntntn\06\9A\06\9A\06\9A\06\9A\06\9A\06\9A\06\9A\06\9AP\00\D16\FFY\FFY\FFY\FFY\91\85\91\85\91\85\91\85\91\85\91\85\91\85\91\85\00\00\0E.\8BE\8BE\8BE\8BE\1Dq\1Dq\1Dq\1Dq\1Dq\1Dq\1Dq\1Dq\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\A3\09\10\01r\89T\8BT\8BT\8BT\8B\E6\B6\E6\B6\E6\B6\E6\B6\E6\B6\E6\B6\E6\B6\E6\B6\F0\00\F0o!\83!\83!\83!\83\B3\AE\B3\AE\B3\AE\B3\AE\B3\AE\B3\AE\B3\AE\B3\AE\D0\00\FB\\\EEz\EEz\EEz\EEz\80\A6\80\A6\80\A6\80\A6\80\A6\80\A6\80\A6\80\A6\A0\00CI\A3n\A3n\A3n\A3n5\9A5\9A5\9A5\9A5\9A5\9A5\9A5\9AP\00\D46$Z$Z$Z$Z\B6\85\B6\85\B6\85\B6\85\B6\85\B6\85\B6\85\B6\85\00\00\0B.\A6E\A6E\A6E\A6E8q8q8q8q8q8q8q8q\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\A8\09\10\01\F1\8A\91\8B\91\8B\91\8B\91\8B#\B7#\B7#\B7#\B7#\B7#\B7#\B7#\B7\F0\00\D9pZ\83Z\83Z\83Z\83\EC\AE\EC\AE\EC\AE\EC\AE\EC\AE\EC\AE\EC\AE\EC\AE\D0\00\83]#{#{#{#{\B5\A6\B5\A6\B5\A6\B5\A6\B5\A6\B5\A6\B5\A6\B5\A6\A0\00xI\D1n\D1n\D1n\D1nc\9Ac\9Ac\9Ac\9Ac\9Ac\9Ac\9Ac\9AP\00\D86HZHZHZHZ\DA\85\DA\85\DA\85\DA\85\DA\85\DA\85\DA\85\DA\85\00\00\09.\C0E\C0E\C0E\C0ERqRqRqRqRqRqRqRq\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\80\80\00\AE\00\EF\BE\0D\00\1A\00\00\00R\01l\09\10\01\10\01\10\01\10\01\E0\00\E0\00\E0\00\E0\00\D0\00\D0\00\D0\00\D0\00q\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00v\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00{\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\80\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\85\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\8A\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\8F\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\94\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\99\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\9E\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\A3\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00\A8\09\10\01\10\01\10\01\10\01\F0\00\F0\00\F0\00\F0\00\D0\00\D0\00\D0\00\D0\00B\00\06\19l\09&\00\F8\FF\F7\FF\FF\00q\09&\00\F8\FF\F7\FF\FF\00v\09&\00\F8\FF\F7\FF\FF\00{\09&\00\F8\FF\F7\FF\FF\00\80\09%\00\F7\FF\F7\FF\FF\00\85\09%\00\F7\FF\F7\FF\FF\00\8A\09%\00\F7\FF\F7\FF\FF\00\8F\09%\00\F7\FF\F7\FF\FF\00\94\09%\00\F7\FF\F7\FF\FF\00\99\09%\00\F5\FF\F9\FF\00\01\9E\09%\00\F5\FF\F9\FF\00\01\A3\09%\00\F5\FF\F9\FF\00\01\A8\09%\00\F5\FF\F9\FF\00\01\02\00\00\00\B6\04", [902 x i8] zeroinitializer }, align 32
@p54spi_request_eeprom._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 193, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"loading user eeprom...\0A\00", [40 x i8] zeroinitializer }, align 32
@p54spi_request_eeprom._entry_ptr.48 = internal global ptr @p54spi_request_eeprom._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"p54spi_gpio_power\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 37, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"p54spi_gpio_irq\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 41, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"p54spi_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 692, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 694, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 592, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 606, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 610, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 612, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 616, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 618, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 629, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 637, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 640, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 641, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 345, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 357, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 293, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 406, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 138, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 544, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 158, i32 42 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 161, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 183, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 186, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"p54spi_eeprom\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [53 x i8] c"../drivers/net/wireless/intersil/p54/p54spi_eeprom.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 16, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [46 x i8] c"../drivers/net/wireless/intersil/p54/p54spi.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 193, i32 3 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_alias362, ptr @__UNIQUE_ID_alias363, ptr @__UNIQUE_ID_alias364, ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_license360, ptr @__UNIQUE_ID_p54spi_gpio_irq354, ptr @__UNIQUE_ID_p54spi_gpio_irqtype353, ptr @__UNIQUE_ID_p54spi_gpio_power352, ptr @__UNIQUE_ID_p54spi_gpio_powertype351, ptr @__exitcall_p54spi_driver_exit, ptr @__initcall__kmod_p54spi__358_701_p54spi_driver_init6, ptr @__param_p54spi_gpio_irq, ptr @__param_p54spi_gpio_power, ptr @p54spi_driver_exit, ptr @p54spi_op_start._entry, ptr @p54spi_op_start._entry_ptr, ptr @p54spi_probe._entry, ptr @p54spi_probe._entry.10, ptr @p54spi_probe._entry.14, ptr @p54spi_probe._entry.17, ptr @p54spi_probe._entry.6, ptr @p54spi_probe._entry_ptr, ptr @p54spi_probe._entry_ptr.12, ptr @p54spi_probe._entry_ptr.16, ptr @p54spi_probe._entry_ptr.19, ptr @p54spi_probe._entry_ptr.8, ptr @p54spi_request_eeprom._entry, ptr @p54spi_request_eeprom._entry.46, ptr @p54spi_request_eeprom._entry_ptr, ptr @p54spi_request_eeprom._entry_ptr.48, ptr @p54spi_request_firmware._entry, ptr @p54spi_request_firmware._entry_ptr, ptr @p54spi_rx._entry, ptr @p54spi_rx._entry.27, ptr @p54spi_rx._entry_ptr, ptr @p54spi_rx._entry_ptr.29, ptr @p54spi_spi_write_dma._entry, ptr @p54spi_spi_write_dma._entry_ptr, ptr @p54spi_tx_frame._entry, ptr @p54spi_tx_frame._entry_ptr, ptr @p54spi_wakeup._entry, ptr @p54spi_wakeup._entry_ptr, ptr @p54spi_gpio_power, ptr @p54spi_gpio_irq, ptr @p54spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @p54spi_probe.__key, ptr @.str.20, ptr @p54spi_probe.__key.21, ptr @.str.22, ptr @p54spi_probe.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_completion.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @p54spi_eeprom, ptr @.str.47], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_gpio_power to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_gpio_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_rx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_tx_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_spi_write_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_op_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_request_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_eeprom to i32), i32 3706, i32 4608, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_request_eeprom._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p54spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @p54spi_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p54spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @p54spi_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %eeprom.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @p54_init_common(i32 noundef 3208) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %hw2 = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hw2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %driver_data.i.i, align 4
  %spi3 = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %spi3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %spi3, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %bits_per_word, align 1
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24000000, ptr %max_speed_hz, align 8
  %call4 = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7) #9
  br label %err_free

if.end11:                                         ; preds = %if.end
  %9 = load i32, ptr @p54spi_gpio_power, align 4
  %call12 = tail call i32 @gpio_request(i32 noundef %9, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef %call12) #9
  br label %err_free

if.end20:                                         ; preds = %if.end11
  %12 = load i32, ptr @p54spi_gpio_irq, align 4
  %call21 = tail call i32 @gpio_request(i32 noundef %12, ptr noundef nonnull @.str.13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15, i32 noundef %call21) #9
  br label %err_free_gpio_power

if.end29:                                         ; preds = %if.end20
  %15 = load i32, ptr @p54spi_gpio_power, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %15) #6
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #6
  %16 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i126 = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  %call1.i127 = tail call i32 @gpiod_direction_input(ptr noundef %call.i126) #6
  %17 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i128 = tail call ptr @gpio_to_desc(i32 noundef %17) #6
  %call1.i129 = tail call i32 @gpiod_to_irq(ptr noundef %call.i128) #6
  %18 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi3, align 4
  %call.i130 = tail call i32 @request_threaded_irq(i32 noundef %call1.i129, ptr noundef nonnull @p54spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp35 = icmp slt i32 %call.i130, 0
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.18) #9
  br label %err_free_gpio_irq

if.end42:                                         ; preds = %if.end29
  %22 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i131 = tail call ptr @gpio_to_desc(i32 noundef %22) #6
  %call1.i132 = tail call i32 @gpiod_to_irq(ptr noundef %call.i131) #6
  %call44 = tail call i32 @irq_set_irq_type(i32 noundef %call1.i132, i32 noundef 1) #6
  %23 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i133 = tail call ptr @gpio_to_desc(i32 noundef %23) #6
  %call1.i134 = tail call i32 @gpiod_to_irq(ptr noundef %call.i133) #6
  tail call void @disable_irq(i32 noundef %call1.i134) #6
  %work = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %24 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @p54spi_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry50 = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry50, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @p54spi_work, ptr %func, align 4
  %fw_comp = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %fw_comp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %fw_comp, align 4
  %wait.i = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #6
  %tx_pending = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %tx_pending, ptr %tx_pending, align 4
  %prev.i135 = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %prev.i135 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tx_pending, ptr %prev.i135, align 4
  %mutex = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @p54spi_probe.__key.21) #6
  %tx_lock = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @p54spi_probe.__key.23, i16 noundef signext 3) #6
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56, i32 1
  %33 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %spi, ptr %parent.i.i, align 8
  %open = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @p54spi_op_start, ptr %open, align 4
  %stop = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @p54spi_op_stop, ptr %stop, align 8
  %tx = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @p54spi_op_tx, ptr %tx, align 8
  %37 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv1, align 8
  %firmware.i = getelementptr inbounds %struct.p54s_priv, ptr %38, i32 0, i32 9
  %spi.i = getelementptr inbounds %struct.p54s_priv, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi.i, align 4
  %call.i136 = tail call i32 @request_firmware(ptr noundef %firmware.i, ptr noundef nonnull @.str.39, ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp.i = icmp slt i32 %call.i136, 0
  br i1 %cmp.i, label %p54spi_request_firmware.exit.thread, label %if.end.i

p54spi_request_firmware.exit.thread:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.40, i32 noundef %call.i136) #9
  br label %err_free_common

if.end.i:                                         ; preds = %if.end42
  %43 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %firmware.i, align 8
  %call6.i = tail call i32 @p54_parse_firmware(ptr noundef nonnull %call, ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end67_crit_edge, label %p54spi_request_firmware.exit

if.end.i.if.end67_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

p54spi_request_firmware.exit:                     ; preds = %if.end.i
  %45 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %firmware.i, align 8
  tail call void @release_firmware(ptr noundef %46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp65 = icmp slt i32 %call6.i, 0
  br i1 %cmp65, label %p54spi_request_firmware.exit.err_free_common_crit_edge, label %p54spi_request_firmware.exit.if.end67_crit_edge

p54spi_request_firmware.exit.if.end67_crit_edge:  ; preds = %p54spi_request_firmware.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

p54spi_request_firmware.exit.err_free_common_crit_edge: ; preds = %p54spi_request_firmware.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_common

if.end67:                                         ; preds = %p54spi_request_firmware.exit.if.end67_crit_edge, %if.end.i.if.end67_crit_edge
  %47 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eeprom.i) #6
  %49 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %eeprom.i, align 4, !annotation !135
  %spi.i138 = getelementptr inbounds %struct.p54s_priv, ptr %48, i32 0, i32 2
  %50 = ptrtoint ptr %spi.i138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi.i138, align 4
  %call.i139 = call i32 @request_firmware_direct(ptr noundef nonnull %eeprom.i, ptr noundef nonnull @.str.42, ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp slt i32 %call.i139, 0
  %52 = ptrtoint ptr %spi.i138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi.i138, align 4
  br i1 %cmp.i140, label %do.end.i141, label %do.end8.i

do.end.i141:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.43) #9
  %call5.i = call i32 @p54_parse_eeprom(ptr noundef nonnull %call, ptr noundef nonnull @p54spi_eeprom, i32 noundef 3706) #6
  br label %p54spi_request_eeprom.exit

do.end8.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.47) #9
  %54 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %eeprom.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 4
  %call11.i = call i32 @p54_parse_eeprom(ptr noundef nonnull %call, ptr noundef %57, i32 noundef %59) #6
  %60 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %eeprom.i, align 4
  call void @release_firmware(ptr noundef %61) #6
  br label %p54spi_request_eeprom.exit

p54spi_request_eeprom.exit:                       ; preds = %do.end8.i, %do.end.i141
  %ret.0.i = phi i32 [ %call5.i, %do.end.i141 ], [ %call11.i, %do.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eeprom.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool69.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool69.not, label %if.end71, label %p54spi_request_eeprom.exit.err_free_common_crit_edge

p54spi_request_eeprom.exit.err_free_common_crit_edge: ; preds = %p54spi_request_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_common

if.end71:                                         ; preds = %p54spi_request_eeprom.exit
  %62 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi3, align 4
  %call74 = call i32 @p54_register_common(ptr noundef nonnull %call, ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end71.cleanup_crit_edge, label %if.end71.err_free_common_crit_edge

if.end71.err_free_common_crit_edge:               ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_common

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_common:                                  ; preds = %if.end71.err_free_common_crit_edge, %p54spi_request_eeprom.exit.err_free_common_crit_edge, %p54spi_request_firmware.exit.err_free_common_crit_edge, %p54spi_request_firmware.exit.thread
  %ret.0 = phi i32 [ %call6.i, %p54spi_request_firmware.exit.err_free_common_crit_edge ], [ %ret.0.i, %p54spi_request_eeprom.exit.err_free_common_crit_edge ], [ %call74, %if.end71.err_free_common_crit_edge ], [ %call.i136, %p54spi_request_firmware.exit.thread ]
  %64 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i143 = call ptr @gpio_to_desc(i32 noundef %64) #6
  %call1.i144 = call i32 @gpiod_to_irq(ptr noundef %call.i143) #6
  %call79 = call ptr @free_irq(i32 noundef %call1.i144, ptr noundef %spi) #6
  br label %err_free_gpio_irq

err_free_gpio_irq:                                ; preds = %err_free_common, %do.end39
  %ret.1 = phi i32 [ %call.i130, %do.end39 ], [ %ret.0, %err_free_common ]
  %65 = load i32, ptr @p54spi_gpio_irq, align 4
  call void @gpio_free(i32 noundef %65) #6
  br label %err_free_gpio_power

err_free_gpio_power:                              ; preds = %err_free_gpio_irq, %do.end26
  %ret.2 = phi i32 [ %call21, %do.end26 ], [ %ret.1, %err_free_gpio_irq ]
  %66 = load i32, ptr @p54spi_gpio_power, align 4
  call void @gpio_free(i32 noundef %66) #6
  br label %err_free

err_free:                                         ; preds = %err_free_gpio_power, %do.end17, %do.end8
  %ret.3 = phi i32 [ %call4, %do.end8 ], [ %call12, %do.end17 ], [ %ret.2, %err_free_gpio_power ]
  %67 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw2, align 8
  call void @p54_free_common(ptr noundef %68) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end71.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.3, %err_free ], [ -12, %do.end ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54spi_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  tail call void @p54_unregister_common(ptr noundef %3) #6
  %4 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %4) #6
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #6
  %call2 = tail call ptr @free_irq(i32 noundef %call1.i, ptr noundef %spi) #6
  %5 = load i32, ptr @p54spi_gpio_power, align 4
  tail call void @gpio_free(i32 noundef %5) #6
  %6 = load i32, ptr @p54spi_gpio_irq, align 4
  tail call void @gpio_free(i32 noundef %6) #6
  %firmware = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %firmware, align 8
  tail call void @release_firmware(ptr noundef %8) #6
  %mutex = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %mutex) #6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  tail call void @p54_free_common(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p54_init_common(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54spi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %config, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %work = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %work) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54spi_work(ptr noundef %work) #2 align 64 {
entry:
  %t.i.i.i26.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i27.i.i = alloca %struct.spi_message, align 4
  %addr.i.i.i28.i.i = alloca i16, align 2
  %val.addr.i.i29.i.i = alloca i32, align 4
  %t.i.i.i.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i.i.i = alloca %struct.spi_message, align 4
  %addr.i.i.i.i.i = alloca i16, align 2
  %val.addr.i.i.i.i = alloca i32, align 4
  %t.i.i.i84 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i85 = alloca %struct.spi_message, align 4
  %addr.i.i.i86 = alloca i16, align 2
  %val.addr.i.i87 = alloca i32, align 4
  %t.i.i.i61 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i62 = alloca %struct.spi_message, align 4
  %addr.i.i.i63 = alloca i16, align 2
  %val.addr.i.i64 = alloca i32, align 4
  %t.i.i.i39 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i40 = alloca %struct.spi_message, align 4
  %addr.i.i.i41 = alloca i16, align 2
  %val.addr.i.i42 = alloca i32, align 4
  %t.i.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %addr.i.i.i = alloca i16, align 2
  %val.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2952
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %fw_state = getelementptr i8, ptr %work, i32 244
  %0 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @p54spi_read32(ptr noundef %add.ptr, i8 noundef zeroext 8)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i) #6
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108880, ptr %val.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  %3 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 12, ptr %addr.i.i.i, align 2
  %4 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 284)
  %12 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr.i.i.i, ptr %t.i.i.i, align 4
  %len3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len3.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then1.spi_message_add_tail.exit.i.i.i_crit_edge

if.then1.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.then1.spi_message_add_tail.exit.i.i.i_crit_edge
  %arrayidx5.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.addr.i.i, ptr %arrayidx5.i.i.i, align 4
  %len8.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len8.i.i.i, align 4
  %transfer_list.i20.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i22.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i, ptr noundef %21, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i22.i.i.i, label %if.end.i.i.i24.i.i.i, label %spi_message_add_tail.exit.i.i.i.p54spi_write32.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.p54spi_write32.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write32.exit.i

if.end.i.i.i24.i.i.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i20.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i.i.i, ptr %transfer_list.i20.i.i.i, align 4
  %prev3.i.i.i23.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i23.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i20.i.i.i, ptr %21, align 4
  br label %p54spi_write32.exit.i

p54spi_write32.exit.i:                            ; preds = %if.end.i.i.i24.i.i.i, %spi_message_add_tail.exit.i.i.i.p54spi_write32.exit.i_crit_edge
  %spi.i.i.i = getelementptr i8, ptr %work, i32 -4
  %26 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i) #6
  %28 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %p54spi_write32.exit.i.p54spi_int_ready.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb2.i
  ]

p54spi_write32.exit.i.p54spi_int_ready.exit_crit_edge: ; preds = %p54spi_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_int_ready.exit

sw.bb.i:                                          ; preds = %p54spi_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %fw_state, align 4
  %fw_comp.i = getelementptr i8, ptr %work, i32 136
  call void @complete(ptr noundef %fw_comp.i) #6
  br label %p54spi_int_ready.exit

sw.bb2.i:                                         ; preds = %p54spi_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %fw_state, align 4
  br label %p54spi_int_ready.exit

p54spi_int_ready.exit:                            ; preds = %sw.bb2.i, %sw.bb.i, %p54spi_write32.exit.i.p54spi_int_ready.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i42) #6
  %33 = ptrtoint ptr %val.addr.i.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777216, ptr %val.addr.i.i42, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i39) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i40) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i41) #6
  %34 = ptrtoint ptr %addr.i.i.i41 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16, ptr %addr.i.i.i41, align 2
  %35 = getelementptr inbounds i8, ptr %m.i.i.i40, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %m.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %m.i.i.i40, ptr %m.i.i.i40, align 4
  %prev.i.i.i.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %m.i.i.i40, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %m.i.i.i40, ptr %prev.i.i.i.i.i.i43, align 4
  %resources.i.i.i.i.i44 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i40, i32 0, i32 10
  %39 = ptrtoint ptr %resources.i.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i.i.i44, ptr %resources.i.i.i.i.i44, align 4
  %prev.i2.i.i.i.i.i45 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i40, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i.i.i44, ptr %prev.i2.i.i.i.i.i45, align 4
  %41 = getelementptr inbounds i8, ptr %t.i.i.i39, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 284)
  %43 = ptrtoint ptr %t.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %addr.i.i.i41, ptr %t.i.i.i39, align 4
  %len3.i.i.i46 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i39, i32 0, i32 2
  %44 = ptrtoint ptr %len3.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %len3.i.i.i46, align 4
  %transfer_list.i.i.i.i47 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i39, i32 0, i32 18
  %call.i.i.i.i.i.i48 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i47, ptr noundef nonnull %m.i.i.i40, ptr noundef nonnull %m.i.i.i40) #6
  br i1 %call.i.i.i.i.i.i48, label %if.end.i.i.i.i.i.i50, label %p54spi_int_ready.exit.spi_message_add_tail.exit.i.i.i55_crit_edge

p54spi_int_ready.exit.spi_message_add_tail.exit.i.i.i55_crit_edge: ; preds = %p54spi_int_ready.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i55

if.end.i.i.i.i.i.i50:                             ; preds = %p54spi_int_ready.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i47, ptr %prev.i.i.i.i.i.i43, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m.i.i.i40, ptr %transfer_list.i.i.i.i47, align 4
  %prev3.i.i.i.i.i.i49 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i39, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %m.i.i.i40, ptr %prev3.i.i.i.i.i.i49, align 4
  %48 = ptrtoint ptr %m.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i47, ptr %m.i.i.i40, align 4
  br label %spi_message_add_tail.exit.i.i.i55

spi_message_add_tail.exit.i.i.i55:                ; preds = %if.end.i.i.i.i.i.i50, %p54spi_int_ready.exit.spi_message_add_tail.exit.i.i.i55_crit_edge
  %arrayidx5.i.i.i51 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i39, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx5.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %val.addr.i.i42, ptr %arrayidx5.i.i.i51, align 4
  %len8.i.i.i52 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i39, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %len8.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %len8.i.i.i52, align 4
  %transfer_list.i20.i.i.i53 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i39, i32 0, i32 1, i32 18
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i.i.i43, align 4
  %call.i.i.i22.i.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i53, ptr noundef %52, ptr noundef nonnull %m.i.i.i40) #6
  br i1 %call.i.i.i22.i.i.i54, label %if.end.i.i.i24.i.i.i57, label %spi_message_add_tail.exit.i.i.i55.p54spi_int_ack.exit_crit_edge

spi_message_add_tail.exit.i.i.i55.p54spi_int_ack.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_int_ack.exit

if.end.i.i.i24.i.i.i57:                           ; preds = %spi_message_add_tail.exit.i.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i20.i.i.i53, ptr %prev.i.i.i.i.i.i43, align 4
  %54 = ptrtoint ptr %transfer_list.i20.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %m.i.i.i40, ptr %transfer_list.i20.i.i.i53, align 4
  %prev3.i.i.i23.i.i.i56 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i39, i32 0, i32 1, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i23.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i23.i.i.i56, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i20.i.i.i53, ptr %52, align 4
  br label %p54spi_int_ack.exit

p54spi_int_ack.exit:                              ; preds = %if.end.i.i.i24.i.i.i57, %spi_message_add_tail.exit.i.i.i55.p54spi_int_ack.exit_crit_edge
  %57 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i.i59 = call i32 @spi_sync(ptr noundef %58, ptr noundef nonnull %m.i.i.i40) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i41) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i40) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i39) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i42) #6
  br label %if.end2

if.end2:                                          ; preds = %p54spi_int_ack.exit, %if.end.if.end2_crit_edge
  %59 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp4.not = icmp eq i32 %60, 2
  br i1 %cmp4.not, label %if.end6, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %if.end2
  %and7 = and i32 %call, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %if.then9

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i64) #6
  %61 = ptrtoint ptr %val.addr.i.i64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 16, ptr %val.addr.i.i64, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i61) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i62) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i63) #6
  %62 = ptrtoint ptr %addr.i.i.i63 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 16, ptr %addr.i.i.i63, align 2
  %63 = getelementptr inbounds i8, ptr %m.i.i.i62, i32 8
  %64 = call ptr @memset(ptr %63, i32 0, i32 40)
  %65 = ptrtoint ptr %m.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %m.i.i.i62, ptr %m.i.i.i62, align 4
  %prev.i.i.i.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %m.i.i.i62, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %m.i.i.i62, ptr %prev.i.i.i.i.i.i65, align 4
  %resources.i.i.i.i.i66 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i62, i32 0, i32 10
  %67 = ptrtoint ptr %resources.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %resources.i.i.i.i.i66, ptr %resources.i.i.i.i.i66, align 4
  %prev.i2.i.i.i.i.i67 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i62, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %prev.i2.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %resources.i.i.i.i.i66, ptr %prev.i2.i.i.i.i.i67, align 4
  %69 = getelementptr inbounds i8, ptr %t.i.i.i61, i32 4
  %70 = call ptr @memset(ptr %69, i32 0, i32 284)
  %71 = ptrtoint ptr %t.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %addr.i.i.i63, ptr %t.i.i.i61, align 4
  %len3.i.i.i68 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i61, i32 0, i32 2
  %72 = ptrtoint ptr %len3.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %len3.i.i.i68, align 4
  %transfer_list.i.i.i.i69 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i61, i32 0, i32 18
  %call.i.i.i.i.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i69, ptr noundef nonnull %m.i.i.i62, ptr noundef nonnull %m.i.i.i62) #6
  br i1 %call.i.i.i.i.i.i70, label %if.end.i.i.i.i.i.i72, label %if.then9.spi_message_add_tail.exit.i.i.i77_crit_edge

if.then9.spi_message_add_tail.exit.i.i.i77_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i77

if.end.i.i.i.i.i.i72:                             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %prev.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %transfer_list.i.i.i.i69, ptr %prev.i.i.i.i.i.i65, align 4
  %74 = ptrtoint ptr %transfer_list.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %m.i.i.i62, ptr %transfer_list.i.i.i.i69, align 4
  %prev3.i.i.i.i.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i61, i32 0, i32 18, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %m.i.i.i62, ptr %prev3.i.i.i.i.i.i71, align 4
  %76 = ptrtoint ptr %m.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %transfer_list.i.i.i.i69, ptr %m.i.i.i62, align 4
  br label %spi_message_add_tail.exit.i.i.i77

spi_message_add_tail.exit.i.i.i77:                ; preds = %if.end.i.i.i.i.i.i72, %if.then9.spi_message_add_tail.exit.i.i.i77_crit_edge
  %arrayidx5.i.i.i73 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i61, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx5.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %val.addr.i.i64, ptr %arrayidx5.i.i.i73, align 4
  %len8.i.i.i74 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i61, i32 0, i32 1, i32 2
  %78 = ptrtoint ptr %len8.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %len8.i.i.i74, align 4
  %transfer_list.i20.i.i.i75 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i61, i32 0, i32 1, i32 18
  %79 = ptrtoint ptr %prev.i.i.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i.i.i.i65, align 4
  %call.i.i.i22.i.i.i76 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i75, ptr noundef %80, ptr noundef nonnull %m.i.i.i62) #6
  br i1 %call.i.i.i22.i.i.i76, label %if.end.i.i.i24.i.i.i79, label %spi_message_add_tail.exit.i.i.i77.p54spi_int_ack.exit83_crit_edge

spi_message_add_tail.exit.i.i.i77.p54spi_int_ack.exit83_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_int_ack.exit83

if.end.i.i.i24.i.i.i79:                           ; preds = %spi_message_add_tail.exit.i.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %prev.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %transfer_list.i20.i.i.i75, ptr %prev.i.i.i.i.i.i65, align 4
  %82 = ptrtoint ptr %transfer_list.i20.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %m.i.i.i62, ptr %transfer_list.i20.i.i.i75, align 4
  %prev3.i.i.i23.i.i.i78 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i61, i32 0, i32 1, i32 18, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i23.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i23.i.i.i78, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %transfer_list.i20.i.i.i75, ptr %80, align 4
  br label %p54spi_int_ack.exit83

p54spi_int_ack.exit83:                            ; preds = %if.end.i.i.i24.i.i.i79, %spi_message_add_tail.exit.i.i.i77.p54spi_int_ack.exit83_crit_edge
  %spi.i.i.i80 = getelementptr i8, ptr %work, i32 -4
  %85 = ptrtoint ptr %spi.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %spi.i.i.i80, align 4
  %call.i.i.i81 = call i32 @spi_sync(ptr noundef %86, ptr noundef nonnull %m.i.i.i62) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i63) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i62) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i61) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i64) #6
  %call10 = call fastcc i32 @p54spi_rx(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %p54spi_int_ack.exit83.out_crit_edge, label %p54spi_int_ack.exit83.if.end14_crit_edge

p54spi_int_ack.exit83.if.end14_crit_edge:         ; preds = %p54spi_int_ack.exit83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

p54spi_int_ack.exit83.out_crit_edge:              ; preds = %p54spi_int_ack.exit83
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %p54spi_int_ack.exit83.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %and15 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %if.then17

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i87) #6
  %87 = ptrtoint ptr %val.addr.i.i87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 67108864, ptr %val.addr.i.i87, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i84) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i85) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i86) #6
  %88 = ptrtoint ptr %addr.i.i.i86 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 16, ptr %addr.i.i.i86, align 2
  %89 = getelementptr inbounds i8, ptr %m.i.i.i85, i32 8
  %90 = call ptr @memset(ptr %89, i32 0, i32 40)
  %91 = ptrtoint ptr %m.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %m.i.i.i85, ptr %m.i.i.i85, align 4
  %prev.i.i.i.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %m.i.i.i85, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %m.i.i.i85, ptr %prev.i.i.i.i.i.i88, align 4
  %resources.i.i.i.i.i89 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i85, i32 0, i32 10
  %93 = ptrtoint ptr %resources.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %resources.i.i.i.i.i89, ptr %resources.i.i.i.i.i89, align 4
  %prev.i2.i.i.i.i.i90 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i85, i32 0, i32 10, i32 1
  %94 = ptrtoint ptr %prev.i2.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %resources.i.i.i.i.i89, ptr %prev.i2.i.i.i.i.i90, align 4
  %95 = getelementptr inbounds i8, ptr %t.i.i.i84, i32 4
  %96 = call ptr @memset(ptr %95, i32 0, i32 284)
  %97 = ptrtoint ptr %t.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %addr.i.i.i86, ptr %t.i.i.i84, align 4
  %len3.i.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i84, i32 0, i32 2
  %98 = ptrtoint ptr %len3.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %len3.i.i.i91, align 4
  %transfer_list.i.i.i.i92 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i84, i32 0, i32 18
  %call.i.i.i.i.i.i93 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i92, ptr noundef nonnull %m.i.i.i85, ptr noundef nonnull %m.i.i.i85) #6
  br i1 %call.i.i.i.i.i.i93, label %if.end.i.i.i.i.i.i95, label %if.then17.spi_message_add_tail.exit.i.i.i100_crit_edge

if.then17.spi_message_add_tail.exit.i.i.i100_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i100

if.end.i.i.i.i.i.i95:                             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %prev.i.i.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %transfer_list.i.i.i.i92, ptr %prev.i.i.i.i.i.i88, align 4
  %100 = ptrtoint ptr %transfer_list.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %m.i.i.i85, ptr %transfer_list.i.i.i.i92, align 4
  %prev3.i.i.i.i.i.i94 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i84, i32 0, i32 18, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %m.i.i.i85, ptr %prev3.i.i.i.i.i.i94, align 4
  %102 = ptrtoint ptr %m.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %transfer_list.i.i.i.i92, ptr %m.i.i.i85, align 4
  br label %spi_message_add_tail.exit.i.i.i100

spi_message_add_tail.exit.i.i.i100:               ; preds = %if.end.i.i.i.i.i.i95, %if.then17.spi_message_add_tail.exit.i.i.i100_crit_edge
  %arrayidx5.i.i.i96 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i84, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx5.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %val.addr.i.i87, ptr %arrayidx5.i.i.i96, align 4
  %len8.i.i.i97 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i84, i32 0, i32 1, i32 2
  %104 = ptrtoint ptr %len8.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %len8.i.i.i97, align 4
  %transfer_list.i20.i.i.i98 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i84, i32 0, i32 1, i32 18
  %105 = ptrtoint ptr %prev.i.i.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i.i.i.i.i88, align 4
  %call.i.i.i22.i.i.i99 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i98, ptr noundef %106, ptr noundef nonnull %m.i.i.i85) #6
  br i1 %call.i.i.i22.i.i.i99, label %if.end.i.i.i24.i.i.i102, label %spi_message_add_tail.exit.i.i.i100.p54spi_int_ack.exit106_crit_edge

spi_message_add_tail.exit.i.i.i100.p54spi_int_ack.exit106_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_int_ack.exit106

if.end.i.i.i24.i.i.i102:                          ; preds = %spi_message_add_tail.exit.i.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %prev.i.i.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %transfer_list.i20.i.i.i98, ptr %prev.i.i.i.i.i.i88, align 4
  %108 = ptrtoint ptr %transfer_list.i20.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %m.i.i.i85, ptr %transfer_list.i20.i.i.i98, align 4
  %prev3.i.i.i23.i.i.i101 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i84, i32 0, i32 1, i32 18, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i23.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i23.i.i.i101, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %transfer_list.i20.i.i.i98, ptr %106, align 4
  br label %p54spi_int_ack.exit106

p54spi_int_ack.exit106:                           ; preds = %if.end.i.i.i24.i.i.i102, %spi_message_add_tail.exit.i.i.i100.p54spi_int_ack.exit106_crit_edge
  %spi.i.i.i103 = getelementptr i8, ptr %work, i32 -4
  %111 = ptrtoint ptr %spi.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %spi.i.i.i103, align 4
  %call.i.i.i104 = call i32 @spi_sync(ptr noundef %112, ptr noundef nonnull %m.i.i.i85) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i86) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i85) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i84) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i87) #6
  %call18 = call fastcc i32 @p54spi_rx(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %p54spi_int_ack.exit106.out_crit_edge, label %p54spi_int_ack.exit106.if.end22_crit_edge

p54spi_int_ack.exit106.if.end22_crit_edge:        ; preds = %p54spi_int_ack.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

p54spi_int_ack.exit106.out_crit_edge:             ; preds = %p54spi_int_ack.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %p54spi_int_ack.exit106.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %tx_lock.i = getelementptr i8, ptr %work, i32 192
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #6
  %tx_pending.i = getelementptr i8, ptr %work, i32 236
  %113 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %tx_pending.i, align 4
  %cmp.i.not6.i = icmp eq ptr %114, %tx_pending.i
  br i1 %cmp.i.not6.i, label %if.end22.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end22.while.end.i_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end22
  %115 = getelementptr inbounds i8, ptr %m.i.i.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i.i.i, i32 0, i32 10, i32 1
  %116 = getelementptr inbounds i8, ptr %t.i.i.i.i.i, i32 4
  %len3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 2
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18, i32 1
  %arrayidx5.i.i.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i.i.i, i32 0, i32 1
  %len8.i.i.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i.i.i, i32 0, i32 1, i32 2
  %transfer_list.i20.i.i.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i.i.i, i32 0, i32 1, i32 18
  %prev3.i.i.i23.i.i.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i.i.i, i32 0, i32 1, i32 18, i32 1
  %spi.i.i.i.i.i = getelementptr i8, ptr %work, i32 -4
  %hw.i.i = getelementptr i8, ptr %work, i32 -8
  %117 = getelementptr inbounds i8, ptr %m.i.i.i27.i.i, i32 8
  %prev.i.i.i.i.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i27.i.i, i32 0, i32 1
  %resources.i.i.i.i.i31.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i27.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i32.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i27.i.i, i32 0, i32 10, i32 1
  %118 = getelementptr inbounds i8, ptr %t.i.i.i26.i.i, i32 4
  %len3.i.i.i33.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i26.i.i, i32 0, i32 2
  %transfer_list.i.i.i.i34.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i26.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i36.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i26.i.i, i32 0, i32 18, i32 1
  %arrayidx5.i.i.i38.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i26.i.i, i32 0, i32 1
  %len8.i.i.i39.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i26.i.i, i32 0, i32 1, i32 2
  %transfer_list.i20.i.i.i40.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i26.i.i, i32 0, i32 1, i32 18
  %prev3.i.i.i23.i.i.i43.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i26.i.i, i32 0, i32 1, i32 18, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %do.body26.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %119 = phi ptr [ %114, %while.body.lr.ph.i ], [ %195, %do.body26.i.while.body.i_crit_edge ]
  %flags.07.i = phi i32 [ %call3.i, %while.body.lr.ph.i ], [ %call34.i, %do.body26.i.while.body.i_crit_edge ]
  %call.i.i.i107 = call zeroext i1 @__list_del_entry_valid(ptr noundef %119) #6
  br i1 %call.i.i.i107, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i.i, align 4
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %119, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %119, ptr %119, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %119, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %flags.07.i) #6
  %add.ptr21.i = getelementptr i8, ptr %119, i32 -56
  %data.i.i = getelementptr i8, ptr %119, i32 124
  %128 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data.i.i, align 4
  %call.i.i = call fastcc i32 @p54spi_wakeup(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i1.i, label %list_del_init.exit.i.if.then.i_crit_edge, label %if.end.i.i

list_del_init.exit.i.if.then.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.i.i:                                       ; preds = %list_del_init.exit.i
  %req_id.i.i = getelementptr inbounds %struct.p54_hdr, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %req_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %req_id.i.i, align 1
  %132 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i, align 4
  %len.i.i = getelementptr i8, ptr %119, i32 28
  %134 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len.i.i, align 4
  %call2.i.i = call fastcc i32 @p54spi_spi_write_dma(ptr noundef %add.ptr, i32 noundef %131, ptr noundef %133, i32 noundef %135) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.out.i.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.06.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 2000
  br i1 %exitcond.not.i.i.i, label %do.end.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %i.06.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i2.i = call fastcc i32 @p54spi_read32(ptr noundef %add.ptr, i8 noundef zeroext 8) #6
  %and.i.i.i = and i32 %call.i.i2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp1.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp1.i.not.i.i, label %for.cond.i.i.i, label %if.end8.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %spi.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %spi.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.32) #9
  br label %out.i.i

if.end8.i.i:                                      ; preds = %for.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i.i.i) #6
  %138 = ptrtoint ptr %val.addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 33554432, ptr %val.addr.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i.i.i) #6
  %139 = ptrtoint ptr %addr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 16, ptr %addr.i.i.i.i.i, align 2
  %140 = call ptr @memset(ptr %115, i32 0, i32 40)
  %141 = ptrtoint ptr %m.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %m.i.i.i.i.i, ptr %m.i.i.i.i.i, align 4
  %142 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %m.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %143 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %144 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %145 = call ptr @memset(ptr %116, i32 0, i32 284)
  %146 = ptrtoint ptr %t.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %addr.i.i.i.i.i, ptr %t.i.i.i.i.i, align 4
  %147 = ptrtoint ptr %len3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %len3.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %m.i.i.i.i.i, ptr noundef nonnull %m.i.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end8.i.i.spi_message_add_tail.exit.i.i.i.i.i_crit_edge

if.end8.i.i.spi_message_add_tail.exit.i.i.i.i.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %149 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %m.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %150 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %m.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %151 = ptrtoint ptr %m.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %m.i.i.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i.i

spi_message_add_tail.exit.i.i.i.i.i:              ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end8.i.i.spi_message_add_tail.exit.i.i.i.i.i_crit_edge
  %152 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %val.addr.i.i.i.i, ptr %arrayidx5.i.i.i.i.i, align 4
  %153 = ptrtoint ptr %len8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 4, ptr %len8.i.i.i.i.i, align 4
  %154 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %call.i.i.i22.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i.i.i, ptr noundef %155, ptr noundef nonnull %m.i.i.i.i.i) #6
  br i1 %call.i.i.i22.i.i.i.i.i, label %if.end.i.i.i24.i.i.i.i.i, label %spi_message_add_tail.exit.i.i.i.i.i.p54spi_int_ack.exit.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.i.p54spi_int_ack.exit.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_int_ack.exit.i.i

if.end.i.i.i24.i.i.i.i.i:                         ; preds = %spi_message_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %transfer_list.i20.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %157 = ptrtoint ptr %transfer_list.i20.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %m.i.i.i.i.i, ptr %transfer_list.i20.i.i.i.i.i, align 4
  %158 = ptrtoint ptr %prev3.i.i.i23.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev3.i.i.i23.i.i.i.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %transfer_list.i20.i.i.i.i.i, ptr %155, align 4
  br label %p54spi_int_ack.exit.i.i

p54spi_int_ack.exit.i.i:                          ; preds = %if.end.i.i.i24.i.i.i.i.i, %spi_message_add_tail.exit.i.i.i.i.i.p54spi_int_ack.exit.i.i_crit_edge
  %160 = ptrtoint ptr %spi.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %spi.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %161, ptr noundef nonnull %m.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i.i.i) #6
  %162 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data.i.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %163, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 384, i16 %165)
  %cmp10.i.i = icmp eq i16 %165, 384
  br i1 %cmp10.i.i, label %if.then12.i.i, label %p54spi_int_ack.exit.i.i.out.i.i_crit_edge

p54spi_int_ack.exit.i.i.out.i.i_crit_edge:        ; preds = %p54spi_int_ack.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.then12.i.i:                                    ; preds = %p54spi_int_ack.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw.i.i, align 8
  call void @p54_free_skb(ptr noundef %167, ptr noundef %add.ptr21.i) #6
  br label %out.i.i

out.i.i:                                          ; preds = %if.then12.i.i, %p54spi_int_ack.exit.i.i.out.i.i_crit_edge, %do.end.i.i, %if.end.i.i.out.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i.out.i.i_crit_edge ], [ %call2.i.i, %if.then12.i.i ], [ %call2.i.i, %p54spi_int_ack.exit.i.i.out.i.i_crit_edge ], [ -11, %do.end.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i29.i.i) #6
  %168 = ptrtoint ptr %val.addr.i.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 33554432, ptr %val.addr.i.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i26.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i27.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i28.i.i) #6
  %169 = ptrtoint ptr %addr.i.i.i28.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %addr.i.i.i28.i.i, align 2
  %170 = call ptr @memset(ptr %117, i32 0, i32 40)
  %171 = ptrtoint ptr %m.i.i.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %m.i.i.i27.i.i, ptr %m.i.i.i27.i.i, align 4
  %172 = ptrtoint ptr %prev.i.i.i.i.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %m.i.i.i27.i.i, ptr %prev.i.i.i.i.i.i30.i.i, align 4
  %173 = ptrtoint ptr %resources.i.i.i.i.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %resources.i.i.i.i.i31.i.i, ptr %resources.i.i.i.i.i31.i.i, align 4
  %174 = ptrtoint ptr %prev.i2.i.i.i.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %resources.i.i.i.i.i31.i.i, ptr %prev.i2.i.i.i.i.i32.i.i, align 4
  %175 = call ptr @memset(ptr %118, i32 0, i32 284)
  %176 = ptrtoint ptr %t.i.i.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %addr.i.i.i28.i.i, ptr %t.i.i.i26.i.i, align 4
  %177 = ptrtoint ptr %len3.i.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %len3.i.i.i33.i.i, align 4
  %call.i.i.i.i.i.i35.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i34.i.i, ptr noundef nonnull %m.i.i.i27.i.i, ptr noundef nonnull %m.i.i.i27.i.i) #6
  br i1 %call.i.i.i.i.i.i35.i.i, label %if.end.i.i.i.i.i.i37.i.i, label %out.i.i.spi_message_add_tail.exit.i.i.i42.i.i_crit_edge

out.i.i.spi_message_add_tail.exit.i.i.i42.i.i_crit_edge: ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i42.i.i

if.end.i.i.i.i.i.i37.i.i:                         ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %178 = ptrtoint ptr %prev.i.i.i.i.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %transfer_list.i.i.i.i34.i.i, ptr %prev.i.i.i.i.i.i30.i.i, align 4
  %179 = ptrtoint ptr %transfer_list.i.i.i.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %m.i.i.i27.i.i, ptr %transfer_list.i.i.i.i34.i.i, align 4
  %180 = ptrtoint ptr %prev3.i.i.i.i.i.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %m.i.i.i27.i.i, ptr %prev3.i.i.i.i.i.i36.i.i, align 4
  %181 = ptrtoint ptr %m.i.i.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %transfer_list.i.i.i.i34.i.i, ptr %m.i.i.i27.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i42.i.i

spi_message_add_tail.exit.i.i.i42.i.i:            ; preds = %if.end.i.i.i.i.i.i37.i.i, %out.i.i.spi_message_add_tail.exit.i.i.i42.i.i_crit_edge
  %182 = ptrtoint ptr %arrayidx5.i.i.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %val.addr.i.i29.i.i, ptr %arrayidx5.i.i.i38.i.i, align 4
  %183 = ptrtoint ptr %len8.i.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 4, ptr %len8.i.i.i39.i.i, align 4
  %184 = ptrtoint ptr %prev.i.i.i.i.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %prev.i.i.i.i.i.i30.i.i, align 4
  %call.i.i.i22.i.i.i41.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i40.i.i, ptr noundef %185, ptr noundef nonnull %m.i.i.i27.i.i) #6
  br i1 %call.i.i.i22.i.i.i41.i.i, label %if.end.i.i.i24.i.i.i44.i.i, label %spi_message_add_tail.exit.i.i.i42.i.i.p54spi_tx_frame.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i42.i.i.p54spi_tx_frame.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_tx_frame.exit.i

if.end.i.i.i24.i.i.i44.i.i:                       ; preds = %spi_message_add_tail.exit.i.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %prev.i.i.i.i.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %transfer_list.i20.i.i.i40.i.i, ptr %prev.i.i.i.i.i.i30.i.i, align 4
  %187 = ptrtoint ptr %transfer_list.i20.i.i.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %m.i.i.i27.i.i, ptr %transfer_list.i20.i.i.i40.i.i, align 4
  %188 = ptrtoint ptr %prev3.i.i.i23.i.i.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %185, ptr %prev3.i.i.i23.i.i.i43.i.i, align 4
  %189 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %transfer_list.i20.i.i.i40.i.i, ptr %185, align 4
  br label %p54spi_tx_frame.exit.i

p54spi_tx_frame.exit.i:                           ; preds = %if.end.i.i.i24.i.i.i44.i.i, %spi_message_add_tail.exit.i.i.i42.i.i.p54spi_tx_frame.exit.i_crit_edge
  %190 = ptrtoint ptr %spi.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %spi.i.i.i.i.i, align 4
  %call.i.i.i46.i.i = call i32 @spi_sync(ptr noundef %191, ptr noundef nonnull %m.i.i.i27.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i28.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i27.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i26.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i29.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp23.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp23.i, label %p54spi_tx_frame.exit.i.if.then.i_crit_edge, label %do.body26.i

p54spi_tx_frame.exit.i.if.then.i_crit_edge:       ; preds = %p54spi_tx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %p54spi_tx_frame.exit.i.if.then.i_crit_edge, %list_del_init.exit.i.if.then.i_crit_edge
  %192 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hw.i.i, align 8
  call void @p54_free_skb(ptr noundef %193, ptr noundef %add.ptr21.i) #6
  br label %out

do.body26.i:                                      ; preds = %p54spi_tx_frame.exit.i
  %call34.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #6
  %194 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile ptr, ptr %tx_pending.i, align 4
  %cmp.i.not.i = icmp eq ptr %195, %tx_pending.i
  br i1 %cmp.i.not.i, label %do.body26.i.while.end.i_crit_edge, label %do.body26.i.while.body.i_crit_edge

do.body26.i.while.body.i_crit_edge:               ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.body26.i.while.end.i_crit_edge:                ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.body26.i.while.end.i_crit_edge, %if.end22.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call3.i, %if.end22.while.end.i_crit_edge ], [ %call34.i, %do.body26.i.while.end.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %flags.0.lcssa.i) #6
  br label %out

out:                                              ; preds = %while.end.i, %if.then.i, %p54spi_int_ack.exit106.out_crit_edge, %p54spi_int_ack.exit83.out_crit_edge, %if.end2.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54spi_op_start(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %t.i.i110.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i111.i = alloca %struct.spi_message, align 4
  %addr.i.i112.i = alloca i16, align 2
  %val.addr.i113.i = alloca i16, align 2
  %t.i.i88.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i89.i = alloca %struct.spi_message, align 4
  %addr.i.i90.i = alloca i16, align 2
  %val.addr.i91.i = alloca i16, align 2
  %t.i.i67.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i68.i = alloca %struct.spi_message, align 4
  %addr.i.i69.i = alloca i16, align 2
  %val.addr.i70.i = alloca i32, align 4
  %t.i.i45.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i46.i = alloca %struct.spi_message, align 4
  %addr.i.i47.i = alloca i16, align 2
  %val.addr.i48.i = alloca i16, align 2
  %t.i.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %addr.i.i.i = alloca i16, align 2
  %val.addr.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %fw_state = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %fw_state, align 4
  %3 = load i32, ptr @p54spi_gpio_power, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #6
  %4 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i1.i = tail call ptr @gpio_to_desc(i32 noundef %4) #6
  %call1.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i1.i) #6
  tail call void @enable_irq(i32 noundef %call1.i.i) #6
  tail call void @msleep(i32 noundef 10) #6
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 8
  %firmware.i = getelementptr inbounds %struct.p54s_priv, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %firmware.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef %12, i32 noundef %10, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i.i) #6
  %13 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 208, ptr %val.addr.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  %14 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 38, ptr %addr.i.i.i, align 2
  %15 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %21 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 284)
  %23 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %addr.i.i.i, ptr %t.i.i.i, align 4
  %len3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len3.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.i.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i.i.i_crit_edge
  %arrayidx5.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %val.addr.i.i, ptr %arrayidx5.i.i.i, align 4
  %len8.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %len8.i.i.i, align 4
  %transfer_list.i20.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i22.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i, ptr noundef %32, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i22.i.i.i, label %if.end.i.i.i24.i.i.i, label %spi_message_add_tail.exit.i.i.i.p54spi_write16.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.p54spi_write16.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write16.exit.i

if.end.i.i.i24.i.i.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i20.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %m.i.i.i, ptr %transfer_list.i20.i.i.i, align 4
  %prev3.i.i.i23.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i23.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i20.i.i.i, ptr %32, align 4
  br label %p54spi_write16.exit.i

p54spi_write16.exit.i:                            ; preds = %if.end.i.i.i24.i.i.i, %spi_message_add_tail.exit.i.i.i.p54spi_write16.exit.i_crit_edge
  %spi.i.i.i = getelementptr inbounds %struct.p54s_priv, ptr %6, i32 0, i32 2
  %37 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i.i) #6
  call void @msleep(i32 noundef 50) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i48.i) #6
  %39 = ptrtoint ptr %val.addr.i48.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 192, ptr %val.addr.i48.i, align 2
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i45.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i46.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i47.i) #6
  %40 = ptrtoint ptr %addr.i.i47.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 38, ptr %addr.i.i47.i, align 2
  %41 = getelementptr inbounds i8, ptr %m.i.i46.i, i32 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 40)
  %43 = ptrtoint ptr %m.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %m.i.i46.i, ptr %m.i.i46.i, align 4
  %prev.i.i.i.i.i49.i = getelementptr inbounds %struct.list_head, ptr %m.i.i46.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %m.i.i46.i, ptr %prev.i.i.i.i.i49.i, align 4
  %resources.i.i.i.i50.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i46.i, i32 0, i32 10
  %45 = ptrtoint ptr %resources.i.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %resources.i.i.i.i50.i, ptr %resources.i.i.i.i50.i, align 4
  %prev.i2.i.i.i.i51.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i46.i, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %prev.i2.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %resources.i.i.i.i50.i, ptr %prev.i2.i.i.i.i51.i, align 4
  %47 = getelementptr inbounds i8, ptr %t.i.i45.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 284)
  %49 = ptrtoint ptr %t.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %addr.i.i47.i, ptr %t.i.i45.i, align 4
  %len3.i.i52.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i45.i, i32 0, i32 2
  %50 = ptrtoint ptr %len3.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %len3.i.i52.i, align 4
  %transfer_list.i.i.i53.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i45.i, i32 0, i32 18
  %call.i.i.i.i.i54.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i53.i, ptr noundef nonnull %m.i.i46.i, ptr noundef nonnull %m.i.i46.i) #6
  br i1 %call.i.i.i.i.i54.i, label %if.end.i.i.i.i.i56.i, label %p54spi_write16.exit.i.spi_message_add_tail.exit.i.i61.i_crit_edge

p54spi_write16.exit.i.spi_message_add_tail.exit.i.i61.i_crit_edge: ; preds = %p54spi_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i61.i

if.end.i.i.i.i.i56.i:                             ; preds = %p54spi_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %prev.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i.i.i53.i, ptr %prev.i.i.i.i.i49.i, align 4
  %52 = ptrtoint ptr %transfer_list.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %m.i.i46.i, ptr %transfer_list.i.i.i53.i, align 4
  %prev3.i.i.i.i.i55.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i45.i, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %m.i.i46.i, ptr %prev3.i.i.i.i.i55.i, align 4
  %54 = ptrtoint ptr %m.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i.i.i53.i, ptr %m.i.i46.i, align 4
  br label %spi_message_add_tail.exit.i.i61.i

spi_message_add_tail.exit.i.i61.i:                ; preds = %if.end.i.i.i.i.i56.i, %p54spi_write16.exit.i.spi_message_add_tail.exit.i.i61.i_crit_edge
  %arrayidx5.i.i57.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i45.i, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx5.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %val.addr.i48.i, ptr %arrayidx5.i.i57.i, align 4
  %len8.i.i58.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i45.i, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %len8.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %len8.i.i58.i, align 4
  %transfer_list.i20.i.i59.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i45.i, i32 0, i32 1, i32 18
  %57 = ptrtoint ptr %prev.i.i.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i.i.i49.i, align 4
  %call.i.i.i22.i.i60.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i59.i, ptr noundef %58, ptr noundef nonnull %m.i.i46.i) #6
  br i1 %call.i.i.i22.i.i60.i, label %if.end.i.i.i24.i.i63.i, label %spi_message_add_tail.exit.i.i61.i.p54spi_write16.exit66.i_crit_edge

spi_message_add_tail.exit.i.i61.i.p54spi_write16.exit66.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write16.exit66.i

if.end.i.i.i24.i.i63.i:                           ; preds = %spi_message_add_tail.exit.i.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i20.i.i59.i, ptr %prev.i.i.i.i.i49.i, align 4
  %60 = ptrtoint ptr %transfer_list.i20.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %m.i.i46.i, ptr %transfer_list.i20.i.i59.i, align 4
  %prev3.i.i.i23.i.i62.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i45.i, i32 0, i32 1, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i23.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i23.i.i62.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i20.i.i59.i, ptr %58, align 4
  br label %p54spi_write16.exit66.i

p54spi_write16.exit66.i:                          ; preds = %if.end.i.i.i24.i.i63.i, %spi_message_add_tail.exit.i.i61.i.p54spi_write16.exit66.i_crit_edge
  %63 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i65.i = call i32 @spi_sync(ptr noundef %64, ptr noundef nonnull %m.i.i46.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i47.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i46.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i45.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i48.i) #6
  call void @msleep(i32 noundef 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not133.i = icmp eq i32 %10, 0
  br i1 %cmp.not133.i, label %p54spi_write16.exit66.i.do.end19.i_crit_edge, label %p54spi_write16.exit66.i.while.body.i_crit_edge

p54spi_write16.exit66.i.while.body.i_crit_edge:   ; preds = %p54spi_write16.exit66.i
  br label %while.body.i

p54spi_write16.exit66.i.do.end19.i_crit_edge:     ; preds = %p54spi_write16.exit66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %p54spi_write16.exit66.i.while.body.i_crit_edge
  %offset.0135.i = phi i32 [ %add8.i, %if.end7.i.while.body.i_crit_edge ], [ 0, %p54spi_write16.exit66.i.while.body.i_crit_edge ]
  %fw_len.0134.i = phi i32 [ %sub.i, %if.end7.i.while.body.i_crit_edge ], [ %10, %p54spi_write16.exit66.i.while.body.i_crit_edge ]
  %65 = call i32 @llvm.smin.i32(i32 %fw_len.0134.i, i32 32767) #6
  %add.i = add i32 %offset.0135.i, 131072
  %66 = call i32 @llvm.bswap.i32(i32 %add.i) #6
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset.0135.i
  %call4.i = call fastcc i32 @p54spi_spi_write_dma(ptr noundef %6, i32 noundef %66, ptr noundef %add.ptr.i, i32 noundef %65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %p54spi_upload_firmware.exit.thread69, label %if.end7.i

p54spi_upload_firmware.exit.thread69:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call.i) #6
  br label %if.then3

if.end7.i:                                        ; preds = %while.body.i
  %sub.i = sub i32 %fw_len.0134.i, %65
  %add8.i = add i32 %65, %offset.0135.i
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end7.i.do.end19.i_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end7.i.do.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.end7.i.do.end19.i_crit_edge, %p54spi_write16.exit66.i.do.end19.i_crit_edge
  %err.0.lcssa.i = phi i32 [ 0, %p54spi_write16.exit66.i.do.end19.i_crit_edge ], [ %call4.i, %if.end7.i.do.end19.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i70.i) #6
  %67 = ptrtoint ptr %val.addr.i70.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 83886096, ptr %val.addr.i70.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i67.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i68.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i69.i) #6
  %68 = ptrtoint ptr %addr.i.i69.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 12, ptr %addr.i.i69.i, align 2
  %69 = getelementptr inbounds i8, ptr %m.i.i68.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 0, i32 40)
  %71 = ptrtoint ptr %m.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %m.i.i68.i, ptr %m.i.i68.i, align 4
  %prev.i.i.i.i.i71.i = getelementptr inbounds %struct.list_head, ptr %m.i.i68.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %m.i.i68.i, ptr %prev.i.i.i.i.i71.i, align 4
  %resources.i.i.i.i72.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i68.i, i32 0, i32 10
  %73 = ptrtoint ptr %resources.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %resources.i.i.i.i72.i, ptr %resources.i.i.i.i72.i, align 4
  %prev.i2.i.i.i.i73.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i68.i, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %prev.i2.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %resources.i.i.i.i72.i, ptr %prev.i2.i.i.i.i73.i, align 4
  %75 = getelementptr inbounds i8, ptr %t.i.i67.i, i32 4
  %76 = call ptr @memset(ptr %75, i32 0, i32 284)
  %77 = ptrtoint ptr %t.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %addr.i.i69.i, ptr %t.i.i67.i, align 4
  %len3.i.i74.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67.i, i32 0, i32 2
  %78 = ptrtoint ptr %len3.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %len3.i.i74.i, align 4
  %transfer_list.i.i.i75.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67.i, i32 0, i32 18
  %call.i.i.i.i.i76.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i75.i, ptr noundef nonnull %m.i.i68.i, ptr noundef nonnull %m.i.i68.i) #6
  br i1 %call.i.i.i.i.i76.i, label %if.end.i.i.i.i.i78.i, label %do.end19.i.spi_message_add_tail.exit.i.i83.i_crit_edge

do.end19.i.spi_message_add_tail.exit.i.i83.i_crit_edge: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i83.i

if.end.i.i.i.i.i78.i:                             ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %prev.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i.i.i75.i, ptr %prev.i.i.i.i.i71.i, align 4
  %80 = ptrtoint ptr %transfer_list.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %m.i.i68.i, ptr %transfer_list.i.i.i75.i, align 4
  %prev3.i.i.i.i.i77.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67.i, i32 0, i32 18, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %m.i.i68.i, ptr %prev3.i.i.i.i.i77.i, align 4
  %82 = ptrtoint ptr %m.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i.i.i75.i, ptr %m.i.i68.i, align 4
  br label %spi_message_add_tail.exit.i.i83.i

spi_message_add_tail.exit.i.i83.i:                ; preds = %if.end.i.i.i.i.i78.i, %do.end19.i.spi_message_add_tail.exit.i.i83.i_crit_edge
  %arrayidx5.i.i79.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i67.i, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx5.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %val.addr.i70.i, ptr %arrayidx5.i.i79.i, align 4
  %len8.i.i80.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i67.i, i32 0, i32 1, i32 2
  %84 = ptrtoint ptr %len8.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %len8.i.i80.i, align 4
  %transfer_list.i20.i.i81.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i67.i, i32 0, i32 1, i32 18
  %85 = ptrtoint ptr %prev.i.i.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i.i.i71.i, align 4
  %call.i.i.i22.i.i82.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i81.i, ptr noundef %86, ptr noundef nonnull %m.i.i68.i) #6
  br i1 %call.i.i.i22.i.i82.i, label %if.end.i.i.i24.i.i85.i, label %spi_message_add_tail.exit.i.i83.i.p54spi_write32.exit.i_crit_edge

spi_message_add_tail.exit.i.i83.i.p54spi_write32.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write32.exit.i

if.end.i.i.i24.i.i85.i:                           ; preds = %spi_message_add_tail.exit.i.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %prev.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %transfer_list.i20.i.i81.i, ptr %prev.i.i.i.i.i71.i, align 4
  %88 = ptrtoint ptr %transfer_list.i20.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %m.i.i68.i, ptr %transfer_list.i20.i.i81.i, align 4
  %prev3.i.i.i23.i.i84.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i67.i, i32 0, i32 1, i32 18, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i23.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i23.i.i84.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %transfer_list.i20.i.i81.i, ptr %86, align 4
  br label %p54spi_write32.exit.i

p54spi_write32.exit.i:                            ; preds = %if.end.i.i.i24.i.i85.i, %spi_message_add_tail.exit.i.i83.i.p54spi_write32.exit.i_crit_edge
  %91 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i87.i = call i32 @spi_sync(ptr noundef %92, ptr noundef nonnull %m.i.i68.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i69.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i68.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i67.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i70.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i91.i) #6
  %93 = ptrtoint ptr %val.addr.i91.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 176, ptr %val.addr.i91.i, align 2
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i88.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i89.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i90.i) #6
  %94 = ptrtoint ptr %addr.i.i90.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 38, ptr %addr.i.i90.i, align 2
  %95 = getelementptr inbounds i8, ptr %m.i.i89.i, i32 8
  %96 = call ptr @memset(ptr %95, i32 0, i32 40)
  %97 = ptrtoint ptr %m.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %m.i.i89.i, ptr %m.i.i89.i, align 4
  %prev.i.i.i.i.i92.i = getelementptr inbounds %struct.list_head, ptr %m.i.i89.i, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %m.i.i89.i, ptr %prev.i.i.i.i.i92.i, align 4
  %resources.i.i.i.i93.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i89.i, i32 0, i32 10
  %99 = ptrtoint ptr %resources.i.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %resources.i.i.i.i93.i, ptr %resources.i.i.i.i93.i, align 4
  %prev.i2.i.i.i.i94.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i89.i, i32 0, i32 10, i32 1
  %100 = ptrtoint ptr %prev.i2.i.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %resources.i.i.i.i93.i, ptr %prev.i2.i.i.i.i94.i, align 4
  %101 = getelementptr inbounds i8, ptr %t.i.i88.i, i32 4
  %102 = call ptr @memset(ptr %101, i32 0, i32 284)
  %103 = ptrtoint ptr %t.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %addr.i.i90.i, ptr %t.i.i88.i, align 4
  %len3.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88.i, i32 0, i32 2
  %104 = ptrtoint ptr %len3.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %len3.i.i95.i, align 4
  %transfer_list.i.i.i96.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88.i, i32 0, i32 18
  %call.i.i.i.i.i97.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i96.i, ptr noundef nonnull %m.i.i89.i, ptr noundef nonnull %m.i.i89.i) #6
  br i1 %call.i.i.i.i.i97.i, label %if.end.i.i.i.i.i99.i, label %p54spi_write32.exit.i.spi_message_add_tail.exit.i.i104.i_crit_edge

p54spi_write32.exit.i.spi_message_add_tail.exit.i.i104.i_crit_edge: ; preds = %p54spi_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i104.i

if.end.i.i.i.i.i99.i:                             ; preds = %p54spi_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %prev.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %transfer_list.i.i.i96.i, ptr %prev.i.i.i.i.i92.i, align 4
  %106 = ptrtoint ptr %transfer_list.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %m.i.i89.i, ptr %transfer_list.i.i.i96.i, align 4
  %prev3.i.i.i.i.i98.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88.i, i32 0, i32 18, i32 1
  %107 = ptrtoint ptr %prev3.i.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %m.i.i89.i, ptr %prev3.i.i.i.i.i98.i, align 4
  %108 = ptrtoint ptr %m.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %transfer_list.i.i.i96.i, ptr %m.i.i89.i, align 4
  br label %spi_message_add_tail.exit.i.i104.i

spi_message_add_tail.exit.i.i104.i:               ; preds = %if.end.i.i.i.i.i99.i, %p54spi_write32.exit.i.spi_message_add_tail.exit.i.i104.i_crit_edge
  %arrayidx5.i.i100.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i88.i, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx5.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %val.addr.i91.i, ptr %arrayidx5.i.i100.i, align 4
  %len8.i.i101.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i88.i, i32 0, i32 1, i32 2
  %110 = ptrtoint ptr %len8.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %len8.i.i101.i, align 4
  %transfer_list.i20.i.i102.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i88.i, i32 0, i32 1, i32 18
  %111 = ptrtoint ptr %prev.i.i.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i.i.i.i.i92.i, align 4
  %call.i.i.i22.i.i103.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i102.i, ptr noundef %112, ptr noundef nonnull %m.i.i89.i) #6
  br i1 %call.i.i.i22.i.i103.i, label %if.end.i.i.i24.i.i106.i, label %spi_message_add_tail.exit.i.i104.i.p54spi_write16.exit109.i_crit_edge

spi_message_add_tail.exit.i.i104.i.p54spi_write16.exit109.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write16.exit109.i

if.end.i.i.i24.i.i106.i:                          ; preds = %spi_message_add_tail.exit.i.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %prev.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %transfer_list.i20.i.i102.i, ptr %prev.i.i.i.i.i92.i, align 4
  %114 = ptrtoint ptr %transfer_list.i20.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %m.i.i89.i, ptr %transfer_list.i20.i.i102.i, align 4
  %prev3.i.i.i23.i.i105.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i88.i, i32 0, i32 1, i32 18, i32 1
  %115 = ptrtoint ptr %prev3.i.i.i23.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev3.i.i.i23.i.i105.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %transfer_list.i20.i.i102.i, ptr %112, align 4
  br label %p54spi_write16.exit109.i

p54spi_write16.exit109.i:                         ; preds = %if.end.i.i.i24.i.i106.i, %spi_message_add_tail.exit.i.i104.i.p54spi_write16.exit109.i_crit_edge
  %117 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i108.i = call i32 @spi_sync(ptr noundef %118, ptr noundef nonnull %m.i.i89.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i90.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i89.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i88.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i91.i) #6
  call void @msleep(i32 noundef 50) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i113.i) #6
  %119 = ptrtoint ptr %val.addr.i113.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 160, ptr %val.addr.i113.i, align 2
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i110.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i111.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i112.i) #6
  %120 = ptrtoint ptr %addr.i.i112.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 38, ptr %addr.i.i112.i, align 2
  %121 = getelementptr inbounds i8, ptr %m.i.i111.i, i32 8
  %122 = call ptr @memset(ptr %121, i32 0, i32 40)
  %123 = ptrtoint ptr %m.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %m.i.i111.i, ptr %m.i.i111.i, align 4
  %prev.i.i.i.i.i114.i = getelementptr inbounds %struct.list_head, ptr %m.i.i111.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %m.i.i111.i, ptr %prev.i.i.i.i.i114.i, align 4
  %resources.i.i.i.i115.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i111.i, i32 0, i32 10
  %125 = ptrtoint ptr %resources.i.i.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %resources.i.i.i.i115.i, ptr %resources.i.i.i.i115.i, align 4
  %prev.i2.i.i.i.i116.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i111.i, i32 0, i32 10, i32 1
  %126 = ptrtoint ptr %prev.i2.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %resources.i.i.i.i115.i, ptr %prev.i2.i.i.i.i116.i, align 4
  %127 = getelementptr inbounds i8, ptr %t.i.i110.i, i32 4
  %128 = call ptr @memset(ptr %127, i32 0, i32 284)
  %129 = ptrtoint ptr %t.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %addr.i.i112.i, ptr %t.i.i110.i, align 4
  %len3.i.i117.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i110.i, i32 0, i32 2
  %130 = ptrtoint ptr %len3.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2, ptr %len3.i.i117.i, align 4
  %transfer_list.i.i.i118.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i110.i, i32 0, i32 18
  %call.i.i.i.i.i119.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i118.i, ptr noundef nonnull %m.i.i111.i, ptr noundef nonnull %m.i.i111.i) #6
  br i1 %call.i.i.i.i.i119.i, label %if.end.i.i.i.i.i121.i, label %p54spi_write16.exit109.i.spi_message_add_tail.exit.i.i126.i_crit_edge

p54spi_write16.exit109.i.spi_message_add_tail.exit.i.i126.i_crit_edge: ; preds = %p54spi_write16.exit109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i126.i

if.end.i.i.i.i.i121.i:                            ; preds = %p54spi_write16.exit109.i
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %prev.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %transfer_list.i.i.i118.i, ptr %prev.i.i.i.i.i114.i, align 4
  %132 = ptrtoint ptr %transfer_list.i.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %m.i.i111.i, ptr %transfer_list.i.i.i118.i, align 4
  %prev3.i.i.i.i.i120.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i110.i, i32 0, i32 18, i32 1
  %133 = ptrtoint ptr %prev3.i.i.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %m.i.i111.i, ptr %prev3.i.i.i.i.i120.i, align 4
  %134 = ptrtoint ptr %m.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %transfer_list.i.i.i118.i, ptr %m.i.i111.i, align 4
  br label %spi_message_add_tail.exit.i.i126.i

spi_message_add_tail.exit.i.i126.i:               ; preds = %if.end.i.i.i.i.i121.i, %p54spi_write16.exit109.i.spi_message_add_tail.exit.i.i126.i_crit_edge
  %arrayidx5.i.i122.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i110.i, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx5.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %val.addr.i113.i, ptr %arrayidx5.i.i122.i, align 4
  %len8.i.i123.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i110.i, i32 0, i32 1, i32 2
  %136 = ptrtoint ptr %len8.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %len8.i.i123.i, align 4
  %transfer_list.i20.i.i124.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i110.i, i32 0, i32 1, i32 18
  %137 = ptrtoint ptr %prev.i.i.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i.i.i.i114.i, align 4
  %call.i.i.i22.i.i125.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i124.i, ptr noundef %138, ptr noundef nonnull %m.i.i111.i) #6
  br i1 %call.i.i.i22.i.i125.i, label %if.end.i.i.i24.i.i128.i, label %spi_message_add_tail.exit.i.i126.i.if.end4_crit_edge

spi_message_add_tail.exit.i.i126.i.if.end4_crit_edge: ; preds = %spi_message_add_tail.exit.i.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i.i.i24.i.i128.i:                          ; preds = %spi_message_add_tail.exit.i.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %prev.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %transfer_list.i20.i.i124.i, ptr %prev.i.i.i.i.i114.i, align 4
  %140 = ptrtoint ptr %transfer_list.i20.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %m.i.i111.i, ptr %transfer_list.i20.i.i124.i, align 4
  %prev3.i.i.i23.i.i127.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i110.i, i32 0, i32 1, i32 18, i32 1
  %141 = ptrtoint ptr %prev3.i.i.i23.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev3.i.i.i23.i.i127.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %transfer_list.i20.i.i124.i, ptr %138, align 4
  br label %if.end4

if.then3:                                         ; preds = %p54spi_upload_firmware.exit.thread69, %if.end.if.then3_crit_edge
  %retval.0.i68 = phi i32 [ %call4.i, %p54spi_upload_firmware.exit.thread69 ], [ -12, %if.end.if.then3_crit_edge ]
  %143 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i.i59 = call ptr @gpio_to_desc(i32 noundef %143) #6
  %call1.i.i60 = call i32 @gpiod_to_irq(ptr noundef %call.i.i59) #6
  call void @disable_irq(i32 noundef %call1.i.i60) #6
  %144 = load i32, ptr @p54spi_gpio_power, align 4
  %call.i1.i61 = call ptr @gpio_to_desc(i32 noundef %144) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i1.i61, i32 noundef 0) #6
  br label %out_unlock

if.end4:                                          ; preds = %if.end.i.i.i24.i.i128.i, %spi_message_add_tail.exit.i.i126.i.if.end4_crit_edge
  %145 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i130.i = call i32 @spi_sync(ptr noundef %146, ptr noundef nonnull %m.i.i111.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i112.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i111.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i110.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i113.i) #6
  call void @msleep(i32 noundef 50) #6
  call void @kfree(ptr noundef nonnull %call.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %fw_comp = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 5
  %call7 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %fw_comp, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %spi = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 2
  %147 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.37) #9
  call fastcc void @p54spi_power_off()
  br label %out

if.end11:                                         ; preds = %if.end4
  %call13 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %149 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i.i62 = call ptr @gpio_to_desc(i32 noundef %149) #6
  %call1.i.i63 = call i32 @gpiod_to_irq(ptr noundef %call.i.i62) #6
  call void @disable_irq(i32 noundef %call1.i.i63) #6
  %150 = load i32, ptr @p54spi_gpio_power, align 4
  %call.i1.i64 = call ptr @gpio_to_desc(i32 noundef %150) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i1.i64, i32 noundef 0) #6
  br label %out

if.end16:                                         ; preds = %if.end11
  %151 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp18.not = icmp eq i32 %152, 2
  br i1 %cmp18.not, label %if.end16.out_unlock_crit_edge, label %do.end30, !prof !136

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 556, i32 noundef 9, ptr noundef null) #6
  br label %out_unlock

out_unlock:                                       ; preds = %do.end30, %if.end16.out_unlock_crit_edge, %if.then3
  %retval.0.i67 = phi i32 [ %err.0.lcssa.i, %if.end16.out_unlock_crit_edge ], [ %err.0.lcssa.i, %do.end30 ], [ %retval.0.i68, %if.then3 ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %out

out:                                              ; preds = %out_unlock, %if.then15, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i67, %out_unlock ], [ -4, %if.then15 ], [ -1, %do.end ], [ -4, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54spi_op_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %fw_state = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !136

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 571, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %4) #6
  %call1.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i.i) #6
  tail call void @disable_irq(i32 noundef %call1.i.i) #6
  %5 = load i32, ptr @p54spi_gpio_power, align 4
  %call.i1.i = tail call ptr @gpio_to_desc(i32 noundef %5) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1.i, i32 noundef 0) #6
  %tx_lock = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 6
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #6
  %tx_pending = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tx_pending, ptr %tx_pending, align 4
  %prev.i = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_pending, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call24) #6
  %8 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fw_state, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %work = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3
  %call32 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54spi_op_tx(ptr nocapture noundef readonly %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %tx_lock = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 6
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #6
  %tx_pending = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %4, ptr noundef %tx_pending) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_pending, ptr %2, align 4
  %prev3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %2, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call6) #6
  %hw = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %work = getelementptr inbounds %struct.p54s_priv, ptr %1, i32 0, i32 3
  tail call void @ieee80211_queue_work(ptr noundef %10, ptr noundef %work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_register_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_free_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54spi_read32(ptr nocapture noundef readonly %priv, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %t.i = alloca [2 x %struct.spi_transfer], align 4
  %m.i = alloca %struct.spi_message, align 4
  %addr.i = alloca i16, align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %1 = or i8 %addr, -128
  %or.i = zext i8 %1 to i16
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %or.i, ptr %addr.i, align 2
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
  %9 = getelementptr inbounds i8, ptr %t.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 188)
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %addr.i, ptr %t.i, align 4
  %len3.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len3.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %16 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %rx_buf.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val, ptr %rx_buf.i, align 4
  %len7.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %len7.i, align 4
  %transfer_list.i9.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i11.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i9.i, ptr noundef %20, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i11.i, label %if.end.i.i.i13.i, label %spi_message_add_tail.exit.i.p54spi_spi_read.exit_crit_edge

spi_message_add_tail.exit.i.p54spi_spi_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_spi_read.exit

if.end.i.i.i13.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i9.i, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m.i, ptr %transfer_list.i9.i, align 4
  %prev3.i.i.i12.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i12.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i9.i, ptr %20, align 4
  br label %p54spi_spi_read.exit

p54spi_spi_read.exit:                             ; preds = %if.end.i.i.i13.i, %spi_message_add_tail.exit.i.p54spi_spi_read.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.p54s_priv, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #6
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54spi_rx(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %t.i.i.i101 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i102 = alloca %struct.spi_message, align 4
  %addr.i.i.i103 = alloca i16, align 2
  %val.addr.i.i104 = alloca i32, align 4
  %t.i80 = alloca [2 x %struct.spi_transfer], align 4
  %m.i81 = alloca %struct.spi_message, align 4
  %addr.i82 = alloca i16, align 2
  %t.i.i.i56 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i57 = alloca %struct.spi_message, align 4
  %addr.i.i.i58 = alloca i16, align 2
  %val.addr.i.i59 = alloca i32, align 4
  %t.i.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %addr.i.i.i = alloca i16, align 2
  %val.addr.i.i = alloca i32, align 4
  %t.i = alloca [2 x %struct.spi_transfer], align 4
  %m.i = alloca %struct.spi_message, align 4
  %addr.i = alloca i16, align 2
  %rx_head = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_head) #6
  %0 = ptrtoint ptr %rx_head to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rx_head, align 2, !annotation !135
  %1 = getelementptr inbounds [2 x i16], ptr %rx_head, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !135
  %call = tail call fastcc i32 @p54spi_wakeup(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 168, ptr %addr.i, align 2
  %4 = getelementptr inbounds i8, ptr %m.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %t.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 188)
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr.i, ptr %t.i, align 4
  %len3.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %13 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len3.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %rx_buf.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_head, ptr %rx_buf.i, align 4
  %len7.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len7.i, align 4
  %transfer_list.i9.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i11.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i9.i, ptr noundef %21, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i11.i, label %if.end.i.i.i13.i, label %spi_message_add_tail.exit.i.p54spi_spi_read.exit_crit_edge

spi_message_add_tail.exit.i.p54spi_spi_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_spi_read.exit

if.end.i.i.i13.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i9.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i, ptr %transfer_list.i9.i, align 4
  %prev3.i.i.i12.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i12.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i9.i, ptr %21, align 4
  br label %p54spi_spi_read.exit

p54spi_spi_read.exit:                             ; preds = %if.end.i.i.i13.i, %spi_message_add_tail.exit.i.p54spi_spi_read.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.p54s_priv, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #6
  %28 = ptrtoint ptr %rx_head to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rx_head, align 2
  %conv = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp1 = icmp eq i16 %29, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %p54spi_spi_read.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i) #6
  %30 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 33554432, ptr %val.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  %31 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %addr.i.i.i, align 2
  %32 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %38 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 284)
  %40 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %addr.i.i.i, ptr %t.i.i.i, align 4
  %len3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %len3.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then3.spi_message_add_tail.exit.i.i.i_crit_edge

if.then3.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.then3.spi_message_add_tail.exit.i.i.i_crit_edge
  %arrayidx5.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %val.addr.i.i, ptr %arrayidx5.i.i.i, align 4
  %len8.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %len8.i.i.i, align 4
  %transfer_list.i20.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i22.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i, ptr noundef %49, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i22.i.i.i, label %if.end.i.i.i24.i.i.i, label %spi_message_add_tail.exit.i.i.i.p54spi_sleep.exit_crit_edge

spi_message_add_tail.exit.i.i.i.p54spi_sleep.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_sleep.exit

if.end.i.i.i24.i.i.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i20.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %transfer_list.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %m.i.i.i, ptr %transfer_list.i20.i.i.i, align 4
  %prev3.i.i.i23.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i23.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i20.i.i.i, ptr %49, align 4
  br label %p54spi_sleep.exit

p54spi_sleep.exit:                                ; preds = %if.end.i.i.i24.i.i.i, %spi_message_add_tail.exit.i.i.i.p54spi_sleep.exit_crit_edge
  %54 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spi.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %55, ptr noundef nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i) #6
  %56 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end4:                                          ; preds = %p54spi_spi_read.exit
  %add = add nuw nsw i32 %conv, 4
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i59) #6
  %58 = ptrtoint ptr %val.addr.i.i59 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 33554432, ptr %val.addr.i.i59, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i56) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i57) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i58) #6
  %59 = ptrtoint ptr %addr.i.i.i58 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %addr.i.i.i58, align 2
  %60 = getelementptr inbounds i8, ptr %m.i.i.i57, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 40)
  %62 = ptrtoint ptr %m.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %m.i.i.i57, ptr %m.i.i.i57, align 4
  %prev.i.i.i.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %m.i.i.i57, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %m.i.i.i57, ptr %prev.i.i.i.i.i.i60, align 4
  %resources.i.i.i.i.i61 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i57, i32 0, i32 10
  %64 = ptrtoint ptr %resources.i.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i.i.i61, ptr %resources.i.i.i.i.i61, align 4
  %prev.i2.i.i.i.i.i62 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i57, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %prev.i2.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i.i.i61, ptr %prev.i2.i.i.i.i.i62, align 4
  %66 = getelementptr inbounds i8, ptr %t.i.i.i56, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 284)
  %68 = ptrtoint ptr %t.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %addr.i.i.i58, ptr %t.i.i.i56, align 4
  %len3.i.i.i63 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i56, i32 0, i32 2
  %69 = ptrtoint ptr %len3.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %len3.i.i.i63, align 4
  %transfer_list.i.i.i.i64 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i56, i32 0, i32 18
  %call.i.i.i.i.i.i65 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i64, ptr noundef nonnull %m.i.i.i57, ptr noundef nonnull %m.i.i.i57) #6
  br i1 %call.i.i.i.i.i.i65, label %if.end.i.i.i.i.i.i67, label %if.then7.spi_message_add_tail.exit.i.i.i72_crit_edge

if.then7.spi_message_add_tail.exit.i.i.i72_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i72

if.end.i.i.i.i.i.i67:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %prev.i.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i.i.i.i64, ptr %prev.i.i.i.i.i.i60, align 4
  %71 = ptrtoint ptr %transfer_list.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %m.i.i.i57, ptr %transfer_list.i.i.i.i64, align 4
  %prev3.i.i.i.i.i.i66 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i56, i32 0, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %m.i.i.i57, ptr %prev3.i.i.i.i.i.i66, align 4
  %73 = ptrtoint ptr %m.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i.i.i.i64, ptr %m.i.i.i57, align 4
  br label %spi_message_add_tail.exit.i.i.i72

spi_message_add_tail.exit.i.i.i72:                ; preds = %if.end.i.i.i.i.i.i67, %if.then7.spi_message_add_tail.exit.i.i.i72_crit_edge
  %arrayidx5.i.i.i68 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i56, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx5.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %val.addr.i.i59, ptr %arrayidx5.i.i.i68, align 4
  %len8.i.i.i69 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i56, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %len8.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %len8.i.i.i69, align 4
  %transfer_list.i20.i.i.i70 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i56, i32 0, i32 1, i32 18
  %76 = ptrtoint ptr %prev.i.i.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i.i.i.i60, align 4
  %call.i.i.i22.i.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i70, ptr noundef %77, ptr noundef nonnull %m.i.i.i57) #6
  br i1 %call.i.i.i22.i.i.i71, label %if.end.i.i.i24.i.i.i74, label %spi_message_add_tail.exit.i.i.i72.p54spi_sleep.exit77_crit_edge

spi_message_add_tail.exit.i.i.i72.p54spi_sleep.exit77_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_sleep.exit77

if.end.i.i.i24.i.i.i74:                           ; preds = %spi_message_add_tail.exit.i.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %prev.i.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i20.i.i.i70, ptr %prev.i.i.i.i.i.i60, align 4
  %79 = ptrtoint ptr %transfer_list.i20.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %m.i.i.i57, ptr %transfer_list.i20.i.i.i70, align 4
  %prev3.i.i.i23.i.i.i73 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i56, i32 0, i32 1, i32 18, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i23.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i23.i.i.i73, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i20.i.i.i70, ptr %77, align 4
  br label %p54spi_sleep.exit77

p54spi_sleep.exit77:                              ; preds = %if.end.i.i.i24.i.i.i74, %spi_message_add_tail.exit.i.i.i72.p54spi_sleep.exit77_crit_edge
  %82 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %spi.i, align 4
  %call.i.i.i76 = call i32 @spi_sync(ptr noundef %83, ptr noundef nonnull %m.i.i.i57) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i58) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i57) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i56) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i59) #6
  %84 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %29)
  %cmp15 = icmp ult i16 %29, 3
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call.i78 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #6
  %86 = call ptr @memcpy(ptr %call.i78, ptr %1, i32 %conv)
  br label %if.end28

if.else:                                          ; preds = %if.end13
  %call.i79 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #6
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %1, align 2
  %89 = ptrtoint ptr %call.i79 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %call.i79, align 1
  %sub = add nsw i32 %conv, -2
  %call25 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub) #6
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i80) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i81) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i82) #6
  %90 = ptrtoint ptr %addr.i82 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 168, ptr %addr.i82, align 2
  %91 = getelementptr inbounds i8, ptr %m.i81, i32 8
  %92 = call ptr @memset(ptr %91, i32 0, i32 40)
  %93 = ptrtoint ptr %m.i81 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %m.i81, ptr %m.i81, align 4
  %prev.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %m.i81, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %m.i81, ptr %prev.i.i.i.i83, align 4
  %resources.i.i.i84 = getelementptr inbounds %struct.spi_message, ptr %m.i81, i32 0, i32 10
  %95 = ptrtoint ptr %resources.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %resources.i.i.i84, ptr %resources.i.i.i84, align 4
  %prev.i2.i.i.i85 = getelementptr inbounds %struct.spi_message, ptr %m.i81, i32 0, i32 10, i32 1
  %96 = ptrtoint ptr %prev.i2.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %resources.i.i.i84, ptr %prev.i2.i.i.i85, align 4
  %97 = getelementptr inbounds i8, ptr %t.i80, i32 4
  %98 = call ptr @memset(ptr %97, i32 0, i32 188)
  %99 = ptrtoint ptr %t.i80 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %addr.i82, ptr %t.i80, align 4
  %len3.i86 = getelementptr inbounds %struct.spi_transfer, ptr %t.i80, i32 0, i32 2
  %100 = ptrtoint ptr %len3.i86 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %len3.i86, align 4
  %transfer_list.i.i87 = getelementptr inbounds %struct.spi_transfer, ptr %t.i80, i32 0, i32 18
  %call.i.i.i.i88 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i87, ptr noundef nonnull %m.i81, ptr noundef nonnull %m.i81) #6
  br i1 %call.i.i.i.i88, label %if.end.i.i.i.i90, label %if.else.spi_message_add_tail.exit.i95_crit_edge

if.else.spi_message_add_tail.exit.i95_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i95

if.end.i.i.i.i90:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %prev.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %transfer_list.i.i87, ptr %prev.i.i.i.i83, align 4
  %102 = ptrtoint ptr %transfer_list.i.i87 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %m.i81, ptr %transfer_list.i.i87, align 4
  %prev3.i.i.i.i89 = getelementptr inbounds %struct.spi_transfer, ptr %t.i80, i32 0, i32 18, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %m.i81, ptr %prev3.i.i.i.i89, align 4
  %104 = ptrtoint ptr %m.i81 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %transfer_list.i.i87, ptr %m.i81, align 4
  br label %spi_message_add_tail.exit.i95

spi_message_add_tail.exit.i95:                    ; preds = %if.end.i.i.i.i90, %if.else.spi_message_add_tail.exit.i95_crit_edge
  %rx_buf.i91 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i80, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %rx_buf.i91 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call25, ptr %rx_buf.i91, align 4
  %len7.i92 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i80, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %len7.i92 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub, ptr %len7.i92, align 4
  %transfer_list.i9.i93 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i80, i32 0, i32 1, i32 18
  %107 = ptrtoint ptr %prev.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i.i.i83, align 4
  %call.i.i.i11.i94 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i9.i93, ptr noundef %108, ptr noundef nonnull %m.i81) #6
  br i1 %call.i.i.i11.i94, label %if.end.i.i.i13.i97, label %spi_message_add_tail.exit.i95.p54spi_spi_read.exit100_crit_edge

spi_message_add_tail.exit.i95.p54spi_spi_read.exit100_crit_edge: ; preds = %spi_message_add_tail.exit.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_spi_read.exit100

if.end.i.i.i13.i97:                               ; preds = %spi_message_add_tail.exit.i95
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %prev.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %transfer_list.i9.i93, ptr %prev.i.i.i.i83, align 4
  %110 = ptrtoint ptr %transfer_list.i9.i93 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %m.i81, ptr %transfer_list.i9.i93, align 4
  %prev3.i.i.i12.i96 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i80, i32 0, i32 1, i32 18, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i12.i96 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i12.i96, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %transfer_list.i9.i93, ptr %108, align 4
  br label %p54spi_spi_read.exit100

p54spi_spi_read.exit100:                          ; preds = %if.end.i.i.i13.i97, %spi_message_add_tail.exit.i95.p54spi_spi_read.exit100_crit_edge
  %113 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %spi.i, align 4
  %call.i99 = call i32 @spi_sync(ptr noundef %114, ptr noundef nonnull %m.i81) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i82) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i81) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i80) #6
  br label %if.end28

if.end28:                                         ; preds = %p54spi_spi_read.exit100, %if.then17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i104) #6
  %115 = ptrtoint ptr %val.addr.i.i104 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 33554432, ptr %val.addr.i.i104, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i101) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i102) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i103) #6
  %116 = ptrtoint ptr %addr.i.i.i103 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %addr.i.i.i103, align 2
  %117 = getelementptr inbounds i8, ptr %m.i.i.i102, i32 8
  %118 = call ptr @memset(ptr %117, i32 0, i32 40)
  %119 = ptrtoint ptr %m.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %m.i.i.i102, ptr %m.i.i.i102, align 4
  %prev.i.i.i.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %m.i.i.i102, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %m.i.i.i102, ptr %prev.i.i.i.i.i.i105, align 4
  %resources.i.i.i.i.i106 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i102, i32 0, i32 10
  %121 = ptrtoint ptr %resources.i.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %resources.i.i.i.i.i106, ptr %resources.i.i.i.i.i106, align 4
  %prev.i2.i.i.i.i.i107 = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i102, i32 0, i32 10, i32 1
  %122 = ptrtoint ptr %prev.i2.i.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %resources.i.i.i.i.i106, ptr %prev.i2.i.i.i.i.i107, align 4
  %123 = getelementptr inbounds i8, ptr %t.i.i.i101, i32 4
  %124 = call ptr @memset(ptr %123, i32 0, i32 284)
  %125 = ptrtoint ptr %t.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %addr.i.i.i103, ptr %t.i.i.i101, align 4
  %len3.i.i.i108 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i101, i32 0, i32 2
  %126 = ptrtoint ptr %len3.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %len3.i.i.i108, align 4
  %transfer_list.i.i.i.i109 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i101, i32 0, i32 18
  %call.i.i.i.i.i.i110 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i109, ptr noundef nonnull %m.i.i.i102, ptr noundef nonnull %m.i.i.i102) #6
  br i1 %call.i.i.i.i.i.i110, label %if.end.i.i.i.i.i.i112, label %if.end28.spi_message_add_tail.exit.i.i.i117_crit_edge

if.end28.spi_message_add_tail.exit.i.i.i117_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i117

if.end.i.i.i.i.i.i112:                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %prev.i.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %transfer_list.i.i.i.i109, ptr %prev.i.i.i.i.i.i105, align 4
  %128 = ptrtoint ptr %transfer_list.i.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %m.i.i.i102, ptr %transfer_list.i.i.i.i109, align 4
  %prev3.i.i.i.i.i.i111 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i101, i32 0, i32 18, i32 1
  %129 = ptrtoint ptr %prev3.i.i.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %m.i.i.i102, ptr %prev3.i.i.i.i.i.i111, align 4
  %130 = ptrtoint ptr %m.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %transfer_list.i.i.i.i109, ptr %m.i.i.i102, align 4
  br label %spi_message_add_tail.exit.i.i.i117

spi_message_add_tail.exit.i.i.i117:               ; preds = %if.end.i.i.i.i.i.i112, %if.end28.spi_message_add_tail.exit.i.i.i117_crit_edge
  %arrayidx5.i.i.i113 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i101, i32 0, i32 1
  %131 = ptrtoint ptr %arrayidx5.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %val.addr.i.i104, ptr %arrayidx5.i.i.i113, align 4
  %len8.i.i.i114 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i101, i32 0, i32 1, i32 2
  %132 = ptrtoint ptr %len8.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 4, ptr %len8.i.i.i114, align 4
  %transfer_list.i20.i.i.i115 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i101, i32 0, i32 1, i32 18
  %133 = ptrtoint ptr %prev.i.i.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i.i.i.i.i.i105, align 4
  %call.i.i.i22.i.i.i116 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i115, ptr noundef %134, ptr noundef nonnull %m.i.i.i102) #6
  br i1 %call.i.i.i22.i.i.i116, label %if.end.i.i.i24.i.i.i119, label %spi_message_add_tail.exit.i.i.i117.p54spi_sleep.exit122_crit_edge

spi_message_add_tail.exit.i.i.i117.p54spi_sleep.exit122_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_sleep.exit122

if.end.i.i.i24.i.i.i119:                          ; preds = %spi_message_add_tail.exit.i.i.i117
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %prev.i.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %transfer_list.i20.i.i.i115, ptr %prev.i.i.i.i.i.i105, align 4
  %136 = ptrtoint ptr %transfer_list.i20.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %m.i.i.i102, ptr %transfer_list.i20.i.i.i115, align 4
  %prev3.i.i.i23.i.i.i118 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i101, i32 0, i32 1, i32 18, i32 1
  %137 = ptrtoint ptr %prev3.i.i.i23.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev3.i.i.i23.i.i.i118, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %transfer_list.i20.i.i.i115, ptr %134, align 4
  br label %p54spi_sleep.exit122

p54spi_sleep.exit122:                             ; preds = %if.end.i.i.i24.i.i.i119, %spi_message_add_tail.exit.i.i.i117.p54spi_sleep.exit122_crit_edge
  %139 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %spi.i, align 4
  %call.i.i.i121 = call i32 @spi_sync(ptr noundef %140, ptr noundef nonnull %m.i.i.i102) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i103) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i102) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i101) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i104) #6
  %call29 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #6
  %hw = getelementptr inbounds %struct.p54s_priv, ptr %priv, i32 0, i32 1
  %141 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hw, align 8
  %call30 = call i32 @p54_rx(ptr noundef %142, ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %p54spi_sleep.exit122.cleanup_crit_edge

p54spi_sleep.exit122.cleanup_crit_edge:           ; preds = %p54spi_sleep.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %p54spi_sleep.exit122
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %p54spi_sleep.exit122.cleanup_crit_edge, %p54spi_sleep.exit77, %p54spi_sleep.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %p54spi_sleep.exit ], [ -12, %p54spi_sleep.exit77 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %p54spi_sleep.exit122.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_head) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54spi_wakeup(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %t.i.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %addr.i.i.i = alloca i16, align 2
  %val.addr.i.i = alloca i32, align 4
  %t.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i = alloca %struct.spi_message, align 4
  %addr.i.i = alloca i16, align 2
  %val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %val.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i) #6
  %1 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %addr.i.i, align 2
  %2 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 284)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr.i.i, ptr %t.i.i, align 4
  %len3.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len3.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %arrayidx5.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %val.addr.i, ptr %arrayidx5.i.i, align 4
  %len8.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %len8.i.i, align 4
  %transfer_list.i20.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1, i32 18
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i22.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i, ptr noundef %19, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i22.i.i, label %if.end.i.i.i24.i.i, label %spi_message_add_tail.exit.i.i.p54spi_write32.exit_crit_edge

spi_message_add_tail.exit.i.i.p54spi_write32.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write32.exit

if.end.i.i.i24.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i20.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m.i.i, ptr %transfer_list.i20.i.i, align 4
  %prev3.i.i.i23.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i23.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i20.i.i, ptr %19, align 4
  br label %p54spi_write32.exit

p54spi_write32.exit:                              ; preds = %if.end.i.i.i24.i.i, %spi_message_add_tail.exit.i.i.p54spi_write32.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.p54s_priv, ptr %priv, i32 0, i32 2
  %24 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %25, ptr noundef nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %do.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %p54spi_write32.exit
  %i.06.i = phi i32 [ 0, %p54spi_write32.exit ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = call fastcc i32 @p54spi_read32(ptr noundef %priv, i8 noundef zeroext 8) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp1.i.not, label %for.cond.i, label %if.end

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30) #9
  br label %return

if.end:                                           ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i) #6
  %28 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16777216, ptr %val.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  %29 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 16, ptr %addr.i.i.i, align 2
  %30 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %36 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 284)
  %38 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %addr.i.i.i, ptr %t.i.i.i, align 4
  %len3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len3.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i_crit_edge
  %arrayidx5.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %val.addr.i.i, ptr %arrayidx5.i.i.i, align 4
  %len8.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %len8.i.i.i, align 4
  %transfer_list.i20.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i22.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i.i, ptr noundef %47, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i22.i.i.i, label %if.end.i.i.i24.i.i.i, label %spi_message_add_tail.exit.i.i.i.p54spi_int_ack.exit_crit_edge

spi_message_add_tail.exit.i.i.i.p54spi_int_ack.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_int_ack.exit

if.end.i.i.i24.i.i.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i20.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %transfer_list.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %m.i.i.i, ptr %transfer_list.i20.i.i.i, align 4
  %prev3.i.i.i23.i.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i.i, i32 0, i32 1, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i23.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i20.i.i.i, ptr %47, align 4
  br label %p54spi_int_ack.exit

p54spi_int_ack.exit:                              ; preds = %if.end.i.i.i24.i.i.i, %spi_message_add_tail.exit.i.i.i.p54spi_int_ack.exit_crit_edge
  %52 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi.i.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %53, ptr noundef nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i) #6
  br label %return

return:                                           ; preds = %p54spi_int_ack.exit, %do.end
  %retval.0 = phi i32 [ 0, %p54spi_int_ack.exit ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_free_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54spi_spi_write_dma(ptr nocapture noundef readonly %priv, i32 noundef %base, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %t.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i = alloca %struct.spi_message, align 4
  %addr.i = alloca i16, align 2
  %last_word.i = alloca i16, align 2
  %t.i.i29 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i30 = alloca %struct.spi_message, align 4
  %addr.i.i31 = alloca i16, align 2
  %val.addr.i32 = alloca i32, align 4
  %t.i.i7 = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i8 = alloca %struct.spi_message, align 4
  %addr.i.i9 = alloca i16, align 2
  %val.addr.i10 = alloca i16, align 2
  %t.i.i = alloca [3 x %struct.spi_transfer], align 4
  %m.i.i = alloca %struct.spi_message, align 4
  %addr.i.i = alloca i16, align 2
  %val.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %do.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @p54spi_read32(ptr noundef %priv, i8 noundef zeroext 44) #6
  %and.i = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp1.i.not, label %for.cond.i, label %if.end

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %spi = getelementptr inbounds %struct.p54s_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34) #9
  br label %return

if.end:                                           ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %2 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %val.addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i) #6
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 44, ptr %addr.i.i, align 2
  %4 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 284)
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr.i.i, ptr %t.i.i, align 4
  %len3.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len3.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i_crit_edge
  %arrayidx5.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.addr.i, ptr %arrayidx5.i.i, align 4
  %len8.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len8.i.i, align 4
  %transfer_list.i20.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i22.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i, ptr noundef %21, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i22.i.i, label %if.end.i.i.i24.i.i, label %spi_message_add_tail.exit.i.i.p54spi_write16.exit_crit_edge

spi_message_add_tail.exit.i.i.p54spi_write16.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write16.exit

if.end.i.i.i24.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i20.i.i, ptr %prev.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i.i, ptr %transfer_list.i20.i.i, align 4
  %prev3.i.i.i23.i.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i23.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i20.i.i, ptr %21, align 4
  br label %p54spi_write16.exit

p54spi_write16.exit:                              ; preds = %if.end.i.i.i24.i.i, %spi_message_add_tail.exit.i.i.p54spi_write16.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.p54s_priv, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  %conv = trunc i32 %len to i16
  %28 = call i16 @llvm.bswap.i16(i16 %conv)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i10)
  %29 = ptrtoint ptr %val.addr.i10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %val.addr.i10, align 2
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i7) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i8) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i9) #6
  %30 = ptrtoint ptr %addr.i.i9 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 46, ptr %addr.i.i9, align 2
  %31 = getelementptr inbounds i8, ptr %m.i.i8, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %m.i.i8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %m.i.i8, ptr %m.i.i8, align 4
  %prev.i.i.i.i.i11 = getelementptr inbounds %struct.list_head, ptr %m.i.i8, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %m.i.i8, ptr %prev.i.i.i.i.i11, align 4
  %resources.i.i.i.i12 = getelementptr inbounds %struct.spi_message, ptr %m.i.i8, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i12, ptr %resources.i.i.i.i12, align 4
  %prev.i2.i.i.i.i13 = getelementptr inbounds %struct.spi_message, ptr %m.i.i8, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i12, ptr %prev.i2.i.i.i.i13, align 4
  %37 = getelementptr inbounds i8, ptr %t.i.i7, i32 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 284)
  %39 = ptrtoint ptr %t.i.i7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %addr.i.i9, ptr %t.i.i7, align 4
  %len3.i.i14 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i7, i32 0, i32 2
  %40 = ptrtoint ptr %len3.i.i14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %len3.i.i14, align 4
  %transfer_list.i.i.i15 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i7, i32 0, i32 18
  %call.i.i.i.i.i16 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i15, ptr noundef nonnull %m.i.i8, ptr noundef nonnull %m.i.i8) #6
  br i1 %call.i.i.i.i.i16, label %if.end.i.i.i.i.i18, label %p54spi_write16.exit.spi_message_add_tail.exit.i.i23_crit_edge

p54spi_write16.exit.spi_message_add_tail.exit.i.i23_crit_edge: ; preds = %p54spi_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i23

if.end.i.i.i.i.i18:                               ; preds = %p54spi_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %prev.i.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i15, ptr %prev.i.i.i.i.i11, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %m.i.i8, ptr %transfer_list.i.i.i15, align 4
  %prev3.i.i.i.i.i17 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i7, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m.i.i8, ptr %prev3.i.i.i.i.i17, align 4
  %44 = ptrtoint ptr %m.i.i8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i15, ptr %m.i.i8, align 4
  br label %spi_message_add_tail.exit.i.i23

spi_message_add_tail.exit.i.i23:                  ; preds = %if.end.i.i.i.i.i18, %p54spi_write16.exit.spi_message_add_tail.exit.i.i23_crit_edge
  %arrayidx5.i.i19 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i7, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx5.i.i19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %val.addr.i10, ptr %arrayidx5.i.i19, align 4
  %len8.i.i20 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i7, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %len8.i.i20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len8.i.i20, align 4
  %transfer_list.i20.i.i21 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i7, i32 0, i32 1, i32 18
  %47 = ptrtoint ptr %prev.i.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i.i11, align 4
  %call.i.i.i22.i.i22 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i21, ptr noundef %48, ptr noundef nonnull %m.i.i8) #6
  br i1 %call.i.i.i22.i.i22, label %if.end.i.i.i24.i.i25, label %spi_message_add_tail.exit.i.i23.p54spi_write16.exit28_crit_edge

spi_message_add_tail.exit.i.i23.p54spi_write16.exit28_crit_edge: ; preds = %spi_message_add_tail.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write16.exit28

if.end.i.i.i24.i.i25:                             ; preds = %spi_message_add_tail.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %prev.i.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i20.i.i21, ptr %prev.i.i.i.i.i11, align 4
  %50 = ptrtoint ptr %transfer_list.i20.i.i21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %m.i.i8, ptr %transfer_list.i20.i.i21, align 4
  %prev3.i.i.i23.i.i24 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i7, i32 0, i32 1, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i23.i.i24 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i23.i.i24, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i20.i.i21, ptr %48, align 4
  br label %p54spi_write16.exit28

p54spi_write16.exit28:                            ; preds = %if.end.i.i.i24.i.i25, %spi_message_add_tail.exit.i.i23.p54spi_write16.exit28_crit_edge
  %53 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi.i.i, align 4
  %call.i.i27 = call i32 @spi_sync(ptr noundef %54, ptr noundef nonnull %m.i.i8) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i9) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i8) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i32)
  %55 = ptrtoint ptr %val.addr.i32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %base, ptr %val.addr.i32, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i.i29) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i.i31) #6
  %56 = ptrtoint ptr %addr.i.i31 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 48, ptr %addr.i.i31, align 2
  %57 = getelementptr inbounds i8, ptr %m.i.i30, i32 8
  %58 = call ptr @memset(ptr %57, i32 0, i32 40)
  %59 = ptrtoint ptr %m.i.i30 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %m.i.i30, ptr %m.i.i30, align 4
  %prev.i.i.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %m.i.i30, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %m.i.i30, ptr %prev.i.i.i.i.i33, align 4
  %resources.i.i.i.i34 = getelementptr inbounds %struct.spi_message, ptr %m.i.i30, i32 0, i32 10
  %61 = ptrtoint ptr %resources.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i.i.i34, ptr %resources.i.i.i.i34, align 4
  %prev.i2.i.i.i.i35 = getelementptr inbounds %struct.spi_message, ptr %m.i.i30, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %prev.i2.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i.i.i34, ptr %prev.i2.i.i.i.i35, align 4
  %63 = getelementptr inbounds i8, ptr %t.i.i29, i32 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 284)
  %65 = ptrtoint ptr %t.i.i29 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %addr.i.i31, ptr %t.i.i29, align 4
  %len3.i.i36 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i29, i32 0, i32 2
  %66 = ptrtoint ptr %len3.i.i36 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %len3.i.i36, align 4
  %transfer_list.i.i.i37 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i29, i32 0, i32 18
  %call.i.i.i.i.i38 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i37, ptr noundef nonnull %m.i.i30, ptr noundef nonnull %m.i.i30) #6
  br i1 %call.i.i.i.i.i38, label %if.end.i.i.i.i.i40, label %p54spi_write16.exit28.spi_message_add_tail.exit.i.i45_crit_edge

p54spi_write16.exit28.spi_message_add_tail.exit.i.i45_crit_edge: ; preds = %p54spi_write16.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i45

if.end.i.i.i.i.i40:                               ; preds = %p54spi_write16.exit28
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %prev.i.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.i.i37, ptr %prev.i.i.i.i.i33, align 4
  %68 = ptrtoint ptr %transfer_list.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %m.i.i30, ptr %transfer_list.i.i.i37, align 4
  %prev3.i.i.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i29, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %m.i.i30, ptr %prev3.i.i.i.i.i39, align 4
  %70 = ptrtoint ptr %m.i.i30 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.i.i37, ptr %m.i.i30, align 4
  br label %spi_message_add_tail.exit.i.i45

spi_message_add_tail.exit.i.i45:                  ; preds = %if.end.i.i.i.i.i40, %p54spi_write16.exit28.spi_message_add_tail.exit.i.i45_crit_edge
  %arrayidx5.i.i41 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i29, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx5.i.i41 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %val.addr.i32, ptr %arrayidx5.i.i41, align 4
  %len8.i.i42 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i29, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %len8.i.i42 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %len8.i.i42, align 4
  %transfer_list.i20.i.i43 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i29, i32 0, i32 1, i32 18
  %73 = ptrtoint ptr %prev.i.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i.i.i33, align 4
  %call.i.i.i22.i.i44 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i.i43, ptr noundef %74, ptr noundef nonnull %m.i.i30) #6
  br i1 %call.i.i.i22.i.i44, label %if.end.i.i.i24.i.i47, label %spi_message_add_tail.exit.i.i45.p54spi_write32.exit_crit_edge

spi_message_add_tail.exit.i.i45.p54spi_write32.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_write32.exit

if.end.i.i.i24.i.i47:                             ; preds = %spi_message_add_tail.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %prev.i.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i20.i.i43, ptr %prev.i.i.i.i.i33, align 4
  %76 = ptrtoint ptr %transfer_list.i20.i.i43 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %m.i.i30, ptr %transfer_list.i20.i.i43, align 4
  %prev3.i.i.i23.i.i46 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i.i29, i32 0, i32 1, i32 18, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i23.i.i46 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i23.i.i46, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i20.i.i43, ptr %74, align 4
  br label %p54spi_write32.exit

p54spi_write32.exit:                              ; preds = %if.end.i.i.i24.i.i47, %spi_message_add_tail.exit.i.i45.p54spi_write32.exit_crit_edge
  %79 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi.i.i, align 4
  %call.i.i49 = call i32 @spi_sync(ptr noundef %80, ptr noundef nonnull %m.i.i30) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i.i31) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i30) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i.i29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i32)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 40, ptr %addr.i, align 2
  %82 = getelementptr inbounds i8, ptr %m.i, i32 8
  %83 = call ptr @memset(ptr %82, i32 0, i32 40)
  %84 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %86 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %87 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %88 = getelementptr inbounds i8, ptr %t.i, i32 4
  %89 = call ptr @memset(ptr %88, i32 0, i32 284)
  %90 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %addr.i, ptr %t.i, align 4
  %len3.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %91 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %len3.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %p54spi_write32.exit.spi_message_add_tail.exit.i_crit_edge

p54spi_write32.exit.spi_message_add_tail.exit.i_crit_edge: ; preds = %p54spi_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %p54spi_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %93 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %95 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %p54spi_write32.exit.spi_message_add_tail.exit.i_crit_edge
  %arrayidx5.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %buf, ptr %arrayidx5.i, align 4
  %and.i50 = and i32 %len, -2
  %len8.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 2
  %97 = ptrtoint ptr %len8.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and.i50, ptr %len8.i, align 4
  %transfer_list.i20.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18
  %98 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i22.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20.i, ptr noundef %99, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i22.i, label %if.end.i.i.i24.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit25.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit25.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit25.i

if.end.i.i.i24.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %transfer_list.i20.i, ptr %prev.i.i.i.i, align 4
  %101 = ptrtoint ptr %transfer_list.i20.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %m.i, ptr %transfer_list.i20.i, align 4
  %prev3.i.i.i23.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev3.i.i.i23.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %transfer_list.i20.i, ptr %99, align 4
  br label %spi_message_add_tail.exit25.i

spi_message_add_tail.exit25.i:                    ; preds = %if.end.i.i.i24.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit25.i_crit_edge
  %rem.i = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %spi_message_add_tail.exit25.i.p54spi_spi_write.exit_crit_edge, label %if.then.i

spi_message_add_tail.exit25.i.p54spi_spi_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %p54spi_spi_write.exit

if.then.i:                                        ; preds = %spi_message_add_tail.exit25.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %last_word.i) #6
  %sub.i = add i32 %len, -1
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 %sub.i
  %104 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %105 to i16
  %106 = shl nuw i16 %conv11.i, 8
  %107 = ptrtoint ptr %last_word.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %last_word.i, align 2
  %arrayidx12.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %last_word.i, ptr %arrayidx12.i, align 4
  %len15.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 2, i32 2
  %109 = ptrtoint ptr %len15.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %len15.i, align 4
  %transfer_list.i26.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 2, i32 18
  %110 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i28.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i26.i, ptr noundef %111, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i28.i, label %if.end.i.i.i30.i, label %if.then.i.spi_message_add_tail.exit31.i_crit_edge

if.then.i.spi_message_add_tail.exit31.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit31.i

if.end.i.i.i30.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %transfer_list.i26.i, ptr %prev.i.i.i.i, align 4
  %113 = ptrtoint ptr %transfer_list.i26.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %m.i, ptr %transfer_list.i26.i, align 4
  %prev3.i.i.i29.i = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t.i, i32 0, i32 2, i32 18, i32 1
  %114 = ptrtoint ptr %prev3.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev3.i.i.i29.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %transfer_list.i26.i, ptr %111, align 4
  br label %spi_message_add_tail.exit31.i

spi_message_add_tail.exit31.i:                    ; preds = %if.end.i.i.i30.i, %if.then.i.spi_message_add_tail.exit31.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %last_word.i) #6
  br label %p54spi_spi_write.exit

p54spi_spi_write.exit:                            ; preds = %spi_message_add_tail.exit31.i, %spi_message_add_tail.exit25.i.p54spi_spi_write.exit_crit_edge
  %116 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %spi.i.i, align 4
  %call.i51 = call i32 @spi_sync(ptr noundef %117, ptr noundef nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t.i) #6
  br label %return

return:                                           ; preds = %p54spi_spi_write.exit, %do.end
  %retval.0 = phi i32 [ 0, %p54spi_spi_write.exit ], [ -11, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p54spi_power_off() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @p54spi_gpio_irq, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %0) #6
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #6
  tail call void @disable_irq(i32 noundef %call1.i) #6
  %1 = load i32, ptr @p54spi_gpio_power, align 4
  %call.i1 = tail call ptr @gpio_to_desc(i32 noundef %1) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_parse_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_parse_eeprom(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_unregister_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !117, !118, !119, !120, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__UNIQUE_ID_firmware350, !1, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 30, i32 1}
!2 = !{ptr @__param_p54spi_gpio_power, !3, !"__param_p54spi_gpio_power", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_p54spi_gpio_powertype351, !3, !"__UNIQUE_ID_p54spi_gpio_powertype351", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_p54spi_gpio_power352, !6, !"__UNIQUE_ID_p54spi_gpio_power352", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 39, i32 1}
!7 = !{ptr @__param_p54spi_gpio_irq, !8, !"__param_p54spi_gpio_irq", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_p54spi_gpio_irqtype353, !8, !"__UNIQUE_ID_p54spi_gpio_irqtype353", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_p54spi_gpio_irq354, !11, !"__UNIQUE_ID_p54spi_gpio_irq354", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 43, i32 1}
!12 = !{ptr @__initcall__kmod_p54spi__358_701_p54spi_driver_init6, !13, !"__initcall__kmod_p54spi__358_701_p54spi_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 701, i32 1}
!14 = !{ptr @__exitcall_p54spi_driver_exit, !13, !"__exitcall_p54spi_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_file359, !16, !"__UNIQUE_ID_file359", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 703, i32 1}
!17 = !{ptr @__UNIQUE_ID_license360, !16, !"__UNIQUE_ID_license360", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author361, !19, !"__UNIQUE_ID_author361", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 704, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias362, !21, !"__UNIQUE_ID_alias362", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 705, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias363, !23, !"__UNIQUE_ID_alias363", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 706, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias364, !25, !"__UNIQUE_ID_alias364", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 707, i32 1}
!26 = !{ptr @__param_str_p54spi_gpio_power, !3, !"__param_str_p54spi_gpio_power", i1 false, i1 false}
!27 = !{ptr @p54spi_gpio_power, !28, !"p54spi_gpio_power", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 37, i32 12}
!29 = !{ptr @__param_str_p54spi_gpio_irq, !8, !"__param_str_p54spi_gpio_irq", i1 false, i1 false}
!30 = !{ptr @p54spi_gpio_irq, !31, !"p54spi_gpio_irq", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 41, i32 12}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 694, i32 12}
!34 = !{ptr @p54spi_driver, !35, !"p54spi_driver", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 692, i32 26}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 592, i32 3}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @p54spi_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @p54spi_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 606, i32 3}
!46 = !{ptr @p54spi_probe._entry.6, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @p54spi_probe._entry_ptr.8, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 610, i32 40}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 612, i32 3}
!52 = !{ptr @p54spi_probe._entry.10, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @p54spi_probe._entry_ptr.12, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 616, i32 38}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 618, i32 3}
!58 = !{ptr @p54spi_probe._entry.14, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @p54spi_probe._entry_ptr.16, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 629, i32 3}
!62 = !{ptr @p54spi_probe._entry.17, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @p54spi_probe._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @p54spi_probe.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 637, i32 2}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @p54spi_probe.__key.21, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 640, i32 2}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @p54spi_probe.__key.23, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 641, i32 2}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 345, i32 3}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @p54spi_rx._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @p54spi_rx._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 357, i32 3}
!80 = !{ptr @p54spi_rx._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @p54spi_rx._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 293, i32 3}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @p54spi_wakeup._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @p54spi_wakeup._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 406, i32 3}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @p54spi_tx_frame._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @p54spi_tx_frame._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 138, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @p54spi_spi_write_dma._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @p54spi_spi_write_dma._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @init_completion.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../include/linux/completion.h", i32 87, i32 2}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 544, i32 3}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @p54spi_op_start._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @p54spi_op_start._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 158, i32 42}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 161, i32 3}
!109 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @p54spi_request_firmware._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @p54spi_request_firmware._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 183, i32 41}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 186, i32 3}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @p54spi_request_eeprom._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @p54spi_request_eeprom._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intersil/p54/p54spi.c", i32 193, i32 3}
!122 = !{ptr @p54spi_request_eeprom._entry.46, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @p54spi_request_eeprom._entry_ptr.48, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @p54spi_eeprom, !125, !"p54spi_eeprom", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intersil/p54/p54spi_eeprom.h", i32 16, i32 22}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{!"branch_weights", i32 2000, i32 1}
