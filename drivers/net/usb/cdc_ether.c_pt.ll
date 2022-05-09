; ModuleID = '/llk/IR_all_yes/drivers/net/usb/cdc_ether.c_pt.bc'
source_filename = "../drivers/net/usb/cdc_ether.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usbnet_cdc_update_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_usbnet_cdc_update_filter\09\09\09\09"
module asm "\09.long\09__crc_usbnet_cdc_update_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_update_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_update_filter\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_update_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbnet_generic_cdc_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_usbnet_generic_cdc_bind\09\09\09\09"
module asm "\09.long\09__crc_usbnet_generic_cdc_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_generic_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_generic_cdc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_generic_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbnet_ether_cdc_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_usbnet_ether_cdc_bind\09\09\09\09"
module asm "\09.long\09__crc_usbnet_ether_cdc_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_ether_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_ether_cdc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_ether_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbnet_cdc_unbind\22, \22a\22\09"
module asm "\09.weak\09__crc_usbnet_cdc_unbind\09\09\09\09"
module asm "\09.long\09__crc_usbnet_cdc_unbind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbnet_cdc_status\22, \22a\22\09"
module asm "\09.weak\09__crc_usbnet_cdc_status\09\09\09\09"
module asm "\09.long\09__crc_usbnet_cdc_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_status:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_status\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbnet_cdc_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_usbnet_cdc_bind\09\09\09\09"
module asm "\09.long\09__crc_usbnet_cdc_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.117, i32 }
%union.anon.117 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_acm_descriptor = type { i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_cdc_mdlm_desc = type <{ i8, i8, i8, i16, [16 x i8] }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
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

@__kstrtab_usbnet_cdc_update_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_update_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_update_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_update_filter to i32), ptr @__kstrtab_usbnet_cdc_update_filter, ptr @__kstrtabns_usbnet_cdc_update_filter }, section "___ksymtab_gpl+usbnet_cdc_update_filter", align 4
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdc_ether\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbnet_generic_cdc_bind\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/usb/cdc_ether.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CDC descriptors on config\0A\00", [37 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CDC descriptors on endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"master #%u/%p slave #%u/%p\0A\00", [36 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bogus CDC Union\0A\00", [47 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slave class %u\0A\00", [16 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ACM capabilities %02x, not really RNDIS?\0A\00", [54 x i8] zeroinitializer }, align 32
@mbm_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\A3\17\A8\8B\04^O\01\A6\07\C0\FF\CB~9*", [16 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GUID doesn't match\0A\00", [44 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Descriptor too short\0A\00", [42 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rndis: master #0/%p slave #1/%p\0A\00", [63 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing cdc %s%s%sdescriptor\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"header \00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"union \00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ether \00", [25 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad notification endpoint\0A\00", [37 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing RNDIS status endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@cdc_ether_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_internal, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 331, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad CDC descriptors\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbnet_generic_cdc_bind._entry_ptr = internal global ptr @usbnet_generic_cdc_bind._entry, section ".printk_index", align 4
@__kstrtab_usbnet_generic_cdc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_generic_cdc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_generic_cdc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_generic_cdc_bind to i32), ptr @__kstrtab_usbnet_generic_cdc_bind, ptr @__kstrtabns_usbnet_generic_cdc_bind }, section "___ksymtab_gpl+usbnet_generic_cdc_bind", align 4
@__kstrtab_usbnet_ether_cdc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_ether_cdc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_ether_cdc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_ether_cdc_bind to i32), ptr @__kstrtab_usbnet_ether_cdc_bind, ptr @__kstrtabns_usbnet_ether_cdc_bind }, section "___ksymtab_gpl+usbnet_ether_cdc_bind", align 4
@__kstrtab_usbnet_cdc_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_unbind to i32), ptr @__kstrtab_usbnet_cdc_unbind, ptr @__kstrtabns_usbnet_cdc_unbind }, section "___ksymtab_gpl+usbnet_cdc_unbind", align 4
@usbnet_cdc_status.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbnet_cdc_status\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CDC: carrier %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@usbnet_cdc_status.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CDC: speed change (len %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CDC: unexpected notification %02x!\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_usbnet_cdc_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_status = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_status to i32), ptr @__kstrtab_usbnet_cdc_status, ptr @__kstrtabns_usbnet_cdc_status }, section "___ksymtab_gpl+usbnet_cdc_status", align 4
@__kstrtab_usbnet_cdc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_bind to i32), ptr @__kstrtab_usbnet_cdc_bind, ptr @__kstrtabns_usbnet_cdc_bind }, section "___ksymtab_gpl+usbnet_cdc_bind", align 4
@__initcall__kmod_cdc_ether__360_1033_cdc_driver_init6 = internal global ptr @cdc_driver_init, section ".initcall6.init", align 4
@cdc_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr @usbnet_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cdc_driver_exit = internal global ptr @cdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author361 = internal constant [32 x i8] c"cdc_ether.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description362 = internal constant [47 x i8] c"cdc_ether.description=USB CDC Ethernet devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file363 = internal constant [41 x i8] c"cdc_ether.file=drivers/net/usb/cdc_ether\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [22 x i8] c"cdc_ether.license=GPL\00", section ".modinfo", align 1
@products = internal constant { [60 x %struct.usb_device_id], [352 x i8] } { [60 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1245, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -32762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -32761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1972, i16 3842, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4100, i16 25002, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 -16097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5136, i16 -20479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5136, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 16700, i16 -32363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 16700, i16 -32362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 16700, i16 -32357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5136, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1008, i16 16925, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5845, i16 25866, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 4817, i16 5292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 899, i16 3034, i16 -32430, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1256, i16 -24319, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5041, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 12386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 12393, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 12418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 -23673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 2389, i16 2559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1118, i16 1963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1118, i16 1990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1118, i16 2343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 9047, i16 1537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 11978, i16 -16127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 2965, i16 10128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 2965, i16 10129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 8436, i16 -8102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 7172, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6610, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 7111, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32326, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 4817, i16 5569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 6610, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zte_cdc_info to i32) }, %struct.usb_device_id { i16 899, i16 5446, i16 4419, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5446, i16 4356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7725, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7725, i16 85, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7725, i16 105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @cdc_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 -1, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id zeroinitializer], [352 x i8] zeroinitializer }, align 32
@wwan_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.28, i32 1024, ptr @usbnet_cdc_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@zte_cdc_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.29, i32 4128, ptr @usbnet_cdc_zte_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_zte_status, ptr null, ptr @usbnet_cdc_zte_rx_fixup, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@cdc_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.31, i32 4128, ptr @usbnet_cdc_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mobile Broadband Network Device\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ZTE CDC Ethernet Device\00", [40 x i8] zeroinitializer }, align 32
@usbnet_cdc_zte_status.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.23, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbnet_cdc_zte_status\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CDC Ethernet Device\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 224, i64 239]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 42]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 136, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 151, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 184, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 198, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 216, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 230, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"mbm_guid\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 61, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 245, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 252, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 270, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 278, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 314, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 319, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"cdc_ether_ethtool_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 96, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 331, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 419, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 424, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 435, i32 24 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"cdc_driver\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1021, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 572, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"wwan_info\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 544, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"zte_cdc_info\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 533, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [9 x i8] c"cdc_info\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 523, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 545, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 534, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 513, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [31 x i8] c"../drivers/net/usb/cdc_ether.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 524, i32 17 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_description362, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__exitcall_cdc_driver_exit, ptr @__initcall__kmod_cdc_ether__360_1033_cdc_driver_init6, ptr @__ksymtab_usbnet_cdc_bind, ptr @__ksymtab_usbnet_cdc_status, ptr @__ksymtab_usbnet_cdc_unbind, ptr @__ksymtab_usbnet_cdc_update_filter, ptr @__ksymtab_usbnet_ether_cdc_bind, ptr @__ksymtab_usbnet_generic_cdc_bind, ptr @cdc_driver_exit, ptr @usbnet_generic_cdc_bind._entry, ptr @usbnet_generic_cdc_bind._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mbm_guid, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @cdc_ether_ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @cdc_driver, ptr @products, ptr @wwan_info, ptr @zte_cdc_info, ptr @cdc_info, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbm_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_ether_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbnet_generic_cdc_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zte_cdc_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbnet_cdc_update_filter(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i16 12, i16 13
  %count = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %and5 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %cmp, i1 %tobool6.not, i1 false
  %6 = or i16 %spec.select, 2
  %cdc_filter.1 = select i1 %or.cond, i16 %spec.select, i16 %6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or13 = or i32 %shl.i, -2147483648
  %intf = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber, align 2
  %conv14 = zext i8 %16 to i16
  %call15 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or13, i8 noundef zeroext 67, i8 noundef zeroext 33, i16 noundef zeroext %cdc_filter.1, i16 noundef zeroext %conv14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbnet_generic_cdc_bind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  %header = alloca %struct.usb_cdc_parsed_header, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extralen, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -96
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %header) #8
  %8 = call ptr @memset(ptr %header, i32 255, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %actconfig, align 4
  %extralen2 = getelementptr inbounds %struct.usb_host_config, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %extralen2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extralen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then17, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %extra5 = getelementptr inbounds %struct.usb_host_config, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %extra5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extra5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then13)) #8
          to label %if.end44 [label %if.then13], !srcloc !114

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug344, ptr noundef %dev14, ptr noundef nonnull @.str.3) #8
  br label %if.end44

