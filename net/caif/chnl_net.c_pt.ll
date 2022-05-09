; ModuleID = '/llk/IR_all_yes/net/caif/chnl_net.c_pt.bc'
source_filename = "../net/caif/chnl_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.30 }
%union.anon.30 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.4, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.4 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.31 }
%union.anon.31 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.32 }
%union.anon.32 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.5, %union.anon.8, %union.anon.9, [48 x i8], %union.anon.10, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.12, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr, %union.anon.7 }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }
%union.anon.9 = type { i64 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32, ptr }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.14, i32, i32, i32, i16, i16, %union.anon.16, i32, %union.anon.17, %union.anon.18, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.14 = type { i32 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.18 = type { i16 }
%struct.chnl_net = type { %struct.cflayer, %struct.caif_connect_request, %struct.list_head, ptr, [256 x i8], %struct.wait_queue_head, i8, i32 }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.caif_connect_request = type { i32, %struct.sockaddr_caif, i32, i32, i32, %struct.caif_param }
%struct.sockaddr_caif = type { i16, %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { i32, [16 x i8] }
%struct.caif_param = type { i16, [256 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@__UNIQUE_ID_file339 = internal constant [32 x i8] c"chnl_net.file=net/caif/chnl_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [21 x i8] c"chnl_net.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [30 x i8] c"chnl_net.alias=rtnl-link-caif\00", section ".modinfo", align 1
@ipcaif_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 680, ptr null, ptr @ipcaif_net_setup, i8 0, i32 3, ptr @ipcaif_policy, ptr null, ptr @ipcaif_newlink, ptr @ipcaif_changelink, ptr null, ptr @ipcaif_get_size, ptr @ipcaif_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@chnl_net_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @chnl_net_list, ptr @chnl_net_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_chnl_net__357_533_chnl_init_module6 = internal global ptr @chnl_init_module, section ".initcall6.init", align 4
@__exitcall_chnl_exit_module = internal global ptr @chnl_exit_module, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caif\00", [27 x i8] zeroinitializer }, align 32
@ipcaif_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @chnl_net_init, ptr @chnl_net_uninit, ptr @chnl_net_open, ptr @chnl_net_stop, ptr @chnl_net_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipcaif_net_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->netmgmt_wq\00", [46 x i8] zeroinitializer }, align 32
@chnl_net_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/caif/chnl_net.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@chnl_net_uninit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chnl_net_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chnl_net_open.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chnl_net\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chnl_net_open\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chnl_net_open: no priv\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chnl_net:%s(): chnl_net_open: no priv\0A\00", [57 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"err: Unable to register and open device, Err:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"chnl_net:%s(): err: Unable to register and open device, Err:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no interface?\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"chnl_net:%s(): no interface?\0A\00", [34 x i8] zeroinitializer }, align 32
@chnl_net_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014chnl_net:%s(): CAIF Interface MTU too small (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@chnl_net_open._entry_ptr = internal global ptr @chnl_net_open._entry, section ".printk_index", align 4
@chnl_net_open.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.13, i8 0, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wait_event_interruptible woken by a signal\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"chnl_net:%s(): wait_event_interruptible woken by a signal\0A\00", [37 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.15, i8 0, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"connect timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"chnl_net:%s(): connect timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.17, i8 0, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"state disconnected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"chnl_net:%s(): state disconnected\0A\00", [61 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.19, i8 0, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"connect failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chnl_net:%s(): connect failed\0A\00", [33 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.21, i8 0, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CAIF Netdevice connected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chnl_net:%s(): CAIF Netdevice connected\0A\00", [55 x i8] zeroinitializer }, align 32
@chnl_net_open.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.17, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@chnl_net_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chnl_net_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014chnl_net:%s(): Size of skb exceeded MTU\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chnl_net_start_xmit\00", [44 x i8] zeroinitializer }, align 32
@chnl_net_start_xmit._entry_ptr = internal global ptr @chnl_net_start_xmit._entry, section ".printk_index", align 4
@chnl_net_start_xmit.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dropping packets flow off\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"chnl_net:%s(): dropping packets flow off\0A\00", [54 x i8] zeroinitializer }, align 32
@chnl_flowctrl_cb.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chnl_flowctrl_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NET flowctrl func called flow: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"chnl_net:%s(): NET flowctrl func called flow: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CLOSE/DEINIT\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OPEN_FAIL\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REMOTE_SHUTDOWN\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNKNOWN CTRL COMMAND\00", [43 x i8] zeroinitializer }, align 32
@close_worker = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @close_worker, i64 4), ptr getelementptr (i8, ptr @close_worker, i64 4) }, ptr @close_work, %struct.lockdep_map { ptr @close_worker, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"close_worker\00", [19 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ipcaif_newlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipcaif_newlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014chnl_net:%s(): device rtml registration failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipcaif_newlink\00", [17 x i8] zeroinitializer }, align 32
@ipcaif_newlink._entry_ptr = internal global ptr @ipcaif_newlink._entry, section ".printk_index", align 4
@caif_netlink_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014chnl_net:%s(): no params data found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"caif_netlink_parms\00", [45 x i8] zeroinitializer }, align 32
@caif_netlink_parms._entry_ptr = internal global ptr @caif_netlink_parms._entry, section ".printk_index", align 4
@ipcaif_changelink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@delete_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.chnl_flowctrl_cb = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.30, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"chnl_net_list\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 32, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 501, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"ipcaif_policy\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 493, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 365, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 401, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 350, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 250, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 260, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 270, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 291, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 306, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 312, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 315, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 321, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 325, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 206, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 213, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 151, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"close_worker\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 133, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 457, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [23 x i8] c"../net/caif/chnl_net.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 428, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"switch.table.chnl_flowctrl_cb\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__exitcall_chnl_exit_module, ptr @__initcall__kmod_chnl_net__357_533_chnl_init_module6, ptr @caif_netlink_parms._entry, ptr @caif_netlink_parms._entry_ptr, ptr @chnl_exit_module, ptr @chnl_net_open._entry, ptr @chnl_net_open._entry_ptr, ptr @chnl_net_start_xmit._entry, ptr @chnl_net_start_xmit._entry_ptr, ptr @ipcaif_newlink._entry, ptr @ipcaif_newlink._entry_ptr, ptr @chnl_net_list, ptr @.str, ptr @ipcaif_policy, ptr @netdev_ops, ptr @ipcaif_net_setup.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @close_worker, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.chnl_flowctrl_cb], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chnl_net_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcaif_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcaif_net_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chnl_net_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chnl_net_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_worker to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcaif_newlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_netlink_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chnl_flowctrl_cb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chnl_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipcaif_link_ops) #10
  tail call void @rtnl_lock() #10
  %0 = load ptr, ptr @chnl_net_list, align 4
  %cmp.i.not8 = icmp eq ptr %0, @chnl_net_list
  br i1 %cmp.i.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %delete_device.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %list_node.09 = phi ptr [ %_tmp.010, %delete_device.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %list_node.09 to i32
  call void @__asan_load4_noabort(i32 %1)
  %_tmp.010 = load ptr, ptr %list_node.09, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.09) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.09, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list_node.09 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list_node.09, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list_node.09 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list_node.09, ptr %list_node.09, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %list_node.09, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list_node.09, ptr %prev.i3.i, align 4
  %call.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %list_del_init.exit.if.end29.i_crit_edge

list_del_init.exit.if.end29.i_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.rhs.i:                                       ; preds = %list_del_init.exit
  %.b1.i = load i1, ptr @delete_device.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !122

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @delete_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 113) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %list_del_init.exit.if.end29.i_crit_edge
  %netdev.i = getelementptr i8, ptr %list_node.09, i32 8
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 4
  %tobool37.not.i = icmp eq ptr %11, null
  br i1 %tobool37.not.i, label %if.end29.i.delete_device.exit_crit_edge, label %if.then38.i

if.end29.i.delete_device.exit_crit_edge:          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %delete_device.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %11, ptr noundef null) #10
  br label %delete_device.exit

