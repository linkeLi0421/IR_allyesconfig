; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/vertexcom/mse102x.c_pt.bc'
source_filename = "../drivers/net/ethernet/vertexcom/mse102x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mse102x_net = type { ptr, [8 x i8], [8 x i8], [108 x i8], i32, %struct.sk_buff_head, %struct.mse102x_stats }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mse102x_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mse102x_net_spi = type { %struct.mse102x_net, %struct.mutex, %struct.work_struct, ptr, %struct.spi_message, %struct.spi_transfer, ptr, [88 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_mse102x__357_764_mse102x_driver_init6 = internal global ptr @mse102x_driver_init, section ".initcall6.init", align 4
@mse102x_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @mse102x_probe_spi, ptr @mse102x_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mse102x_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mse102x_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mse102x_driver_exit = internal global ptr @mse102x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description358 = internal constant [43 x i8] c"mse102x.description=MSE102x Network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [57 x i8] c"mse102x.author=Stefan Wahren <stefan.wahren@in-tech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [52 x i8] c"mse102x.file=drivers/net/ethernet/vertexcom/mse102x\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [20 x i8] c"mse102x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias362 = internal constant [26 x i8] c"mse102x.alias=spi:mse102x\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mse102x\00", [24 x i8] zeroinitializer }, align 32
@mse102x_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vertexcom,mse1021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vertexcom,mse1022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mse102x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mse102x_suspend, ptr @mse102x_resume, ptr @mse102x_suspend, ptr @mse102x_resume, ptr @mse102x_suspend, ptr @mse102x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mse102x_probe_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SPI max frequency out of range (min: %u, max: %u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mse102x_probe_spi\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/vertexcom/mse102x.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mse102x_probe_spi._entry_ptr = internal global ptr @mse102x_probe_spi._entry, section ".printk_index", align 4
@mse102x_probe_spi._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to setup SPI device: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mse102x_probe_spi._entry_ptr.8 = internal global ptr @mse102x_probe_spi._entry.6, section ".printk_index", align 4
@mse102x_probe_spi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mses->lock\00", [20 x i8] zeroinitializer }, align 32
@mse102x_probe_spi.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&mses->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@mse102x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mse102x_net_open, ptr @mse102x_net_stop, ptr @mse102x_start_xmit_spi, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mse102x_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @mse102x_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @mse102x_get_msglevel, ptr @mse102x_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mse102x_get_strings, ptr null, ptr @mse102x_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mse102x_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mse102x_probe_spi._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register network device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mse102x_probe_spi._entry_ptr.14 = internal global ptr @mse102x_probe_spi._entry.12, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx work timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@mse102x_tx_pkt_spi.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mse102x_tx_pkt_spi\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Unexpected response (0x%04x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mse102x: %s: Unexpected response (0x%04x)\0A\00", [53 x i8] zeroinitializer }, align 32
@mse102x_tx_pkt_spi.descriptor.19 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.20, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Failed to send (%d), drop frame\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mse102x: %s: Failed to send (%d), drop frame\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: spi_sync() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.mse102x_tx_cmd_spi = private unnamed_addr constant [19 x i8] c"mse102x_tx_cmd_spi\00", align 1
@__func__.mse102x_rx_cmd_spi = private unnamed_addr constant [19 x i8] c"mse102x_rx_cmd_spi\00", align 1
@mse102x_rx_cmd_spi.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.mse102x_rx_cmd_spi, ptr @.str.3, ptr @.str.17, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mse102x_tx_frame_spi.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mse102x_tx_frame_spi\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: skb %p, %d@%p\0A\00", [45 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mse102x_net_open.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mse102x_net_open\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"opening\0A\00", [23 x i8] zeroinitializer }, align 32
@mse102x_net_open.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"network device up\0A\00", [45 x i8] zeroinitializer }, align 32
@mse102x_rx_pkt_spi.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.17, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mse102x_rx_pkt_spi\00", [45 x i8] zeroinitializer }, align 32
@mse102x_rx_pkt_spi.descriptor.31 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Unexpected response to first CMD\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mse102x: %s: Unexpected response to first CMD\0A\00", [49 x i8] zeroinitializer }, align 32
@mse102x_rx_pkt_spi.descriptor.34 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.35, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: No frame length defined\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mse102x: %s: No frame length defined\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.mse102x_rx_frame_spi = private unnamed_addr constant [21 x i8] c"mse102x_rx_frame_spi\00", align 1
@mse102x_rx_frame_spi.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.mse102x_rx_frame_spi, ptr @.str.3, ptr @.str.37, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: SPI start of frame is invalid (0x%04x)\0A\00", [52 x i8] zeroinitializer }, align 32
@mse102x_rx_frame_spi.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.mse102x_rx_frame_spi, ptr @.str.3, ptr @.str.38, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: SPI frame tail is invalid (0x%04x)\0A\00", [56 x i8] zeroinitializer }, align 32
@mse102x_dump_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017: %s - packet len:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mse102x_dump_packet\00", [44 x i8] zeroinitializer }, align 32
@mse102x_dump_packet._entry_ptr = internal global ptr @mse102x_dump_packet._entry, section ".printk_index", align 4
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pk data: \00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shutting down\0A\00", [17 x i8] zeroinitializer }, align 32
@mse102x_start_xmit_spi.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.24, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mse102x_start_xmit_spi\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mse102x_gstrings_stats = internal constant { [8 x [32 x i8]], [64 x i8] } { [8 x [32 x i8]] [[32 x i8] c"SPI transfer errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Invalid command\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Invalid CTR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Invalid DFT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Invalid frame length\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Invalid RTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Invalid SOF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@mse102x_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mse102x_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX ring size        : %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ                 : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SPI effective speed : %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPI mode            : %x\0A\00", [38 x i8] zeroinitializer }, align 32
@mse102x_remove_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 740, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mse102x_remove_spi\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mse102x_remove_spi._entry_ptr = internal global ptr @mse102x_remove_spi._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mse102x_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 755, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 757, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"mse102x_match_table\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 748, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"mse102x_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 654, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 674, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 681, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 698, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 699, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"mse102x_netdev_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 550, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"mse102x_ethtool_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 613, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 725, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 454, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 393, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 418, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 165, i32 25 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 228, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1984, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 514, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 518, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 524, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 328, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 334, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 340, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 283, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 288, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 299, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 300, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 300, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 534, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 468, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"mse102x_gstrings_stats\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 56, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 488, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 120, i32 22 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"mse102x_info_fops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 113, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 100, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 103, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 106, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 108, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [44 x i8] c"../drivers/net/ethernet/vertexcom/mse102x.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 740, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_alias362, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__exitcall_mse102x_driver_exit, ptr @__initcall__kmod_mse102x__357_764_mse102x_driver_init6, ptr @mse102x_driver_exit, ptr @mse102x_dump_packet._entry, ptr @mse102x_dump_packet._entry_ptr, ptr @mse102x_probe_spi._entry, ptr @mse102x_probe_spi._entry.12, ptr @mse102x_probe_spi._entry.6, ptr @mse102x_probe_spi._entry_ptr, ptr @mse102x_probe_spi._entry_ptr.14, ptr @mse102x_probe_spi._entry_ptr.8, ptr @mse102x_remove_spi._entry, ptr @mse102x_remove_spi._entry_ptr, ptr @mse102x_driver, ptr @.str, ptr @mse102x_match_table, ptr @mse102x_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mse102x_probe_spi.__key, ptr @.str.9, ptr @mse102x_probe_spi.__key.10, ptr @.str.11, ptr @mse102x_netdev_ops, ptr @mse102x_ethtool_ops, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @skb_queue_head_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @mse102x_gstrings_stats, ptr @.str.45, ptr @.str.46, ptr @mse102x_info_fops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_probe_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_probe_spi._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_probe_spi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_probe_spi.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_probe_spi._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_dump_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_gstrings_stats to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse102x_remove_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mse102x_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mse102x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mse102x_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 8
  %or = or i32 %2, 3
  store i32 %or, ptr %mode, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6000000, ptr %min_speed_hz, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7142857, ptr %max_speed_hz, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed_hz, align 8
  %11 = add i32 %10, -7142858
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1142858, i32 %11)
  %12 = icmp ult i32 %11, -1142858
  br i1 %12, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 6000000, i32 noundef 7142857) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call = tail call i32 @spi_setup(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %call) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %spi, i32 noundef 640, i32 noundef 1, i32 noundef 1) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 22
  %13 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %needed_tailroom, align 2
  %add = add i16 %14, 4
  store i16 %add, ptr %needed_tailroom, align 2
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 21
  %15 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %needed_headroom, align 8
  %add22 = add i16 %16, 4
  store i16 %add22, ptr %needed_headroom, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 15
  %17 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags, align 16
  %and = and i64 %18, -2049
  store i64 %and, ptr %priv_flags, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 107
  %19 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %tx_queue_len, align 16
  %add.ptr.i = getelementptr i8, ptr %call16, i32 2304
  %spidev = getelementptr i8, ptr %call16, i32 2696
  %20 = ptrtoint ptr %spidev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spi, ptr %spidev, align 8
  %lock = getelementptr i8, ptr %call16, i32 2560
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mse102x_probe_spi.__key) #10
  %tx_work = getelementptr i8, ptr %call16, i32 2652
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #10
  %21 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %call16, i32 2668
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @mse102x_probe_spi.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry32 = getelementptr i8, ptr %call16, i32 2656
  %22 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr i8, ptr %call16, i32 2660
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call16, i32 2664
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mse102x_tx_work, ptr %func, align 4
  %spi_msg = getelementptr i8, ptr %call16, i32 2700
  %25 = getelementptr i8, ptr %call16, i32 2708
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %spi_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %spi_msg, ptr %spi_msg, align 4
  %prev.i.i.i = getelementptr i8, ptr %call16, i32 2704
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spi_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr i8, ptr %call16, i32 2748
  %29 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr i8, ptr %call16, i32 2752
  %30 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr i8, ptr %call16, i32 2840
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %spi_msg, ptr noundef %spi_msg) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end19.spi_message_add_tail.exit_crit_edge

