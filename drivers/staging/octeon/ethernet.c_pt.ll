; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cvm_oct_free_work\22, \22a\22\09"
module asm "\09.weak\09__crc_cvm_oct_free_work\09\09\09\09"
module asm "\09.long\09__crc_cvm_oct_free_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cvm_oct_free_work:\09\09\09\09\09"
module asm "\09.asciz \09\22cvm_oct_free_work\22\09\09\09\09\09"
module asm "__kstrtabns_cvm_oct_free_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.130 }
%union.anon.130 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.136, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.136 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.octeon_ethernet = type { i32, i32, i32, ptr, i32, i32, [16 x %struct.sk_buff_head], i32, i32, i64, ptr, %struct.delayed_work, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }

@__param_str_num_packet_buffers = internal constant [35 x i8] c"octeon_ethernet.num_packet_buffers\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_packet_buffers = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_num_packet_buffers = internal constant %struct.kernel_param { ptr @__param_str_num_packet_buffers, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @num_packet_buffers } }, section "__param", align 4
@__UNIQUE_ID_num_packet_bufferstype520 = internal constant [48 x i8] c"octeon_ethernet.parmtype=num_packet_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_packet_buffers521 = internal constant [145 x i8] c"octeon_ethernet.parm=num_packet_buffers:\0A\09Number of packet buffers to allocate and store in the\0A\09FPA. By default, 1024 packet buffers are used.\0A\00", section ".modinfo", align 1
@__param_str_pow_receive_group = internal constant [34 x i8] c"octeon_ethernet.pow_receive_group\00", align 1
@pow_receive_group = internal global { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@__param_pow_receive_group = internal constant %struct.kernel_param { ptr @__param_str_pow_receive_group, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @pow_receive_group } }, section "__param", align 4
@__UNIQUE_ID_pow_receive_grouptype522 = internal constant [47 x i8] c"octeon_ethernet.parmtype=pow_receive_group:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pow_receive_group523 = internal constant [248 x i8] c"octeon_ethernet.parm=pow_receive_group:\0A\09POW group to receive packets from. All ethernet hardware\0A\09will be configured to send incoming packets to this POW\0A\09group. Also any other software can submit packets to this\0A\09group for the kernel to process.\00", section ".modinfo", align 1
@__param_str_receive_group_order = internal constant [36 x i8] c"octeon_ethernet.receive_group_order\00", align 1
@receive_group_order = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_receive_group_order = internal constant %struct.kernel_param { ptr @__param_str_receive_group_order, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @receive_group_order } }, section "__param", align 4
@__UNIQUE_ID_receive_group_ordertype524 = internal constant [49 x i8] c"octeon_ethernet.parmtype=receive_group_order:int\00", section ".modinfo", align 1
@__UNIQUE_ID_receive_group_order525 = internal constant [340 x i8] c"octeon_ethernet.parm=receive_group_order:\0A\09Order (0..4) of receive groups to take into use. Ethernet hardware\0A\09will be configured to send incoming packets to multiple POW\0A\09groups. pow_receive_group parameter is ignored when multiple\0A\09groups are taken into use and groups are allocated starting\0A\09from 0. By default, a single group is used.\0A\00", section ".modinfo", align 1
@pow_send_group = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_pow_send_group = internal constant [31 x i8] c"octeon_ethernet.pow_send_group\00", align 1
@__param_pow_send_group = internal constant %struct.kernel_param { ptr @__param_str_pow_send_group, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.130 { ptr @pow_send_group } }, section "__param", align 4
@__UNIQUE_ID_pow_send_grouptype526 = internal constant [44 x i8] c"octeon_ethernet.parmtype=pow_send_group:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pow_send_group527 = internal constant [186 x i8] c"octeon_ethernet.parm=pow_send_group:\0A\09POW group to send packets to other software on. This\0A\09controls the creation of the virtual device pow0.\0A\09always_use_pow also depends on this value.\00", section ".modinfo", align 1
@__param_str_always_use_pow = internal constant [31 x i8] c"octeon_ethernet.always_use_pow\00", align 1
@always_use_pow = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_always_use_pow = internal constant %struct.kernel_param { ptr @__param_str_always_use_pow, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @always_use_pow } }, section "__param", align 4
@__UNIQUE_ID_always_use_powtype528 = internal constant [44 x i8] c"octeon_ethernet.parmtype=always_use_pow:int\00", section ".modinfo", align 1
@__UNIQUE_ID_always_use_pow529 = internal constant [442 x i8] c"octeon_ethernet.parm=always_use_pow:\0A\09When set, always send to the pow group. This will cause\0A\09packets sent to real ethernet devices to be sent to the\0A\09POW group instead of the hardware. Unless some other\0A\09application changes the config, packets will still be\0A\09received from the low level hardware. Use this option\0A\09to allow a CVMX app to intercept all packets from the\0A\09linux kernel. You must specify pow_send_group along with\0A\09this option.\00", section ".modinfo", align 1
@pow_send_list = dso_local global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@__param_str_pow_send_list = internal constant [30 x i8] c"octeon_ethernet.pow_send_list\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_pow_send_list = internal constant %struct.kparam_string { i32 128, ptr @pow_send_list }, align 4
@__param_pow_send_list = internal constant %struct.kernel_param { ptr @__param_str_pow_send_list, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @__param_string_pow_send_list } }, section "__param", align 4
@__UNIQUE_ID_pow_send_listtype530 = internal constant [46 x i8] c"octeon_ethernet.parmtype=pow_send_list:string\00", section ".modinfo", align 1
@__UNIQUE_ID_pow_send_list531 = internal constant [371 x i8] c"octeon_ethernet.parm=pow_send_list:\0A\09Comma separated list of ethernet devices that should use the\0A\09POW for transmit instead of the actual ethernet hardware. This\0A\09is a per port version of always_use_pow. always_use_pow takes\0A\09precedence over this list. For example, setting this to\0A\09\22eth2,spi3,spi7\22 would cause these three devices to transmit\0A\09using the pow_send_group.\00", section ".modinfo", align 1
@rx_napi_weight = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_str_rx_napi_weight = internal constant [31 x i8] c"octeon_ethernet.rx_napi_weight\00", align 1
@__param_rx_napi_weight = internal constant %struct.kernel_param { ptr @__param_str_rx_napi_weight, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.130 { ptr @rx_napi_weight } }, section "__param", align 4
@__UNIQUE_ID_rx_napi_weighttype532 = internal constant [44 x i8] c"octeon_ethernet.parmtype=rx_napi_weight:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_napi_weight533 = internal constant [63 x i8] c"octeon_ethernet.parm=rx_napi_weight:The NAPI WEIGHT parameter.\00", section ".modinfo", align 1
@cvm_oct_poll_queue_stopping = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cvm_oct_free_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_cvm_oct_free_work = external dso_local constant [0 x i8], align 1
@__ksymtab_cvm_oct_free_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cvm_oct_free_work to i32), ptr @__kstrtab_cvm_oct_free_work, ptr @__kstrtabns_cvm_oct_free_work }, section "___ksymtab+cvm_oct_free_work", align 4
@cvm_oct_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@__initcall__kmod_octeon_ethernet__534_988_cvm_oct_driver_init6 = internal global ptr @cvm_oct_driver_init, section ".initcall6.init", align 4
@cvm_oct_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cvm_oct_probe, ptr @cvm_oct_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cvm_oct_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cvm_oct_driver_exit = internal global ptr @cvm_oct_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_softdep535 = internal constant [41 x i8] c"octeon_ethernet.softdep=pre: mdio-cavium\00", section ".modinfo", align 1
@__UNIQUE_ID_file536 = internal constant [60 x i8] c"octeon_ethernet.file=drivers/staging/octeon/octeon-ethernet\00", section ".modinfo", align 1
@__UNIQUE_ID_license537 = internal constant [28 x i8] c"octeon_ethernet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author538 = internal constant [68 x i8] c"octeon_ethernet.author=Cavium Networks <support@caviumnetworks.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description539 = internal constant [68 x i8] c"octeon_ethernet.description=Cavium Networks Octeon ethernet driver.\00", section ".modinfo", align 1
@pow_receive_groups = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@cvm_oct_device = dso_local global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@cvm_oct_tx_poll_interval = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Illegal ipd_port %d passed to %s\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.INTERFACE = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"octeon_ethernet\00", [16 x i8] zeroinitializer }, align 32
@cvm_oct_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-3860-pip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Error: No 'pip' in /aliases\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cvm_oct_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/octeon/ethernet.c\00", [62 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry_ptr = internal global ptr @cvm_oct_probe._entry, section ".printk_index", align 4
@cvm_oct_pow_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @cvm_oct_common_init, ptr null, ptr null, ptr null, ptr @cvm_oct_xmit_pow, ptr null, ptr null, ptr null, ptr @cvm_oct_common_set_multicast_list, ptr @cvm_oct_common_set_mac_address, ptr null, ptr null, ptr @cvm_oct_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @cvm_oct_common_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cvm_oct_common_get_stats, ptr null, ptr null, ptr @cvm_oct_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pow%d\00", [26 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Failed to register ethernet device for POW\0A\00", [50 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry_ptr.8 = internal global ptr @cvm_oct_probe._entry.6, section ".printk_index", align 4
@cvm_oct_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: POW send group %d, receive group %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry_ptr.11 = internal global ptr @cvm_oct_probe._entry.9, section ".printk_index", align 4
@cvm_oct_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Failed to allocate ethernet device for POW\0A\00", [50 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry_ptr.14 = internal global ptr @cvm_oct_probe._entry.12, section ".printk_index", align 4
@cvm_oct_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Failed to allocate ethernet device for port %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry_ptr.17 = internal global ptr @cvm_oct_probe._entry.15, section ".printk_index", align 4
@cvm_oct_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Failed to register ethernet device for interface %d, port %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cvm_oct_probe._entry_ptr.29 = internal global ptr @cvm_oct_probe._entry.27, section ".printk_index", align 4
@cvm_oct_rx_refill_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @cvm_oct_rx_refill_work, i64 4), ptr getelementptr (i8, ptr @cvm_oct_rx_refill_work, i64 4) }, ptr @cvm_oct_rx_refill_worker, %struct.lockdep_map { ptr @cvm_oct_rx_refill_work, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.35, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(cvm_oct_rx_refill_work).work\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/octeon/ethernet.c:108\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"num_packet_buffers\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 33, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"pow_receive_group\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 39, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"receive_group_order\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 47, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"pow_send_group\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 56, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"always_use_pow\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 63, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"pow_send_list\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 75, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"rx_napi_weight\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 85, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"cvm_oct_poll_queue_stopping\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 97, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"cvm_oct_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 979, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"pow_receive_groups\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 90, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"cvm_oct_device\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 103, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"cvm_oct_tx_poll_interval\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 105, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant [42 x i8] c"../drivers/staging/octeon/ethernet-util.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 35, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 983, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"cvm_oct_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 971, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 688, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"cvm_oct_pow_netdev_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 597, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 779, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 786, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 790, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 795, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 815, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 900, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"cvm_oct_rx_refill_work\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1984, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [37 x i8] c"../drivers/staging/octeon/ethernet.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 108, i32 8 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_always_use_pow529, ptr @__UNIQUE_ID_always_use_powtype528, ptr @__UNIQUE_ID_author538, ptr @__UNIQUE_ID_description539, ptr @__UNIQUE_ID_file536, ptr @__UNIQUE_ID_license537, ptr @__UNIQUE_ID_num_packet_buffers521, ptr @__UNIQUE_ID_num_packet_bufferstype520, ptr @__UNIQUE_ID_pow_receive_group523, ptr @__UNIQUE_ID_pow_receive_grouptype522, ptr @__UNIQUE_ID_pow_send_group527, ptr @__UNIQUE_ID_pow_send_grouptype526, ptr @__UNIQUE_ID_pow_send_list531, ptr @__UNIQUE_ID_pow_send_listtype530, ptr @__UNIQUE_ID_receive_group_order525, ptr @__UNIQUE_ID_receive_group_ordertype524, ptr @__UNIQUE_ID_rx_napi_weight533, ptr @__UNIQUE_ID_rx_napi_weighttype532, ptr @__UNIQUE_ID_softdep535, ptr @__exitcall_cvm_oct_driver_exit, ptr @__initcall__kmod_octeon_ethernet__534_988_cvm_oct_driver_init6, ptr @__ksymtab_cvm_oct_free_work, ptr @__param_always_use_pow, ptr @__param_num_packet_buffers, ptr @__param_pow_receive_group, ptr @__param_pow_send_group, ptr @__param_pow_send_list, ptr @__param_receive_group_order, ptr @__param_rx_napi_weight, ptr @cvm_oct_driver_exit, ptr @cvm_oct_probe._entry, ptr @cvm_oct_probe._entry.12, ptr @cvm_oct_probe._entry.15, ptr @cvm_oct_probe._entry.27, ptr @cvm_oct_probe._entry.6, ptr @cvm_oct_probe._entry.9, ptr @cvm_oct_probe._entry_ptr, ptr @cvm_oct_probe._entry_ptr.11, ptr @cvm_oct_probe._entry_ptr.14, ptr @cvm_oct_probe._entry_ptr.17, ptr @cvm_oct_probe._entry_ptr.29, ptr @cvm_oct_probe._entry_ptr.8, ptr @num_packet_buffers, ptr @pow_receive_group, ptr @receive_group_order, ptr @pow_send_group, ptr @always_use_pow, ptr @pow_send_list, ptr @rx_napi_weight, ptr @cvm_oct_poll_queue_stopping, ptr @cvm_oct_driver, ptr @pow_receive_groups, ptr @cvm_oct_device, ptr @cvm_oct_tx_poll_interval, ptr @.str, ptr @.str.1, ptr @cvm_oct_match, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cvm_oct_pow_netdev_ops, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.28, ptr @cvm_oct_rx_refill_work, ptr @skb_queue_head_init.__key, ptr @.str.30, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_packet_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pow_receive_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_group_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pow_send_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @always_use_pow to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pow_send_list to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_napi_weight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_poll_queue_stopping to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pow_receive_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_device to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_tx_poll_interval to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_pow_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_rx_refill_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_free_work(ptr nocapture noundef readonly %work_queue_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_common_init(ptr noundef %dev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %of_node = getelementptr i8, ptr %dev, i32 3344
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call1 = tail call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %2 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr.i, align 1
  %5 = and i8 %4, -4
  %6 = or i8 %5, 2
  store i8 %6, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %7 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = load i32, ptr @pow_send_group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not = icmp eq i32 %8, -1
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, ptr @always_use_pow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %land.lhs.true.if.then5_crit_edge

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = call ptr @strstr(ptr noundef nonnull @pow_send_list, ptr noundef %dev)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end6_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge
  %queue = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %queue, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %queue7 = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp8.not = icmp eq i32 %12, -1
  br i1 %cmp8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features, align 16
  %or = or i64 %14, 3
  store i64 %or, ptr %features, align 16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %features11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %15 = ptrtoint ptr %features11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features11, align 16
  %or12 = or i64 %16, 4096
  store i64 %or12, ptr %features11, align 16
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %17 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cvm_oct_ethtool_ops, ptr %ethtool_ops, align 16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp1.i.i = icmp sgt i32 %19, -1
  br i1 %cmp1.i.i, label %cvm_oct_set_mac_filter.exit, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %19, ptr noundef nonnull @__func__.INTERFACE) #13
  unreachable