delete_device.exit:                               ; preds = %if.then38.i, %if.end29.i.delete_device.exit_crit_edge
  %cmp.i.not = icmp eq ptr %_tmp.010, @chnl_net_list
  br i1 %cmp.i.not, label %delete_device.exit.for.end_crit_edge, label %delete_device.exit.for.body_crit_edge

delete_device.exit.for.body_crit_edge:            ; preds = %delete_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

delete_device.exit.for.end_crit_edge:             ; preds = %delete_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %delete_device.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chnl_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @ipcaif_link_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipcaif_net_setup(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %2 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @chnl_net_destructor, ptr %priv_destructor, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %or2 = or i32 %4, 144
  store i32 %or2, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1500, ptr %mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %tx_queue_len, align 16
  %receive = getelementptr i8, ptr %dev, i32 2320
  %7 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @chnl_recv_cb, ptr %receive, align 4
  %ctrlcmd = getelementptr i8, ptr %dev, i32 2328
  %8 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @chnl_flowctrl_cb, ptr %ctrlcmd, align 4
  %netdev = getelementptr i8, ptr %dev, i32 2664
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %netdev, align 4
  %conn_req = getelementptr i8, ptr %dev, i32 2356
  %10 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %conn_req, align 4
  %link_selector = getelementptr i8, ptr %dev, i32 2388
  %11 = ptrtoint ptr %link_selector to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %link_selector, align 4
  %priority = getelementptr i8, ptr %dev, i32 2384
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %priority, align 4
  %u = getelementptr i8, ptr %dev, i32 2364
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %u, align 4
  %flowenabled = getelementptr i8, ptr %dev, i32 2976
  %14 = ptrtoint ptr %flowenabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %flowenabled, align 4
  %netmgmt_wq = getelementptr i8, ptr %dev, i32 2924
  tail call void @__init_waitqueue_head(ptr noundef %netmgmt_wq, ptr noundef nonnull @.str.1, ptr noundef nonnull @ipcaif_net_setup.__key) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipcaif_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b63 = load i1, ptr @ipcaif_newlink.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipcaif_newlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 451, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 451) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %conn_req = getelementptr i8, ptr %dev, i32 2356
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  br label %caif_netlink_parms.exit