if.then17:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endpoint, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.then17.if.end44_crit_edge, label %if.end23

if.then17.if.end44_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end23:                                         ; preds = %if.then17
  %extra21 = getelementptr inbounds %struct.usb_host_endpoint, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %extra21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extra21, align 4
  %extralen22 = getelementptr inbounds %struct.usb_host_endpoint, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %extralen22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %extralen22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %if.end23.if.end44_crit_edge, label %do.body26

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.body26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then38)) #8
          to label %if.end44 [label %if.then38], !srcloc !114

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug345, ptr noundef %dev39, ptr noundef nonnull @.str.4) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %do.body26, %if.end23.if.end44_crit_edge, %if.then17.if.end44_crit_edge, %if.then13, %if.then, %entry.if.end44_crit_edge
  %len.2 = phi i32 [ %24, %if.then38 ], [ 0, %if.end23.if.end44_crit_edge ], [ %14, %if.then ], [ %24, %do.body26 ], [ %5, %entry.if.end44_crit_edge ], [ %14, %if.then13 ], [ 0, %if.then17.if.end44_crit_edge ]
  %buf.2 = phi ptr [ %22, %if.then38 ], [ %22, %if.end23.if.end44_crit_edge ], [ %16, %if.then ], [ %22, %do.body26 ], [ %3, %entry.if.end44_crit_edge ], [ %16, %if.then13 ], [ %3, %if.then17.if.end44_crit_edge ]
  %25 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceClass.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %if.end44.is_novatel_rndis.exit_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 -17, label %land.lhs.true.i628
    i8 -32, label %land.lhs.true.i637
  ]

if.end44.is_novatel_rndis.exit_crit_edge:         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_novatel_rndis.exit

land.lhs.true.i:                                  ; preds = %if.end44
  %bInterfaceSubClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 6
  %30 = ptrtoint ptr %bInterfaceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bInterfaceSubClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp3.i = icmp eq i8 %31, 2
  br i1 %cmp3.i, label %is_rndis.exit, label %land.lhs.true.i.is_novatel_rndis.exit_crit_edge

land.lhs.true.i.is_novatel_rndis.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_novatel_rndis.exit

is_rndis.exit:                                    ; preds = %land.lhs.true.i
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 7
  %32 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterfaceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp6.i.not = icmp eq i8 %33, -1
  br i1 %cmp6.i.not, label %is_rndis.exit.lor.end_crit_edge, label %is_rndis.exit.is_novatel_rndis.exit_crit_edge

is_rndis.exit.is_novatel_rndis.exit_crit_edge:    ; preds = %is_rndis.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_novatel_rndis.exit

is_rndis.exit.lor.end_crit_edge:                  ; preds = %is_rndis.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.lhs.true.i628:                               ; preds = %if.end44
  %bInterfaceSubClass.i626 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 6
  %34 = ptrtoint ptr %bInterfaceSubClass.i626 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bInterfaceSubClass.i626, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp3.i627 = icmp eq i8 %35, 1
  br i1 %cmp3.i627, label %is_activesync.exit, label %land.lhs.true.i628.land.lhs.true.i646_crit_edge

land.lhs.true.i628.land.lhs.true.i646_crit_edge:  ; preds = %land.lhs.true.i628
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i646

is_activesync.exit:                               ; preds = %land.lhs.true.i628
  %bInterfaceProtocol.i629 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 7
  %36 = ptrtoint ptr %bInterfaceProtocol.i629 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bInterfaceProtocol.i629, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp6.i630.not = icmp eq i8 %37, 1
  br i1 %cmp6.i630.not, label %is_activesync.exit.lor.end_crit_edge, label %land.lhs.true.i646thread-pre-split

is_activesync.exit.lor.end_crit_edge:             ; preds = %is_activesync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.lhs.true.i637:                               ; preds = %if.end44
  %bInterfaceSubClass.i635 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 6
  %38 = ptrtoint ptr %bInterfaceSubClass.i635 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bInterfaceSubClass.i635, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp3.i636 = icmp eq i8 %39, 1
  br i1 %cmp3.i636, label %is_wireless_rndis.exit, label %land.lhs.true.i637.is_novatel_rndis.exit_crit_edge

