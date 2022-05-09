; ModuleID = '/llk/IR_all_yes/drivers/net/caif/caif_virtio.c_pt.bc'
source_filename = "../drivers/net/caif/caif_virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.vringh_config_ops = type { ptr, ptr }
%struct.cfv_info = type { %struct.caif_dev_common, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.tasklet_struct, %struct.napi_struct, %struct.cfv_napi_context, i16, i16, i16, i16, i32, i32, i32, ptr, i32, ptr, i32, i32, %struct.cfv_stats, ptr }
%struct.caif_dev_common = type { ptr, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%union.anon.118 = type { ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cfv_napi_context = type { %struct.vringh_kiov, i16 }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.cfv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.kvec = type { ptr, i32 }
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
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.buf_info = type { i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@__UNIQUE_ID_file357 = internal constant [46 x i8] c"caif_virtio.file=drivers/net/caif/caif_virtio\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [27 x i8] c"caif_virtio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [30 x i8] c"caif_virtio.author=Vicram Arv\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [35 x i8] c"caif_virtio.author=Sjur Brendeland\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [43 x i8] c"caif_virtio.description=Virtio CAIF Driver\00", section ".modinfo", align 1
@__initcall__kmod_caif_virtio__363_782_caif_virtio_driver_init6 = internal global ptr @caif_virtio_driver_init, section ".initcall6.init", align 4
@caif_virtio_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 0, ptr null, i32 0, ptr null, ptr @cfv_probe, ptr null, ptr @cfv_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_caif_virtio_driver_exit = internal global ptr @caif_virtio_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"caif_virtio\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 12, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [0 x i32], [32 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cfvrt\00", [26 x i8] zeroinitializer }, align 32
@cfv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cfv->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/caif/caif_virtio.c\00", [33 x i8] zeroinitializer }, align 32
@cfv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 727, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register netdev (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfv_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cfv_probe._entry_ptr = internal global ptr @cfv_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CAIF Virtio probe failed:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@cfv_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cfv_netdev_open, ptr @cfv_netdev_close, ptr @cfv_netdev_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Not enough device memory\0A\00", [38 x i8] zeroinitializer }, align 32
@cfv_create_genpool.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cfv_create_genpool\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Allocated %zd bytes from dma-memory\0A\00", [59 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Out of gen_pool memory\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed adding buffer to TX vring:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid packet len (%d > %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad ring, disable device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid frmlen:%u  mtu:%u hr:%d tr:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx-napi-complete\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx-napi-resched\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx-nomem\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx-kicks\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-full-ring\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx-no-mem\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx-kicks\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx-flow-on\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"caif_virtio_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 772, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 775, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 764, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 769, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 651, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 652, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 666, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 684, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 727, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 735, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"cfv_netdev_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 607, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 391, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 405, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 571, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 578, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 491, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 337, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 227, i32 7 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 628, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 630, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 632, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 634, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 636, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 638, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 640, i32 21 }
@___asan_gen_.121 = private constant [34 x i8] c"../drivers/net/caif/caif_virtio.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 642, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 4963, i32 10 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_caif_virtio_driver_exit, ptr @__initcall__kmod_caif_virtio__363_782_caif_virtio_driver_init6, ptr @caif_virtio_driver_exit, ptr @cfv_probe._entry, ptr @cfv_probe._entry_ptr, ptr @caif_virtio_driver, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @cfv_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cfv_netdev_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_virtio_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfv_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_virtio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @caif_virtio_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @caif_virtio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_virtio_driver(ptr noundef nonnull @caif_virtio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfv_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %vq_cbs = alloca ptr, align 4
  %vrh_cbs = alloca ptr, align 4
  %names = alloca ptr, align 4
  %virtio_cread_v = alloca i16, align 2
  %virtio_cread_v34 = alloca i16, align 2
  %virtio_cread_v52 = alloca i16, align 2
  %virtio_cread_v70 = alloca i16, align 2
  %virtio_cread_v88 = alloca i32, align 4
  %virtio_cread_v106 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vq_cbs) #9
  %0 = ptrtoint ptr %vq_cbs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cfv_release_cb, ptr %vq_cbs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vrh_cbs) #9
  %1 = ptrtoint ptr %vrh_cbs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfv_recv, ptr %vrh_cbs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names) #9
  %2 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %names, align 4
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 440, ptr noundef nonnull @.str.2, i8 noundef zeroext 0, ptr noundef nonnull @cfv_netdev_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %vdev2 = getelementptr i8, ptr %call, i32 2324
  %3 = ptrtoint ptr %vdev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vdev, ptr %vdev2, align 4
  %ndev = getelementptr i8, ptr %call, i32 2336
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %ndev, align 8
  %tx_lock = getelementptr i8, ptr %call, i32 2344
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cfv_probe.__key, i16 noundef signext 3) #9
  %vringh_config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 9
  %5 = ptrtoint ptr %vringh_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vringh_config, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.err145_crit_edge, label %lor.lhs.false

if.end.err145_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err145

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false.err145_crit_edge, label %if.end8

lor.lhs.false.err145_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %err145