if.end19.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spi_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %call16, i32 2844
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %spi_msg, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %spi_msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i, ptr %spi_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end19.spi_message_add_tail.exit_crit_edge
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %irq37 = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 64
  %37 = ptrtoint ptr %irq37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %irq37, align 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call16, ptr %add.ptr.i, align 128
  %msg_enable = getelementptr i8, ptr %call16, i32 2432
  %39 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 15, ptr %msg_enable, align 128
  %txq = getelementptr i8, ptr %call16, i32 2436
  %lock.i = getelementptr i8, ptr %call16, i32 2448
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %40 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i101 = getelementptr i8, ptr %call16, i32 2440
  %41 = ptrtoint ptr %prev.i.i101 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %txq, ptr %prev.i.i101, align 4
  %qlen.i.i = getelementptr i8, ptr %call16, i32 2444
  %42 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %qlen.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 133, i32 1
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %spi, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %44 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %driver_data.i, align 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_carrier_off(ptr noundef %46) #10
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 16
  %47 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mse102x_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 44
  %48 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mse102x_ethtool_ops, ptr %ethtool_ops, align 16
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 128
  %call.i = tail call i32 @of_get_ethdev_address(ptr noundef %50, ptr noundef %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %spi_message_add_tail.exit.mse102x_init_mac.exit_crit_edge, label %if.then.i

spi_message_add_tail.exit.mse102x_init_mac.exit_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mse102x_init_mac.exit

if.then.i:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #10
  %53 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #10
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %addr.i.i, align 1
  %56 = and i8 %55, -4
  %57 = or i8 %56, 2
  store i8 %57, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %52, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #10
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 55
  %58 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.45, ptr noundef %60) #13
  br label %mse102x_init_mac.exit