land.lhs.true.i637.is_novatel_rndis.exit_crit_edge: ; preds = %land.lhs.true.i637
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_novatel_rndis.exit

is_wireless_rndis.exit:                           ; preds = %land.lhs.true.i637
  %bInterfaceProtocol.i638 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 7
  %40 = ptrtoint ptr %bInterfaceProtocol.i638 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bInterfaceProtocol.i638, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp6.i639.not = icmp eq i8 %41, 3
  br i1 %cmp6.i639.not, label %is_wireless_rndis.exit.lor.end_crit_edge, label %is_wireless_rndis.exit.is_novatel_rndis.exit_crit_edge

is_wireless_rndis.exit.is_novatel_rndis.exit_crit_edge: ; preds = %is_wireless_rndis.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_novatel_rndis.exit

is_wireless_rndis.exit.lor.end_crit_edge:         ; preds = %is_wireless_rndis.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.lhs.true.i646thread-pre-split:               ; preds = %is_activesync.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %bInterfaceSubClass.i626 to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %bInterfaceSubClass.i626, align 1
  br label %land.lhs.true.i646

land.lhs.true.i646:                               ; preds = %land.lhs.true.i646thread-pre-split, %land.lhs.true.i628.land.lhs.true.i646_crit_edge
  %43 = phi i8 [ %.pr, %land.lhs.true.i646thread-pre-split ], [ %35, %land.lhs.true.i628.land.lhs.true.i646_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp3.i645 = icmp eq i8 %43, 4
  br i1 %cmp3.i645, label %land.rhs.i650, label %land.lhs.true.i646.is_novatel_rndis.exit_crit_edge

land.lhs.true.i646.is_novatel_rndis.exit_crit_edge: ; preds = %land.lhs.true.i646
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_novatel_rndis.exit

land.rhs.i650:                                    ; preds = %land.lhs.true.i646
  call void @__sanitizer_cov_trace_pc() #10
  %bInterfaceProtocol.i647 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 7
  %44 = ptrtoint ptr %bInterfaceProtocol.i647 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bInterfaceProtocol.i647, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp6.i648 = icmp eq i8 %45, 1
  %phi.cast.i649 = zext i1 %cmp6.i648 to i32
  br label %is_novatel_rndis.exit

is_novatel_rndis.exit:                            ; preds = %land.rhs.i650, %land.lhs.true.i646.is_novatel_rndis.exit_crit_edge, %is_wireless_rndis.exit.is_novatel_rndis.exit_crit_edge, %land.lhs.true.i637.is_novatel_rndis.exit_crit_edge, %is_rndis.exit.is_novatel_rndis.exit_crit_edge, %land.lhs.true.i.is_novatel_rndis.exit_crit_edge, %if.end44.is_novatel_rndis.exit_crit_edge
  %46 = phi i32 [ 0, %land.lhs.true.i646.is_novatel_rndis.exit_crit_edge ], [ %phi.cast.i649, %land.rhs.i650 ], [ 0, %land.lhs.true.i.is_novatel_rndis.exit_crit_edge ], [ 0, %is_rndis.exit.is_novatel_rndis.exit_crit_edge ], [ 0, %is_wireless_rndis.exit.is_novatel_rndis.exit_crit_edge ], [ 0, %land.lhs.true.i637.is_novatel_rndis.exit_crit_edge ], [ 0, %if.end44.is_novatel_rndis.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool60 = icmp ne i32 %46, 0
  br label %lor.end

lor.end:                                          ; preds = %is_novatel_rndis.exit, %is_wireless_rndis.exit.lor.end_crit_edge, %is_activesync.exit.lor.end_crit_edge, %is_rndis.exit.lor.end_crit_edge
  %47 = phi i1 [ true, %is_wireless_rndis.exit.lor.end_crit_edge ], [ true, %is_activesync.exit.lor.end_crit_edge ], [ true, %is_rndis.exit.lor.end_crit_edge ], [ %tobool60, %is_novatel_rndis.exit ]
  %48 = call ptr @memset(ptr %data, i32 0, i32 20)
  %control = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %49 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %intf, ptr %control, align 4
  %call61 = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %header, ptr noundef %intf, ptr noundef %buf.2, i32 noundef %len.2) #8
  %50 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %header, align 4
  %u = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %52 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %u, align 4
  %usb_cdc_header_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %header, i32 0, i32 1
  %53 = ptrtoint ptr %usb_cdc_header_desc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_cdc_header_desc, align 4
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %data, align 4
  %usb_cdc_ether_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %header, i32 0, i32 6
  %56 = ptrtoint ptr %usb_cdc_ether_desc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_cdc_ether_desc, align 4
  %ether = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %58 = ptrtoint ptr %ether to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %ether, align 4
  %tobool64.not = icmp eq ptr %51, null
  br i1 %tobool64.not, label %if.then65, label %if.end68

if.then65:                                        ; preds = %lor.end
  br i1 %47, label %if.then65.land.lhs.true178_crit_edge, label %if.then65.do.end454_crit_edge

if.then65.do.end454_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end454

if.then65.land.lhs.true178_crit_edge:             ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true178

if.end68:                                         ; preds = %lor.end
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %bMasterInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %51, i32 0, i32 3
  %61 = ptrtoint ptr %bMasterInterface0 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bMasterInterface0, align 1
  %conv = zext i8 %62 to i32
  %call71 = call ptr @usb_ifnum_to_if(ptr noundef %60, i32 noundef %conv) #8
  %63 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call71, ptr %control, align 4
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %66 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %u, align 4
  %bSlaveInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bSlaveInterface0, align 1
  %conv75 = zext i8 %69 to i32
  %call76 = call ptr @usb_ifnum_to_if(ptr noundef %65, i32 noundef %conv75) #8
  %data77 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %70 = ptrtoint ptr %data77 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call76, ptr %data77, align 4
  %71 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %control, align 4
  %tobool79.not = icmp eq ptr %72, null
  %tobool82.not = icmp eq ptr %call76, null
  %or.cond = select i1 %tobool79.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %do.body84, label %if.end112

do.body84:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then96)) #8
          to label %do.end108 [label %if.then96], !srcloc !114

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %dev97 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %73 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %u, align 4
  %bMasterInterface099 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %bMasterInterface099 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bMasterInterface099, align 1
  %conv100 = zext i8 %76 to i32
  %77 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %control, align 4
  %bSlaveInterface0103 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %74, i32 0, i32 4
  %79 = ptrtoint ptr %bSlaveInterface0103 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bSlaveInterface0103, align 1
  %conv104 = zext i8 %80 to i32
  %81 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data77, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug346, ptr noundef %dev97, ptr noundef nonnull @.str.5, i32 noundef %conv100, ptr noundef %78, i32 noundef %conv104, ptr noundef %82) #8
  br label %do.end108