if.end8:                                          ; preds = %lor.lhs.false
  %vr_rx = getelementptr i8, ptr %call, i32 2328
  %call11 = call i32 %8(ptr noundef %vdev, i32 noundef 1, ptr noundef %vr_rx, ptr noundef nonnull %vrh_cbs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.err145_crit_edge

if.end8.err145_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err145

if.end14:                                         ; preds = %if.end8
  %vq_tx = getelementptr i8, ptr %call, i32 2332
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %12(ptr noundef %vdev, i32 noundef 1, ptr noundef %vq_tx, ptr noundef nonnull %vq_cbs, ptr noundef nonnull %names, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err145_crit_edge

if.end14.err145_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err145

if.end18:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.else, label %do.body21

do.body21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #9
  %17 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !83
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 685) #9
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config.i, align 8
  %get29 = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %get29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get29, align 4
  call void %21(ptr noundef %vdev, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #9
  %22 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %virtio_cread_v, align 2
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %24 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %25, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %26 = call i16 @llvm.bswap.i16(i16 %23) #9
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i16 %23, i16 %26
  %tx_hr = getelementptr i8, ptr %call, i32 2664
  %27 = ptrtoint ptr %tx_hr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %retval.0.i.i, ptr %tx_hr, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v34) #9
  %28 = ptrtoint ptr %virtio_cread_v34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %virtio_cread_v34, align 2, !annotation !83
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 687) #9
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 8
  %get47 = getelementptr inbounds %struct.virtio_config_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %get47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get47, align 4
  call void %32(ptr noundef %vdev, i32 noundef 0, ptr noundef nonnull %virtio_cread_v34, i32 noundef 2) #9
  %33 = ptrtoint ptr %virtio_cread_v34 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %virtio_cread_v34, align 2
  %35 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i242 = and i64 %36, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i242)
  %tobool13.i.i.i.not.i243 = icmp eq i64 %and.i.i.i.i242, 0
  %37 = call i16 @llvm.bswap.i16(i16 %34) #9
  %retval.0.i.i244 = select i1 %tobool13.i.i.i.not.i243, i16 %34, i16 %37
  %rx_hr = getelementptr i8, ptr %call, i32 2666
  %38 = ptrtoint ptr %rx_hr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %retval.0.i.i244, ptr %rx_hr, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v34) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v52) #9
  %39 = ptrtoint ptr %virtio_cread_v52 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %virtio_cread_v52, align 2, !annotation !83
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 689) #9
  %40 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config.i, align 8
  %get65 = getelementptr inbounds %struct.virtio_config_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %get65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get65, align 4
  call void %43(ptr noundef %vdev, i32 noundef 2, ptr noundef nonnull %virtio_cread_v52, i32 noundef 2) #9
  %44 = ptrtoint ptr %virtio_cread_v52 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %virtio_cread_v52, align 2
  %46 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i246 = and i64 %47, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i246)
  %tobool13.i.i.i.not.i247 = icmp eq i64 %and.i.i.i.i246, 0
  %48 = call i16 @llvm.bswap.i16(i16 %45) #9
  %retval.0.i.i248 = select i1 %tobool13.i.i.i.not.i247, i16 %45, i16 %48
  %tx_tr = getelementptr i8, ptr %call, i32 2668
  %49 = ptrtoint ptr %tx_tr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %retval.0.i.i248, ptr %tx_tr, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v52) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v70) #9
  %50 = ptrtoint ptr %virtio_cread_v70 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %virtio_cread_v70, align 2, !annotation !83
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 691) #9
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 8
  %get83 = getelementptr inbounds %struct.virtio_config_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %get83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get83, align 4
  call void %54(ptr noundef %vdev, i32 noundef 2, ptr noundef nonnull %virtio_cread_v70, i32 noundef 2) #9
  %55 = ptrtoint ptr %virtio_cread_v70 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %virtio_cread_v70, align 2
  %57 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i250 = and i64 %58, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i250)
  %tobool13.i.i.i.not.i251 = icmp eq i64 %and.i.i.i.i250, 0
  %59 = call i16 @llvm.bswap.i16(i16 %56) #9
  %retval.0.i.i252 = select i1 %tobool13.i.i.i.not.i251, i16 %56, i16 %59
  %rx_tr = getelementptr i8, ptr %call, i32 2670
  %60 = ptrtoint ptr %rx_tr to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %retval.0.i.i252, ptr %rx_tr, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v70) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v88) #9
  %61 = ptrtoint ptr %virtio_cread_v88 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %virtio_cread_v88, align 4, !annotation !83
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 693) #9
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 8
  %get101 = getelementptr inbounds %struct.virtio_config_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %get101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get101, align 4
  call void %65(ptr noundef %vdev, i32 noundef 4, ptr noundef nonnull %virtio_cread_v88, i32 noundef 4) #9
  %66 = ptrtoint ptr %virtio_cread_v88 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %virtio_cread_v88, align 4
  %68 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i254 = and i64 %69, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i254)
  %tobool13.i.i.i.not.i255 = icmp eq i64 %and.i.i.i.i254, 0
  %70 = call i32 @llvm.bswap.i32(i32 %67) #9
  %retval.0.i.i256 = select i1 %tobool13.i.i.i.not.i255, i32 %67, i32 %70
  %mtu = getelementptr i8, ptr %call, i32 2672
  %71 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i.i256, ptr %mtu, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v88) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v106) #9
  %72 = ptrtoint ptr %virtio_cread_v106 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %virtio_cread_v106, align 4, !annotation !83
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 695) #9
  %73 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config.i, align 8
  %get119 = getelementptr inbounds %struct.virtio_config_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %get119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get119, align 4
  call void %76(ptr noundef %vdev, i32 noundef 4, ptr noundef nonnull %virtio_cread_v106, i32 noundef 4) #9
  %77 = ptrtoint ptr %virtio_cread_v106 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %virtio_cread_v106, align 4
  %79 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i258 = and i64 %80, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i258)
  %tobool13.i.i.i.not.i259 = icmp eq i64 %and.i.i.i.i258, 0
  %81 = call i32 @llvm.bswap.i32(i32 %78) #9
  %retval.0.i.i260 = select i1 %tobool13.i.i.i.not.i259, i32 %78, i32 %81
  %mru = getelementptr i8, ptr %call, i32 2676
  %82 = ptrtoint ptr %mru to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i.i260, ptr %mru, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v106) #9
  br label %if.end129

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %tx_hr123 = getelementptr i8, ptr %call, i32 2664
  %83 = ptrtoint ptr %tx_hr123 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 32, ptr %tx_hr123, align 8
  %rx_hr124 = getelementptr i8, ptr %call, i32 2666
  %84 = ptrtoint ptr %rx_hr124 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 32, ptr %rx_hr124, align 2
  %tx_tr125 = getelementptr i8, ptr %call, i32 2668
  %85 = ptrtoint ptr %tx_tr125 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 32, ptr %tx_tr125, align 4
  %rx_tr126 = getelementptr i8, ptr %call, i32 2670
  %86 = ptrtoint ptr %rx_tr126 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 32, ptr %rx_tr126, align 2
  %mtu127 = getelementptr i8, ptr %call, i32 2672
  %87 = ptrtoint ptr %mtu127 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4096, ptr %mtu127, align 8
  %mru128 = getelementptr i8, ptr %call, i32 2676
  %88 = ptrtoint ptr %mru128 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4096, ptr %mru128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else, %do.body21
  %tx_hr130 = getelementptr i8, ptr %call, i32 2664
  %89 = ptrtoint ptr %tx_hr130 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tx_hr130, align 8
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 21
  %91 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %needed_headroom, align 8
  %tx_tr131 = getelementptr i8, ptr %call, i32 2668
  %92 = ptrtoint ptr %tx_tr131 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tx_tr131, align 4
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 22
  %94 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %needed_tailroom, align 2
  %95 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vq_tx, align 4
  call void @virtqueue_disable_cb(ptr noundef %96) #9
  %mtu133 = getelementptr i8, ptr %call, i32 2672
  %97 = ptrtoint ptr %mtu133 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mtu133, align 8
  %99 = ptrtoint ptr %tx_tr131 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %tx_tr131, align 4
  %conv135 = zext i16 %100 to i32
  %sub = sub i32 %98, %conv135
  %mtu136 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %101 = ptrtoint ptr %mtu136 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %sub, ptr %mtu136, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i, ptr %priv, align 8
  %ctx = getelementptr i8, ptr %call, i32 2640
  %103 = call ptr @memset(ptr %ctx, i32 0, i32 20)
  %head = getelementptr i8, ptr %call, i32 2660
  %104 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %head, align 4
  %napi = getelementptr i8, ptr %call, i32 2416
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @cfv_rx_poll, i32 noundef 32) #9
  %tx_release_tasklet = getelementptr i8, ptr %call, i32 2388
  call void @tasklet_setup(ptr noundef %tx_release_tasklet, ptr noundef nonnull @cfv_tx_release_tasklet) #9
  call void @netif_carrier_off(ptr noundef nonnull %call) #9
  %call138 = call i32 @register_netdev(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end144, label %do.end143

do.end143:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call138) #12
  br label %err145

if.end144:                                        ; preds = %if.end129
  %105 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndev, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i.i, label %if.end144.debugfs_init.exit_crit_edge, label %lor.lhs.false.i.i

if.end144.debugfs_init.exit_crit_edge:            ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %debugfs_init.exit

lor.lhs.false.i.i:                                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call ptr @strchr(ptr noundef %106, i32 noundef 37) #9
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %106, ptr @.str.26
  br label %debugfs_init.exit