if.end.i:                                         ; preds = %if.end29
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 4
  %u.i = getelementptr i8, ptr %dev, i32 2364
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %u.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %6, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i35.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i35.i, align 4
  %u12.i = getelementptr i8, ptr %dev, i32 2364
  %9 = ptrtoint ptr %u12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %u12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end13.i_crit_edge
  %arrayidx14.i = getelementptr ptr, ptr %data, i32 3
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %11, null
  br i1 %tobool15.not.i, label %if.end13.i.caif_netlink_parms.exit_crit_edge, label %if.then16.i

if.end13.i.caif_netlink_parms.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %caif_netlink_parms.exit

if.then16.i:                                      ; preds = %if.end13.i
  %add.ptr.i.i36.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not.i = icmp eq i8 %13, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %conn_req, align 4
  br label %caif_netlink_parms.exit

if.else.i:                                        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %conn_req, align 4
  br label %caif_netlink_parms.exit

caif_netlink_parms.exit:                          ; preds = %if.else.i, %if.then20.i, %if.end13.i.caif_netlink_parms.exit_crit_edge, %do.end.i
  %call38 = tail call i32 @register_netdevice(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.else, label %do.end43

do.end43:                                         ; preds = %caif_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #13
  br label %if.end46

if.else:                                          ; preds = %caif_netlink_parms.exit
  %list_field = getelementptr i8, ptr %dev, i32 2656
  %16 = load ptr, ptr @chnl_net_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_field, ptr noundef nonnull @chnl_net_list, ptr noundef %16) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list_field, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %list_field to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %list_field, align 4
  %prev3.i.i = getelementptr i8, ptr %dev, i32 2660
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @chnl_net_list, ptr %prev3.i.i, align 4
  store volatile ptr %list_field, ptr @chnl_net_list, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end.i.i, %if.else.if.end46_crit_edge, %do.end43
  %u = getelementptr i8, ptr %dev, i32 2364
  %20 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp eq i32 %21, -1
  br i1 %cmp, label %if.then48, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex, align 4
  %24 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %u, align 4
  %25 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %conn_req, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end46.if.end53_crit_edge
  ret i32 %call38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipcaif_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @ipcaif_changelink.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipcaif_changelink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 474, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 474) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %conn_req = getelementptr i8, ptr %dev, i32 2356
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  br label %caif_netlink_parms.exit

if.end.i:                                         ; preds = %if.end29
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 4
  %u.i = getelementptr i8, ptr %dev, i32 2364
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %u.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %6, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i35.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i35.i, align 4
  %u12.i = getelementptr i8, ptr %dev, i32 2364
  %9 = ptrtoint ptr %u12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %u12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end13.i_crit_edge
  %arrayidx14.i = getelementptr ptr, ptr %data, i32 3
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %11, null
  br i1 %tobool15.not.i, label %if.end13.i.caif_netlink_parms.exit_crit_edge, label %if.then16.i

if.end13.i.caif_netlink_parms.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %caif_netlink_parms.exit

if.then16.i:                                      ; preds = %if.end13.i
  %add.ptr.i.i36.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not.i = icmp eq i8 %13, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %conn_req, align 4
  br label %caif_netlink_parms.exit

if.else.i:                                        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %conn_req, align 4
  br label %caif_netlink_parms.exit