do.end108:                                        ; preds = %if.then96, %do.body84
  br i1 %47, label %do.end108.land.lhs.true178_crit_edge, label %do.end108.do.end454_crit_edge

do.end108.do.end454_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end454

do.end108.land.lhs.true178_crit_edge:             ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true178

if.end112:                                        ; preds = %if.end68
  %cmp114.not = icmp eq ptr %72, %intf
  br i1 %cmp114.not, label %if.end112.if.end143_crit_edge, label %do.body117

if.end112.if.end143_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

do.body117:                                       ; preds = %if.end112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then129)) #8
          to label %do.end133 [label %if.then129], !srcloc !114

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %dev130 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug347, ptr noundef %dev130, ptr noundef nonnull @.str.6) #8
  br label %do.end133

do.end133:                                        ; preds = %if.then129, %do.body117
  %83 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data77, align 4
  %cmp135 = icmp eq ptr %84, %intf
  br i1 %cmp135, label %if.then137, label %do.end133.do.end454_crit_edge

do.end133.do.end454_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end454

if.then137:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %control, align 4
  %87 = ptrtoint ptr %data77 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %data77, align 4
  store ptr %intf, ptr %control, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then137, %if.end112.if.end143_crit_edge
  %88 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %control, align 4
  %90 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data77, align 4
  %cmp146 = icmp eq ptr %89, %91
  br i1 %cmp146, label %if.end143.skip_crit_edge, label %if.end149

if.end143.skip_crit_edge:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end149:                                        ; preds = %if.end143
  %cur_altsetting151 = getelementptr inbounds %struct.usb_interface, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %cur_altsetting151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur_altsetting151, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %95)
  %cmp154.not = icmp eq i8 %95, 10
  br i1 %cmp154.not, label %if.end149.skip_crit_edge, label %do.body157

if.end149.skip_crit_edge:                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.body157:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then169)) #8
          to label %do.end454 [label %if.then169], !srcloc !114

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #10
  %dev170 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %96 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bInterfaceClass, align 1
  %conv172 = zext i8 %97 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug348, ptr noundef %dev170, ptr noundef nonnull @.str.7, i32 noundef %conv172) #8
  br label %do.end454

skip:                                             ; preds = %if.end149.skip_crit_edge, %if.end143.skip_crit_edge
  br i1 %47, label %skip.land.lhs.true178_crit_edge, label %skip.if.end210_crit_edge

skip.if.end210_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

skip.land.lhs.true178_crit_edge:                  ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true178

land.lhs.true178:                                 ; preds = %skip.land.lhs.true178_crit_edge, %do.end108.land.lhs.true178_crit_edge, %if.then65.land.lhs.true178_crit_edge
  %android_rndis_quirk.0.off0705 = phi i1 [ false, %skip.land.lhs.true178_crit_edge ], [ true, %do.end108.land.lhs.true178_crit_edge ], [ false, %if.then65.land.lhs.true178_crit_edge ]
  %98 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass.i651 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %bInterfaceClass.i651 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bInterfaceClass.i651, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %101)
  %cmp.i652 = icmp eq i8 %101, 2
  br i1 %cmp.i652, label %land.lhs.true.i655, label %land.lhs.true178.if.end210_crit_edge

land.lhs.true178.if.end210_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

land.lhs.true.i655:                               ; preds = %land.lhs.true178
  %bInterfaceSubClass.i653 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %99, i32 0, i32 6
  %102 = ptrtoint ptr %bInterfaceSubClass.i653 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bInterfaceSubClass.i653, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp3.i654 = icmp eq i8 %103, 2
  br i1 %cmp3.i654, label %is_rndis.exit660, label %land.lhs.true.i655.if.end210_crit_edge

land.lhs.true.i655.if.end210_crit_edge:           ; preds = %land.lhs.true.i655
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

is_rndis.exit660:                                 ; preds = %land.lhs.true.i655
  %bInterfaceProtocol.i656 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %99, i32 0, i32 7
  %104 = ptrtoint ptr %bInterfaceProtocol.i656 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bInterfaceProtocol.i656, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp6.i657.not = icmp eq i8 %105, -1
  br i1 %cmp6.i657.not, label %land.lhs.true183, label %is_rndis.exit660.if.end210_crit_edge

is_rndis.exit660.if.end210_crit_edge:             ; preds = %is_rndis.exit660
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

land.lhs.true183:                                 ; preds = %is_rndis.exit660
  %usb_cdc_acm_descriptor = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %header, i32 0, i32 3
  %106 = ptrtoint ptr %usb_cdc_acm_descriptor to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_cdc_acm_descriptor, align 4
  %tobool184.not = icmp eq ptr %107, null
  br i1 %tobool184.not, label %land.lhs.true183.if.end210_crit_edge, label %land.lhs.true185

land.lhs.true183.if.end210_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

land.lhs.true185:                                 ; preds = %land.lhs.true183
  %bmCapabilities = getelementptr inbounds %struct.usb_cdc_acm_descriptor, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %bmCapabilities to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bmCapabilities, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool188.not = icmp eq i8 %109, 0
  br i1 %tobool188.not, label %land.lhs.true185.if.end210_crit_edge, label %do.body190

land.lhs.true185.if.end210_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

do.body190:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then202)) #8
          to label %do.end454 [label %if.then202], !srcloc !114

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #10
  %dev203 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %110 = ptrtoint ptr %usb_cdc_acm_descriptor to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb_cdc_acm_descriptor, align 4
  %bmCapabilities205 = getelementptr inbounds %struct.usb_cdc_acm_descriptor, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %bmCapabilities205 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bmCapabilities205, align 1
  %conv206 = zext i8 %113 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug349, ptr noundef %dev203, ptr noundef nonnull @.str.8, i32 noundef %conv206) #8
  br label %do.end454

if.end210:                                        ; preds = %land.lhs.true185.if.end210_crit_edge, %land.lhs.true183.if.end210_crit_edge, %is_rndis.exit660.if.end210_crit_edge, %land.lhs.true.i655.if.end210_crit_edge, %land.lhs.true178.if.end210_crit_edge, %skip.if.end210_crit_edge
  %android_rndis_quirk.0.off0704 = phi i1 [ %android_rndis_quirk.0.off0705, %land.lhs.true185.if.end210_crit_edge ], [ %android_rndis_quirk.0.off0705, %land.lhs.true183.if.end210_crit_edge ], [ %android_rndis_quirk.0.off0705, %is_rndis.exit660.if.end210_crit_edge ], [ false, %skip.if.end210_crit_edge ], [ %android_rndis_quirk.0.off0705, %land.lhs.true.i655.if.end210_crit_edge ], [ %android_rndis_quirk.0.off0705, %land.lhs.true178.if.end210_crit_edge ]
  %114 = ptrtoint ptr %usb_cdc_ether_desc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb_cdc_ether_desc, align 4
  %tobool212.not = icmp eq ptr %115, null
  br i1 %tobool212.not, label %if.end210.if.end221_crit_edge, label %land.lhs.true213

