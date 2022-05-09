; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/wiznet/w5100-spi.c_pt.bc'
source_filename = "../drivers/net/ethernet/wiznet/w5100-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.w5100_ops = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.w5200_spi_priv = type { %struct.mutex, [36 x i8], [4 x i8], [124 x i8] }
%struct.w5500_spi_priv = type { %struct.mutex, [36 x i8], [3 x i8], [125 x i8] }

@__initcall__kmod_w5100_spi__349_489_w5100_spi_driver_init6 = internal global ptr @w5100_spi_driver_init, section ".initcall6.init", align 4
@w5100_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @w5100_spi_ids, ptr @w5100_spi_probe, ptr @w5100_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @w5100_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w5100_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_w5100_spi_driver_exit = internal global ptr @w5100_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [76 x i8] c"w5100_spi.description=WIZnet W5100/W5200/W5500 Ethernet driver for SPI mode\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [55 x i8] c"w5100_spi.author=Akinobu Mita <akinobu.mita@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [53 x i8] c"w5100_spi.file=drivers/net/ethernet/wiznet/w5100-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [22 x i8] c"w5100_spi.license=GPL\00", section ".modinfo", align 1
@w5100_spi_ids = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"w5100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w5200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"w5500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w5100\00", [26 x i8] zeroinitializer }, align 32
@w5100_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wiznet,w5100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wiznet,w5200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wiznet,w5500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@w5100_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@w5100_spi_ops = internal constant { %struct.w5100_ops, [56 x i8] } { %struct.w5100_ops { i8 1, i32 0, ptr @w5100_spi_read, ptr @w5100_spi_write, ptr @w5100_spi_read16, ptr @w5100_spi_write16, ptr @w5100_spi_readbulk, ptr @w5100_spi_writebulk, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@w5200_ops = internal constant { %struct.w5100_ops, [56 x i8] } { %struct.w5100_ops { i8 1, i32 1, ptr @w5200_spi_read, ptr @w5200_spi_write, ptr @w5200_spi_read16, ptr @w5200_spi_write16, ptr @w5200_spi_readbulk, ptr @w5200_spi_writebulk, ptr null, ptr @w5200_spi_init }, [56 x i8] zeroinitializer }, align 32
@w5500_ops = internal constant { %struct.w5100_ops, [56 x i8] } { %struct.w5100_ops { i8 1, i32 2, ptr @w5500_spi_read, ptr @w5500_spi_write, ptr @w5500_spi_read16, ptr @w5500_spi_write16, ptr @w5500_spi_readbulk, ptr @w5500_spi_writebulk, ptr null, ptr @w5500_spi_init }, [56 x i8] zeroinitializer }, align 32
@w5200_spi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&spi_priv->cmd_lock\00", [44 x i8] zeroinitializer }, align 32
@w5500_spi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@switch.table.w5100_spi_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @w5100_spi_ops, ptr @w5200_ops, ptr @w5500_ops], [20 x i8] zeroinitializer }, align 32
@switch.table.w5100_spi_probe.2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 256, i32 256], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"w5100_spi_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 479, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"w5100_spi_ids\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 471, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 481, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"w5100_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 413, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"w5100_spi_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 102, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"w5200_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 243, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"w5500_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 401, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 134, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private constant [43 x i8] c"../drivers/net/ethernet/wiznet/w5100-spi.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 279, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [29 x i8] c"switch.table.w5100_spi_probe\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"switch.table.w5100_spi_probe.2\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_w5100_spi_driver_exit, ptr @__initcall__kmod_w5100_spi__349_489_w5100_spi_driver_init6, ptr @w5100_spi_driver_exit, ptr @w5100_spi_driver, ptr @w5100_spi_ids, ptr @.str, ptr @w5100_of_match, ptr @w5100_spi_ops, ptr @w5200_ops, ptr @w5500_ops, ptr @w5200_spi_init.__key, ptr @.str.1, ptr @w5500_spi_init.__key, ptr @switch.table.w5100_spi_probe, ptr @switch.table.w5100_spi_probe.2], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_spi_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_spi_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5200_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5500_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5200_spi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5500_spi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w5100_spi_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w5100_spi_probe.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @w5100_spi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w5100_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @w5100_spi_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmpmac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmpmac) #4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = call ptr @memset(ptr %tmpmac, i32 255, i32 6)
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = call i32 @of_get_mac_address(ptr noundef %2, ptr noundef nonnull %tmpmac) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, ptr %tmpmac, ptr null
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  %call7 = call ptr @of_match_device(ptr noundef nonnull @w5100_of_match, ptr noundef %spi) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = call ptr @spi_get_device_id(ptr noundef %spi) #4
  %driver_data12 = getelementptr inbounds %struct.spi_device_id, ptr %call11, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end10
  %driver_data.0 = phi i32 [ %7, %if.end10 ], [ %9, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %driver_data.0)
  %10 = icmp ult i32 %driver_data.0, 3
  br i1 %10, label %switch.lookup, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.w5100_spi_probe, i32 0, i32 %driver_data.0
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep30 = getelementptr inbounds [3 x i32], ptr @switch.table.w5100_spi_probe.2, i32 0, i32 %driver_data.0
  %12 = ptrtoint ptr %switch.gep30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load31 = load i32, ptr %switch.gep30, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call17 = call i32 @w5100_probe(ptr noundef %spi, ptr noundef nonnull %switch.load, i32 noundef %switch.load31, ptr noundef %spec.select, i32 noundef %14, i32 noundef -22) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end13.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %switch.lookup ], [ -19, %if.then5.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmpmac) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @w5100_remove(ptr noundef %spi) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w5100_probe(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_read(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #2 align 64 {
entry:
  %cmd = alloca [3 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %cmd, align 1
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %2, align 1
  %conv2 = trunc i32 %addr to i8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %data, align 1, !annotation !38
  %call3 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %conv4 = zext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv4, %cond.false ], [ %call3, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd) #4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_write(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i8 noundef zeroext %data) #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -16, ptr %cmd, align 1
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %2, align 1
  %conv2 = trunc i32 %addr to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %4, align 1
  %call4 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #4
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_read16(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #2 align 64 {
entry:
  %cmd.i13 = alloca [3 x i8], align 1
  %data.i14 = alloca i8, align 1
  %cmd.i = alloca [3 x i8], align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd.i) #4
  %2 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 2
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %cmd.i, align 1
  %shr.i = lshr i32 %addr, 8
  %conv.i = trunc i32 %shr.i to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %2, align 1
  %conv2.i = trunc i32 %addr to i8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %data.i, align 1, !annotation !38
  %call3.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %w5100_spi_read.exit.thread, label %w5100_spi_read.exit

w5100_spi_read.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 1
  %conv4.i = zext i8 %9 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #4
  br label %if.end

w5100_spi_read.exit:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %w5100_spi_read.exit.cleanup_crit_edge, label %w5100_spi_read.exit.if.end_crit_edge

w5100_spi_read.exit.if.end_crit_edge:             ; preds = %w5100_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

w5100_spi_read.exit.cleanup_crit_edge:            ; preds = %w5100_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %w5100_spi_read.exit.if.end_crit_edge, %w5100_spi_read.exit.thread
  %cond.i27 = phi i32 [ %conv4.i, %w5100_spi_read.exit.thread ], [ %call3.i, %w5100_spi_read.exit.if.end_crit_edge ]
  %add = add i32 %addr, 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd.i13) #4
  %12 = getelementptr inbounds [3 x i8], ptr %cmd.i13, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %cmd.i13, i32 0, i32 2
  %14 = ptrtoint ptr %cmd.i13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %cmd.i13, align 1
  %shr.i16 = lshr i32 %add, 8
  %conv.i17 = trunc i32 %shr.i16 to i8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i17, ptr %12, align 1
  %conv2.i18 = trunc i32 %add to i8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i18, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i14) #4
  %17 = ptrtoint ptr %data.i14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %data.i14, align 1, !annotation !38
  %call3.i19 = call i32 @spi_write_then_read(ptr noundef %11, ptr noundef nonnull %cmd.i13, i32 noundef 3, ptr noundef nonnull %data.i14, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i19)
  %tobool.not.i20 = icmp eq i32 %call3.i19, 0
  br i1 %tobool.not.i20, label %cond.false.i22, label %if.end.w5100_spi_read.exit24_crit_edge