caif_netlink_parms.exit:                          ; preds = %if.else.i, %if.then20.i, %if.end13.i.caif_netlink_parms.exit_crit_edge, %do.end.i
  tail call void @netdev_state_change(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipcaif_get_size(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipcaif_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %tmp.i20 = alloca i8, align 1
  %tmp.i18 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_req = getelementptr i8, ptr %dev, i32 2356
  %u = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i18) #10
  %5 = ptrtoint ptr %tmp.i18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i18, align 4
  %call.i19 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool6.not = icmp eq i32 %call.i19, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %conn_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %conv8 = zext i1 %cmp to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i20) #10
  %8 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %tmp.i20, align 1
  %call.i21 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i20) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool10.not = icmp eq i32 %call.i21, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chnl_net_destructor(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @caif_free_client(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chnl_recv_cb(ptr nocapture noundef readonly %layr, ptr noundef %pkt) #3 align 64 {
entry:
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !123
  %call = tail call ptr @cfpkt_tonative(ptr noundef %pkt) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %netdev = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 3
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %5 = getelementptr inbounds %struct.anon.6, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %5, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !122

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %call, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  call void @kfree_skb_reason(ptr noundef %call, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i42 = phi ptr [ %10, %skb_header_pointer.exit.if.end_crit_edge ], [ %buf, %lor.lhs.false.i.i.if.end_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i.i42 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %retval.0.i.i42, align 1
  %13 = lshr i8 %12, 4
  %14 = zext i8 %13 to i32
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %sw.default [
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 6, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %call, i32 noundef 0) #10
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 4
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %.sink = phi i16 [ -31011, %sw.bb2 ], [ 2048, %if.end.sw.epilog_crit_edge ]
  %protocol3 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink, ptr %protocol3, align 8
  %conn_req = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 1
  %21 = ptrtoint ptr %conn_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  %bf.clear.sink = select i1 %cmp, i16 %bf.set, i16 %bf.clear
  store i16 %bf.clear.sink, ptr %ip_summed, align 8
  %call13 = call i32 @netif_rx_any_context(ptr noundef %call) #10
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev, align 4
  %stats15 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36
  %26 = ptrtoint ptr %stats15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stats15, align 8
  %inc16 = add i32 %27, 1
  store i32 %inc16, ptr %stats15, align 8
  %28 = load ptr, ptr %netdev, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 2
  %29 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %30, %2
  store i32 %add, ptr %rx_bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chnl_flowctrl_cb(ptr noundef %layr, i32 noundef %flow, i32 noundef %phyid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_flowctrl_cb.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_flowctrl_cb, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %flow)
  %0 = icmp ult i32 %flow, 6
  br i1 %0, label %switch.hole_check, label %if.then.cond.false16_crit_edge

if.then.cond.false16_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false16

cond.false16:                                     ; preds = %switch.hole_check.cond.false16_crit_edge, %if.then.cond.false16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flow)
  %cmp17 = icmp eq i32 %flow, 2
  %cond = select i1 %cmp17, ptr @.str.35, ptr @.str.36
  br label %cond.end25

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %flow to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cond.false16_crit_edge, label %switch.lookup

switch.hole_check.cond.false16_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false16

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.chnl_flowctrl_cb, i32 0, i32 %flow
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end25

cond.end25:                                       ; preds = %switch.lookup, %cond.false16
  %cond26 = phi ptr [ %cond, %cond.false16 ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_flowctrl_cb.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond26) #10
  br label %do.end

do.end:                                           ; preds = %cond.end25, %entry
  %3 = zext i32 %flow to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %flow, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb27
    i32 5, label %sw.bb28
    i32 2, label %sw.bb30
    i32 1, label %sw.bb34
    i32 3, label %sw.bb37
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %flowenabled = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 6
  %4 = ptrtoint ptr %flowenabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %flowenabled, align 4
  %netdev = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 3
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 7
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %state, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %state29 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 7
  %10 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %state29, align 4
  %netmgmt_wq = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %netmgmt_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end
  %state31 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 7
  %11 = ptrtoint ptr %state31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %state31, align 4
  %netdev32 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 3
  %12 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev32, align 4
  tail call fastcc void @local_bh_disable() #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #10
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 104
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp13.not.i = icmp eq i32 %19, 0
  br i1 %cmp13.not.i, label %sw.bb30.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

sw.bb30.netif_tx_disable.exit_crit_edge:          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb30
  %_tx.i.i64 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %_tx.i.i64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i64, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #10
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %i.014.i, i32 11
  %22 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %17, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i65 = getelementptr %struct.netdev_queue, ptr %21, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i65) #10
  %23 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #10
  %inc.i = add nuw i32 %i.014.i, 1
  %24 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %sw.bb30.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #10
  tail call fastcc void @local_bh_enable() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef nonnull @close_worker) #10
  br label %sw.epilog

sw.bb34:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %flowenabled35 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 6
  %27 = ptrtoint ptr %flowenabled35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %flowenabled35, align 4
  %netdev36 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 3
  %28 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev36, align 4
  %_tx.i.i66 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i66, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #10
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @caif_client_register_refcnt(ptr noundef %layr, ptr noundef nonnull @chnl_hold, ptr noundef nonnull @chnl_put) #10
  %state38 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 7
  %32 = ptrtoint ptr %state38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state38, align 4
  %flowenabled39 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 6
  %33 = ptrtoint ptr %flowenabled39 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %flowenabled39, align 4
  %netdev40 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 3
  %34 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev40, align 4
  %_tx.i.i67 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i67, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %37) #10
  %netmgmt_wq41 = getelementptr inbounds %struct.chnl_net, ptr %layr, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %netmgmt_wq41, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb34, %netif_tx_disable.exit, %sw.bb28, %sw.bb27, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chnl_net_init(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @chnl_net_init.__already_done, align 1
  br i1 %.b45, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chnl_net_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 350) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %name = getelementptr i8, ptr %dev, i32 2668
  %call40 = tail call ptr @strncpy(ptr noundef %name, ptr noundef %dev, i32 noundef 256)
  %list_field = getelementptr i8, ptr %dev, i32 2656
  %0 = ptrtoint ptr %list_field to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list_field, ptr %list_field, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2660
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_field, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chnl_net_uninit(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @chnl_net_uninit.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chnl_net_uninit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 360, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 360) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %list_field = getelementptr i8, ptr %dev, i32 2656
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_field) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del_init.exit_crit_edge