if.end210.if.end221_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

land.lhs.true213:                                 ; preds = %if.end210
  %116 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ether, align 4
  %wMaxSegmentSize = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %wMaxSegmentSize to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %wMaxSegmentSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool216.not = icmp eq i16 %119, 0
  br i1 %tobool216.not, label %land.lhs.true213.if.end221_crit_edge, label %if.then217

land.lhs.true213.if.end221_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.then217:                                       ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  %120 = call i16 @llvm.bswap.i16(i16 %119)
  %conv220 = zext i16 %120 to i32
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %121 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv220, ptr %hard_mtu, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %land.lhs.true213.if.end221_crit_edge, %if.end210.if.end221_crit_edge
  %usb_cdc_mdlm_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %header, i32 0, i32 8
  %122 = ptrtoint ptr %usb_cdc_mdlm_desc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb_cdc_mdlm_desc, align 4
  %tobool222.not = icmp eq ptr %123, null
  br i1 %tobool222.not, label %if.end221.if.end245_crit_edge, label %land.lhs.true223

if.end221.if.end245_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

land.lhs.true223:                                 ; preds = %if.end221
  %bGUID = getelementptr inbounds %struct.usb_cdc_mdlm_desc, ptr %123, i32 0, i32 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %bGUID, ptr noundef nonnull dereferenceable(16) @mbm_guid, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool226.not = icmp eq i32 %bcmp, 0
  br i1 %tobool226.not, label %land.lhs.true223.if.end245_crit_edge, label %do.body228

land.lhs.true223.if.end245_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

do.body228:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then240)) #8
          to label %do.end454 [label %if.then240], !srcloc !114

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #10
  %dev241 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug350, ptr noundef %dev241, ptr noundef nonnull @.str.9) #8
  br label %do.end454

if.end245:                                        ; preds = %land.lhs.true223.if.end245_crit_edge, %if.end221.if.end245_crit_edge
  %usb_cdc_mdlm_detail_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %header, i32 0, i32 9
  %124 = ptrtoint ptr %usb_cdc_mdlm_detail_desc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usb_cdc_mdlm_detail_desc, align 4
  %tobool246.not = icmp eq ptr %125, null
  br i1 %tobool246.not, label %if.end245.if.end270_crit_edge, label %land.lhs.true247

if.end245.if.end270_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end270

land.lhs.true247:                                 ; preds = %if.end245
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %127)
  %cmp250 = icmp ult i8 %127, 5
  br i1 %cmp250, label %do.body253, label %land.lhs.true247.if.end270_crit_edge

land.lhs.true247.if.end270_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end270

do.body253:                                       ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then265)) #8
          to label %do.end454 [label %if.then265], !srcloc !114

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #10
  %dev266 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug351, ptr noundef %dev266, ptr noundef nonnull @.str.10) #8
  br label %do.end454

if.end270:                                        ; preds = %land.lhs.true247.if.end270_crit_edge, %if.end245.if.end270_crit_edge
  br i1 %47, label %land.lhs.true272, label %if.else315.thread

land.lhs.true272:                                 ; preds = %if.end270
  %128 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %u, align 4
  %tobool274.not = icmp eq ptr %129, null
  %brmerge = or i1 %android_rndis_quirk.0.off0704, %tobool274.not
  br i1 %brmerge, label %if.then278, label %if.else315

if.then278:                                       ; preds = %land.lhs.true272
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  %call280 = call ptr @usb_ifnum_to_if(ptr noundef %131, i32 noundef 0) #8
  %132 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call280, ptr %control, align 4
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %call283 = call ptr @usb_ifnum_to_if(ptr noundef %134, i32 noundef 1) #8
  %data284 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %135 = ptrtoint ptr %data284 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call283, ptr %data284, align 4
  %136 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %control, align 4
  %tobool286.not = icmp ne ptr %137, null
  %tobool289.not = icmp ne ptr %call283, null
  %or.cond589 = select i1 %tobool286.not, i1 %tobool289.not, i1 false
  %cmp292.not = icmp eq ptr %137, %intf
  %or.cond590 = and i1 %cmp292.not, %or.cond589
  br i1 %or.cond590, label %if.then278.if.end350_crit_edge, label %do.body295

if.then278.if.end350_crit_edge:                   ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end350

do.body295:                                       ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then307)) #8
          to label %do.end454 [label %if.then307], !srcloc !114

if.then307:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #10
  %dev308 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %138 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %control, align 4
  %140 = ptrtoint ptr %data284 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data284, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug352, ptr noundef %dev308, ptr noundef nonnull @.str.11, ptr noundef %139, ptr noundef %141) #8
  br label %do.end454

if.else315:                                       ; preds = %land.lhs.true272
  %142 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data, align 4
  %tobool317.not = icmp eq ptr %143, null
  br i1 %tobool317.not, label %if.else315.do.body324_crit_edge, label %if.else315.if.end350_crit_edge

if.else315.if.end350_crit_edge:                   ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end350

if.else315.do.body324_crit_edge:                  ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body324

if.else315.thread:                                ; preds = %if.end270
  %144 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data, align 4
  %tobool317.not711 = icmp eq ptr %145, null
  br i1 %tobool317.not711, label %if.else315.thread.do.body324_crit_edge, label %land.lhs.true320

if.else315.thread.do.body324_crit_edge:           ; preds = %if.else315.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body324

land.lhs.true320:                                 ; preds = %if.else315.thread
  %146 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ether, align 4
  %tobool322.not = icmp eq ptr %147, null
  br i1 %tobool322.not, label %land.lhs.true320.do.body324_crit_edge, label %land.lhs.true320.if.end350_crit_edge

land.lhs.true320.if.end350_crit_edge:             ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end350

land.lhs.true320.do.body324_crit_edge:            ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body324

do.body324:                                       ; preds = %land.lhs.true320.do.body324_crit_edge, %if.else315.thread.do.body324_crit_edge, %if.else315.do.body324_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then336)) #8
          to label %do.end454 [label %if.then336], !srcloc !114

if.then336:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #10
  %dev337 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 4
  %tobool339.not = icmp eq ptr %149, null
  %cond = select i1 %tobool339.not, ptr @.str.14, ptr @.str.13
  %150 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %u, align 4
  %tobool341.not = icmp eq ptr %151, null
  %cond342 = select i1 %tobool341.not, ptr @.str.15, ptr @.str.13
  %152 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ether, align 4
  %tobool344.not = icmp eq ptr %153, null
  %cond345 = select i1 %tobool344.not, ptr @.str.16, ptr @.str.13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug353, ptr noundef %dev337, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond, ptr noundef nonnull %cond342, ptr noundef nonnull %cond345) #8
  br label %do.end454