if.end.w5100_spi_read.exit24_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %w5100_spi_read.exit24

cond.false.i22:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %data.i14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i14, align 1
  %conv4.i21 = zext i8 %19 to i32
  br label %w5100_spi_read.exit24

w5100_spi_read.exit24:                            ; preds = %cond.false.i22, %if.end.w5100_spi_read.exit24_crit_edge
  %cond.i23 = phi i32 [ %conv4.i21, %cond.false.i22 ], [ %call3.i19, %if.end.w5100_spi_read.exit24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i14) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i23)
  %cmp2 = icmp slt i32 %cond.i23, 0
  %conv = shl i32 %cond.i27, 8
  %conv4 = and i32 %conv, 65280
  %or = select i1 %cmp2, i32 0, i32 %conv4
  %cond = or i32 %or, %cond.i23
  br label %cleanup

cleanup:                                          ; preds = %w5100_spi_read.exit24, %w5100_spi_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %w5100_spi_read.exit24 ], [ %call3.i, %w5100_spi_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_write16(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i16 noundef zeroext %data) #2 align 64 {
entry:
  %cmd.i9 = alloca [4 x i8], align 1
  %cmd.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %data, 8
  %conv1 = trunc i16 %0 to i8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #4
  %3 = getelementptr inbounds [4 x i8], ptr %cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %cmd.i, align 1
  %shr.i = lshr i32 %addr, 8
  %conv.i = trunc i32 %shr.i to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %3, align 1
  %conv2.i = trunc i32 %addr to i8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.i, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1, ptr %5, align 1
  %call4.i = call i32 @spi_write_then_read(ptr noundef %2, ptr noundef nonnull %cmd.i, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %addr, 1
  %conv3 = trunc i16 %data to i8
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i9) #4
  %12 = getelementptr inbounds [4 x i8], ptr %cmd.i9, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i8], ptr %cmd.i9, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %cmd.i9, i32 0, i32 3
  %15 = ptrtoint ptr %cmd.i9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -16, ptr %cmd.i9, align 1
  %shr.i11 = lshr i32 %add, 8
  %conv.i12 = trunc i32 %shr.i11 to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i12, ptr %12, align 1
  %conv2.i13 = trunc i32 %add to i8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv2.i13, ptr %13, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3, ptr %14, align 1
  %call4.i14 = call i32 @spi_write_then_read(ptr noundef %11, ptr noundef nonnull %cmd.i9, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i14, %if.end ], [ %call4.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_readbulk(ptr nocapture noundef readonly %ndev, i32 noundef %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %cmd.i = alloca [3 x i8], align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp15 = icmp sgt i32 %len, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

for.body.lr.ph:                                   ; preds = %entry
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.016, %addr
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd.i) #4
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %cmd.i, align 1
  %shr.i = lshr i32 %add, 8
  %conv.i = trunc i32 %shr.i to i8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %0, align 1
  %conv2.i = trunc i32 %add to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %data.i, align 1, !annotation !38
  %call3.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %w5100_spi_read.exit.thread, label %w5100_spi_read.exit

w5100_spi_read.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 1
  %conv4.i = zext i8 %9 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #4
  br label %for.inc

w5100_spi_read.exit:                              ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp1 = icmp slt i32 %call3.i, 0
  br i1 %cmp1, label %w5100_spi_read.exit.cleanup2_crit_edge, label %w5100_spi_read.exit.for.inc_crit_edge

w5100_spi_read.exit.for.inc_crit_edge:            ; preds = %w5100_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

w5100_spi_read.exit.cleanup2_crit_edge:           ; preds = %w5100_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

for.inc:                                          ; preds = %w5100_spi_read.exit.for.inc_crit_edge, %w5100_spi_read.exit.thread
  %cond.i10 = phi i32 [ %conv4.i, %w5100_spi_read.exit.thread ], [ %call3.i, %w5100_spi_read.exit.for.inc_crit_edge ]
  %conv = trunc i32 %cond.i10 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.016
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.cleanup2_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.cleanup2_crit_edge, %w5100_spi_read.exit.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup2_crit_edge ], [ %call3.i, %w5100_spi_read.exit.cleanup2_crit_edge ], [ 0, %for.inc.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_spi_writebulk(ptr nocapture noundef readonly %ndev, i32 noundef %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %cmd.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp6 = icmp sgt i32 %len, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.cleanup1_crit_edge

entry.cleanup1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1

for.body.lr.ph:                                   ; preds = %entry
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = getelementptr inbounds [4 x i8], ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %cmd.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %cmd.i, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.cond.cleanup1_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %add = add i32 %i.07, %addr
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.07
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #4
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -16, ptr %cmd.i, align 1
  %shr.i = lshr i32 %add, 8
  %conv.i = trunc i32 %shr.i to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %0, align 1
  %conv2.i = trunc i32 %add to i8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2.i, ptr %1, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %4, ptr %2, align 1
  %call4.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %cmd.i, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup1_crit_edge

for.body.cleanup1_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1

cleanup1:                                         ; preds = %for.body.cleanup1_crit_edge, %for.cond.cleanup1_crit_edge, %entry.cleanup1_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup1_crit_edge ], [ 0, %for.cond.cleanup1_crit_edge ], [ %call4.i, %for.body.cleanup1_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_read(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 3
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data, align 1, !annotation !38
  %call4 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv5 = zext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv5, %cond.false ], [ %call4, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_write(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i8 noundef zeroext %data) #2 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %3, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %data, ptr %5, align 1
  %call5 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 5, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #4
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_read16(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 1
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 3
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data, align 2, !annotation !38
  %call4 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %data, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv5 = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv5, %cond.false ], [ %call4, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_write16(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i16 noundef zeroext %data) #2 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 5
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %4, align 1
  %11 = lshr i16 %data, 8
  %conv7 = trunc i16 %11 to i8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7, ptr %5, align 1
  %conv11 = trunc i16 %data to i8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11, ptr %6, align 1
  %call12 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 6, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #4
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_readbulk(ptr noundef %ndev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call ptr @w5100_ops_priv(ptr noundef %ndev) #4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #4
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %cmd_buf = getelementptr inbounds %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_buf, ptr %xfer, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %len2, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %len4, align 4
  tail call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #4
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %cmd_buf, align 128
  %conv10 = trunc i32 %addr to i8
  %arrayidx12 = getelementptr %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx12, align 1
  %10 = lshr i32 %len, 8
  %conv14 = trunc i32 %10 to i8
  %arrayidx16 = getelementptr %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %arrayidx16, align 2
  %conv17 = trunc i32 %len to i8
  %arrayidx19 = getelementptr %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %arrayidx19, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #4
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %24, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.1.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.1.i.i, ptr %24, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i33 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  call void @mutex_unlock(ptr noundef %call.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #4
  ret i32 %call.i33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_writebulk(ptr noundef %ndev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call ptr @w5100_ops_priv(ptr noundef %ndev) #4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #4
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %cmd_buf = getelementptr inbounds %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_buf, ptr %xfer, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %len2, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %arrayinit.element, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %len4, align 4
  tail call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #4
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %cmd_buf, align 128
  %conv10 = trunc i32 %addr to i8
  %arrayidx12 = getelementptr %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx12, align 1
  %10 = lshr i32 %len, 8
  %11 = trunc i32 %10 to i8
  %conv14 = or i8 %11, -128
  %arrayidx16 = getelementptr %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14, ptr %arrayidx16, align 2
  %conv17 = trunc i32 %len to i8
  %arrayidx19 = getelementptr %struct.w5200_spi_priv, ptr %call.i, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %arrayidx19, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #4
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %25, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.1.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.1.i.i, ptr %25, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i33 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  call void @mutex_unlock(ptr noundef %call.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #4
  ret i32 %call.i33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5200_spi_init(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @w5100_ops_priv(ptr noundef %ndev) #4
  tail call void @__mutex_init(ptr noundef %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @w5200_spi_init.__key) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @w5100_ops_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_read(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #2 align 64 {
entry:
  %cmd = alloca [3 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 2
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %2, align 1
  %6 = lshr i32 %addr, 13
  %7 = trunc i32 %6 to i8
  %conv4 = and i8 %7, -8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data, align 1, !annotation !38
  %call5 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv6 = zext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv6, %cond.false ], [ %call5, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd) #4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_write(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i8 noundef zeroext %data) #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 3
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %2, align 1
  %7 = lshr i32 %addr, 13
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, -8
  %conv4 = or i8 %9, 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %data, ptr %4, align 1
  %call6 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #4
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_read16(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #2 align 64 {
entry:
  %cmd = alloca [3 x i8], align 1
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 2
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %2, align 1
  %6 = lshr i32 %addr, 13
  %7 = trunc i32 %6 to i8
  %conv4 = and i8 %7, -8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data, align 2, !annotation !38
  %call5 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef nonnull %data, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv6 = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv6, %cond.false ], [ %call5, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd) #4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_write16(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i16 noundef zeroext %data) #2 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #4
  %2 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %cmd, align 1
  %conv1 = trunc i32 %addr to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %2, align 1
  %8 = lshr i32 %addr, 13
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, -8
  %conv4 = or i8 %10, 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %3, align 1
  %12 = lshr i16 %data, 8
  %conv8 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %4, align 1
  %conv10 = trunc i16 %data to i8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %5, align 1
  %call11 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 5, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #4
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_readbulk(ptr noundef %ndev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call ptr @w5100_ops_priv(ptr noundef %ndev) #4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #4
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %cmd_buf = getelementptr inbounds %struct.w5500_spi_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_buf, ptr %xfer, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %len2, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %len4, align 4
  tail call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #4
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %cmd_buf, align 128
  %conv10 = trunc i32 %addr to i8
  %arrayidx12 = getelementptr %struct.w5500_spi_priv, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx12, align 1
  %10 = lshr i32 %addr, 13
  %11 = trunc i32 %10 to i8
  %conv14 = and i8 %11, -8
  %arrayidx16 = getelementptr %struct.w5500_spi_priv, ptr %call.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14, ptr %arrayidx16, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #4
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %24, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.1.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.1.i.i, ptr %24, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i28 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  call void @mutex_unlock(ptr noundef %call.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #4
  ret i32 %call.i28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_writebulk(ptr noundef %ndev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call ptr @w5100_ops_priv(ptr noundef %ndev) #4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #4
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %cmd_buf = getelementptr inbounds %struct.w5500_spi_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_buf, ptr %xfer, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %len2, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %arrayinit.element, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %len4, align 4
  tail call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #4
  %shr = lshr i32 %addr, 8
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %cmd_buf, align 128
  %conv10 = trunc i32 %addr to i8
  %arrayidx12 = getelementptr %struct.w5500_spi_priv, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx12, align 1
  %10 = lshr i32 %addr, 13
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, -8
  %conv14 = or i8 %12, 4
  %arrayidx16 = getelementptr %struct.w5500_spi_priv, ptr %call.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14, ptr %arrayidx16, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #4
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %25, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.1.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.1.i.i, ptr %25, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i28 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  call void @mutex_unlock(ptr noundef %call.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #4
  ret i32 %call.i28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5500_spi_init(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @w5100_ops_priv(ptr noundef %ndev) #4
  tail call void @__mutex_init(ptr noundef %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @w5500_spi_init.__key) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w5100_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_w5100_spi__349_489_w5100_spi_driver_init6, !1, !"__initcall__kmod_w5100_spi__349_489_w5100_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 489, i32 1}
!2 = !{ptr @__exitcall_w5100_spi_driver_exit, !1, !"__exitcall_w5100_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description350, !4, !"__UNIQUE_ID_description350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 491, i32 1}
!5 = !{ptr @__UNIQUE_ID_author351, !6, !"__UNIQUE_ID_author351", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 492, i32 1}
!7 = !{ptr @__UNIQUE_ID_file352, !8, !"__UNIQUE_ID_file352", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 493, i32 1}
!9 = !{ptr @__UNIQUE_ID_license353, !8, !"__UNIQUE_ID_license353", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 481, i32 11}
!12 = !{ptr @w5100_spi_driver, !13, !"w5100_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 479, i32 26}
!14 = !{ptr @w5100_spi_ids, !15, !"w5100_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 471, i32 35}
!16 = !{ptr @w5100_spi_ops, !17, !"w5100_spi_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 102, i32 31}
!18 = !{ptr @w5200_ops, !19, !"w5200_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 243, i32 31}
!20 = !{ptr @w5200_spi_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 134, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @w5500_ops, !24, !"w5500_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 401, i32 31}
!25 = !{ptr @w5500_spi_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 279, i32 2}
!27 = !{ptr @w5100_of_match, !28, !"w5100_of_match", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/wiznet/w5100-spi.c", i32 413, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