if.end29.list_del_init.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %dev, i32 2660
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list_field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_field, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end29.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %list_field to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list_field, ptr %list_field, align 4
  %prev.i3.i = getelementptr i8, ptr %dev, i32 2660
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list_field, ptr %prev.i3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chnl_net_open(ptr noundef %dev) #3 align 64 {
entry:
  %llifindex = alloca i32, align 4
  %headroom = alloca i32, align 4
  %tailroom = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %llifindex) #10
  %0 = ptrtoint ptr %llifindex to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %llifindex, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %headroom) #10
  %1 = ptrtoint ptr %headroom to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %headroom, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tailroom) #10
  %2 = ptrtoint ptr %tailroom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tailroom, align 4, !annotation !123
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b378 = load i1, ptr @chnl_net_open.__already_done, align 1
  br i1 %.b378, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chnl_net_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 247) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool38.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool38.not, label %do.body40, label %if.end57

do.body40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %cleanup324)) #10
          to label %if.then53 [label %cleanup324], !srcloc !124

if.then53:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #10
  br label %cleanup324

if.end57:                                         ; preds = %if.end29
  %state = getelementptr i8, ptr %dev, i32 2980
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end57.if.end138_crit_edge, label %if.then58

if.end57.if.end138_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then58:                                        ; preds = %if.end57
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %state, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %conn_req = getelementptr i8, ptr %dev, i32 2356
  %call61 = call i32 @caif_connect_client(ptr noundef %7, ptr noundef %conn_req, ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %llifindex, ptr noundef nonnull %headroom, ptr noundef nonnull %tailroom) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end82, label %do.body64

do.body64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %error)) #10
          to label %if.then78 [label %error], !srcloc !124

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call61) #10
  br label %error

if.end82:                                         ; preds = %if.then58
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %10 = ptrtoint ptr %llifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %llifindex, align 4
  %call84 = call ptr @__dev_get_by_index(ptr noundef %9, i32 noundef %11) #10
  %cmp85 = icmp eq ptr %call84, null
  br i1 %cmp85, label %do.body87, label %if.end105

do.body87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %error)) #10
          to label %if.then101 [label %error], !srcloc !124

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #10
  br label %error

if.end105:                                        ; preds = %if.end82
  %12 = ptrtoint ptr %tailroom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tailroom, align 4
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call84, i32 0, i32 22
  %14 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %needed_tailroom, align 2
  %16 = trunc i32 %13 to i16
  %conv106 = add i16 %15, %16
  %needed_tailroom107 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %17 = ptrtoint ptr %needed_tailroom107 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv106, ptr %needed_tailroom107, align 2
  %18 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %headroom, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call84, i32 0, i32 19
  %20 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hard_header_len, align 2
  %22 = load i16, ptr %needed_tailroom, align 2
  %23 = trunc i32 %19 to i16
  %24 = add i16 %21, %23
  %conv113 = add i16 %24, %22
  %hard_header_len114 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %25 = ptrtoint ptr %hard_header_len114 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv113, ptr %hard_header_len114, align 2
  %mtu115 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %26 = ptrtoint ptr %mtu115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mtu115, align 4
  %mtu116 = getelementptr inbounds %struct.net_device, ptr %call84, i32 0, i32 20
  %28 = ptrtoint ptr %mtu116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu116, align 4
  %30 = add i32 %19, %13
  %sub = sub i32 %29, %30
  %31 = call i32 @llvm.smin.i32(i32 %27, i32 %sub)
  %32 = call i32 @llvm.smin.i32(i32 %31, i32 1500)
  %call128 = call i32 @dev_set_mtu(ptr noundef %dev, i32 noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %32)
  %cmp129 = icmp slt i32 %32, 100
  br i1 %cmp129, label %do.end134, label %if.end105.if.end138_crit_edge