if.end350:                                        ; preds = %land.lhs.true320.if.end350_crit_edge, %if.else315.if.end350_crit_edge, %if.then278.if.end350_crit_edge
  %data351 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %154 = ptrtoint ptr %data351 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data351, align 4
  %156 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %control, align 4
  %cmp353.not = icmp eq ptr %155, %157
  br i1 %cmp353.not, label %if.end350.if.end362_crit_edge, label %if.then355

if.end350.if.end362_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end362

if.then355:                                       ; preds = %if.end350
  %call357 = call i32 @usb_driver_claim_interface(ptr noundef %add.ptr.i, ptr noundef %155, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %cmp358 = icmp slt i32 %call357, 0
  br i1 %cmp358, label %if.then355.cleanup_crit_edge, label %if.then355.if.end362_crit_edge

if.then355.if.end362_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end362

if.then355.cleanup_crit_edge:                     ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end362:                                        ; preds = %if.then355.if.end362_crit_edge, %if.end350.if.end362_crit_edge
  %158 = ptrtoint ptr %data351 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data351, align 4
  %call364 = call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %159) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %cmp365 = icmp slt i32 %call364, 0
  %160 = ptrtoint ptr %data351 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data351, align 4
  br i1 %cmp365, label %if.then367, label %if.end376

if.then367:                                       ; preds = %if.end362
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %161, i32 0, i32 7, i32 8
  %162 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %driver_data.i.i, align 4
  %163 = ptrtoint ptr %data351 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %data351, align 4
  %165 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %control, align 4
  %cmp371.not = icmp eq ptr %164, %166
  br i1 %cmp371.not, label %if.then367.cleanup_crit_edge, label %if.then373

if.then367.cleanup_crit_edge:                     ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then373:                                       ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #10
  call void @usb_driver_release_interface(ptr noundef %add.ptr.i, ptr noundef %164) #8
  br label %cleanup

if.end376:                                        ; preds = %if.end362
  %167 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %control, align 4
  %cmp379.not = icmp eq ptr %161, %168
  br i1 %cmp379.not, label %if.end376.if.end383_crit_edge, label %if.then381

if.end376.if.end383_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end383

if.then381:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  %status382 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %169 = ptrtoint ptr %status382 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %status382, align 4
  br label %if.end383

if.end383:                                        ; preds = %if.then381, %if.end376.if.end383_crit_edge
  %cur_altsetting385 = getelementptr inbounds %struct.usb_interface, ptr %168, i32 0, i32 1
  %170 = ptrtoint ptr %cur_altsetting385 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cur_altsetting385, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %173)
  %cmp388 = icmp eq i8 %173, 1
  br i1 %cmp388, label %if.then390, label %if.end383.if.end426_crit_edge

if.end383.if.end426_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end426

if.then390:                                       ; preds = %if.end383
  %endpoint394 = getelementptr inbounds %struct.usb_host_interface, ptr %171, i32 0, i32 3
  %174 = ptrtoint ptr %endpoint394 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %endpoint394, align 4
  %status395 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %176 = ptrtoint ptr %status395 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %status395, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %175, i32 0, i32 3
  %177 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bmAttributes.i.i, align 1
  %179 = and i8 %178, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %179)
  %cmp.i.not.i = icmp eq i8 %179, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.then390.do.body407_crit_edge

if.then390.do.body407_crit_edge:                  ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body407

usb_endpoint_is_int_in.exit:                      ; preds = %if.then390
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %175, i32 0, i32 2
  %180 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %181)
  %tobool399.not = icmp sgt i8 %181, -1
  br i1 %tobool399.not, label %usb_endpoint_is_int_in.exit.do.body407_crit_edge, label %lor.lhs.false400

usb_endpoint_is_int_in.exit.do.body407_crit_edge: ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body407

lor.lhs.false400:                                 ; preds = %usb_endpoint_is_int_in.exit
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %175, i32 0, i32 4
  %182 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %wMaxPacketSize, align 1
  %184 = call i16 @llvm.bswap.i16(i16 %183)
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %184)
  %cmp402 = icmp ult i16 %184, 8
  br i1 %cmp402, label %lor.lhs.false400.do.body407_crit_edge, label %lor.lhs.false404

lor.lhs.false400.do.body407_crit_edge:            ; preds = %lor.lhs.false400
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body407

lor.lhs.false404:                                 ; preds = %lor.lhs.false400
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %175, i32 0, i32 5
  %185 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %bInterval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool405.not = icmp eq i8 %186, 0
  br i1 %tobool405.not, label %lor.lhs.false404.do.body407_crit_edge, label %lor.lhs.false404.if.end426_crit_edge

lor.lhs.false404.if.end426_crit_edge:             ; preds = %lor.lhs.false404
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end426

lor.lhs.false404.do.body407_crit_edge:            ; preds = %lor.lhs.false404
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body407

do.body407:                                       ; preds = %lor.lhs.false404.do.body407_crit_edge, %lor.lhs.false400.do.body407_crit_edge, %usb_endpoint_is_int_in.exit.do.body407_crit_edge, %if.then390.do.body407_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then419)) #8
          to label %do.end423 [label %if.then419], !srcloc !114

if.then419:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #10
  %dev420 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug354, ptr noundef %dev420, ptr noundef nonnull @.str.17) #8
  br label %do.end423

do.end423:                                        ; preds = %if.then419, %do.body407
  %187 = ptrtoint ptr %status395 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %status395, align 4
  br label %if.end426

if.end426:                                        ; preds = %do.end423, %lor.lhs.false404.if.end426_crit_edge, %if.end383.if.end426_crit_edge
  br i1 %47, label %land.lhs.true428, label %if.end426.if.end451_crit_edge

if.end426.if.end451_crit_edge:                    ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end451

land.lhs.true428:                                 ; preds = %if.end426
  %status429 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %188 = ptrtoint ptr %status429 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %status429, align 4
  %tobool430.not = icmp eq ptr %189, null
  br i1 %tobool430.not, label %do.body432, label %land.lhs.true428.if.end451_crit_edge

land.lhs.true428.if.end451_crit_edge:             ; preds = %land.lhs.true428
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end451

do.body432:                                       ; preds = %land.lhs.true428
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_generic_cdc_bind, %if.then444)) #8
          to label %do.end448 [label %if.then444], !srcloc !114

if.then444:                                       ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #10
  %dev445 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug355, ptr noundef %dev445, ptr noundef nonnull @.str.18) #8
  br label %do.end448