debugfs_init.exit:                                ; preds = %lor.lhs.false.i.i, %if.end144.debugfs_init.exit_crit_edge
  %retval.0.i.i261 = phi ptr [ @.str.26, %if.end144.debugfs_init.exit_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %call1.i = call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i261, ptr noundef null) #9
  %debugfs.i = getelementptr i8, ptr %call, i32 2736
  %109 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call1.i, ptr %debugfs.i, align 8
  %stats.i = getelementptr i8, ptr %call, i32 2704
  call void @debugfs_create_u32(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call1.i, ptr noundef %stats.i) #9
  %110 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %debugfs.i, align 8
  %rx_napi_resched.i = getelementptr i8, ptr %call, i32 2708
  call void @debugfs_create_u32(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %111, ptr noundef %rx_napi_resched.i) #9
  %112 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %debugfs.i, align 8
  %rx_nomem.i = getelementptr i8, ptr %call, i32 2712
  call void @debugfs_create_u32(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %113, ptr noundef %rx_nomem.i) #9
  %114 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %debugfs.i, align 8
  %rx_kicks.i = getelementptr i8, ptr %call, i32 2716
  call void @debugfs_create_u32(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %115, ptr noundef %rx_kicks.i) #9
  %116 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %debugfs.i, align 8
  %tx_full_ring.i = getelementptr i8, ptr %call, i32 2720
  call void @debugfs_create_u32(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %117, ptr noundef %tx_full_ring.i) #9
  %118 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %debugfs.i, align 8
  %tx_no_mem.i = getelementptr i8, ptr %call, i32 2724
  call void @debugfs_create_u32(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %119, ptr noundef %tx_no_mem.i) #9
  %120 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %debugfs.i, align 8
  %tx_kicks.i = getelementptr i8, ptr %call, i32 2732
  call void @debugfs_create_u32(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %121, ptr noundef %tx_kicks.i) #9
  %122 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %debugfs.i, align 8
  %tx_flow_on.i = getelementptr i8, ptr %call, i32 2728
  call void @debugfs_create_u32(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %123, ptr noundef %tx_flow_on.i) #9
  br label %cleanup

err145:                                           ; preds = %do.end143, %if.end14.err145_crit_edge, %if.end8.err145_crit_edge, %lor.lhs.false.err145_crit_edge, %if.end.err145_crit_edge
  %err.0 = phi i32 [ %call11, %if.end8.err145_crit_edge ], [ %call.i, %if.end14.err145_crit_edge ], [ %call138, %do.end143 ], [ -19, %lor.lhs.false.err145_crit_edge ], [ -19, %if.end.err145_crit_edge ]
  %124 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %125, ptr noundef nonnull @.str.9, i32 noundef %err.0) #12
  %vr_rx147 = getelementptr i8, ptr %call, i32 2328
  %126 = ptrtoint ptr %vr_rx147 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vr_rx147, align 8
  %tobool148.not = icmp eq ptr %127, null
  br i1 %tobool148.not, label %err145.if.end152_crit_edge, label %if.then149

err145.if.end152_crit_edge:                       ; preds = %err145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then149:                                       ; preds = %err145
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %vringh_config to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vringh_config, align 4
  %del_vrhs = getelementptr inbounds %struct.vringh_config_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %del_vrhs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %del_vrhs, align 4
  %132 = ptrtoint ptr %vdev2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vdev2, align 4
  call void %131(ptr noundef %133) #9
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %err145.if.end152_crit_edge
  %134 = ptrtoint ptr %vdev2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %vdev2, align 4
  %tobool154.not = icmp eq ptr %135, null
  br i1 %tobool154.not, label %if.end152.if.end158_crit_edge, label %if.then155

if.end152.if.end158_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  %config156 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %136 = ptrtoint ptr %config156 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config156, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %137, i32 0, i32 8
  %138 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %del_vqs, align 4
  call void %139(ptr noundef nonnull %135) #9
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end152.if.end158_crit_edge
  call void @free_netdev(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %debugfs_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end158 ], [ 0, %debugfs_init.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vrh_cbs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vq_cbs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfv_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtnl_lock() #9
  %ndev = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  tail call void @dev_close(ptr noundef %3) #9
  tail call void @rtnl_unlock() #9
  %tx_release_tasklet = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %tx_release_tasklet) #9
  %debugfs = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %5) #9
  %ctx = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 9
  %max_num.i = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 9, i32 0, i32 4
  %6 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_num.i, align 4
  %and.i = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vringh_kiov_cleanup.exit_crit_edge, label %if.then.i

entry.vringh_kiov_cleanup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vringh_kiov_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void @kfree(ptr noundef %9) #9
  br label %vringh_kiov_cleanup.exit