mse102x_init_mac.exit:                            ; preds = %if.then.i, %spi_message_add_tail.exit.mse102x_init_mac.exit_crit_edge
  %call42 = call i32 @register_netdev(ptr noundef nonnull %call16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %mse102x_init_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %call42) #13
  br label %cleanup

if.end48:                                         ; preds = %mse102x_init_mac.exit
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 128
  %init_name.i.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 133, i32 3
  %63 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end48.mse102x_init_device_debugfs.exit_crit_edge

if.end48.mse102x_init_device_debugfs.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %mse102x_init_device_debugfs.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 133
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  br label %mse102x_init_device_debugfs.exit

mse102x_init_device_debugfs.exit:                 ; preds = %if.end.i.i, %if.end48.mse102x_init_device_debugfs.exit_crit_edge
  %retval.0.i.i = phi ptr [ %66, %if.end.i.i ], [ %64, %if.end48.mse102x_init_device_debugfs.exit_crit_edge ]
  %call1.i = call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef null) #10
  %device_root.i = getelementptr i8, ptr %call16, i32 2852
  %67 = ptrtoint ptr %device_root.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call1.i, ptr %device_root.i, align 4
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext -32476, ptr noundef %call1.i, ptr noundef %add.ptr.i, ptr noundef nonnull @mse102x_info_fops) #10
  br label %cleanup

cleanup:                                          ; preds = %mse102x_init_device_debugfs.exit, %do.end47, %if.end15.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end13 ], [ %call42, %do.end47 ], [ 0, %mse102x_init_device_debugfs.exit ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %msg_enable = getelementptr inbounds %struct.mse102x_net, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 128
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.51) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %device_root.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %device_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  tail call void @unregister_netdev(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mse102x_tx_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %add.ptr = getelementptr i8, ptr %work, i32 -348
  %txq = getelementptr i8, ptr %work, i32 -216
  %call133 = tail call ptr @skb_dequeue(ptr noundef %txq) #10
  %tobool.not34 = icmp eq ptr %call133, null
  br i1 %tobool.not34, label %entry.if.end18_crit_edge, label %while.body.lr.ph

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -92
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call135 = phi ptr [ %call133, %while.body.lr.ph ], [ %call1, %if.end.while.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call2 = tail call fastcc i32 @mse102x_tx_pkt_spi(ptr noundef %add.ptr, ptr noundef nonnull %call135, i32 noundef %add)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 128
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 7
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %call135, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 128
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 3
  %7 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_bytes, align 4
  %add7 = add i32 %8, %4
  store i32 %add7, ptr %tx_bytes, align 4
  %9 = load ptr, ptr %add.ptr, align 128
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tx_packets.sink37 = phi ptr [ %tx_packets, %if.else ], [ %tx_dropped, %if.then ]
  %10 = ptrtoint ptr %tx_packets.sink37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packets.sink37, align 4
  %inc10 = add i32 %11, 1
  store i32 %inc10, ptr %tx_packets.sink37, align 4
  tail call void @consume_skb(ptr noundef nonnull %call135) #10
  %call1 = tail call ptr @skb_dequeue(ptr noundef %txq) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call2)
  %phi.cmp = icmp eq i32 %call2, -110
  br i1 %phi.cmp, label %if.then11, label %while.end.if.end18_crit_edge

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11:                                        ; preds = %while.end
  %msg_enable = getelementptr i8, ptr %work, i32 -220
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 128
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then11.if.end15_crit_edge, label %if.then13

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.15) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then11.if.end15_crit_edge
  %tx_timeout = getelementptr i8, ptr %work, i32 -100
  %16 = ptrtoint ptr %tx_timeout to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_timeout, align 8
  %inc17 = add i64 %17, 1
  store i64 %inc17, ptr %tx_timeout, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %while.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 128
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mse102x_tx_pkt_spi(ptr noundef %mse, ptr noundef %txb, i32 noundef %work_timeout) unnamed_addr #2 align 64 {
entry:
  %txb.i = alloca [2 x i16], align 2
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #10
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %rx, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %txb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %3 = tail call i32 @llvm.usub.sat.i32(i32 60, i32 %2)
  %spi_xfer.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5
  %spi_msg.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 4
  %4 = getelementptr inbounds [2 x i16], ptr %txb.i, i32 0, i32 1
  %rx_buf.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 1
  %len.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 2
  %spidev.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 3
  %stats.i = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6
  %invalid_ctr = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %first.0.off0 = phi i1 [ true, %entry ], [ false, %while.cond.backedge ]
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %3
  %7 = trunc i32 %add to i16
  %conv = or i16 %7, 4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb.i) #10
  %8 = ptrtoint ptr %txb.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %txb.i, align 2
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %4, align 2
  %10 = ptrtoint ptr %spi_xfer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %txb.i, ptr %spi_xfer.i, align 4
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_buf.i, align 4
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len.i, align 4
  %13 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spidev.i, align 8
  %call.i = call i32 @spi_sync(ptr noundef %14, ptr noundef %spi_msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %while.cond.mse102x_tx_cmd_spi.exit_crit_edge

while.cond.mse102x_tx_cmd_spi.exit_crit_edge:     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %mse102x_tx_cmd_spi.exit

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mse, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mse102x_tx_cmd_spi, i32 noundef %call.i) #13
  %17 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stats.i, align 64
  %inc.i = add i64 %18, 1
  store i64 %inc.i, ptr %stats.i, align 64
  br label %mse102x_tx_cmd_spi.exit