do.end448:                                        ; preds = %if.then444, %do.body432
  %190 = ptrtoint ptr %data351 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %data351, align 4
  %driver_data.i.i662 = getelementptr inbounds %struct.usb_interface, ptr %191, i32 0, i32 7, i32 8
  %192 = ptrtoint ptr %driver_data.i.i662 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %driver_data.i.i662, align 4
  %193 = load ptr, ptr %data351, align 4
  call void @usb_driver_release_interface(ptr noundef %add.ptr.i, ptr noundef %193) #8
  br label %cleanup

if.end451:                                        ; preds = %land.lhs.true428.if.end451_crit_edge, %if.end426.if.end451_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %194 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %net, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %195, i32 0, i32 44
  %196 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @cdc_ether_ethtool_ops, ptr %ethtool_ops, align 16
  br label %cleanup

do.end454:                                        ; preds = %if.then336, %do.body324, %if.then307, %do.body295, %if.then265, %do.body253, %if.then240, %do.body228, %if.then202, %do.body190, %if.then169, %do.body157, %do.end133.do.end454_crit_edge, %do.end108.do.end454_crit_edge, %if.then65.do.end454_crit_edge
  %197 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev, align 4
  %dev456 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev456, ptr noundef nonnull @.str.19) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end454, %if.end451, %do.end448, %if.then373, %if.then367.cleanup_crit_edge, %if.then355.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end454 ], [ 0, %if.end451 ], [ -19, %do.end448 ], [ %call357, %if.then355.cleanup_crit_edge ], [ %call364, %if.then373 ], [ %call364, %if.then367.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %header) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbnet_ether_cdc_bind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %dev, ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.bail_out_crit_edge, label %if.end

entry.bail_out_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail_out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net1.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i16 12, i16 13
  %count.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %and5.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool6.not.i, i1 false
  %6 = or i16 %spec.select.i, 2
  %cdc_filter.1.i = select i1 %or.cond.i, i16 %spec.select.i, i16 %6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or13.i = or i32 %shl.i.i, -2147483648
  %intf.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv14.i = zext i8 %16 to i16
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or13.i, i8 noundef zeroext 67, i8 noundef zeroext 33, i16 noundef zeroext %cdc_filter.1.i, i16 noundef zeroext %conv14.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %bail_out

bail_out:                                         ; preds = %if.end, %entry.bail_out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbnet_cdc_unbind(ptr nocapture noundef %dev, ptr noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -96
  %data1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %control = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp ne ptr %5, %intf
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp3, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %cmp10 = icmp ne ptr %3, %intf
  %tobool13.not = icmp eq ptr %5, null
  %or.cond38 = select i1 %cmp10, i1 true, i1 %tobool13.not
  br i1 %or.cond38, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %3, %if.end.cleanup.sink.split_crit_edge ], [ %5, %if.else.cleanup.sink.split_crit_edge ]
  %data1.sink39 = phi ptr [ %data1, %if.end.cleanup.sink.split_crit_edge ], [ %control, %if.else.cleanup.sink.split_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %.sink, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %data1.sink39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1.sink39, align 4
  tail call void @usb_driver_release_interface(ptr noundef %add.ptr.i, ptr noundef %8) #8
  %9 = ptrtoint ptr %data1.sink39 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %data1.sink39, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbnet_cdc_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 38
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %transfer_buffer3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer3, align 4
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %tx_speed.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %tx_speed.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_speed.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %rx_speed.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 26
  %11 = ptrtoint ptr %rx_speed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_speed.i, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNotificationType, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %13, label %sw.default [
    i8 0, label %do.body
    i8 42, label %do.body25
  ]

do.body:                                          ; preds = %if.end2
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end17_crit_edge, label %do.body6

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_cdc_status.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_cdc_status, %if.then11)) #8
          to label %do.end17 [label %if.then11], !srcloc !114

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %wValue = getelementptr inbounds %struct.usb_cdc_notification, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool13.not = icmp eq i16 %20, 0
  %cond = select i1 %tobool13.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @usbnet_cdc_status.__UNIQUE_ID_ddebug356, ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %do.body6, %do.body.do.end17_crit_edge
  %wValue18 = getelementptr inbounds %struct.usb_cdc_notification, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %wValue18 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wValue18, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool19 = icmp ne i16 %22, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool19, i1 noundef zeroext false) #8
  br label %cleanup

do.body25:                                        ; preds = %if.end2
  %msg_enable26 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %23 = ptrtoint ptr %msg_enable26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable26, align 4
  %and27 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body25.do.end50_crit_edge, label %do.body30