vringh_kiov_cleanup.exit:                         ; preds = %if.then.i, %entry.vringh_kiov_cleanup.exit_crit_edge
  %10 = call ptr @memset(ptr %ctx, i32 0, i32 20)
  tail call void @virtio_reset_device(ptr noundef %vdev) #9
  %vringh_config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 9
  %11 = ptrtoint ptr %vringh_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vringh_config, align 4
  %del_vrhs = getelementptr inbounds %struct.vringh_config_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %del_vrhs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %del_vrhs, align 4
  %vdev1 = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdev1, align 4
  tail call void %14(ptr noundef %16) #9
  %vr_rx = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %vr_rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vr_rx, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %del_vqs, align 4
  %22 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev1, align 4
  tail call void %21(ptr noundef %23) #9
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 8
  tail call void @unregister_netdev(ptr noundef %25) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfv_release_cb(ptr nocapture noundef readonly %vq_tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq_tx, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tx_kicks = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 22, i32 7
  %4 = ptrtoint ptr %tx_kicks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_kicks, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_kicks, align 4
  %state.i = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_release_tasklet = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %tx_release_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfv_recv(ptr nocapture noundef readonly %vdev, ptr nocapture noundef readnone %vr_rx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rx_kicks = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 22, i32 3
  %2 = ptrtoint ptr %rx_kicks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_kicks, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_kicks, align 4
  %vr_rx1 = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vr_rx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vr_rx1, align 8
  tail call void @vringh_notify_disable_kern(ptr noundef %5) #9
  %napi = getelementptr inbounds %struct.cfv_info, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @cfv_netdev_setup(ptr nocapture noundef writeonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cfv_netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 822, ptr %type, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 107
  %2 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %mtu, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 124
  %5 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfv_rx_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr i8, ptr %napi, i32 224
  %i = getelementptr i8, ptr %napi, i32 232
  %used = getelementptr i8, ptr %napi, i32 236
  %head = getelementptr i8, ptr %napi, i32 244
  %vr_rx = getelementptr i8, ptr %napi, i32 -88
  %mru.i = getelementptr i8, ptr %napi, i32 260
  %rx_hr.i = getelementptr i8, ptr %napi, i32 250
  %rx_tr.i = getelementptr i8, ptr %napi, i32 254
  %ndev16.i = getelementptr i8, ptr %napi, i32 -80
  %smax = call i32 @llvm.smax.i32(i32 %quota, i32 1)
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %entry
  %rxcnt.0 = phi i32 [ 0, %entry ], [ %inc47, %if.end44.do.body_crit_edge ]
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 4
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %do.body.if.end18_crit_edge

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %do.body
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp3.not = icmp eq i16 %5, -1
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vr_rx, align 8
  %call = tail call i32 @vringh_complete_kern(ptr noundef %7, i16 noundef zeroext %5, i32 noundef 0) #9
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %head, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vr_rx, align 8
  %call13 = tail call i32 @vringh_getdesc_kern(ptr noundef %10, ptr noundef %ctx, ptr noundef null, ptr noundef %head, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %exit, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %13 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.kvec, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #13, !srcloc !84
  %19 = inttoptr i32 %18 to ptr
  %iov_len = getelementptr %struct.kvec, ptr %12, i32 %14, i32 1
  %20 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len, align 4
  %22 = ptrtoint ptr %mru.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mru.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.i = icmp ult i32 %23, %21
  br i1 %cmp.i, label %if.end18.exit.thread_crit_edge, label %lor.lhs.false.i

if.end18.exit.thread_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.thread

lor.lhs.false.i:                                  ; preds = %if.end18
  %24 = ptrtoint ptr %rx_hr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_hr.i, align 2
  %conv.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %rx_tr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_tr.i, align 2
  %conv1.i = zext i16 %27 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp2.not.i = icmp ugt i32 %21, %add.i
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.exit.thread_crit_edge

lor.lhs.false.i.exit.thread_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.thread

exit.thread:                                      ; preds = %lor.lhs.false.i.exit.thread_crit_edge, %if.end18.exit.thread_crit_edge
  %28 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev16.i, align 8
  %30 = ptrtoint ptr %rx_hr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_hr.i, align 2
  %conv6.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %rx_tr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rx_tr.i, align 2
  %conv8.i = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.17, i32 noundef %21, i32 noundef %23, i32 noundef %conv6.i, i32 noundef %conv8.i) #12
  br label %sw.default

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  %and.i = and i32 %34, 3
  %35 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev16.i, align 8
  %add17.i = add i32 %and.i, %21
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %36, i32 noundef %add17.i, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.sw.bb70_crit_edge, label %if.end28

if.end.i.sw.bb70_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end28:                                         ; preds = %if.end.i
  %sub.i = sub i32 %21, %add.i
  %37 = ptrtoint ptr %rx_hr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rx_hr.i, align 2
  %conv21.i = zext i16 %38 to i32
  %add22.i = add nuw nsw i32 %and.i, %conv21.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %add22.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %42, i32 %add22.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %43 = load i16, ptr %rx_hr.i, align 2
  %conv24.i = zext i16 %43 to i32
  %add.ptr25.i = getelementptr i8, ptr %19, i32 %conv24.i
  %call.i52.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub.i) #9
  %44 = call ptr @memcpy(ptr %call.i52.i, ptr %add.ptr25.i, i32 %sub.i)
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %47 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 247, ptr %protocol, align 8
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %50 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i139 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %52 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i139, ptr %mac_header.i, align 2
  %53 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev16.i, align 8
  %55 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %55, align 8
  %call29 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %57 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev16.i, align 8
  br i1 %tobool30.not, label %if.else, label %if.then37, !prof !85

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 36, i32 6
  br label %if.end44

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %stats40 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 36
  %59 = ptrtoint ptr %stats40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stats40, align 8
  %inc41 = add i32 %60, 1
  store i32 %inc41, ptr %stats40, align 8
  %61 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndev16.i, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 2
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then37
  %rx_bytes.sink197 = phi ptr [ %rx_bytes, %if.else ], [ %rx_dropped, %if.then37 ]
  %.sink196 = phi i32 [ %46, %if.else ], [ 1, %if.then37 ]
  %63 = ptrtoint ptr %rx_bytes.sink197 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bytes.sink197, align 8
  %add = add i32 %64, %.sink196
  store i32 %add, ptr %rx_bytes.sink197, align 8
  %65 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i, align 4
  %inc46 = add i32 %66, 1
  store i32 %inc46, ptr %i, align 4
  %inc47 = add nuw nsw i32 %rxcnt.0, 1
  %exitcond.not = icmp eq i32 %inc47, %smax
  br i1 %exitcond.not, label %out.thread, label %if.end44.do.body_crit_edge

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

out.thread:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %rx_napi_resched = getelementptr i8, ptr %napi, i32 292
  %67 = ptrtoint ptr %rx_napi_resched to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_napi_resched, align 4
  %inc51 = add i32 %68, 1
  store i32 %inc51, ptr %rx_napi_resched, align 4
  br label %land.lhs.true86

exit:                                             ; preds = %if.end
  %69 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %exit.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 -12, label %exit.sw.bb70_crit_edge
  ]

exit.sw.bb70_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

exit.sw.default_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %exit
  %stats52 = getelementptr i8, ptr %napi, i32 288
  %70 = ptrtoint ptr %stats52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stats52, align 8
  %inc53 = add i32 %71, 1
  store i32 %inc53, ptr %stats52, align 8
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #9
  %72 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vr_rx, align 8
  %call56 = tail call zeroext i1 @vringh_notify_enable_kern(ptr noundef %73) #9
  br i1 %call56, label %sw.bb.out_crit_edge, label %land.lhs.true, !prof !85

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %sw.bb
  %call65 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call65, label %if.then67, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vr_rx, align 8
  tail call void @vringh_notify_disable_kern(ptr noundef %75) #9
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %out

sw.bb70:                                          ; preds = %exit.sw.bb70_crit_edge, %if.end.i.sw.bb70_crit_edge
  %rx_nomem = getelementptr i8, ptr %napi, i32 296
  %76 = ptrtoint ptr %rx_nomem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_nomem, align 8
  %inc72 = add i32 %77, 1
  store i32 %inc72, ptr %rx_nomem, align 8
  tail call void @consume_skb(ptr noundef null) #9
  %call.i140 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #9
  %78 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vr_rx, align 8
  %call75 = tail call zeroext i1 @vringh_notify_enable_kern(ptr noundef %79) #9
  br label %out

sw.default:                                       ; preds = %exit.sw.default_crit_edge, %exit.thread
  %80 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ndev16.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %81, ptr noundef nonnull @.str.16) #12
  %82 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %used, align 4
  %84 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i, align 4
  %sub = sub i32 %83, %85
  %86 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev16.i, align 8
  %rx_dropped81 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 36, i32 6
  %88 = ptrtoint ptr %rx_dropped81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub, ptr %rx_dropped81, align 8
  %call.i141 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #9
  %89 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vr_rx, align 8
  tail call void @vringh_notify_disable_kern(ptr noundef %90) #9
  %91 = ptrtoint ptr %ndev16.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ndev16.i, align 8
  tail call void @netif_carrier_off(ptr noundef %92) #9
  br label %out

out:                                              ; preds = %sw.default, %sw.bb70, %if.then67, %land.lhs.true.out_crit_edge, %sw.bb.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxcnt.0)
  %tobool85.not = icmp eq i32 %rxcnt.0, 0
  br i1 %tobool85.not, label %out.if.end93_crit_edge, label %out.land.lhs.true86_crit_edge

out.land.lhs.true86_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true86