cvm_oct_set_mac_filter.exit:                      ; preds = %if.end10
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %20 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu, align 4
  %call14 = call i32 @dev_set_mtu(ptr noundef %dev, i32 noundef %21) #10
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %22 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev_ops, align 8
  %ndo_get_stats = getelementptr inbounds %struct.net_device_ops, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %ndo_get_stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndo_get_stats, align 4
  %call15 = call ptr %25(ptr noundef %dev) #10
  %26 = call ptr @memset(ptr %call15, i32 0, i32 92)
  %27 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndo_stop, align 4
  %tobool17.not = icmp eq ptr %30, null
  br i1 %tobool17.not, label %cvm_oct_set_mac_filter.exit.if.end22_crit_edge, label %if.then18

cvm_oct_set_mac_filter.exit.if.end22_crit_edge:   ; preds = %cvm_oct_set_mac_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %cvm_oct_set_mac_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 %30(ptr noundef %dev) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %cvm_oct_set_mac_filter.exit.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_common_uninit(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_disconnect(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_common_open(ptr noundef %dev, ptr nocapture noundef readnone %link_poll) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.i = icmp sgt i32 %1, -1
  br i1 %cmp1.i, label %INTERFACE.exit, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @__func__.INTERFACE) #13
  unreachable

INTERFACE.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @cvm_oct_phy_setup_device(ptr noundef %dev) #10
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cvm_oct_phy_setup_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_link_poll(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_info1 = getelementptr i8, ptr %dev, i32 3232
  %0 = ptrtoint ptr %link_info1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %link_info1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else13:                                        ; preds = %entry
  %2 = ptrtoint ptr %link_info1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %link_info1, align 8
  %state.i36 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i36 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i36, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i37 = icmp eq i32 %5, 0
  br i1 %tobool.not.i37, label %if.then15, label %if.else13.if.end17_crit_edge

if.else13.if.end17_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_off(ptr noundef %dev) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else13.if.end17_crit_edge
  tail call void @cvm_oct_note_carrier(ptr noundef %add.ptr.i, [1 x i64] zeroinitializer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_note_carrier(ptr noundef, [1 x i64]) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cvm_oct_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @cvm_oct_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_common_set_multicast_list(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.i = icmp sgt i32 %1, -1
  br i1 %cmp1.i, label %if.end48, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @__func__.INTERFACE) #13
  unreachable

if.end48:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %cleanup294

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @num_packet_buffers, align 4
  %call.i = tail call i32 @cvm_oct_mem_fill_fpa(i32 noundef 0, i32 noundef 16, i32 noundef %2) #10
  %3 = load i32, ptr @num_packet_buffers, align 4
  %call1.i = tail call i32 @cvm_oct_mem_fill_fpa(i32 noundef 1, i32 noundef 16, i32 noundef %3) #10
  %call2.i = tail call i32 @cvm_oct_mem_fill_fpa(i32 noundef 2, i32 noundef 16, i32 noundef 1024) #10
  %4 = load i32, ptr @receive_group_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp sgt i32 %4, 4
  br i1 %cmp, label %if.then4, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  store i32 4, ptr @receive_group_order, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then3.if.end5_crit_edge
  %5 = load i32, ptr @receive_group_order, align 4
  %shl = shl nuw i32 1, %5
  %notmask = shl nsw i32 -1, %shl
  %sub = xor i32 %notmask, -1
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load i32, ptr @pow_receive_group, align 4
  %shl7 = shl nuw i32 1, %6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end5
  %storemerge = phi i32 [ %shl7, %if.else ], [ %sub, %if.end5 ]
  store i32 %storemerge, ptr @pow_receive_groups, align 4
  store i64 0, ptr @cvm_oct_device, align 8
  %7 = load i32, ptr @pow_send_group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp77.not = icmp eq i32 %7, -1
  br i1 %cmp77.not, label %if.end8.if.end123_crit_edge, label %if.then79

if.end8.if.end123_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then79:                                        ; preds = %if.end8
  %call81 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1048, i32 noundef 1, i32 noundef 1) #10
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.end119, label %if.then83

if.then83:                                        ; preds = %if.then79
  %add.ptr.i = getelementptr i8, ptr %call81, i32 2304
  %parent = getelementptr inbounds %struct.net_device, ptr %call81, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call81, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cvm_oct_pow_netdev_ops, ptr %netdev_ops, align 8
  %imode = getelementptr i8, ptr %call81, i32 2320
  %10 = ptrtoint ptr %imode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %imode, align 8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %add.ptr.i, align 8
  %queue = getelementptr i8, ptr %call81, i32 2308
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %queue, align 4
  %call88 = tail call i32 @strscpy(ptr noundef nonnull %call81, ptr noundef nonnull @.str.5, i32 noundef 16) #10
  br label %for.body92

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %if.then83
  %qos.0426 = phi i32 [ 0, %if.then83 ], [ %inc94, %for.body92.for.body92_crit_edge ]
  %arrayidx = getelementptr %struct.octeon_ethernet, ptr %add.ptr.i, i32 0, i32 6, i32 %qos.0426
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i, align 4
  %inc94 = add nuw nsw i32 %qos.0426, 1
  %exitcond.not = icmp eq i32 %inc94, 16
  br i1 %exitcond.not, label %for.end95, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body92

for.end95:                                        ; preds = %for.body92
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call81, i32 0, i32 30
  %16 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 42, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call81, i32 0, i32 31
  %17 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65370, ptr %max_mtu, align 4
  %call98 = tail call i32 @register_netdev(ptr noundef nonnull %call81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %if.else107

do.end104:                                        ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  tail call void @free_netdev(ptr noundef nonnull %call81) #10
  br label %if.end123

if.else107:                                       ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call81, ptr getelementptr inbounds ([2 x ptr], ptr @cvm_oct_device, i32 0, i32 1), align 4
  %18 = load i32, ptr @pow_send_group, align 4
  %19 = load i32, ptr @pow_receive_group, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call81, i32 noundef %18, i32 noundef %19) #14
  br label %if.end123

do.end119:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %if.end123

if.end123:                                        ; preds = %do.end119, %if.else107, %do.end104, %if.end8.if.end123_crit_edge
  tail call void @cvm_oct_tx_initialize() #10
  tail call void @cvm_oct_rx_initialize() #10
  store i64 0, ptr @cvm_oct_tx_poll_interval, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef nonnull @cvm_oct_rx_refill_work, i32 noundef 100) #10
  br label %cleanup294

cleanup294:                                       ; preds = %if.end123, %do.end
  %retval.0 = phi i32 [ 0, %if.end123 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cvm_oct_poll_queue_stopping, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr nonnull @cvm_oct_poll_queue_stopping, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cvm_oct_poll_queue_stopping, ptr nonnull @cvm_oct_poll_queue_stopping, i32 1, ptr nonnull elementtype(i32) @cvm_oct_poll_queue_stopping) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @cvm_oct_rx_refill_work) #10
  tail call void @cvm_oct_rx_shutdown() #10
  tail call void @cvm_oct_tx_shutdown() #10
  %1 = load ptr, ptr @cvm_oct_device, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_periodic_work = getelementptr i8, ptr %1, i32 3244
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %port_periodic_work) #10
  tail call void @cvm_oct_tx_shutdown_dev(ptr noundef nonnull %1) #10
  tail call void @unregister_netdev(ptr noundef nonnull %1) #10
  tail call void @free_netdev(ptr noundef nonnull %1) #10
  store ptr null, ptr @cvm_oct_device, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %2 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @cvm_oct_device, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %2, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %port_periodic_work.1 = getelementptr i8, ptr %2, i32 3244
  %call4.1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %port_periodic_work.1) #10
  tail call void @cvm_oct_tx_shutdown_dev(ptr noundef nonnull %2) #10
  tail call void @unregister_netdev(ptr noundef nonnull %2) #10
  tail call void @free_netdev(ptr noundef nonnull %2) #10
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @cvm_oct_device, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %3 = load i32, ptr @num_packet_buffers, align 4
  tail call void @cvm_oct_mem_empty_fpa(i32 noundef 0, i32 noundef 16, i32 noundef %3) #10
  %4 = load i32, ptr @num_packet_buffers, align 4
  tail call void @cvm_oct_mem_empty_fpa(i32 noundef 1, i32 noundef 16, i32 noundef %4) #10
  tail call void @cvm_oct_mem_empty_fpa(i32 noundef 2, i32 noundef 16, i32 noundef 128) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_tx_initialize() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_rx_initialize() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cvm_oct_mem_fill_fpa(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cvm_oct_xmit_pow(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_common_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.i.i = icmp sgt i32 %1, -1
  br i1 %cmp1.i.i, label %if.end.cleanup_crit_edge, label %if.end3.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @__func__.INTERFACE) #13
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cvm_oct_ioctl(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_common_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.i = icmp sgt i32 %1, -1
  br i1 %cmp1.i, label %if.end, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @__func__.INTERFACE) #13
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cvm_oct_common_get_stats(ptr noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats26 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_poll_controller(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_rx_refill_worker(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_packet_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.i = icmp slt i32 %0, -1
  br i1 %cmp.i, label %if.then.i, label %entry.cvm_oct_rx_refill_pool.exit_crit_edge

entry.cvm_oct_rx_refill_pool.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cvm_oct_rx_refill_pool.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @cvm_oct_mem_fill_fpa(i32 noundef 0, i32 noundef 16, i32 noundef 0) #10
  br label %cvm_oct_rx_refill_pool.exit

cvm_oct_rx_refill_pool.exit:                      ; preds = %if.then.i, %entry.cvm_oct_rx_refill_pool.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cvm_oct_poll_queue_stopping, i32 noundef 4) #10
  %1 = load volatile i32, ptr @cvm_oct_poll_queue_stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %cvm_oct_rx_refill_pool.exit.if.end_crit_edge

cvm_oct_rx_refill_pool.exit.if.end_crit_edge:     ; preds = %cvm_oct_rx_refill_pool.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cvm_oct_rx_refill_pool.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i2 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @cvm_oct_rx_refill_work, i32 noundef 100) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %cvm_oct_rx_refill_pool.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_rx_shutdown() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_tx_shutdown() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_tx_shutdown_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_mem_empty_fpa(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !73, !74, !75, !76, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_num_packet_buffers, !1, !"__param_num_packet_buffers", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_packet_bufferstype520, !1, !"__UNIQUE_ID_num_packet_bufferstype520", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_packet_buffers521, !4, !"__UNIQUE_ID_num_packet_buffers521", i1 false, i1 false}
!4 = !{!"../drivers/staging/octeon/ethernet.c", i32 35, i32 1}
!5 = !{ptr @__param_pow_receive_group, !6, !"__param_pow_receive_group", i1 false, i1 false}
!6 = !{!"../drivers/staging/octeon/ethernet.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_pow_receive_grouptype522, !6, !"__UNIQUE_ID_pow_receive_grouptype522", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pow_receive_group523, !9, !"__UNIQUE_ID_pow_receive_group523", i1 false, i1 false}
!9 = !{!"../drivers/staging/octeon/ethernet.c", i32 41, i32 1}
!10 = !{ptr @__param_receive_group_order, !11, !"__param_receive_group_order", i1 false, i1 false}
!11 = !{!"../drivers/staging/octeon/ethernet.c", i32 48, i32 1}
!12 = !{ptr @__UNIQUE_ID_receive_group_ordertype524, !11, !"__UNIQUE_ID_receive_group_ordertype524", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_receive_group_order525, !14, !"__UNIQUE_ID_receive_group_order525", i1 false, i1 false}
!14 = !{!"../drivers/staging/octeon/ethernet.c", i32 49, i32 1}
!15 = !{ptr @pow_send_group, !16, !"pow_send_group", i1 false, i1 false}
!16 = !{!"../drivers/staging/octeon/ethernet.c", i32 56, i32 5}
!17 = !{ptr @__param_pow_send_group, !18, !"__param_pow_send_group", i1 false, i1 false}
!18 = !{!"../drivers/staging/octeon/ethernet.c", i32 57, i32 1}
!19 = !{ptr @__UNIQUE_ID_pow_send_grouptype526, !18, !"__UNIQUE_ID_pow_send_grouptype526", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_pow_send_group527, !21, !"__UNIQUE_ID_pow_send_group527", i1 false, i1 false}
!21 = !{!"../drivers/staging/octeon/ethernet.c", i32 58, i32 1}
!22 = !{ptr @__param_always_use_pow, !23, !"__param_always_use_pow", i1 false, i1 false}
!23 = !{!"../drivers/staging/octeon/ethernet.c", i32 64, i32 1}
!24 = !{ptr @__UNIQUE_ID_always_use_powtype528, !23, !"__UNIQUE_ID_always_use_powtype528", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_always_use_pow529, !26, !"__UNIQUE_ID_always_use_pow529", i1 false, i1 false}
!26 = !{!"../drivers/staging/octeon/ethernet.c", i32 65, i32 1}
!27 = !{ptr @pow_send_list, !28, !"pow_send_list", i1 false, i1 false}
!28 = !{!"../drivers/staging/octeon/ethernet.c", i32 75, i32 6}
!29 = !{ptr @__param_pow_send_list, !30, !"__param_pow_send_list", i1 false, i1 false}
!30 = !{!"../drivers/staging/octeon/ethernet.c", i32 76, i32 1}
!31 = !{ptr @__UNIQUE_ID_pow_send_listtype530, !30, !"__UNIQUE_ID_pow_send_listtype530", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_pow_send_list531, !33, !"__UNIQUE_ID_pow_send_list531", i1 false, i1 false}
!33 = !{!"../drivers/staging/octeon/ethernet.c", i32 77, i32 1}
!34 = !{ptr @rx_napi_weight, !35, !"rx_napi_weight", i1 false, i1 false}
!35 = !{!"../drivers/staging/octeon/ethernet.c", i32 85, i32 5}
!36 = !{ptr @__param_rx_napi_weight, !37, !"__param_rx_napi_weight", i1 false, i1 false}
!37 = !{!"../drivers/staging/octeon/ethernet.c", i32 86, i32 1}
!38 = !{ptr @__UNIQUE_ID_rx_napi_weighttype532, !37, !"__UNIQUE_ID_rx_napi_weighttype532", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_rx_napi_weight533, !40, !"__UNIQUE_ID_rx_napi_weight533", i1 false, i1 false}
!40 = !{!"../drivers/staging/octeon/ethernet.c", i32 87, i32 1}
!41 = !{ptr @cvm_oct_poll_queue_stopping, !42, !"cvm_oct_poll_queue_stopping", i1 false, i1 false}
!42 = !{!"../drivers/staging/octeon/ethernet.c", i32 97, i32 10}
!43 = !{ptr @__ksymtab_cvm_oct_free_work, !44, !"__ksymtab_cvm_oct_free_work", i1 false, i1 false}
!44 = !{!"../drivers/staging/octeon/ethernet.c", i32 194, i32 1}
!45 = !{ptr @__initcall__kmod_octeon_ethernet__534_988_cvm_oct_driver_init6, !46, !"__initcall__kmod_octeon_ethernet__534_988_cvm_oct_driver_init6", i1 false, i1 false}
!46 = !{!"../drivers/staging/octeon/ethernet.c", i32 988, i32 1}
!47 = !{ptr @__exitcall_cvm_oct_driver_exit, !46, !"__exitcall_cvm_oct_driver_exit", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_softdep535, !49, !"__UNIQUE_ID_softdep535", i1 false, i1 false}
!49 = !{!"../drivers/staging/octeon/ethernet.c", i32 990, i32 1}
!50 = !{ptr @__UNIQUE_ID_file536, !51, !"__UNIQUE_ID_file536", i1 false, i1 false}
!51 = !{!"../drivers/staging/octeon/ethernet.c", i32 991, i32 1}
!52 = !{ptr @__UNIQUE_ID_license537, !51, !"__UNIQUE_ID_license537", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_author538, !54, !"__UNIQUE_ID_author538", i1 false, i1 false}
!54 = !{!"../drivers/staging/octeon/ethernet.c", i32 992, i32 1}
!55 = !{ptr @__UNIQUE_ID_description539, !56, !"__UNIQUE_ID_description539", i1 false, i1 false}
!56 = !{!"../drivers/staging/octeon/ethernet.c", i32 993, i32 1}
!57 = !{ptr @receive_group_order, !58, !"receive_group_order", i1 false, i1 false}
!58 = !{!"../drivers/staging/octeon/ethernet.c", i32 47, i32 12}
!59 = !{ptr @always_use_pow, !60, !"always_use_pow", i1 false, i1 false}
!60 = !{!"../drivers/staging/octeon/ethernet.c", i32 63, i32 5}
!61 = !{ptr @pow_receive_groups, !62, !"pow_receive_groups", i1 false, i1 false}
!62 = !{!"../drivers/staging/octeon/ethernet.c", i32 90, i32 5}
!63 = !{ptr @cvm_oct_device, !64, !"cvm_oct_device", i1 false, i1 false}
!64 = !{!"../drivers/staging/octeon/ethernet.c", i32 103, i32 20}
!65 = !{ptr @cvm_oct_tx_poll_interval, !66, !"cvm_oct_tx_poll_interval", i1 false, i1 false}
!66 = !{!"../drivers/staging/octeon/ethernet.c", i32 105, i32 5}
!67 = !{ptr @__param_str_num_packet_buffers, !1, !"__param_str_num_packet_buffers", i1 false, i1 false}
!68 = !{ptr @num_packet_buffers, !69, !"num_packet_buffers", i1 false, i1 false}
!69 = !{!"../drivers/staging/octeon/ethernet.c", i32 33, i32 12}
!70 = !{ptr @__param_str_pow_receive_group, !6, !"__param_str_pow_receive_group", i1 false, i1 false}
!71 = !{ptr @pow_receive_group, !72, !"pow_receive_group", i1 false, i1 false}
!72 = !{!"../drivers/staging/octeon/ethernet.c", i32 39, i32 12}
!73 = !{ptr @__param_str_receive_group_order, !11, !"__param_str_receive_group_order", i1 false, i1 false}
!74 = !{ptr @__param_str_pow_send_group, !18, !"__param_str_pow_send_group", i1 false, i1 false}
!75 = !{ptr @__param_str_always_use_pow, !23, !"__param_str_always_use_pow", i1 false, i1 false}
!76 = !{ptr @__param_str_pow_send_list, !30, !"__param_str_pow_send_list", i1 false, i1 false}
!77 = !{ptr @__param_string_pow_send_list, !30, !"__param_string_pow_send_list", i1 false, i1 false}
!78 = !{ptr @__param_str_rx_napi_weight, !37, !"__param_str_rx_napi_weight", i1 false, i1 false}
!79 = !{ptr @.str, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 8}
!81 = !{ptr @__func__.INTERFACE, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 56}
!83 = !{ptr @.str.1, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/octeon/ethernet.c", i32 983, i32 11}
!85 = !{ptr @cvm_oct_driver, !86, !"cvm_oct_driver", i1 false, i1 false}
!86 = !{!"../drivers/staging/octeon/ethernet.c", i32 979, i32 31}
!87 = !{ptr @.str.2, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/octeon/ethernet.c", i32 688, i32 3}
!89 = !{ptr @.str.3, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cvm_oct_probe._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @cvm_oct_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.5, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/octeon/ethernet.c", i32 779, i32 23}
!95 = !{ptr @.str.7, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/octeon/ethernet.c", i32 786, i32 5}
!97 = !{ptr @cvm_oct_probe._entry.6, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cvm_oct_probe._entry_ptr.8, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.10, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/octeon/ethernet.c", i32 790, i32 5}
!101 = !{ptr @cvm_oct_probe._entry.9, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cvm_oct_probe._entry_ptr.11, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.13, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/octeon/ethernet.c", i32 795, i32 4}
!105 = !{ptr @cvm_oct_probe._entry.12, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cvm_oct_probe._entry_ptr.14, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.16, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/octeon/ethernet.c", i32 815, i32 5}
!109 = !{ptr @cvm_oct_probe._entry.15, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cvm_oct_probe._entry_ptr.17, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/staging/octeon/ethernet.c", i32 827, i32 4}
!113 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !112, !"__key", i1 false, i1 false}
!115 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/octeon/ethernet.c", i32 851, i32 24}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/octeon/ethernet.c", i32 856, i32 24}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/octeon/ethernet.c", i32 861, i32 24}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/octeon/ethernet.c", i32 867, i32 24}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/octeon/ethernet.c", i32 872, i32 24}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/octeon/ethernet.c", i32 891, i32 22}
!128 = !{ptr @.str.28, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/octeon/ethernet.c", i32 900, i32 5}
!130 = !{ptr @cvm_oct_probe._entry.27, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cvm_oct_probe._entry_ptr.29, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @cvm_oct_pow_netdev_ops, !133, !"cvm_oct_pow_netdev_ops", i1 false, i1 false}
!133 = !{!"../drivers/staging/octeon/ethernet.c", i32 597, i32 36}
!134 = !{ptr @skb_queue_head_init.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!136 = !{ptr @.str.30, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/octeon/ethernet.c", i32 618, i32 32}
!139 = distinct !{null, !140, !"cvm_oct_npi_netdev_ops", i1 false, i1 false}
!140 = !{!"../drivers/staging/octeon/ethernet.c", i32 521, i32 36}
!141 = distinct !{null, !142, !"cvm_oct_xaui_netdev_ops", i1 false, i1 false}
!142 = !{!"../drivers/staging/octeon/ethernet.c", i32 535, i32 36}
!143 = distinct !{null, !144, !"cvm_oct_sgmii_netdev_ops", i1 false, i1 false}
!144 = !{!"../drivers/staging/octeon/ethernet.c", i32 551, i32 36}
!145 = distinct !{null, !146, !"cvm_oct_spi_netdev_ops", i1 false, i1 false}
!146 = !{!"../drivers/staging/octeon/ethernet.c", i32 567, i32 36}
!147 = distinct !{null, !148, !"cvm_oct_rgmii_netdev_ops", i1 false, i1 false}
!148 = !{!"../drivers/staging/octeon/ethernet.c", i32 581, i32 36}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/octeon/ethernet.c", i32 654, i32 32}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/octeon/ethernet.c", i32 658, i32 32}
!153 = !{ptr @.str.34, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/octeon/ethernet.c", i32 108, i32 8}
!155 = !{ptr @.str.35, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @cvm_oct_rx_refill_work, !154, !"cvm_oct_rx_refill_work", i1 false, i1 false}
!157 = !{ptr @cvm_oct_match, !158, !"cvm_oct_match", i1 false, i1 false}
!158 = !{!"../drivers/staging/octeon/ethernet.c", i32 971, i32 34}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148589026}
!169 = !{i64 2148504335, i64 2148504367, i64 2148504396, i64 2148504430, i64 2148504461, i64 2148504484}
!170 = !{i64 2148589255}