mse102x_tx_cmd_spi.exit:                          ; preds = %if.then.i, %while.cond.mse102x_tx_cmd_spi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb.i) #10
  %call = call fastcc i32 @mse102x_rx_cmd_spi(ptr noundef %mse, ptr noundef nonnull %rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %mse102x_tx_cmd_spi.exit.if.end18_crit_edge

mse102x_tx_cmd_spi.exit.if.end18_crit_edge:       ; preds = %mse102x_tx_cmd_spi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then3:                                         ; preds = %mse102x_tx_cmd_spi.exit
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rx, align 2
  %conv4 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %20)
  %cmp5 = icmp eq i16 %20, 8192
  br i1 %cmp5, label %while.end, label %do.body

do.body:                                          ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_tx_pkt_spi.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_tx_pkt_spi, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !145

land.lhs.true:                                    ; preds = %do.body
  %call13 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end_crit_edge, label %if.then15

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mse102x_tx_pkt_spi.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %conv4) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %land.lhs.true.do.end_crit_edge, %do.body
  %21 = ptrtoint ptr %invalid_ctr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %invalid_ctr, align 16
  %inc = add i64 %22, 1
  store i64 %inc, ptr %invalid_ctr, align 16
  br label %if.end18

if.end18:                                         ; preds = %do.end, %mse102x_tx_cmd_spi.exit.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub19 = sub i32 %work_timeout, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %cmp20 = icmp slt i32 %sub19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  br i1 %first.0.off0, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mse, align 128
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #10
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 20) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then25
  br label %while.cond

while.end:                                        ; preds = %if.then3
  %call27 = call fastcc i32 @mse102x_tx_frame_spi(ptr noundef %mse, ptr noundef %txb, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %while.end.cleanup_crit_edge, label %do.body30

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_tx_pkt_spi.descriptor.19, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_tx_pkt_spi, %land.lhs.true42)) #10
          to label %cleanup [label %land.lhs.true42], !srcloc !145

land.lhs.true42:                                  ; preds = %do.body30
  %call43 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %if.then45

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mse102x_tx_pkt_spi.descriptor.19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef %call27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %land.lhs.true42.cleanup_crit_edge, %do.body30, %while.end.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %land.lhs.true42.cleanup_crit_edge ], [ %call27, %if.then45 ], [ 0, %while.end.cleanup_crit_edge ], [ %call27, %do.body30 ], [ -110, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mse102x_rx_cmd_spi(ptr noundef %mse, ptr nocapture noundef writeonly %rxb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_xfer = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5
  %spi_msg = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 4
  %txd = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 2
  %rxd = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 1
  %0 = ptrtoint ptr %txd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %txd, align 2
  %arrayidx4 = getelementptr %struct.mse102x_net, ptr %mse, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %arrayidx4, align 2
  %2 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txd, ptr %spi_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rxd, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len, align 4
  %spidev = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 3
  %5 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spidev, align 8
  %call = tail call i32 @spi_sync(ptr noundef %6, ptr noundef %spi_msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mse, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mse102x_rx_cmd_spi, i32 noundef %call) #13
  %stats = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats, align 64
  %inc = add i64 %10, 1
  store i64 %inc, ptr %stats, align 64
  br label %if.end21

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %rxd to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp5.not = icmp eq i16 %12, 1
  br i1 %cmp5.not, label %if.else18, label %do.body

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_rx_cmd_spi.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_rx_cmd_spi, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !145

land.lhs.true:                                    ; preds = %do.body
  %call12 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %if.then14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %rxd to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rxd, align 2
  %conv15 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mse102x_rx_cmd_spi.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.mse102x_rx_cmd_spi, i32 noundef %conv15) #10
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true.do.end_crit_edge, %do.body
  %invalid_cmd = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %invalid_cmd to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %invalid_cmd, align 8
  %inc17 = add i64 %16, 1
  store i64 %inc17, ptr %invalid_cmd, align 8
  br label %if.end21

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19 = getelementptr %struct.mse102x_net, ptr %mse, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr19, align 1
  %19 = ptrtoint ptr %rxb to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %rxb, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %do.end, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %do.end ], [ %call, %if.else18 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mse102x_tx_frame_spi(ptr noundef %mse, ptr noundef %txp, i32 noundef %pad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_xfer = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5
  %spi_msg = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 4
  %msg_enable = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 4
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_tx_frame_spi.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_tx_frame_spi, %if.then6)) #10
          to label %do.end9 [label %if.then6], !srcloc !145

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mse, align 128
  %len = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mse102x_tx_frame_spi.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, ptr noundef %txp, i32 noundef %5, ptr noundef %7) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 2
  br i1 %cmp, label %do.end9.if.then13_crit_edge, label %lor.lhs.false