out.if.end93_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true86:                                  ; preds = %out.land.lhs.true86_crit_edge, %out.thread
  %rxcnt.1183 = phi i32 [ %smax, %out.thread ], [ %rxcnt.0, %out.land.lhs.true86_crit_edge ]
  %93 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vr_rx, align 8
  %call88 = tail call i32 @vringh_need_notify_kern(ptr noundef %94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp sgt i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %land.lhs.true86.if.end93_crit_edge

land.lhs.true86.if.end93_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then91:                                        ; preds = %land.lhs.true86
  %95 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vr_rx, align 8
  %notify.i = getelementptr inbounds %struct.vringh, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %notify.i, align 4
  %tobool.not.i142 = icmp eq ptr %98, null
  br i1 %tobool.not.i142, label %if.then91.if.end93_crit_edge, label %if.then.i143

if.then91.if.end93_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then.i143:                                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %98(ptr noundef %96) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then.i143, %if.then91.if.end93_crit_edge, %land.lhs.true86.if.end93_crit_edge, %out.if.end93_crit_edge
  %rxcnt.1184 = phi i32 [ %rxcnt.1183, %if.then.i143 ], [ %rxcnt.1183, %if.then91.if.end93_crit_edge ], [ %rxcnt.1183, %land.lhs.true86.if.end93_crit_edge ], [ 0, %out.if.end93_crit_edge ]
  ret i32 %rxcnt.1184
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfv_tx_release_tasklet(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vq_tx = getelementptr i8, ptr %t, i32 -56
  %0 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq_tx, align 4
  tail call fastcc void @cfv_release_used_buf(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vringh_notify_disable_kern(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfv_netdev_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call fastcc i32 @cfv_create_genpool(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_carrier_on(ptr noundef %netdev) #9
  %napi = getelementptr i8, ptr %netdev, i32 2416
  tail call void @napi_enable(ptr noundef %napi) #9
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfv_netdev_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netif_carrier_off(ptr noundef %netdev) #9
  %vq_tx = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq_tx, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %1) #9
  %vr_rx = getelementptr i8, ptr %netdev, i32 2328
  %2 = ptrtoint ptr %vr_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vr_rx, align 8
  tail call void @vringh_notify_disable_kern(ptr noundef %3) #9
  %napi = getelementptr i8, ptr %netdev, i32 2416
  tail call void @napi_disable(ptr noundef %napi) #9
  %4 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vq_tx, align 4
  tail call fastcc void @cfv_release_used_buf(ptr noundef %5)
  %tx_lock = getelementptr i8, ptr %netdev, i32 2344
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %6 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vq_tx, align 4
  %call822 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %7) #9
  %tobool.not23 = icmp eq ptr %call822, null
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %free_buf_info.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

free_buf_info.exit.lr.ph:                         ; preds = %entry
  %genpool.i = getelementptr i8, ptr %netdev, i32 2692
  br label %free_buf_info.exit

free_buf_info.exit:                               ; preds = %free_buf_info.exit.free_buf_info.exit_crit_edge, %free_buf_info.exit.lr.ph
  %call824 = phi ptr [ %call822, %free_buf_info.exit.lr.ph ], [ %call8, %free_buf_info.exit.free_buf_info.exit_crit_edge ]
  %8 = ptrtoint ptr %genpool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %genpool.i, align 4
  %vaddr.i = getelementptr inbounds %struct.buf_info, ptr %call824, i32 0, i32 1
  %10 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %call824 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call824, align 4
  tail call void @gen_pool_free_owner(ptr noundef %9, i32 noundef %12, i32 noundef %14, ptr noundef null) #9
  tail call void @kfree(ptr noundef nonnull %call824) #9
  %15 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vq_tx, align 4
  %call8 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %16) #9
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %free_buf_info.exit.while.end_crit_edge, label %free_buf_info.exit.free_buf_info.exit_crit_edge

free_buf_info.exit.free_buf_info.exit_crit_edge:  ; preds = %free_buf_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buf_info.exit

free_buf_info.exit.while.end_crit_edge:           ; preds = %free_buf_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %free_buf_info.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call4) #9
  %alloc_addr.i = getelementptr i8, ptr %netdev, i32 2684
  %17 = ptrtoint ptr %alloc_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alloc_addr.i, align 4
  %tobool.not.i19 = icmp eq ptr %18, null
  br i1 %tobool.not.i19, label %while.end.if.end.i21_crit_edge, label %if.then.i

while.end.if.end.i21_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %vdev.i = getelementptr i8, ptr %netdev, i32 2324
  %19 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdev.i, align 4
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent1.i, align 8
  %allocsz.i = getelementptr i8, ptr %netdev, i32 2680
  %25 = ptrtoint ptr %allocsz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %allocsz.i, align 8
  %alloc_dma.i = getelementptr i8, ptr %netdev, i32 2688
  %27 = ptrtoint ptr %alloc_dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %alloc_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %18, i32 noundef %28, i32 noundef 0) #9
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i, %while.end.if.end.i21_crit_edge
  %genpool.i20 = getelementptr i8, ptr %netdev, i32 2692
  %29 = ptrtoint ptr %genpool.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %genpool.i20, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %if.end.i21.cfv_destroy_genpool.exit_crit_edge, label %if.end5.i

if.end.i21.cfv_destroy_genpool.exit_crit_edge:    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfv_destroy_genpool.exit

if.end5.i:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  %reserved_mem.i = getelementptr i8, ptr %netdev, i32 2696
  %31 = ptrtoint ptr %reserved_mem.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reserved_mem.i, align 8
  %reserved_size.i = getelementptr i8, ptr %netdev, i32 2700
  %33 = ptrtoint ptr %reserved_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reserved_size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef nonnull %30, i32 noundef %32, i32 noundef %34, ptr noundef null) #9
  %35 = ptrtoint ptr %genpool.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %genpool.i20, align 4
  tail call void @gen_pool_destroy(ptr noundef %36) #9
  %37 = ptrtoint ptr %genpool.i20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %genpool.i20, align 4
  br label %cfv_destroy_genpool.exit

cfv_destroy_genpool.exit:                         ; preds = %if.end5.i, %if.end.i21.cfv_destroy_genpool.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfv_netdev_tx(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #9
  %vq_tx = getelementptr i8, ptr %netdev, i32 2332
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vq_tx, align 4
  tail call fastcc void @cfv_release_used_buf(ptr noundef %2)
  %tx_lock = getelementptr i8, ptr %netdev, i32 2344
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %3 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vq_tx, align 4
  %num_free = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_free, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_present_mask, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call4.i.i)
  %cmp8.not = icmp ugt i32 %6, %call4.i.i
  br i1 %cmp8.not, label %if.end, label %if.end.thread, !prof !85

if.end:                                           ; preds = %entry
  %call11 = call fastcc ptr @cfv_alloc_and_copy_to_shm(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %sg)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end.if.then21_crit_edge, label %if.end.if.end56_crit_edge, !prof !86

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end.thread:                                    ; preds = %entry
  %tx_full_ring = getelementptr i8, ptr %netdev, i32 2720
  %8 = ptrtoint ptr %tx_full_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_full_ring, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_full_ring, align 8
  %call11132 = call fastcc ptr @cfv_alloc_and_copy_to_shm(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %sg)
  %tobool12.not133 = icmp eq ptr %call11132, null
  br i1 %tobool12.not133, label %if.end.thread.if.then21_crit_edge, label %if.end.thread.if.end45_crit_edge, !prof !86

if.end.thread.if.end45_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end.thread.if.then21_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %if.end.thread.if.then21_crit_edge, %if.end.if.then21_crit_edge
  %tx_no_mem = getelementptr i8, ptr %netdev, i32 2724
  %10 = ptrtoint ptr %tx_no_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_no_mem, align 4
  %inc23 = add i32 %11, 1
  store i32 %inc23, ptr %tx_no_mem, align 4
  %reserved_mem = getelementptr i8, ptr %netdev, i32 2696
  %12 = ptrtoint ptr %reserved_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reserved_mem, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %if.then21.if.end45_crit_edge, label %land.lhs.true, !prof !87

if.then21.if.end45_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %if.then21
  %genpool = getelementptr i8, ptr %netdev, i32 2692
  %14 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %genpool, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %land.lhs.true.if.end45_crit_edge, label %if.then26, !prof !88

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %reserved_size = getelementptr i8, ptr %netdev, i32 2700
  %16 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reserved_size, align 4
  call void @gen_pool_free_owner(ptr noundef nonnull %15, i32 noundef %13, i32 noundef %17, ptr noundef null) #9
  %18 = ptrtoint ptr %reserved_mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reserved_mem, align 8
  %call30 = call fastcc ptr @cfv_alloc_and_copy_to_shm(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %sg)
  br label %if.end45