if.end105.if.end138_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

do.end134:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, i32 noundef %32) #13
  br label %error

if.end138:                                        ; preds = %if.end105.if.end138_crit_edge, %if.end57.if.end138_crit_edge
  call void @rtnl_unlock() #10
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 301) #10
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp146.not = icmp eq i32 %34, 2
  br i1 %cmp146.not, label %if.then161, label %if.end193.thread

if.end193.thread:                                 ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_lock() #10
  br label %if.end260

if.then161:                                       ; preds = %if.end138
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %35 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %netmgmt_wq = getelementptr i8, ptr %dev, i32 2924
  %call163427 = call i32 @prepare_to_wait_event(ptr noundef %netmgmt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp166.not428.not = icmp eq i32 %37, 2
  br i1 %cmp166.not428.not, label %if.then161.if.end186_crit_edge, label %if.then161.for.end_crit_edge

if.then161.for.end_crit_edge:                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then161.if.end186_crit_edge:                   ; preds = %if.then161
  br label %if.end186

if.end186:                                        ; preds = %cleanup.if.end186_crit_edge, %if.then161.if.end186_crit_edge
  %__ret162.1431 = phi i32 [ %__ret162.1, %cleanup.if.end186_crit_edge ], [ 500, %if.then161.if.end186_crit_edge ]
  %call163430 = phi i32 [ %call163, %cleanup.if.end186_crit_edge ], [ %call163427, %if.then161.if.end186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163430)
  %tobool187.not = icmp eq i32 %call163430, 0
  br i1 %tobool187.not, label %cleanup, label %if.end186.if.end193_crit_edge

if.end186.if.end193_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

cleanup:                                          ; preds = %if.end186
  %call190 = call i32 @schedule_timeout(i32 noundef %__ret162.1431) #10
  %call163 = call i32 @prepare_to_wait_event(ptr noundef %netmgmt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp166.not = icmp eq i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool172.not = icmp eq i32 %call190, 0
  %spec.store.select331 = select i1 %tobool172.not, i32 1, i32 %call190
  %__ret162.1 = select i1 %cmp166.not, i32 %call190, i32 %spec.store.select331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret162.1)
  %tobool179.not = icmp eq i32 %__ret162.1, 0
  %not.cmp166.not = xor i1 %cmp166.not, true
  %40 = select i1 %not.cmp166.not, i1 true, i1 %tobool179.not
  br i1 %40, label %cleanup.for.end_crit_edge, label %cleanup.if.end186_crit_edge

cleanup.if.end186_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then161.for.end_crit_edge
  %__ret162.1.lcssa = phi i32 [ 500, %if.then161.for.end_crit_edge ], [ %__ret162.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %netmgmt_wq, ptr noundef nonnull %__wq_entry) #10
  br label %if.end193

if.end193:                                        ; preds = %for.end, %if.end186.if.end193_crit_edge
  %__ret162.2411 = phi i32 [ %__ret162.1.lcssa, %for.end ], [ %call163430, %if.end186.if.end193_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  call void @rtnl_lock() #10
  %41 = zext i32 %__ret162.2411 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %__ret162.2411, label %if.end193.if.end260_crit_edge [
    i32 -512, label %do.body198
    i32 0, label %do.body220
  ]

if.end193.if.end260_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end260

do.body198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %error)) #10
          to label %if.then212 [label %error], !srcloc !124

if.then212:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #10
  br label %error

do.body220:                                       ; preds = %if.end193
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %do.end237)) #10
          to label %if.then234 [label %do.end237], !srcloc !124

if.then234:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5) #10
  br label %do.end237

do.end237:                                        ; preds = %if.then234, %do.body220
  %nd_net.i404 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %42 = ptrtoint ptr %nd_net.i404 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nd_net.i404, align 4
  %call240 = call i32 @caif_disconnect_client(ptr noundef %43, ptr noundef nonnull %add.ptr.i) #10
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %error)) #10
          to label %if.then256 [label %error], !srcloc !124

if.then256:                                       ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5) #10
  br label %error

if.end260:                                        ; preds = %if.end193.if.end260_crit_edge, %if.end193.thread
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp262.not = icmp eq i32 %46, 1
  br i1 %cmp262.not, label %do.body284, label %do.body265

do.body265:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %error)) #10
          to label %if.then279 [label %error], !srcloc !124

if.then279:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5) #10
  br label %error

do.body284:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %cleanup324)) #10
          to label %if.then298 [label %cleanup324], !srcloc !124

if.then298:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.5) #10
  br label %cleanup324

