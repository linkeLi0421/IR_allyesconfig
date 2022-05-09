; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/com20020-pci.c_pt.bc'
source_filename = "../drivers/net/arcnet/com20020-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.com20020_pci_card_info = type { ptr, i32, [2 x %struct.com20020_pci_channel_map], %struct.com20020_pci_channel_map, [2 x %struct.ledoffsets], i32, i32 }
%struct.com20020_pci_channel_map = type { i32, i32, i32 }
%struct.ledoffsets = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.118, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.118 = type { ptr }
%struct.com20020_priv = type { ptr, %struct.list_head, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.com20020_dev = type { %struct.list_head, ptr, %struct.led_classdev, %struct.led_classdev, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__param_str_node = internal constant [18 x i8] c"com20020_pci.node\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@node = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_node = internal constant %struct.kernel_param { ptr @__param_str_node, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @node } }, section "__param", align 4
@__UNIQUE_ID_nodetype339 = internal constant [31 x i8] c"com20020_pci.parmtype=node:int\00", section ".modinfo", align 1
@__param_str_device = internal constant [20 x i8] c"com20020_pci.device\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_device = internal constant %struct.kparam_string { i32 9, ptr @device }, align 4
@__param_device = internal constant %struct.kernel_param { ptr @__param_str_device, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_device } }, section "__param", align 4
@__UNIQUE_ID_devicetype340 = internal constant [36 x i8] c"com20020_pci.parmtype=device:string\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [21 x i8] c"com20020_pci.timeout\00", align 1
@timeout = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype341 = internal constant [34 x i8] c"com20020_pci.parmtype=timeout:int\00", section ".modinfo", align 1
@__param_str_backplane = internal constant [23 x i8] c"com20020_pci.backplane\00", align 1
@backplane = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_backplane = internal constant %struct.kernel_param { ptr @__param_str_backplane, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @backplane } }, section "__param", align 4
@__UNIQUE_ID_backplanetype342 = internal constant [36 x i8] c"com20020_pci.parmtype=backplane:int\00", section ".modinfo", align 1
@__param_str_clockp = internal constant [20 x i8] c"com20020_pci.clockp\00", align 1
@clockp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_clockp = internal constant %struct.kernel_param { ptr @__param_str_clockp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @clockp } }, section "__param", align 4
@__UNIQUE_ID_clockptype343 = internal constant [33 x i8] c"com20020_pci.parmtype=clockp:int\00", section ".modinfo", align 1
@__param_str_clockm = internal constant [20 x i8] c"com20020_pci.clockm\00", align 1
@clockm = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_clockm = internal constant %struct.kernel_param { ptr @__param_str_clockm, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @clockm } }, section "__param", align 4
@__UNIQUE_ID_clockmtype344 = internal constant [33 x i8] c"com20020_pci.parmtype=clockm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [50 x i8] c"com20020_pci.file=drivers/net/arcnet/com20020-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [25 x i8] c"com20020_pci.license=GPL\00", section ".modinfo", align 1
@com20020pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @com20020pci_id_table, ptr @com20020pci_probe, ptr @com20020pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_com20020_pci__348_614_com20020pci_init6 = internal global ptr @com20020pci_init, section ".initcall6.init", align 4
@__exitcall_com20020pci_cleanup = internal global ptr @com20020pci_cleanup, section ".exitcall.exit", align 4
@device = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"com20020\00", [23 x i8] zeroinitializer }, align 32
@com20020pci_id_table = internal constant { [28 x %struct.pci_device_id], [224 x i8] } { [28 x %struct.pci_device_id] [%struct.pci_device_id { i32 5489, i32 40961, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40962, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40963, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40964, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40965, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40966, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40967, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40968, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5489, i32 40969, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_5mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 40970, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_5mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 40971, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_5mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 40972, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_5mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 40973, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_5mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 40974, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_5mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 41473, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 41474, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 41475, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 41476, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 41477, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 5489, i32 41478, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4277, i32 10616, i32 0, i32 0, i32 ptrtoint (ptr @card_info_sohard to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 8819, i32 0, i32 0, i32 ptrtoint (ptr @card_info_sohard to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 12899, i32 0, i32 0, i32 ptrtoint (ptr @card_info_eae_arc1 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 12946, i32 0, i32 0, i32 ptrtoint (ptr @card_info_eae_ma1 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 12948, i32 0, i32 0, i32 ptrtoint (ptr @card_info_eae_fb2 to i32), i32 0 }, %struct.pci_device_id { i32 5306, i32 24576, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 8704, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @card_info_10mbit to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@card_info_5mbit = internal global { %struct.com20020_pci_card_info, [60 x i8] } { %struct.com20020_pci_card_info { ptr @.str.1, i32 1, [2 x %struct.com20020_pci_channel_map] [%struct.com20020_pci_channel_map { i32 2, i32 0, i32 8 }, %struct.com20020_pci_channel_map zeroinitializer], %struct.com20020_pci_channel_map zeroinitializer, [2 x %struct.ledoffsets] zeroinitializer, i32 0, i32 1 }, [60 x i8] zeroinitializer }, align 32
@card_info_10mbit = internal global { %struct.com20020_pci_card_info, [60 x i8] } { %struct.com20020_pci_card_info { ptr @.str.1, i32 1, [2 x %struct.com20020_pci_channel_map] [%struct.com20020_pci_channel_map { i32 2, i32 0, i32 8 }, %struct.com20020_pci_channel_map zeroinitializer], %struct.com20020_pci_channel_map zeroinitializer, [2 x %struct.ledoffsets] zeroinitializer, i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@card_info_sohard = internal global { %struct.com20020_pci_card_info, [60 x i8] } { %struct.com20020_pci_card_info { ptr @.str.2, i32 1, [2 x %struct.com20020_pci_channel_map] [%struct.com20020_pci_channel_map { i32 4, i32 0, i32 8 }, %struct.com20020_pci_channel_map zeroinitializer], %struct.com20020_pci_channel_map zeroinitializer, [2 x %struct.ledoffsets] zeroinitializer, i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@card_info_eae_arc1 = internal global { %struct.com20020_pci_card_info, [60 x i8] } { %struct.com20020_pci_card_info { ptr @.str.3, i32 1, [2 x %struct.com20020_pci_channel_map] [%struct.com20020_pci_channel_map { i32 2, i32 0, i32 8 }, %struct.com20020_pci_channel_map zeroinitializer], %struct.com20020_pci_channel_map { i32 2, i32 16, i32 4 }, [2 x %struct.ledoffsets] [%struct.ledoffsets { i32 0, i32 1 }, %struct.ledoffsets zeroinitializer], i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@card_info_eae_ma1 = internal global { %struct.com20020_pci_card_info, [60 x i8] } { %struct.com20020_pci_card_info { ptr @.str.4, i32 2, [2 x %struct.com20020_pci_channel_map] [%struct.com20020_pci_channel_map { i32 2, i32 0, i32 8 }, %struct.com20020_pci_channel_map { i32 2, i32 8, i32 8 }], %struct.com20020_pci_channel_map { i32 2, i32 16, i32 4 }, [2 x %struct.ledoffsets] [%struct.ledoffsets { i32 0, i32 1 }, %struct.ledoffsets { i32 2, i32 3 }], i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@card_info_eae_fb2 = internal global { %struct.com20020_pci_card_info, [60 x i8] } { %struct.com20020_pci_card_info { ptr @.str.5, i32 1, [2 x %struct.com20020_pci_channel_map] [%struct.com20020_pci_channel_map { i32 2, i32 0, i32 8 }, %struct.com20020_pci_channel_map zeroinitializer], %struct.com20020_pci_channel_map { i32 2, i32 16, i32 4 }, [2 x %struct.ledoffsets] [%struct.ledoffsets { i32 0, i32 1 }, %struct.ledoffsets zeroinitializer], i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ARC-PCI\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PLX-PCI\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EAE PLX-PCI ARC1\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EAE PLX-PCI MA1\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EAE PLX-PCI FB2\00", [16 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"com20020-pci\00", [19 x i8] zeroinitializer }, align 32
@com20020pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013arcnet:com20020_pci: IO region %xh-%xh already allocated.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"com20020pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/arcnet/com20020-pci.c\00", [62 x i8] zeroinitializer }, align 32
@com20020pci_probe._entry_ptr = internal global ptr @com20020pci_probe._entry, section ".printk_index", align 4
@com20020_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s Controls\0A\00", [19 x i8] zeroinitializer }, align 32
@com20020pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013arcnet:com20020_pci: IO region %xh-%xh already allocated\0A\00", [36 x i8] zeroinitializer }, align 32
@com20020pci_probe._entry_ptr.13 = internal global ptr @com20020pci_probe._entry.11, section ".printk_index", align 4
@com20020_state_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @com20020_state_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCI COM20020\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arc%d-%d\00", [23 x i8] zeroinitializer }, align 32
@com20020pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013arcnet:com20020_pci: IO address %Xh is empty!\0A\00", [47 x i8] zeroinitializer }, align 32
@com20020pci_probe._entry_ptr.18 = internal global ptr @com20020pci_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arc%d-%d-tx\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci:green:tx:%d-%d\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arc%d-%d-recon\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci:red:recon:%d-%d\00", [44 x i8] zeroinitializer }, align 32
@com20020_state_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_backplane_mode, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_backplane_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @backplane_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"backplane_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@com20020pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.9, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016arcnet:com20020_pci: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"com20020pci_init\00", [47 x i8] zeroinitializer }, align 32
@com20020pci_init._entry_ptr = internal global ptr @com20020pci_init._entry, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"COM20020 PCI support\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"com20020_pci\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 51, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 53, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"backplane\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 54, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"clockp\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 55, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"clockm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 56, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"com20020pci_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 595, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 52, i32 13 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 596, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"com20020pci_id_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 427, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"card_info_5mbit\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 318, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"card_info_10mbit\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 305, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"card_info_sohard\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 331, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"card_info_eae_arc1\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 345, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"card_info_eae_ma1\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 370, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"card_info_eae_fb2\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 402, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 319, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 332, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 346, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 371, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 403, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 153, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 156, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 179, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 185, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"com20020_state_group\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 112, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 203, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 221, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 224, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 244, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 247, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 253, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 256, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"com20020_state_attrs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 107, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"dev_attr_backplane_mode\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 105, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 103, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 103, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 103, i32 55 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 605, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [37 x i8] c"../drivers/net/arcnet/com20020-pci.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 606, i32 9 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_backplanetype342, ptr @__UNIQUE_ID_clockmtype344, ptr @__UNIQUE_ID_clockptype343, ptr @__UNIQUE_ID_devicetype340, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_nodetype339, ptr @__UNIQUE_ID_timeouttype341, ptr @__exitcall_com20020pci_cleanup, ptr @__initcall__kmod_com20020_pci__348_614_com20020pci_init6, ptr @__param_backplane, ptr @__param_clockm, ptr @__param_clockp, ptr @__param_device, ptr @__param_node, ptr @__param_timeout, ptr @com20020pci_cleanup, ptr @com20020pci_init._entry, ptr @com20020pci_init._entry_ptr, ptr @com20020pci_probe._entry, ptr @com20020pci_probe._entry.11, ptr @com20020pci_probe._entry.16, ptr @com20020pci_probe._entry_ptr, ptr @com20020pci_probe._entry_ptr.13, ptr @com20020pci_probe._entry_ptr.18, ptr @node, ptr @timeout, ptr @backplane, ptr @clockp, ptr @clockm, ptr @com20020pci_driver, ptr @device, ptr @.str, ptr @com20020pci_id_table, ptr @card_info_5mbit, ptr @card_info_10mbit, ptr @card_info_sohard, ptr @card_info_eae_arc1, ptr @card_info_eae_ma1, ptr @card_info_eae_fb2, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @com20020_state_group, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @com20020_state_attrs, ptr @dev_attr_backplane_mode, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backplane to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020pci_id_table to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_info_5mbit to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_info_10mbit to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_info_sohard to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_info_eae_arc1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_info_eae_ma1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_info_eae_fb2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020_state_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020_state_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_backplane_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @com20020pci_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @com20020pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020pci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %0 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @com20020pci_driver, ptr noundef null, ptr noundef nonnull @.str.30) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup199_crit_edge

entry.cleanup199_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup199_crit_edge, label %if.end5

if.end.cleanup199_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end5:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.end5.cleanup199_crit_edge, label %if.end8

if.end5.cleanup199_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end8:                                          ; preds = %if.end5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %list_dev = getelementptr inbounds %struct.com20020_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %list_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list_dev, ptr %list_dev, align 4
  %prev.i = getelementptr inbounds %struct.com20020_priv, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list_dev, ptr %prev.i, align 4
  %size = getelementptr inbounds %struct.com20020_pci_card_info, ptr %2, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end8.if.end21_crit_edge, label %if.then11

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then11:                                        ; preds = %if.end8
  %misc_map = getelementptr inbounds %struct.com20020_pci_card_info, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %misc_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %misc_map, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %offset = getelementptr inbounds %struct.com20020_pci_card_info, ptr %2, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add = add i32 %14, %12
  %call14 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef %8, ptr noundef nonnull @.str.6) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %add18 = add i32 %add, -1
  %sub = add i32 %add18, %16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %add, i32 noundef %sub) #11
  br label %cleanup199

if.end20:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %misc = getelementptr inbounds %struct.com20020_priv, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %misc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end8.if.end21_crit_edge
  %devcount = getelementptr inbounds %struct.com20020_pci_card_info, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %devcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp342 = icmp sgt i32 %19, 0
  br i1 %cmp342, label %for.body.lr.ph, label %if.end21.cleanup199_crit_edge

if.end21.cleanup199_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

for.body.lr.ph:                                   ; preds = %if.end21
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %flags = getelementptr inbounds %struct.com20020_pci_card_info, ptr %2, i32 0, i32 6
  %misc79 = getelementptr inbounds %struct.com20020_priv, ptr %call.i, i32 0, i32 2
  %rotary = getelementptr inbounds %struct.com20020_pci_card_info, ptr %2, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0343 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx22 = getelementptr %struct.com20020_pci_card_info, ptr %2, i32 0, i32 2, i32 %i.0343
  %call23 = call ptr @alloc_arcdev(ptr noundef nonnull @device) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %for.body.if.then197_crit_edge, label %if.end26

for.body.if.then197_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then197

if.end26:                                         ; preds = %for.body
  %conv = trunc i32 %i.0343 to i16
  %dev_port = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 61
  %20 = ptrtoint ptr %dev_port to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %dev_port, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @com20020_netdev_ops, ptr %netdev_ops, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %22 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end26.do.end33_crit_edge, label %if.then30

if.end26.do.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call23, ptr noundef nonnull @.str.10, ptr noundef %24) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %if.end26.do.end33_crit_edge
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22, align 4
  %arrayidx36 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %26
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36, align 8
  %offset38 = getelementptr %struct.com20020_pci_card_info, ptr %2, i32 0, i32 2, i32 %i.0343, i32 1
  %29 = ptrtoint ptr %offset38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset38, align 4
  %add39 = add i32 %30, %28
  %size41 = getelementptr %struct.com20020_pci_card_info, ptr %2, i32 0, i32 2, i32 %i.0343, i32 2
  %31 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size41, align 4
  %call42 = call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %add39, i32 noundef %32, ptr noundef nonnull @.str.6) #8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %do.body54

do.end47:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size41, align 4
  %add50 = add i32 %add39, -1
  %sub51 = add i32 %add50, %34
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %add39, i32 noundef %sub51) #11
  br label %err_free_arcdev

do.body54:                                        ; preds = %do.end33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  call void @arm_heavy_mb() #8
  %add57 = add i32 %add39, 1
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %35 = inttoptr i32 %add59 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 0) #8, !srcloc !133
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #8, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %dev68 = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 133, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %parent, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 5
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add39, ptr %base_addr, align 32
  %39 = load i32, ptr @node, align 4
  %conv69 = trunc i32 %39 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %40 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv69, ptr %addr.addr.i, align 1
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 56
  %41 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %42 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call23, i32 noundef 0, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 134
  %43 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @com20020_state_group, ptr %sysfs_groups, align 16
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %irq71 = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 64
  %46 = ptrtoint ptr %irq71 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %irq71, align 4
  %card_name = getelementptr i8, ptr %call23, i32 2596
  %47 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.14, ptr %card_name, align 4
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %card_flags = getelementptr i8, ptr %call23, i32 2600
  %50 = ptrtoint ptr %card_flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %card_flags, align 4
  %51 = load i32, ptr @backplane, align 4
  %conv72 = trunc i32 %51 to i8
  %backplane = getelementptr i8, ptr %call23, i32 2306
  %52 = ptrtoint ptr %backplane to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv72, ptr %backplane, align 2
  %53 = load i32, ptr @clockp, align 4
  %54 = trunc i32 %53 to i8
  %conv74 = and i8 %54, 7
  %clockp = getelementptr i8, ptr %call23, i32 2307
  %55 = ptrtoint ptr %clockp to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv74, ptr %clockp, align 1
  %56 = load i32, ptr @clockm, align 4
  %57 = trunc i32 %56 to i8
  %conv76 = and i8 %57, 3
  %clockm = getelementptr i8, ptr %call23, i32 2308
  %58 = ptrtoint ptr %clockm to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv76, ptr %clockm, align 4
  %59 = load i32, ptr @timeout, align 4
  %conv77 = trunc i32 %59 to i8
  %timeout = getelementptr i8, ptr %call23, i32 2305
  %60 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv77, ptr %timeout, align 1
  %hw = getelementptr i8, ptr %call23, i32 4956
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %hw, align 4
  %62 = ptrtoint ptr %misc79 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %misc79, align 4
  %and80 = and i32 %63, 1048575
  %add81 = or i32 %and80, -18874368
  %64 = inttoptr i32 %add81 to ptr
  %65 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %conv85 = zext i8 %65 to i32
  %add86 = add nuw i32 %i.0343, 2
  %shr = lshr i32 %conv85, %add86
  %66 = trunc i32 %shr to i8
  %conv88 = and i8 %66, 1
  %67 = ptrtoint ptr %backplane to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv88, ptr %backplane, align 2
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  %call91 = call i32 @strncmp(ptr noundef %69, ptr noundef nonnull dereferenceable(16) @.str.5, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  %spec.store.select = select i1 %tobool92.not, i8 1, i8 %conv88
  %70 = ptrtoint ptr %backplane to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %spec.store.select, ptr %backplane, align 2
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %2, align 4
  %call97 = call i32 @strncmp(ptr noundef %72, ptr noundef nonnull dereferenceable(16) @.str.4, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  %dev_id_mask.0 = select i1 %tobool98.not, i16 3, i16 15
  %73 = ptrtoint ptr %misc79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %misc79, align 4
  %75 = ptrtoint ptr %rotary to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rotary, align 4
  %add103 = add i32 %76, %74
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %77 = inttoptr i32 %add105 to ptr
  %78 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #8, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %79 = lshr i8 %78, 4
  %80 = zext i8 %79 to i16
  %and111 = and i16 %dev_id_mask.0, %80
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 60
  %81 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %and111, ptr %dev_id, align 2
  %conv115 = zext i16 %and111 to i32
  %call116 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call23, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %conv115, i32 noundef %i.0343)
  %and119 = and i32 %add39, 1048575
  %add120 = or i32 %and119, -18874368
  %82 = inttoptr i32 %add120 to ptr
  %83 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #8, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp125 = icmp eq i8 %83, -1
  br i1 %cmp125, label %do.end130, label %if.end133

do.end130:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %add39) #11
  br label %err_free_arcdev

if.end133:                                        ; preds = %do.body54
  %call134 = call i32 @com20020_check(ptr noundef nonnull %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.err_free_arcdev_crit_edge

if.end133.err_free_arcdev_crit_edge:              ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_arcdev

if.end137:                                        ; preds = %if.end133
  %call.i324 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 820, i32 noundef 3520) #8
  %tobool140.not = icmp eq ptr %call.i324, null
  br i1 %tobool140.not, label %if.end137.err_free_arcdev_crit_edge, label %if.end142

if.end137.err_free_arcdev_crit_edge:              ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_arcdev

if.end142:                                        ; preds = %if.end137
  %index = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 5
  %84 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %i.0343, ptr %index, align 4
  %pci_priv = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 4
  %85 = ptrtoint ptr %pci_priv to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %pci_priv, align 4
  %tx_led = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 2
  %brightness_set = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 2, i32 5
  %86 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @led_tx_set, ptr %brightness_set, align 4
  %87 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %dev_id, align 2
  %conv145 = zext i16 %88 to i32
  %call146 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.19, i32 noundef %conv145, i32 noundef %i.0343) #8
  %default_trigger = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 2, i32 14
  %89 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call146, ptr %default_trigger, align 4
  %90 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %dev_id, align 2
  %conv150 = zext i16 %91 to i32
  %call151 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %conv150, i32 noundef %i.0343) #8
  %92 = ptrtoint ptr %tx_led to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call151, ptr %tx_led, align 4
  %dev156 = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 2, i32 11
  %93 = ptrtoint ptr %dev156 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %dev68, ptr %dev156, align 4
  %recon_led = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 3
  %brightness_set157 = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 3, i32 5
  %94 = ptrtoint ptr %brightness_set157 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @led_recon_set, ptr %brightness_set157, align 4
  %95 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %dev_id, align 2
  %conv160 = zext i16 %96 to i32
  %call161 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.21, i32 noundef %conv160, i32 noundef %i.0343) #8
  %default_trigger163 = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 3, i32 14
  %97 = ptrtoint ptr %default_trigger163 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call161, ptr %default_trigger163, align 4
  %98 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %dev_id, align 2
  %conv166 = zext i16 %99 to i32
  %call167 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.22, i32 noundef %conv166, i32 noundef %i.0343) #8
  %100 = ptrtoint ptr %recon_led to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call167, ptr %recon_led, align 4
  %dev172 = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 3, i32 11
  %101 = ptrtoint ptr %dev172 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %dev68, ptr %dev172, align 4
  %dev173 = getelementptr inbounds %struct.com20020_dev, ptr %call.i324, i32 0, i32 1
  %102 = ptrtoint ptr %dev173 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call23, ptr %dev173, align 4
  %call.i325 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %tx_led, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %tobool177.not = icmp eq i32 %call.i325, 0
  br i1 %tobool177.not, label %if.end179, label %if.end142.err_free_arcdev_crit_edge

if.end142.err_free_arcdev_crit_edge:              ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_arcdev

if.end179:                                        ; preds = %if.end142
  %call.i326 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %recon_led, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool183.not = icmp eq i32 %call.i326, 0
  br i1 %tobool183.not, label %if.end185, label %if.end179.err_free_arcdev_crit_edge

if.end179.err_free_arcdev_crit_edge:              ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_arcdev

if.end185:                                        ; preds = %if.end179
  %driver_data.i = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 133, i32 8
  %103 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i324, ptr %driver_data.i, align 4
  %call187 = call i32 @com20020_found(ptr noundef nonnull %call23, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end185.err_free_arcdev_crit_edge

if.end185.err_free_arcdev_crit_edge:              ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_arcdev

if.end190:                                        ; preds = %if.end185
  %104 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %dev_id, align 2
  %conv192 = zext i16 %105 to i32
  call void @devm_arcnet_led_init(ptr noundef nonnull %call23, i32 noundef %conv192, i32 noundef %i.0343) #8
  %106 = ptrtoint ptr %list_dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %list_dev, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i324, ptr noundef %list_dev, ptr noundef %107) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end190.for.inc_crit_edge

if.end190.for.inc_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i324, ptr %prev1.i.i, align 4
  %109 = ptrtoint ptr %call.i324 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %107, ptr %call.i324, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i324, i32 0, i32 1
  %110 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %list_dev, ptr %prev3.i.i, align 4
  %111 = ptrtoint ptr %list_dev to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %call.i324, ptr %list_dev, align 4
  br label %for.inc

err_free_arcdev:                                  ; preds = %if.end185.err_free_arcdev_crit_edge, %if.end179.err_free_arcdev_crit_edge, %if.end142.err_free_arcdev_crit_edge, %if.end137.err_free_arcdev_crit_edge, %if.end133.err_free_arcdev_crit_edge, %do.end130, %do.end47
  %ret.1 = phi i32 [ -5, %do.end130 ], [ -16, %do.end47 ], [ -12, %if.end137.err_free_arcdev_crit_edge ], [ -5, %if.end133.err_free_arcdev_crit_edge ], [ %call187, %if.end185.err_free_arcdev_crit_edge ], [ %call.i326, %if.end179.err_free_arcdev_crit_edge ], [ %call.i325, %if.end142.err_free_arcdev_crit_edge ]
  call void @free_arcdev(ptr noundef nonnull %call23) #8
  br label %if.then197

for.inc:                                          ; preds = %if.end.i.i, %if.end190.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0343, 1
  %112 = ptrtoint ptr %devcount to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %devcount, align 4
  %cmp = icmp slt i32 %inc, %113
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup199_crit_edge

for.inc.cleanup199_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then197:                                       ; preds = %err_free_arcdev, %for.body.if.then197_crit_edge
  %ret.2.ph = phi i32 [ %ret.1, %err_free_arcdev ], [ -12, %for.body.if.then197_crit_edge ]
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %driver_data.i.i, align 4
  %list_dev.i = getelementptr inbounds %struct.com20020_priv, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %list_dev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %list_dev.i, align 4
  %cmp.not21.i = icmp eq ptr %117, %list_dev.i
  br i1 %cmp.not21.i, label %if.then197.cleanup199_crit_edge, label %if.then197.for.body.i_crit_edge

if.then197.for.body.i_crit_edge:                  ; preds = %if.then197
  br label %for.body.i

if.then197.cleanup199_crit_edge:                  ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then197.for.body.i_crit_edge
  %card.022.i = phi ptr [ %tmpcard.0.i, %for.body.i.for.body.i_crit_edge ], [ %117, %if.then197.for.body.i_crit_edge ]
  %118 = ptrtoint ptr %card.022.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %tmpcard.0.i = load ptr, ptr %card.022.i, align 4
  %dev7.i = getelementptr inbounds %struct.com20020_dev, ptr %card.022.i, i32 0, i32 1
  %119 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev7.i, align 4
  call void @unregister_netdev(ptr noundef %120) #8
  %irq.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 64
  %121 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq.i, align 4
  %call8.i = call ptr @free_irq(i32 noundef %122, ptr noundef %120) #8
  call void @free_arcdev(ptr noundef %120) #8
  %cmp.not.i = icmp eq ptr %tmpcard.0.i, %list_dev.i
  br i1 %cmp.not.i, label %for.body.i.cleanup199_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.cleanup199_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

cleanup199:                                       ; preds = %for.body.i.cleanup199_crit_edge, %if.then197.cleanup199_crit_edge, %for.inc.cleanup199_crit_edge, %if.end21.cleanup199_crit_edge, %do.end, %if.end5.cleanup199_crit_edge, %if.end.cleanup199_crit_edge, %entry.cleanup199_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -5, %entry.cleanup199_crit_edge ], [ -12, %if.end.cleanup199_crit_edge ], [ -22, %if.end5.cleanup199_crit_edge ], [ %ret.2.ph, %if.then197.cleanup199_crit_edge ], [ 0, %if.end21.cleanup199_crit_edge ], [ %ret.2.ph, %for.body.i.cleanup199_crit_edge ], [ 0, %for.inc.cleanup199_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %list_dev = getelementptr inbounds %struct.com20020_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %list_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_dev, align 4
  %cmp.not21 = icmp eq ptr %3, %list_dev
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %card.022 = phi ptr [ %tmpcard.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %card.022 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmpcard.0 = load ptr, ptr %card.022, align 4
  %dev7 = getelementptr inbounds %struct.com20020_dev, ptr %card.022, i32 0, i32 1
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  tail call void @unregister_netdev(ptr noundef %6) #8
  %irq = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %6) #8
  tail call void @free_arcdev(ptr noundef %6) #8
  %cmp.not = icmp eq ptr %tmpcard.0, %list_dev
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_arcdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @com20020_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_tx_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_priv = getelementptr i8, ptr %led_cdev, i32 800
  %0 = ptrtoint ptr %pci_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %conv = zext i1 %tobool to i8
  %misc = getelementptr inbounds %struct.com20020_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %misc, align 4
  %index = getelementptr i8, ptr %led_cdev, i32 804
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.com20020_pci_card_info, ptr %3, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %5
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %10 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #8, !srcloc !133
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_recon_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_priv = getelementptr i8, ptr %led_cdev, i32 400
  %0 = ptrtoint ptr %pci_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %conv = zext i1 %tobool to i8
  %misc = getelementptr inbounds %struct.com20020_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %misc, align 4
  %index = getelementptr i8, ptr %led_cdev, i32 404
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %red = getelementptr %struct.com20020_pci_card_info, ptr %3, i32 0, i32 4, i32 %7, i32 1
  %8 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %red, align 4
  %add = add i32 %9, %5
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %10 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #8, !srcloc !133
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @com20020_found(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_arcnet_led_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_arcdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @backplane_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backplane = getelementptr i8, ptr %dev, i32 1202
  %0 = ptrtoint ptr %backplane to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %backplane, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !118, !119, !120, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__param_node, !1, !"__param_node", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_nodetype339, !1, !"__UNIQUE_ID_nodetype339", i1 false, i1 false}
!3 = !{ptr @__param_device, !4, !"__param_device", i1 false, i1 false}
!4 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 59, i32 1}
!5 = !{ptr @__UNIQUE_ID_devicetype340, !4, !"__UNIQUE_ID_devicetype340", i1 false, i1 false}
!6 = !{ptr @__param_timeout, !7, !"__param_timeout", i1 false, i1 false}
!7 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 60, i32 1}
!8 = !{ptr @__UNIQUE_ID_timeouttype341, !7, !"__UNIQUE_ID_timeouttype341", i1 false, i1 false}
!9 = !{ptr @__param_backplane, !10, !"__param_backplane", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 61, i32 1}
!11 = !{ptr @__UNIQUE_ID_backplanetype342, !10, !"__UNIQUE_ID_backplanetype342", i1 false, i1 false}
!12 = !{ptr @__param_clockp, !13, !"__param_clockp", i1 false, i1 false}
!13 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 62, i32 1}
!14 = !{ptr @__UNIQUE_ID_clockptype343, !13, !"__UNIQUE_ID_clockptype343", i1 false, i1 false}
!15 = !{ptr @__param_clockm, !16, !"__param_clockm", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 63, i32 1}
!17 = !{ptr @__UNIQUE_ID_clockmtype344, !16, !"__UNIQUE_ID_clockmtype344", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file345, !19, !"__UNIQUE_ID_file345", i1 false, i1 false}
!19 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 64, i32 1}
!20 = !{ptr @__UNIQUE_ID_license346, !19, !"__UNIQUE_ID_license346", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_com20020_pci__348_614_com20020pci_init6, !22, !"__initcall__kmod_com20020_pci__348_614_com20020pci_init6", i1 false, i1 false}
!22 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 614, i32 1}
!23 = !{ptr @__exitcall_com20020pci_cleanup, !24, !"__exitcall_com20020pci_cleanup", i1 false, i1 false}
!24 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 615, i32 1}
!25 = !{ptr @node, !26, !"node", i1 false, i1 false}
!26 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 51, i32 12}
!27 = !{ptr @backplane, !28, !"backplane", i1 false, i1 false}
!28 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 54, i32 12}
!29 = !{ptr @clockp, !30, !"clockp", i1 false, i1 false}
!30 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 55, i32 12}
!31 = !{ptr @clockm, !32, !"clockm", i1 false, i1 false}
!32 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 56, i32 12}
!33 = !{ptr @__param_str_node, !1, !"__param_str_node", i1 false, i1 false}
!34 = !{ptr @__param_str_device, !4, !"__param_str_device", i1 false, i1 false}
!35 = !{ptr @__param_string_device, !4, !"__param_string_device", i1 false, i1 false}
!36 = !{ptr @device, !37, !"device", i1 false, i1 false}
!37 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 52, i32 13}
!38 = !{ptr @__param_str_timeout, !7, !"__param_str_timeout", i1 false, i1 false}
!39 = !{ptr @timeout, !40, !"timeout", i1 false, i1 false}
!40 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 53, i32 12}
!41 = !{ptr @__param_str_backplane, !10, !"__param_str_backplane", i1 false, i1 false}
!42 = !{ptr @__param_str_clockp, !13, !"__param_str_clockp", i1 false, i1 false}
!43 = !{ptr @__param_str_clockm, !16, !"__param_str_clockm", i1 false, i1 false}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 596, i32 11}
!46 = !{ptr @com20020pci_driver, !47, !"com20020pci_driver", i1 false, i1 false}
!47 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 595, i32 26}
!48 = !{ptr @com20020pci_id_table, !49, !"com20020pci_id_table", i1 false, i1 false}
!49 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 427, i32 35}
!50 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 319, i32 10}
!52 = !{ptr @card_info_5mbit, !53, !"card_info_5mbit", i1 false, i1 false}
!53 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 318, i32 38}
!54 = !{ptr @card_info_10mbit, !55, !"card_info_10mbit", i1 false, i1 false}
!55 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 305, i32 38}
!56 = !{ptr @.str.2, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 332, i32 10}
!58 = !{ptr @card_info_sohard, !59, !"card_info_sohard", i1 false, i1 false}
!59 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 331, i32 38}
!60 = !{ptr @.str.3, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 346, i32 10}
!62 = !{ptr @card_info_eae_arc1, !63, !"card_info_eae_arc1", i1 false, i1 false}
!63 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 345, i32 38}
!64 = !{ptr @.str.4, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 371, i32 10}
!66 = !{ptr @card_info_eae_ma1, !67, !"card_info_eae_ma1", i1 false, i1 false}
!67 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 370, i32 38}
!68 = !{ptr @.str.5, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 403, i32 10}
!70 = !{ptr @card_info_eae_fb2, !71, !"card_info_eae_fb2", i1 false, i1 false}
!71 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 402, i32 38}
!72 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 153, i32 7}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 156, i32 4}
!76 = !{ptr @.str.8, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @com20020pci_probe._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @com20020pci_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.10, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 179, i32 3}
!82 = !{ptr @.str.12, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 185, i32 4}
!84 = !{ptr @com20020pci_probe._entry.11, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @com20020pci_probe._entry_ptr.13, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.14, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 203, i32 19}
!88 = !{ptr @.str.15, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 221, i32 42}
!90 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 224, i32 4}
!92 = !{ptr @com20020pci_probe._entry.16, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @com20020pci_probe._entry_ptr.18, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 244, i32 19}
!96 = !{ptr @.str.20, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 247, i32 7}
!98 = !{ptr @.str.21, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 253, i32 19}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 256, i32 7}
!102 = !{ptr @com20020_state_group, !103, !"com20020_state_group", i1 false, i1 false}
!103 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 112, i32 37}
!104 = !{ptr @com20020_state_attrs, !105, !"com20020_state_attrs", i1 false, i1 false}
!105 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 107, i32 26}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 105, i32 8}
!108 = !{ptr @dev_attr_backplane_mode, !107, !"dev_attr_backplane_mode", i1 false, i1 false}
!109 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 103, i32 22}
!111 = !{ptr @.str.25, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 103, i32 46}
!113 = !{ptr @.str.26, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 103, i32 55}
!115 = !{ptr @.str.27, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 605, i32 3}
!117 = !{ptr @.str.28, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @com20020pci_init._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @com20020pci_init._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.30, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/arcnet/com20020-pci.c", i32 606, i32 9}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2156312077}
!133 = !{i64 6719577}
!134 = !{i64 6719972}
!135 = !{i64 2156312561}
!136 = !{i64 2156312907}
!137 = !{i64 2156313214}
!138 = !{i64 2156313567}
!139 = !{i64 2156301469}
!140 = !{i64 2156303120}