if.end45:                                         ; preds = %if.then26, %land.lhs.true.if.end45_crit_edge, %if.then21.if.end45_crit_edge, %if.end.thread.if.end45_crit_edge
  %buf_info.0127 = phi ptr [ null, %if.then21.if.end45_crit_edge ], [ null, %land.lhs.true.if.end45_crit_edge ], [ %call30, %if.then26 ], [ %call11132, %if.end.thread.if.end45_crit_edge ]
  %19 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vq_tx, align 4
  %call42 = call i32 @virtqueue_get_vring_size(ptr noundef %20) #9
  %div123 = lshr i32 %call42, 2
  %watermark_tx = getelementptr i8, ptr %netdev, i32 2340
  %21 = ptrtoint ptr %watermark_tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div123, ptr %watermark_tx, align 4
  %22 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vq_tx, align 4
  %call44 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %23) #9
  call void @netif_tx_stop_all_queues(ptr noundef %netdev) #9
  %tobool46.not = icmp eq ptr %buf_info.0127, null
  br i1 %tobool46.not, label %if.then55, label %if.end45.if.end56_crit_edge, !prof !86

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr i8, ptr %netdev, i32 2336
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.13) #12
  br label %err

if.end56:                                         ; preds = %if.end45.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %buf_info.0126131 = phi ptr [ %buf_info.0127, %if.end45.if.end56_crit_edge ], [ %call11, %if.end.if.end56_crit_edge ]
  %26 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vq_tx, align 4
  %call58 = call i32 @virtqueue_add_outbuf(ptr noundef %27, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef nonnull %buf_info.0126131, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  %ndev68 = getelementptr i8, ptr %netdev, i32 2336
  %28 = ptrtoint ptr %ndev68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev68, align 8
  br i1 %cmp59, label %if.then67, label %if.end69, !prof !86

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %call58) #12
  br label %err

if.end69:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 1
  %30 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_packets, align 4
  %inc72 = add i32 %31, 1
  store i32 %inc72, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %34 = ptrtoint ptr %ndev68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev68, align 8
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 3
  %36 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %37, %33
  store i32 %add, ptr %tx_bytes, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #9
  %38 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vq_tx, align 4
  %call77 = call zeroext i1 @virtqueue_kick(ptr noundef %39) #9
  br label %cleanup

err:                                              ; preds = %if.then67, %if.then55
  %buf_info.0126130 = phi ptr [ %buf_info.0126131, %if.then67 ], [ null, %if.then55 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #9
  %ndev79 = getelementptr i8, ptr %netdev, i32 2336
  %40 = ptrtoint ptr %ndev79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev79, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 36, i32 7
  %42 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_dropped, align 4
  %inc81 = add i32 %43, 1
  store i32 %inc81, ptr %tx_dropped, align 4
  call fastcc void @free_buf_info(ptr noundef %add.ptr.i, ptr noundef %buf_info.0126130)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end69
  call void @consume_skb(ptr noundef %skb) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfv_create_genpool(ptr noundef %cfv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vq_tx = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 3
  %0 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq_tx, align 4
  %call = tail call i32 @virtqueue_get_vring_size(ptr noundef %1) #9
  %tx_hr = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 10
  %2 = ptrtoint ptr %tx_hr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_hr, align 8
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 1500
  %tx_tr = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 12
  %4 = ptrtoint ptr %tx_tr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_tr, align 4
  %conv1 = zext i16 %5 to i32
  %add2 = add nuw nsw i32 %add, %conv1
  %mul = mul i32 %call, 11
  %mul3 = mul i32 %mul, %add2
  %div = udiv i32 %mul3, 10
  %allocsz = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 16
  %6 = ptrtoint ptr %allocsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %allocsz, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %7) #9
  %add6 = add i32 %call4.i.i, 1
  %ndev = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 4
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %mul7 = mul i32 %11, %add6
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %mul7)
  %cmp.not = icmp ugt i32 %div, %mul7
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %vdev = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 1
  %alloc_dma = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 18
  %alloc_addr = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 17
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %for.cond.preheader
  %12 = ptrtoint ptr %allocsz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %allocsz, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i199 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %14) #9
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 8
  %mtu12 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %mtu12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mtu12, align 4
  %mul13 = mul i32 %18, %call4.i.i199
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul13)
  %cmp14.not = icmp ugt i32 %13, %mul13
  br i1 %cmp14.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end18:                                         ; preds = %for.cond
  %19 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdev, align 4
  %parent = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %parent19 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent19, align 8
  %25 = ptrtoint ptr %allocsz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %allocsz, align 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %24, i32 noundef %26, ptr noundef %alloc_dma, i32 noundef 2592, i32 noundef 0) #9
  %27 = ptrtoint ptr %alloc_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %alloc_addr, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end24, label %do.body28

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %allocsz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %allocsz, align 8
  %mul26 = mul i32 %29, 3
  %shr = lshr i32 %mul26, 2
  store i32 %shr, ptr %allocsz, align 8
  br label %for.cond

do.body28:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfv_create_genpool.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfv_create_genpool, %do.end39)) #9
          to label %if.then34 [label %do.end39], !srcloc !89

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 8
  %32 = ptrtoint ptr %allocsz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %allocsz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cfv_create_genpool.__UNIQUE_ID_ddebug362, ptr noundef %31, ptr noundef nonnull @.str.12, i32 noundef %33) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body28
  %call40 = tail call ptr @gen_pool_create(i32 noundef 7, i32 noundef -1) #9
  %genpool = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 19
  %34 = ptrtoint ptr %genpool to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call40, ptr %genpool, align 4
  %tobool42.not = icmp eq ptr %call40, null
  br i1 %tobool42.not, label %do.end39.err67_crit_edge, label %if.end44

do.end39.err67_crit_edge:                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %err67

if.end44:                                         ; preds = %do.end39
  %35 = ptrtoint ptr %alloc_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %alloc_addr, align 4
  %37 = ptrtoint ptr %36 to i32
  %call.i203 = tail call i32 @__virt_to_phys(i32 noundef %37) #9
  %38 = ptrtoint ptr %allocsz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %allocsz, align 8
  %call.i204 = tail call i32 @gen_pool_add_owner(ptr noundef nonnull %call40, i32 noundef %37, i32 noundef %call.i203, i32 noundef %39, i32 noundef -1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool51.not = icmp eq i32 %call.i204, 0
  br i1 %tobool51.not, label %if.end.i.i304, label %if.end44.err67_crit_edge

if.end44.err67_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %err67

if.end.i.i304:                                    ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i303 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %40) #9
  %41 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev, align 8
  %mtu56 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %mtu56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mtu56, align 4
  %mul57 = mul i32 %44, %call4.i.i303
  %reserved_size = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 21
  %45 = ptrtoint ptr %reserved_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul57, ptr %reserved_size, align 4
  %46 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %genpool, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %47, i32 noundef %mul57, ptr noundef %49, ptr noundef %51, ptr noundef null) #9
  %reserved_mem = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 20
  %52 = ptrtoint ptr %reserved_mem to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i.i, ptr %reserved_mem, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool62.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool62.not, label %if.end.i.i304.err67_crit_edge, label %if.end64

if.end.i.i304.err67_crit_edge:                    ; preds = %if.end.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %err67

if.end64:                                         ; preds = %if.end.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %vq_tx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vq_tx, align 4
  %call66 = tail call i32 @virtqueue_get_vring_size(ptr noundef %54) #9
  %watermark_tx = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 5
  %55 = ptrtoint ptr %watermark_tx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call66, ptr %watermark_tx, align 4
  br label %cleanup