do.body25.do.end50_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.body30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_cdc_status.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_cdc_status, %if.then42)) #8
          to label %do.end50 [label %if.then42], !srcloc !114

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %net43 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %25 = ptrtoint ptr %net43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net43, align 4
  %27 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @usbnet_cdc_status.__UNIQUE_ID_ddebug357, ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef %28) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then42, %do.body30, %do.body25.do.end50_crit_edge
  %29 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp52.not = icmp eq i32 %30, 16
  br i1 %cmp52.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #8
  br label %cleanup

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.usb_cdc_notification, ptr %3, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %tx_speed.i80 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 27
  %34 = ptrtoint ptr %tx_speed.i80 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tx_speed.i80, align 4
  %arrayidx1.i81 = getelementptr %struct.usb_cdc_notification, ptr %3, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx1.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i81, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %rx_speed.i82 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 26
  %38 = ptrtoint ptr %rx_speed.i82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rx_speed.i82, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %13 to i32
  %net57 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %39 = ptrtoint ptr %net57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net57, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.27, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else, %if.then54, %do.end17, %if.then1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbnet_cdc_bind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %dev, ptr noundef %intf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %net1.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i16 12, i16 13
  %count.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  %and5.i.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool6.not.i.i, i1 false
  %6 = or i16 %spec.select.i.i, 2
  %cdc_filter.1.i.i = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or13.i.i = or i32 %shl.i.i.i, -2147483648
  %intf.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i.i, align 4
  %cur_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cur_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_altsetting.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv14.i.i = zext i8 %16 to i16
  %call15.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or13.i.i, i8 noundef zeroext 67, i8 noundef zeroext 33, i16 noundef zeroext %cdc_filter.1.i.i, i16 noundef zeroext %conv14.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %ether = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %17 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ether, align 4
  %iMACAddress = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %iMACAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %iMACAddress, align 1
  %conv = zext i8 %20 to i32
  %call1 = tail call i32 @usbnet_get_ethernet_addr(ptr noundef %dev, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data5 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %21 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data5, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data.i.i, align 4
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %24 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 -96
  %26 = load ptr, ptr %data5, align 4
  tail call void @usb_driver_release_interface(ptr noundef %add.ptr.i, ptr noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_ethernet_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cdc_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdc_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @cdc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_internal(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_manage_power(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbnet_cdc_zte_bind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbnet_cdc_bind(ptr noundef %dev, ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #8
  %7 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr.i, align 1
  %10 = and i8 %9, -4
  %11 = or i8 %10, 2
  store i8 %11, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #8
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 55
  %12 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbnet_cdc_zte_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNotificationType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.not = icmp eq i8 %5, 0
  br i1 %cmp1.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usbnet_cdc_status(ptr noundef %dev, ptr noundef %urb)
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.body6

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbnet_cdc_zte_status.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbnet_cdc_zte_status, %if.then10)) #8
          to label %do.end16 [label %if.then10], !srcloc !114

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %wValue = getelementptr inbounds %struct.usb_cdc_notification, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool12.not = icmp eq i16 %11, 0
  %cond = select i1 %tobool12.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @usbnet_cdc_zte_status.__UNIQUE_ID_ddebug359, ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %do.body6, %do.body.do.end16_crit_edge
  %wValue17 = getelementptr inbounds %struct.usb_cdc_notification, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %wValue17 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wValue17, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool19.not = icmp eq i16 %13, 0
  br i1 %tobool19.not, label %do.end16.if.end25_crit_edge, label %land.lhs.true

do.end16.if.end25_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %do.end16
  %net20 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %14 = ptrtoint ptr %net20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net20, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then23, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_off(ptr noundef %15) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true.if.end25_crit_edge, %do.end16.if.end25_crit_edge
  %19 = ptrtoint ptr %wValue17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wValue17, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool27 = icmp ne i16 %20, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool27, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbnet_cdc_zte_rx_fixup(ptr nocapture noundef readonly %dev, ptr nocapture noundef %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp = icmp ult i32 %1, 14
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i, align 2
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65, !66, !68, !70, !72, !74, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__ksymtab_usbnet_cdc_update_filter, !1, !"__ksymtab_usbnet_cdc_update_filter", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/cdc_ether.c", i32 93, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/cdc_ether.c", i32 136, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug344, !3, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/cdc_ether.c", i32 151, i32 4}
!10 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug345, !9, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/cdc_ether.c", i32 184, i32 3}
!13 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug346, !12, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/usb/cdc_ether.c", i32 198, i32 3}
!16 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug347, !15, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/cdc_ether.c", i32 216, i32 3}
!19 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug348, !18, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/cdc_ether.c", i32 230, i32 3}
!22 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug349, !21, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/cdc_ether.c", i32 245, i32 3}
!25 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug350, !24, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/cdc_ether.c", i32 252, i32 3}
!28 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug351, !27, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/cdc_ether.c", i32 270, i32 4}
!31 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug352, !30, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/cdc_ether.c", i32 278, i32 3}
!34 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug353, !33, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/cdc_ether.c", i32 314, i32 4}
!41 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug354, !40, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/cdc_ether.c", i32 319, i32 3}
!44 = !{ptr @usbnet_generic_cdc_bind.__UNIQUE_ID_ddebug355, !43, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/cdc_ether.c", i32 331, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @usbnet_generic_cdc_bind._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @usbnet_generic_cdc_bind._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_usbnet_generic_cdc_bind, !52, !"__ksymtab_usbnet_generic_cdc_bind", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/cdc_ether.c", i32 334, i32 1}
!53 = !{ptr @__ksymtab_usbnet_ether_cdc_bind, !54, !"__ksymtab_usbnet_ether_cdc_bind", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/cdc_ether.c", i32 358, i32 1}
!55 = !{ptr @__ksymtab_usbnet_cdc_unbind, !56, !"__ksymtab_usbnet_cdc_unbind", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/cdc_ether.c", i32 385, i32 1}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/cdc_ether.c", i32 419, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @usbnet_cdc_status.__UNIQUE_ID_ddebug356, !58, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!61 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/cdc_ether.c", i32 424, i32 3}
!65 = !{ptr @usbnet_cdc_status.__UNIQUE_ID_ddebug357, !64, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/cdc_ether.c", i32 435, i32 24}
!68 = !{ptr @__ksymtab_usbnet_cdc_status, !69, !"__ksymtab_usbnet_cdc_status", i1 false, i1 false}
!69 = !{!"../drivers/net/usb/cdc_ether.c", i32 440, i32 1}
!70 = !{ptr @__ksymtab_usbnet_cdc_bind, !71, !"__ksymtab_usbnet_cdc_bind", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/cdc_ether.c", i32 463, i32 1}
!72 = !{ptr @__initcall__kmod_cdc_ether__360_1033_cdc_driver_init6, !73, !"__initcall__kmod_cdc_ether__360_1033_cdc_driver_init6", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/cdc_ether.c", i32 1033, i32 1}
!74 = !{ptr @__exitcall_cdc_driver_exit, !73, !"__exitcall_cdc_driver_exit", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_author361, !76, !"__UNIQUE_ID_author361", i1 false, i1 false}
!76 = !{!"../drivers/net/usb/cdc_ether.c", i32 1035, i32 1}
!77 = !{ptr @__UNIQUE_ID_description362, !78, !"__UNIQUE_ID_description362", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/cdc_ether.c", i32 1036, i32 1}
!79 = !{ptr @__UNIQUE_ID_file363, !80, !"__UNIQUE_ID_file363", i1 false, i1 false}
!80 = !{!"../drivers/net/usb/cdc_ether.c", i32 1037, i32 1}
!81 = !{ptr @__UNIQUE_ID_license364, !80, !"__UNIQUE_ID_license364", i1 false, i1 false}
!82 = !{ptr @mbm_guid, !83, !"mbm_guid", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/cdc_ether.c", i32 61, i32 17}
!84 = !{ptr @cdc_ether_ethtool_ops, !85, !"cdc_ether_ethtool_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/cdc_ether.c", i32 96, i32 33}
!86 = !{ptr @cdc_driver, !87, !"cdc_driver", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/cdc_ether.c", i32 1021, i32 26}
!88 = !{ptr @products, !89, !"products", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/cdc_ether.c", i32 572, i32 35}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/usb/cdc_ether.c", i32 545, i32 17}
!92 = !{ptr @wwan_info, !93, !"wwan_info", i1 false, i1 false}
!93 = !{!"../drivers/net/usb/cdc_ether.c", i32 544, i32 33}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/usb/cdc_ether.c", i32 534, i32 17}
!96 = !{ptr @zte_cdc_info, !97, !"zte_cdc_info", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/cdc_ether.c", i32 533, i32 33}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/cdc_ether.c", i32 513, i32 2}
!100 = !{ptr @usbnet_cdc_zte_status.__UNIQUE_ID_ddebug359, !99, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/usb/cdc_ether.c", i32 524, i32 17}
!103 = !{ptr @cdc_info, !104, !"cdc_info", i1 false, i1 false}
!104 = !{!"../drivers/net/usb/cdc_ether.c", i32 523, i32 33}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148982388, i64 2148982393, i64 2148982406, i64 2148982450, i64 2148982484, i64 2148982505}