do.end9.if.then13_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i32 %pad, 2
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.end9
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %lor.lhs.false.skb_tailroom.exit_crit_edge

lor.lhs.false.skb_tailroom.exit_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i61 = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i62 = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i63 = sub i32 %sub.ptr.lhs.cast.i61, %sub.ptr.rhs.cast.i62
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %lor.lhs.false.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i63, %cond.false.i ], [ 0, %lor.lhs.false.skb_tailroom.exit_crit_edge ]
  %add = add i32 %pad, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %add)
  %cmp12 = icmp ult i32 %cond.i, %add
  br i1 %cmp12, label %skb_tailroom.exit.if.then13_crit_edge, label %skb_tailroom.exit.if.end19_crit_edge

skb_tailroom.exit.if.end19_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

skb_tailroom.exit.if.then13_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %skb_tailroom.exit.if.then13_crit_edge, %do.end9.if.then13_crit_edge
  %add14.pre-phi = phi i32 [ %.pre, %do.end9.if.then13_crit_edge ], [ %add, %skb_tailroom.exit.if.then13_crit_edge ]
  %call15 = tail call ptr @skb_copy_expand(ptr noundef %txp, i32 noundef 2, i32 noundef %add14.pre-phi, i32 noundef 3264) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %txp) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %skb_tailroom.exit.if.end19_crit_edge
  %txp.addr.0 = phi ptr [ %call15, %if.end18 ], [ %txp, %skb_tailroom.exit.if.end19_crit_edge ]
  %call.i = tail call ptr @skb_push(ptr noundef %txp.addr.0, i32 noundef 2) #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %call.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %tobool20.not = icmp eq i32 %pad, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call.i64 = tail call ptr @skb_put(ptr noundef %txp.addr.0, i32 noundef %pad) #10
  %19 = call ptr @memset(ptr %call.i64, i32 0, i32 %pad)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %call.i65 = tail call ptr @skb_put(ptr noundef %txp.addr.0, i32 noundef 2) #10
  %20 = ptrtoint ptr %call.i65 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 21930, ptr %call.i65, align 2
  %data24 = getelementptr inbounds %struct.sk_buff, ptr %txp.addr.0, i32 0, i32 19
  %21 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data24, align 4
  %23 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %spi_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rx_buf, align 4
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %txp.addr.0, i32 0, i32 6
  %25 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len25, align 4
  %len26 = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %len26, align 4
  %spidev = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 3
  %28 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spidev, align 8
  %call27 = tail call i32 @spi_sync(ptr noundef %29, ptr noundef %spi_msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mse, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call27) #13
  %stats = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6
  %32 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %stats, align 64
  %inc = add i64 %33, 1
  store i64 %inc, ptr %stats, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end23.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then13.cleanup_crit_edge ], [ %call27, %if.then29 ], [ %call27, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_net_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef null, ptr noundef nonnull @mse102x_irq, i32 noundef 8192, ptr noundef %ndev, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.26, i32 noundef %call1) #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %ndev, i32 2432
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 128
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.body3

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_net_open.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_net_open, %if.then8)) #10
          to label %do.end12 [label %if.then8], !srcloc !145

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mse102x_net_open.__UNIQUE_ID_ddebug355, ptr noundef %ndev, ptr noundef nonnull @.str.28) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3, %do.body.do.end12_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void @netif_carrier_on(ptr noundef %ndev) #10
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 128
  %and15 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end12.cleanup_crit_edge, label %do.body18

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body18:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_net_open.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_net_open, %if.then30)) #10
          to label %cleanup [label %if.then30], !srcloc !145

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mse102x_net_open.__UNIQUE_ID_ddebug356, ptr noundef %ndev, ptr noundef nonnull @.str.29) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %do.end12.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then30 ], [ 0, %do.end12.cleanup_crit_edge ], [ 0, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_net_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.43) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_carrier_off(ptr noundef %3) #10
  %tx_work = getelementptr i8, ptr %ndev, i32 2652
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %tx_work) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %txq = getelementptr i8, ptr %ndev, i32 2436
  tail call void @skb_queue_purge(ptr noundef %txq) #10
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_start_xmit_spi(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_start_xmit_spi.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_start_xmit_spi, %if.then7)) #10
          to label %do.end10 [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mse102x_start_xmit_spi.__UNIQUE_ID_ddebug354, ptr noundef %ndev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.44, ptr noundef %skb, i32 noundef %3, ptr noundef %5) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %txq = getelementptr i8, ptr %ndev, i32 2436
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #10
  %qlen.i = getelementptr i8, ptr %ndev, i32 2444
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp = icmp ugt i32 %7, 9
  br i1 %cmp, label %if.then13, label %do.end10.if.end14_crit_edge

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end10.if.end14_crit_edge
  %tx_work = getelementptr i8, ptr %ndev, i32 2652
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %tx_work) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_irq(i32 noundef %irq, ptr noundef %_mse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mse102x_net_spi, ptr %_mse, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call fastcc void @mse102x_rx_pkt_spi(ptr noundef %_mse)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mse102x_rx_pkt_spi(ptr noundef %mse) unnamed_addr #2 align 64 {
entry:
  %txb.i133 = alloca [2 x i16], align 2
  %txb.i = alloca [2 x i16], align 2
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #10
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %rx, align 2
  %spi_xfer.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5
  %spi_msg.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb.i) #10
  %1 = getelementptr inbounds [2 x i16], ptr %txb.i, i32 0, i32 1
  %2 = ptrtoint ptr %txb.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %txb.i, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 8192, ptr %1, align 2
  %4 = ptrtoint ptr %spi_xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %txb.i, ptr %spi_xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len.i, align 4
  %spidev.i = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 3
  %7 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spidev.i, align 8
  %call.i = call i32 @spi_sync(ptr noundef %8, ptr noundef %spi_msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.mse102x_tx_cmd_spi.exit_crit_edge

entry.mse102x_tx_cmd_spi.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mse102x_tx_cmd_spi.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mse, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mse102x_tx_cmd_spi, i32 noundef %call.i) #13
  %stats.i = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6
  %11 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %stats.i, align 64
  %inc.i = add i64 %12, 1
  store i64 %inc.i, ptr %stats.i, align 64
  br label %mse102x_tx_cmd_spi.exit