err67:                                            ; preds = %if.end.i.i304.err67_crit_edge, %if.end44.err67_crit_edge, %do.end39.err67_crit_edge
  %err.0 = phi i32 [ %call.i204, %if.end44.err67_crit_edge ], [ -12, %do.end39.err67_crit_edge ], [ -12, %if.end.i.i304.err67_crit_edge ]
  %56 = ptrtoint ptr %alloc_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %alloc_addr, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %err67.if.end.i_crit_edge, label %if.then.i

err67.if.end.i_crit_edge:                         ; preds = %err67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %err67
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdev, align 4
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %59, i32 0, i32 6, i32 1
  %60 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent1.i, align 8
  %64 = ptrtoint ptr %allocsz to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %allocsz, align 8
  %66 = ptrtoint ptr %alloc_dma to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %alloc_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %63, i32 noundef %65, ptr noundef nonnull %57, i32 noundef %67, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err67.if.end.i_crit_edge
  %68 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %genpool, align 4
  %tobool3.not.i = icmp eq ptr %69, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserved_mem.i = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 20
  %70 = ptrtoint ptr %reserved_mem.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reserved_mem.i, align 8
  %reserved_size.i = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 21
  %72 = ptrtoint ptr %reserved_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reserved_size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef nonnull %69, i32 noundef %71, i32 noundef %73, ptr noundef null) #9
  %74 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %genpool, align 4
  tail call void @gen_pool_destroy(ptr noundef %75) #9
  %76 = ptrtoint ptr %genpool to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %genpool, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %if.end64, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then16 ], [ 0, %if.end64 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %if.end.i.cleanup_crit_edge ], [ %err.0, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cfv_release_used_buf(ptr noundef %vq_tx) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq_tx, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %vq_tx1 = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vq_tx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vq_tx1, align 4
  %cmp.not = icmp eq ptr %5, %vq_tx
  br i1 %cmp.not, label %for.cond.preheader, label %do.body3, !prof !85

for.cond.preheader:                               ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %len, align 4, !annotation !83
  %call12110 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %call17111 = call ptr @virtqueue_get_buf(ptr noundef %vq_tx, ptr noundef nonnull %len) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call12110) #9
  %tobool19.not112 = icmp eq ptr %call17111, null
  br i1 %tobool19.not112, label %for.cond.preheader.for.end_crit_edge, label %free_buf_info.exit.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

free_buf_info.exit.lr.ph:                         ; preds = %for.cond.preheader
  %genpool.i = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 19
  %watermark_tx = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 5
  %reserved_mem = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 20
  %reserved_size = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 21
  %ndev = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 4
  %tx_flow_on = getelementptr inbounds %struct.cfv_info, ptr %3, i32 0, i32 22, i32 6
  br label %free_buf_info.exit

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/caif/caif_virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

free_buf_info.exit:                               ; preds = %cleanup.free_buf_info.exit_crit_edge, %free_buf_info.exit.lr.ph
  %call17113 = phi ptr [ %call17111, %free_buf_info.exit.lr.ph ], [ %call17, %cleanup.free_buf_info.exit_crit_edge ]
  %7 = ptrtoint ptr %genpool.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %genpool.i, align 4
  %vaddr.i = getelementptr inbounds %struct.buf_info, ptr %call17113, i32 0, i32 1
  %9 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = ptrtoint ptr %call17113 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call17113, align 4
  call void @gen_pool_free_owner(ptr noundef %8, i32 noundef %11, i32 noundef %13, ptr noundef null) #9
  call void @kfree(ptr noundef nonnull %call17113) #9
  %14 = ptrtoint ptr %vq_tx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vq_tx1, align 4
  %num_free = getelementptr inbounds %struct.virtqueue, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_free, align 4
  %18 = ptrtoint ptr %watermark_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %watermark_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp23.not = icmp ugt i32 %17, %19
  br i1 %cmp23.not, label %if.end26, label %free_buf_info.exit.cleanup_crit_edge

free_buf_info.exit.cleanup_crit_edge:             ; preds = %free_buf_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %free_buf_info.exit
  %20 = ptrtoint ptr %reserved_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reserved_mem, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp27 = icmp eq i32 %21, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end26.if.then37_crit_edge

if.end26.if.then37_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

land.lhs.true:                                    ; preds = %if.end26
  %22 = ptrtoint ptr %genpool.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %genpool.i, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.end34thread-pre-split, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reserved_size, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %call.i.i = call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %23, i32 noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef null) #9
  %30 = ptrtoint ptr %reserved_mem to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i.i, ptr %reserved_mem, align 8
  br label %if.end34

if.end34thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %reserved_mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %reserved_mem, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %if.then30
  %32 = phi i32 [ %.pr, %if.end34thread-pre-split ], [ %call.i.i, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool36.not = icmp eq i32 %32, 0
  br i1 %tobool36.not, label %if.else, label %if.end34.if.then37_crit_edge

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.end26.if.then37_crit_edge
  %33 = ptrtoint ptr %vq_tx1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vq_tx1, align 4
  %call39 = call i32 @virtqueue_get_vring_size(ptr noundef %34) #9
  %35 = ptrtoint ptr %watermark_tx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call39, ptr %watermark_tx, align 4
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 104
  %38 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.not.i = icmp eq i32 %39, 0
  br i1 %cmp4.not.i, label %if.then37.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.then37.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.then37
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %41, i32 %i.05.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %42 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %43
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %if.then37.netif_tx_wake_all_queues.exit_crit_edge
  %44 = ptrtoint ptr %vq_tx1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vq_tx1, align 4
  call void @virtqueue_disable_cb(ptr noundef %45) #9
  %46 = ptrtoint ptr %tx_flow_on to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_flow_on, align 8
  %inc = add i32 %47, 1
  store i32 %inc, ptr %tx_flow_on, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end34
  %48 = ptrtoint ptr %watermark_tx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %watermark_tx, align 4
  %50 = ptrtoint ptr %vq_tx1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vq_tx1, align 4
  %call44 = call i32 @virtqueue_get_vring_size(ptr noundef %51) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %call44)
  %cmp45 = icmp ugt i32 %49, %call44
  br i1 %cmp45, label %do.end62, label %if.else.if.end68_crit_edge, !prof !86

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 208, i32 noundef 9, ptr noundef null) #9
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %if.else.if.end68_crit_edge
  %52 = ptrtoint ptr %vq_tx1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vq_tx1, align 4
  %call77 = call i32 @virtqueue_get_vring_size(ptr noundef %53) #9
  %div105 = lshr i32 %call77, 2
  %54 = ptrtoint ptr %watermark_tx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %watermark_tx, align 4
  %add = add i32 %55, %div105
  store i32 %add, ptr %watermark_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %netif_tx_wake_all_queues.exit, %free_buf_info.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %56 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %len, align 4, !annotation !83
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %call17 = call ptr @virtqueue_get_buf(ptr noundef %vq_tx, ptr noundef nonnull %len) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call12) #9
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %cleanup.for.end_crit_edge, label %cleanup.free_buf_info.exit_crit_edge