error:                                            ; preds = %if.then279, %do.body265, %if.then256, %do.end237, %if.then212, %do.body198, %do.end134, %if.then101, %do.body87, %if.then78, %do.body64
  %result.0 = phi i32 [ %call61, %if.then78 ], [ -19, %do.end134 ], [ -19, %if.then101 ], [ -512, %if.then212 ], [ -110, %if.then256 ], [ -111, %if.then279 ], [ %call61, %do.body64 ], [ -19, %do.body87 ], [ -512, %do.body198 ], [ -110, %do.end237 ], [ -111, %do.body265 ]
  %nd_net.i405 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %47 = ptrtoint ptr %nd_net.i405 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nd_net.i405, align 4
  %call304 = call i32 @caif_disconnect_client(ptr noundef %48, ptr noundef nonnull %add.ptr.i) #10
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_open.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_open, %cleanup324)) #10
          to label %if.then320 [label %cleanup324], !srcloc !124

if.then320:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_open.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5) #10
  br label %cleanup324

cleanup324:                                       ; preds = %if.then320, %error, %if.then298, %do.body284, %if.then53, %do.body40
  %retval.0 = phi i32 [ -19, %if.then53 ], [ 0, %if.then298 ], [ %result.0, %if.then320 ], [ -19, %do.body40 ], [ 0, %do.body284 ], [ %result.0, %error ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tailroom) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %headroom) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %llifindex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chnl_net_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @chnl_net_stop.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chnl_net_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 340) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state = getelementptr i8, ptr %dev, i32 2980
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %state, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %call39 = tail call i32 @caif_disconnect_client(ptr noundef %2, ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chnl_net_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %netdev = getelementptr i8, ptr %dev, i32 2664
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ugt i32 %1, %5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %cleanup

if.end:                                           ; preds = %entry
  %flowenabled = getelementptr i8, ptr %dev, i32 2976
  %6 = ptrtoint ptr %flowenabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flowenabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body4, label %if.end17

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chnl_net_start_xmit.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chnl_net_start_xmit, %do.end14)) #10
          to label %if.then11 [label %do.end14], !srcloc !124