mse102x_tx_cmd_spi.exit:                          ; preds = %if.then.i, %entry.mse102x_tx_cmd_spi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb.i) #10
  %call = call fastcc i32 @mse102x_rx_cmd_spi(ptr noundef %mse, ptr noundef nonnull %rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %mse102x_tx_cmd_spi.exit.if.then_crit_edge

mse102x_tx_cmd_spi.exit.if.then_crit_edge:        ; preds = %mse102x_tx_cmd_spi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %mse102x_tx_cmd_spi.exit
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx, align 2
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %15)
  %cmp.not = icmp eq i16 %15, 4096
  br i1 %cmp.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %mse102x_tx_cmd_spi.exit.if.then_crit_edge
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb.i133) #10
  %16 = getelementptr inbounds [2 x i16], ptr %txb.i133, i32 0, i32 1
  %17 = ptrtoint ptr %txb.i133 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %txb.i133, align 2
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8192, ptr %16, align 2
  %19 = ptrtoint ptr %spi_xfer.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txb.i133, ptr %spi_xfer.i, align 4
  %20 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rx_buf.i, align 4
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %len.i, align 4
  %22 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spidev.i, align 8
  %call.i139 = call i32 @spi_sync(ptr noundef %23, ptr noundef %spi_msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp slt i32 %call.i139, 0
  br i1 %cmp.i140, label %if.then.i143, label %if.then.mse102x_tx_cmd_spi.exit144_crit_edge

if.then.mse102x_tx_cmd_spi.exit144_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mse102x_tx_cmd_spi.exit144

if.then.i143:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mse, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mse102x_tx_cmd_spi, i32 noundef %call.i139) #13
  %stats.i141 = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6
  %26 = ptrtoint ptr %stats.i141 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %stats.i141, align 64
  %inc.i142 = add i64 %27, 1
  store i64 %inc.i142, ptr %stats.i141, align 64
  br label %mse102x_tx_cmd_spi.exit144

mse102x_tx_cmd_spi.exit144:                       ; preds = %if.then.i143, %if.then.mse102x_tx_cmd_spi.exit144_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb.i133) #10
  %call2 = call fastcc i32 @mse102x_rx_cmd_spi(ptr noundef %mse, ptr noundef nonnull %rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %mse102x_tx_cmd_spi.exit144.cleanup_crit_edge

mse102x_tx_cmd_spi.exit144.cleanup_crit_edge:     ; preds = %mse102x_tx_cmd_spi.exit144
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mse102x_tx_cmd_spi.exit144
  %28 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rx, align 2
  %conv5 = zext i16 %29 to i32
  %and6 = and i32 %conv5, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 4096
  br i1 %cmp7.not, label %do.body20, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_rx_pkt_spi.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_rx_pkt_spi, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !145

land.lhs.true:                                    ; preds = %do.body
  %call14 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end_crit_edge, label %if.then16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mse102x_rx_pkt_spi.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.30, i32 noundef %conv5) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true.do.end_crit_edge, %do.body
  %invalid_rts = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6, i32 5
  %30 = ptrtoint ptr %invalid_rts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %invalid_rts, align 8
  %inc = add i64 %31, 1
  store i64 %inc, ptr %invalid_rts, align 8
  br label %cleanup

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_rx_pkt_spi.descriptor.31, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_rx_pkt_spi, %land.lhs.true32)) #10
          to label %if.end39 [label %land.lhs.true32], !srcloc !145

land.lhs.true32:                                  ; preds = %do.body20
  %call33 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end39_crit_edge, label %if.then35

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mse102x_rx_pkt_spi.descriptor.31, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true32.if.end39_crit_edge, %do.body20, %lor.lhs.false.if.end39_crit_edge
  %cmd_resp.0 = phi i16 [ %29, %if.then35 ], [ %29, %land.lhs.true32.if.end39_crit_edge ], [ %14, %lor.lhs.false.if.end39_crit_edge ], [ %29, %do.body20 ]
  %32 = and i16 %cmd_resp.0, 4095
  %and41 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool42.not = icmp eq i16 %32, 0
  br i1 %tobool42.not, label %do.body44, label %if.end65