cleanup.free_buf_info.exit_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buf_info.exit

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_buf_info(ptr nocapture noundef readonly %cfv, ptr noundef %buf_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %genpool = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 19
  %0 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genpool, align 4
  %vaddr = getelementptr inbounds %struct.buf_info, ptr %buf_info, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = ptrtoint ptr %buf_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_info, align 4
  tail call void @gen_pool_free_owner(ptr noundef %1, i32 noundef %4, i32 noundef %6, ptr noundef null) #9
  tail call void @kfree(ptr noundef nonnull %buf_info) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cfv_alloc_and_copy_to_shm(ptr nocapture noundef readonly %cfv, ptr noundef %skb, ptr noundef %sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %genpool = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 19
  %0 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genpool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %entry
  %tx_hr = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 10
  %2 = ptrtoint ptr %tx_hr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_hr, align 8
  %conv = zext i16 %3 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %conv
  %tx_tr = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 12
  %6 = ptrtoint ptr %tx_tr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_tr, align 4
  %conv1 = zext i16 %7 to i32
  %add2 = add i32 %add, %conv1
  %mtu = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 14
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %9)
  %cmp = icmp ugt i32 %add2, %9
  br i1 %cmp, label %if.then6, label %if.end15, !prof !86

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 4
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %add2, i32 noundef %9) #12
  br label %err

if.end15:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 8) #14
  %tobool16.not = icmp eq ptr %call7.i, null
  br i1 %tobool16.not, label %if.end15.err_crit_edge, label %if.end26, !prof !86

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end26:                                         ; preds = %if.end15
  %13 = ptrtoint ptr %tx_hr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tx_hr, align 8
  %conv28 = zext i16 %14 to i32
  %hdr_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hdr_len, align 4
  %add30 = add i16 %16, %14
  %17 = and i16 %add30, 3
  %conv33 = zext i16 %17 to i32
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add37 = add i32 %19, %conv28
  %20 = ptrtoint ptr %tx_tr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_tr, align 4
  %conv39 = zext i16 %21 to i32
  %add40 = add i32 %add37, %conv39
  %add42 = add i32 %add40, %conv33
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add42, ptr %call7.i, align 8
  %23 = ptrtoint ptr %genpool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %genpool, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %24, i32 noundef %add42, ptr noundef %26, ptr noundef %28, ptr noundef null) #9
  %29 = inttoptr i32 %call.i.i to ptr
  %vaddr = getelementptr inbounds %struct.buf_info, ptr %call7.i, i32 0, i32 1
  %30 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %vaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool47.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool47.not, label %if.end26.err_crit_edge, label %if.end57, !prof !86

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end57:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %tx_hr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tx_hr, align 8
  %conv60 = zext i16 %32 to i32
  %add.ptr = getelementptr i8, ptr %29, i32 %conv60
  %add.ptr62 = getelementptr i8, ptr %add.ptr, i32 %conv33
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %call64 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %add.ptr62, i32 noundef %34) #9
  %35 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vaddr, align 4
  %add.ptr67 = getelementptr i8, ptr %36, i32 %conv33
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %39 = ptrtoint ptr %tx_hr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tx_hr, align 8
  %conv70 = zext i16 %40 to i32
  %add71 = add i32 %38, %conv70
  %rx_hr = getelementptr inbounds %struct.cfv_info, ptr %cfv, i32 0, i32 11
  %41 = ptrtoint ptr %rx_hr to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rx_hr, align 2
  %conv72 = zext i16 %42 to i32
  %add73 = add i32 %add71, %conv72
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef %add.ptr67, i32 noundef %add73) #9
  br label %cleanup

err:                                              ; preds = %if.end26.err_crit_edge, %if.end15.err_crit_edge, %if.then6, %entry.err_crit_edge
  %buf_info.0 = phi ptr [ null, %if.then6 ], [ null, %if.end15.err_crit_edge ], [ %call7.i, %if.end26.err_crit_edge ], [ null, %entry.err_crit_edge ]
  tail call void @kfree(ptr noundef %buf_info.0) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end57
  %retval.0 = phi ptr [ null, %err ], [ %call7.i, %if.end57 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_complete_kern(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_getdesc_kern(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vringh_notify_enable_kern(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_need_notify_kern(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__UNIQUE_ID_file357, !1, !"__UNIQUE_ID_file357", i1 false, i1 false}
!1 = !{!"../drivers/net/caif/caif_virtio.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_license358, !1, !"__UNIQUE_ID_license358", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author359, !4, !"__UNIQUE_ID_author359", i1 false, i1 false}
!4 = !{!"../drivers/net/caif/caif_virtio.c", i32 26, i32 1}
!5 = !{ptr @__UNIQUE_ID_author360, !6, !"__UNIQUE_ID_author360", i1 false, i1 false}
!6 = !{!"../drivers/net/caif/caif_virtio.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_description361, !8, !"__UNIQUE_ID_description361", i1 false, i1 false}
!8 = !{!"../drivers/net/caif/caif_virtio.c", i32 28, i32 1}
!9 = !{ptr @__initcall__kmod_caif_virtio__363_782_caif_virtio_driver_init6, !10, !"__initcall__kmod_caif_virtio__363_782_caif_virtio_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/caif/caif_virtio.c", i32 782, i32 1}
!11 = !{ptr @__exitcall_caif_virtio_driver_exit, !10, !"__exitcall_caif_virtio_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/caif/caif_virtio.c", i32 775, i32 18}
!14 = !{ptr @caif_virtio_driver, !15, !"caif_virtio_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/caif/caif_virtio.c", i32 772, i32 29}
!16 = !{ptr @id_table, !17, !"id_table", i1 false, i1 false}
!17 = !{!"../drivers/net/caif/caif_virtio.c", i32 764, i32 32}
!18 = !{ptr @features, !19, !"features", i1 false, i1 false}
!19 = !{!"../drivers/net/caif/caif_virtio.c", i32 769, i32 21}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/caif/caif_virtio.c", i32 651, i32 23}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/caif/caif_virtio.c", i32 652, i32 32}
!24 = !{ptr @cfv_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/caif/caif_virtio.c", i32 666, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/caif/caif_virtio.c", i32 684, i32 3}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/caif/caif_virtio.c", i32 727, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cfv_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @cfv_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/caif/caif_virtio.c", i32 735, i32 25}
!38 = !{ptr @cfv_netdev_ops, !39, !"cfv_netdev_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/caif/caif_virtio.c", i32 607, i32 36}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/caif/caif_virtio.c", i32 391, i32 27}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/caif/caif_virtio.c", i32 405, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cfv_create_genpool.__UNIQUE_ID_ddebug362, !43, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/caif/caif_virtio.c", i32 571, i32 26}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/caif/caif_virtio.c", i32 578, i32 26}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/caif/caif_virtio.c", i32 491, i32 26}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/caif/caif_virtio.c", i32 337, i32 26}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/caif/caif_virtio.c", i32 227, i32 7}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/caif/caif_virtio.c", i32 628, i32 21}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/caif/caif_virtio.c", i32 630, i32 21}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/caif/caif_virtio.c", i32 632, i32 21}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/caif/caif_virtio.c", i32 634, i32 21}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/caif/caif_virtio.c", i32 636, i32 21}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/caif/caif_virtio.c", i32 638, i32 21}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/caif/caif_virtio.c", i32 640, i32 21}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/caif/caif_virtio.c", i32 642, i32 21}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i64 2149096584, i64 2149096607, i64 2149096639, i64 2149096671, i64 2149096709, i64 2149096739}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"branch_weights", i32 1073205, i32 2146410443}
!88 = !{!"branch_weights", i32 2146410443, i32 1073205}
!89 = !{i64 2148972926, i64 2148972931, i64 2148972944, i64 2148972988, i64 2148973022, i64 2148973043}
!90 = !{i64 2156177008, i64 2156177503, i64 2156177045, i64 2156177101, i64 2156177135, i64 2156177159, i64 2156177200, i64 2156177221, i64 2156177249, i64 2156177283}