if.then11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chnl_net_start_xmit.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conn_req = getelementptr i8, ptr %dev, i32 2356
  %8 = ptrtoint ptr %conn_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp18 = icmp eq i32 %9, 2
  br i1 %cmp18, label %do.body20, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.body20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr, align 4
  store i32 %17, ptr %saddr, align 4
  %18 = load ptr, ptr %head.i.i, align 8
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i74 = zext i16 %19 to i32
  %add.ptr.i.i75 = getelementptr i8, ptr %18, i32 %conv.i.i74
  %daddr26 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i75, i32 0, i32 9
  %20 = ptrtoint ptr %daddr26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %daddr26, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.body20, %if.end17.if.end29_crit_edge
  %21 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len1, align 4
  %call31 = tail call ptr @cfpkt_fromnative(i32 noundef 1, ptr noundef %skb) #10
  %dn = getelementptr i8, ptr %dev, i32 2308
  %23 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transmit, align 4
  %call34 = tail call i32 %26(ptr noundef %24, ptr noundef %call31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %tx_dropped38 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %27 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_packets, align 4
  %inc42 = add i32 %28, 1
  store i32 %inc42, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then36, %do.end14, %do.end
  %tx_bytes.sink78 = phi ptr [ %tx_bytes, %if.end40 ], [ %tx_dropped38, %if.then36 ], [ %tx_dropped, %do.end14 ], [ %tx_errors, %do.end ]
  %.sink77 = phi i32 [ %22, %if.end40 ], [ 1, %if.then36 ], [ 1, %do.end14 ], [ 1, %do.end ]
  %29 = ptrtoint ptr %tx_bytes.sink78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_bytes.sink78, align 4
  %add = add i32 %30, %.sink77
  store i32 %add, ptr %tx_bytes.sink78, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caif_connect_client(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caif_disconnect_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_fromnative(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @caif_free_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_tonative(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @caif_client_register_refcnt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chnl_hold(ptr nocapture noundef readonly %lyr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.chnl_net, ptr %lyr, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_hold.exit_crit_edge, label %do.body1.i

entry.dev_hold.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !126
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i = add i32 %14, 1
  store i32 %add13.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !127
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !128

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #10, !srcloc !129
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %entry.dev_hold.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chnl_put(ptr nocapture noundef readonly %lyr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.chnl_net, ptr %lyr, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_put.exit_crit_edge, label %do.body1.i

entry.dev_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i:                                       ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !126
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i = add i32 %14, -1
  store i32 %add13.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !127
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !128

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #10, !srcloc !129
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %entry.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @close_work(ptr nocapture noundef readnone %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #10
  %0 = load ptr, ptr @chnl_net_list, align 4
  %cmp.i.not7 = icmp eq ptr %0, @chnl_net_list
  br i1 %cmp.i.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %list_node.08 = phi ptr [ %_tmp.09, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %list_node.08 to i32
  call void @__asan_load4_noabort(i32 %1)
  %_tmp.09 = load ptr, ptr %list_node.08, align 4
  %state = getelementptr i8, ptr %list_node.08, i32 324
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr i8, ptr %list_node.08, i32 8
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @dev_close(ptr noundef %5) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %_tmp.09, @chnl_net_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__UNIQUE_ID_file339, !1, !"__UNIQUE_ID_file339", i1 false, i1 false}
!1 = !{!"../net/caif/chnl_net.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_license340, !1, !"__UNIQUE_ID_license340", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias341, !4, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!4 = !{!"../net/caif/chnl_net.c", i32 35, i32 1}
!5 = !{ptr @__initcall__kmod_chnl_net__357_533_chnl_init_module6, !6, !"__initcall__kmod_chnl_net__357_533_chnl_init_module6", i1 false, i1 false}
!6 = !{!"../net/caif/chnl_net.c", i32 533, i32 1}
!7 = !{ptr @__exitcall_chnl_exit_module, !8, !"__exitcall_chnl_exit_module", i1 false, i1 false}
!8 = !{!"../net/caif/chnl_net.c", i32 534, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/caif/chnl_net.c", i32 501, i32 11}
!11 = !{ptr @ipcaif_link_ops, !12, !"ipcaif_link_ops", i1 false, i1 false}
!12 = !{!"../net/caif/chnl_net.c", i32 500, i32 29}
!13 = !{ptr @ipcaif_net_setup.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/caif/chnl_net.c", i32 401, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @netdev_ops, !17, !"netdev_ops", i1 false, i1 false}
!17 = !{!"../net/caif/chnl_net.c", i32 365, i32 36}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/caif/chnl_net.c", i32 350, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/caif/chnl_net.c", i32 360, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/caif/chnl_net.c", i32 247, i32 2}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/caif/chnl_net.c", i32 250, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug344, !27, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/caif/chnl_net.c", i32 260, i32 5}
!34 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug345, !33, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/caif/chnl_net.c", i32 270, i32 4}
!38 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug346, !37, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/caif/chnl_net.c", i32 291, i32 4}
!42 = !{ptr @chnl_net_open._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @chnl_net_open._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/caif/chnl_net.c", i32 306, i32 3}
!46 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug351, !45, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/caif/chnl_net.c", i32 312, i32 3}
!50 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug352, !49, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!51 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/caif/chnl_net.c", i32 315, i32 3}
!54 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug353, !53, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!55 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/caif/chnl_net.c", i32 321, i32 3}
!58 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug354, !57, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!59 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/caif/chnl_net.c", i32 325, i32 2}
!62 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug355, !61, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!63 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @chnl_net_open.__UNIQUE_ID_ddebug356, !65, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!65 = !{!"../net/caif/chnl_net.c", i32 331, i32 2}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../net/caif/chnl_net.c", i32 340, i32 2}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/caif/chnl_net.c", i32 206, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @chnl_net_start_xmit._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @chnl_net_start_xmit._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/caif/chnl_net.c", i32 213, i32 3}
!75 = !{ptr @chnl_net_start_xmit.__UNIQUE_ID_ddebug343, !74, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!76 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/caif/chnl_net.c", i32 151, i32 2}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @chnl_flowctrl_cb.__UNIQUE_ID_ddebug342, !78, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!81 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/caif/chnl_net.c", i32 133, i32 8}
!91 = !{ptr @close_worker, !90, !"close_worker", i1 false, i1 false}
!92 = !{ptr @ipcaif_policy, !93, !"ipcaif_policy", i1 false, i1 false}
!93 = !{!"../net/caif/chnl_net.c", i32 493, i32 32}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../net/caif/chnl_net.c", i32 451, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/caif/chnl_net.c", i32 457, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ipcaif_newlink._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ipcaif_newlink._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/caif/chnl_net.c", i32 428, i32 3}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @caif_netlink_parms._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @caif_netlink_parms._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../net/caif/chnl_net.c", i32 474, i32 2}
!108 = !{ptr @chnl_net_list, !109, !"chnl_net_list", i1 false, i1 false}
!109 = !{!"../net/caif/chnl_net.c", i32 32, i32 8}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../net/caif/chnl_net.c", i32 113, i32 2}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"auto-init"}
!124 = !{i64 2148488025, i64 2148488030, i64 2148488043, i64 2148488087, i64 2148488121, i64 2148488142}
!125 = !{i8 0, i8 2}
!126 = !{i64 1068107, i64 1068168}
!127 = !{i64 1070839}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 1071124}