do.body44:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_rx_pkt_spi.descriptor.34, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_rx_pkt_spi, %land.lhs.true56)) #10
          to label %do.end62 [label %land.lhs.true56], !srcloc !145

land.lhs.true56:                                  ; preds = %do.body44
  %call57 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.do.end62_crit_edge, label %if.then59

land.lhs.true56.do.end62_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mse102x_rx_pkt_spi.descriptor.34, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.30) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true56.do.end62_crit_edge, %do.body44
  %invalid_len = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6, i32 4
  %33 = ptrtoint ptr %invalid_len to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %invalid_len, align 32
  %inc64 = add i64 %34, 1
  store i64 %inc64, ptr %invalid_len, align 32
  br label %cleanup

if.end65:                                         ; preds = %if.end39
  %add67 = add nuw nsw i32 %and41, 7
  %and68 = and i32 %add67, 8188
  %35 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mse, align 128
  %add.i.i = or i32 %and68, 2
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef %36, i32 noundef %add.i.i, i32 noundef 2592) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end65.cleanup_crit_edge, label %if.end72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %40, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call73 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %and41) #10
  %add.ptr = getelementptr i8, ptr %call73, i32 -2
  %call74 = call fastcc i32 @mse102x_rx_frame_spi(ptr noundef %mse, ptr noundef %add.ptr, i32 noundef %and41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %if.then76

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mse, align 128
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 4
  %43 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_errors, align 8
  %inc79 = add i32 %44, 1
  store i32 %inc79, ptr %rx_errors, align 8
  call void @consume_skb(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

if.end80:                                         ; preds = %if.end72
  %msg_enable = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 4
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 128
  %and81 = and i32 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end84_crit_edge, label %if.then83

if.end80.if.end84_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %49 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i, align 4
  %call.i145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.30, i32 noundef %48) #13
  call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %50, i32 noundef %48, i1 noundef zeroext true) #10
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80.if.end84_crit_edge
  %51 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mse, align 128
  %call86 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %52) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %53 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %call86, ptr %protocol, align 8
  %call87 = call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i) #10
  %54 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mse, align 128
  %stats89 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 36
  %56 = ptrtoint ptr %stats89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stats89, align 8
  %inc90 = add i32 %57, 1
  store i32 %inc90, ptr %stats89, align 8
  %58 = load ptr, ptr %mse, align 128
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 36, i32 2
  %59 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_bytes, align 8
  %add93 = add i32 %60, %and41
  store i32 %add93, ptr %rx_bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then76, %if.end65.cleanup_crit_edge, %do.end62, %do.end, %mse102x_tx_cmd_spi.exit144.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mse102x_rx_frame_spi(ptr noundef %mse, ptr noundef %buff, i32 noundef %frame_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_xfer = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5
  %spi_msg = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 4
  %add.ptr1 = getelementptr i8, ptr %buff, i32 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %frame_len
  %rx_buf = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buff, ptr %rx_buf, align 4
  %1 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %spi_xfer, align 4
  %add3 = add i32 %frame_len, 4
  %len = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add3, ptr %len, align 4
  %spidev = getelementptr inbounds %struct.mse102x_net_spi, ptr %mse, i32 0, i32 3
  %3 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spidev, align 8
  %call = tail call i32 @spi_sync(ptr noundef %4, ptr noundef %spi_msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mse, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mse102x_rx_frame_spi, i32 noundef %call) #13
  %stats = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stats, align 64
  %inc = add i64 %8, 1
  store i64 %inc, ptr %stats, align 64
  br label %if.end49

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buff, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp4.not = icmp eq i16 %10, 2
  br i1 %cmp4.not, label %if.else19, label %do.body7

do.body7:                                         ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_rx_frame_spi.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_rx_frame_spi, %if.then12)) #10
          to label %do.end16 [label %if.then12], !srcloc !145

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mse, align 128
  %13 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buff, align 2
  %conv14 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mse102x_rx_frame_spi.__UNIQUE_ID_ddebug352, ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.mse102x_rx_frame_spi, i32 noundef %conv14) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body7
  %invalid_sof = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %invalid_sof to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %invalid_sof, align 16
  %inc18 = add i64 %16, 1
  store i64 %inc18, ptr %invalid_sof, align 16
  br label %if.end49

if.else19:                                        ; preds = %if.else
  %17 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %18)
  %cmp21.not = icmp eq i16 %18, 21930
  br i1 %cmp21.not, label %if.else19.if.end49_crit_edge, label %do.body25

if.else19.if.end49_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body25:                                        ; preds = %if.else19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mse102x_rx_frame_spi.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mse102x_rx_frame_spi, %if.then37)) #10
          to label %do.end44 [label %if.then37], !srcloc !145

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mse, align 128
  %21 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr2, align 2
  %conv39 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mse102x_rx_frame_spi.__UNIQUE_ID_ddebug353, ptr noundef %20, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.mse102x_rx_frame_spi, i32 noundef %conv39) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body25
  %invalid_dft = getelementptr inbounds %struct.mse102x_net, ptr %mse, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %invalid_dft to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %invalid_dft, align 8
  %inc46 = add i64 %24, 1
  store i64 %inc46, ptr %invalid_dft, align 8
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %if.else19.if.end49_crit_edge, %do.end16, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %do.end16 ], [ -5, %do.end44 ], [ %call, %if.else19.if.end49_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mse102x_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %di, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %di, i32 0, i32 4
  %call3 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mse102x_get_msglevel(ptr nocapture noundef readonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mse102x_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %to) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2432
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %to, ptr %msg_enable, align 128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mse102x_get_strings(ptr nocapture noundef readnone %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memcpy(ptr %buf, ptr @mse102x_gstrings_stats, i32 256)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mse102x_get_ethtool_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr i8, ptr %ndev, i32 2496
  %0 = call ptr @memcpy(ptr %data, ptr %stats, i32 64)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mse102x_get_sset_count(ptr nocapture noundef readnone %ndev, i32 noundef %sset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 8, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mse102x_info_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_info_show(ptr noundef %s, ptr nocapture noundef readnone %what) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %qlen.i = getelementptr inbounds %struct.mse102x_net, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %3) #10
  %spidev = getelementptr inbounds %struct.mse102x_net_spi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spidev, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %7) #10
  %effective_speed_hz = getelementptr inbounds %struct.mse102x_net_spi, ptr %1, i32 0, i32 5, i32 13
  %8 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %effective_speed_hz, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %9) #10
  %10 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spidev, align 8
  %mode = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef %13) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_detach(ptr noundef %3) #10
  %call3 = tail call i32 @mse102x_net_stop(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mse102x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @mse102x_net_open(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !63, !64, !66, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !103, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_mse102x__357_764_mse102x_driver_init6, !1, !"__initcall__kmod_mse102x__357_764_mse102x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_mse102x_driver_exit, !1, !"__exitcall_mse102x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description358, !4, !"__UNIQUE_ID_description358", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_author359, !6, !"__UNIQUE_ID_author359", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 767, i32 1}
!7 = !{ptr @__UNIQUE_ID_file360, !8, !"__UNIQUE_ID_file360", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 768, i32 1}
!9 = !{ptr @__UNIQUE_ID_license361, !8, !"__UNIQUE_ID_license361", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias362, !11, !"__UNIQUE_ID_alias362", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 769, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 757, i32 11}
!14 = !{ptr @mse102x_driver, !15, !"mse102x_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 755, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 674, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mse102x_probe_spi._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mse102x_probe_spi._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 681, i32 3}
!26 = !{ptr @mse102x_probe_spi._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mse102x_probe_spi._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mse102x_probe_spi.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 698, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mse102x_probe_spi.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 699, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 725, i32 3}
!36 = !{ptr @mse102x_probe_spi._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mse102x_probe_spi._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 454, i32 26}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 393, i32 4}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mse102x_tx_pkt_spi.descriptor, !41, !"descriptor", i1 false, i1 false}
!44 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 418, i32 3}
!47 = !{ptr @mse102x_tx_pkt_spi.descriptor.19, !46, !"descriptor", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 165, i32 25}
!51 = !{ptr @__func__.mse102x_tx_cmd_spi, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 166, i32 7}
!53 = !{ptr @__func__.mse102x_rx_cmd_spi, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 191, i32 7}
!55 = !{ptr @mse102x_rx_cmd_spi.descriptor, !56, !"descriptor", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 194, i32 3}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 228, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mse102x_tx_frame_spi.__UNIQUE_ID_ddebug351, !58, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!61 = !{ptr @skb_queue_head_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mse102x_netdev_ops, !65, !"mse102x_netdev_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 550, i32 36}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 514, i32 20}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 518, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mse102x_net_open.__UNIQUE_ID_ddebug355, !69, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 524, i32 2}
!74 = !{ptr @mse102x_net_open.__UNIQUE_ID_ddebug356, !73, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 328, i32 4}
!77 = !{ptr @mse102x_rx_pkt_spi.descriptor, !76, !"descriptor", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 334, i32 3}
!80 = !{ptr @mse102x_rx_pkt_spi.descriptor.31, !79, !"descriptor", i1 false, i1 false}
!81 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 340, i32 3}
!84 = !{ptr @mse102x_rx_pkt_spi.descriptor.34, !83, !"descriptor", i1 false, i1 false}
!85 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__func__.mse102x_rx_frame_spi, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 280, i32 7}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 283, i32 3}
!90 = !{ptr @mse102x_rx_frame_spi.__UNIQUE_ID_ddebug352, !89, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 288, i32 3}
!93 = !{ptr @mse102x_rx_frame_spi.__UNIQUE_ID_ddebug353, !92, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 299, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mse102x_dump_packet._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @mse102x_dump_packet._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 300, i32 17}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 300, i32 29}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 534, i32 2}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 468, i32 2}
!107 = !{ptr @mse102x_start_xmit_spi.__UNIQUE_ID_ddebug354, !106, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!108 = !{ptr @mse102x_ethtool_ops, !109, !"mse102x_ethtool_ops", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 613, i32 33}
!110 = !{ptr @mse102x_gstrings_stats, !111, !"mse102x_gstrings_stats", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 56, i32 19}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 488, i32 20}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 120, i32 22}
!116 = !{ptr @mse102x_info_fops, !117, !"mse102x_info_fops", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 113, i32 1}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 100, i32 16}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 103, i32 16}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 106, i32 16}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 108, i32 16}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 740, i32 3}
!128 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mse102x_remove_spi._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @mse102x_remove_spi._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @mse102x_match_table, !133, !"mse102x_match_table", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 748, i32 34}
!134 = !{ptr @mse102x_pm_ops, !135, !"mse102x_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/vertexcom/mse102x.c", i32 654, i32 8}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148733062, i64 2148733067, i64 2148733080, i64 2148733124, i64 2148733158, i64 2148733179}
