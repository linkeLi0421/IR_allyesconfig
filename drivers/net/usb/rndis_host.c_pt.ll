; ModuleID = '/llk/IR_all_yes/drivers/net/usb/rndis_host.c_pt.bc'
source_filename = "../drivers/net/usb/rndis_host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rndis_status\22, \22a\22\09"
module asm "\09.weak\09__crc_rndis_status\09\09\09\09"
module asm "\09.long\09__crc_rndis_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_status:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_status\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rndis_command\22, \22a\22\09"
module asm "\09.weak\09__crc_rndis_command\09\09\09\09"
module asm "\09.long\09__crc_rndis_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_command:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_command\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+generic_rndis_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_rndis_bind\09\09\09\09"
module asm "\09.long\09__crc_generic_rndis_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_rndis_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_rndis_bind\22\09\09\09\09\09"
module asm "__kstrtabns_generic_rndis_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rndis_unbind\22, \22a\22\09"
module asm "\09.weak\09__crc_rndis_unbind\09\09\09\09"
module asm "\09.long\09__crc_rndis_unbind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rndis_rx_fixup\22, \22a\22\09"
module asm "\09.weak\09__crc_rndis_rx_fixup\09\09\09\09"
module asm "\09.long\09__crc_rndis_rx_fixup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_rx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_rx_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_rx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rndis_tx_fixup\22, \22a\22\09"
module asm "\09.weak\09__crc_rndis_tx_fixup\09\09\09\09"
module asm "\09.long\09__crc_rndis_tx_fixup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_tx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_tx_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_tx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
%struct.rndis_msg_hdr = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.rndis_indicate = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_init = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.rndis_init_c = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_query_c = type { i32, i32, i32, i32, i32, i32 }
%struct.rndis_halt = type { i32, i32, i32 }
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
%struct.rndis_data_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@rndis_status.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rndis_host\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rndis_status\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/usb/rndis_host.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rndis status urb, len %d stat %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_rndis_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_status = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_status to i32), ptr @__kstrtab_rndis_status, ptr @__kstrtabns_rndis_status }, section "___ksymtab_gpl+rndis_status", align 4
@rndis_command.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_command\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rndis reply status %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@rndis_command.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rndis reply id %d expected %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rndis_command.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rndis keepalive err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rndis_command.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unexpected rndis msg %08x len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rndis_command.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rndis response error, code %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rndis_command.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rndis response timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_rndis_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_command = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_command to i32), ptr @__kstrtab_rndis_command, ptr @__kstrtabns_rndis_command }, section "___ksymtab_gpl+rndis_command", align 4
@generic_rndis_bind.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"generic_rndis_bind\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev->maxpacket can't be 0\0A\00", [37 x i8] zeroinitializer }, align 32
@rndis_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 353, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RNDIS init failed, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry_ptr = internal global ptr @generic_rndis_bind._entry, section ".printk_index", align 4
@generic_rndis_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 361, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dev can't take %u byte packets (max %u)\0A\00", [55 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry_ptr.18 = internal global ptr @generic_rndis_bind._entry.16, section ".printk_index", align 4
@generic_rndis_bind._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 368, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"dev can't take %u byte packets (max %u), adjusting MTU to %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry_ptr.22 = internal global ptr @generic_rndis_bind._entry.19, section ".printk_index", align 4
@generic_rndis_bind.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.23, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hard mtu %u (%u from dev), rx buflen %zu, align %d\0A\00", [44 x i8] zeroinitializer }, align 32
@generic_rndis_bind.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.24, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"driver requires wireless physical medium, but device is not\0A\00", [35 x i8] zeroinitializer }, align 32
@generic_rndis_bind.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.25, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"driver requires non-wireless physical medium, but device is wireless.\0A\00", [57 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.2, i32 417, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rndis get ethaddr, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry_ptr.28 = internal global ptr @generic_rndis_bind._entry.26, section ".printk_index", align 4
@generic_rndis_bind._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.11, ptr @.str.2, i32 437, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rndis set packet filter, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@generic_rndis_bind._entry_ptr.31 = internal global ptr @generic_rndis_bind._entry.29, section ".printk_index", align 4
@__kstrtab_generic_rndis_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_rndis_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_rndis_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_rndis_bind to i32), ptr @__kstrtab_generic_rndis_bind, ptr @__kstrtabns_generic_rndis_bind }, section "___ksymtab_gpl+generic_rndis_bind", align 4
@__kstrtab_rndis_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_unbind to i32), ptr @__kstrtab_rndis_unbind, ptr @__kstrtabns_rndis_unbind }, section "___ksymtab_gpl+rndis_unbind", align 4
@rndis_rx_fixup.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rndis_rx_fixup\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad rndis message %d/%d/%d/%d, len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_rndis_rx_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_rx_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_rx_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_rx_fixup to i32), ptr @__kstrtab_rndis_rx_fixup, ptr @__kstrtabns_rndis_rx_fixup }, section "___ksymtab_gpl+rndis_rx_fixup", align 4
@__kstrtab_rndis_tx_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_tx_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_tx_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_tx_fixup to i32), ptr @__kstrtab_rndis_tx_fixup, ptr @__kstrtabns_rndis_tx_fixup }, section "___ksymtab_gpl+rndis_tx_fixup", align 4
@__initcall__kmod_rndis_host__356_647_rndis_driver_init6 = internal global ptr @rndis_driver_init, section ".initcall6.init", align 4
@rndis_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rndis_driver_exit = internal global ptr @rndis_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author357 = internal constant [33 x i8] c"rndis_host.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [50 x i8] c"rndis_host.description=USB Host side RNDIS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [43 x i8] c"rndis_host.file=drivers/net/usb/rndis_host\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [23 x i8] c"rndis_host.license=GPL\00", section ".modinfo", align 1
@rndis_msg_indicate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 70, ptr @.str.36, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rndis media connect\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rndis_msg_indicate\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rndis_msg_indicate._entry_ptr = internal global ptr @rndis_msg_indicate._entry, section ".printk_index", align 4
@rndis_msg_indicate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 73, ptr @.str.36, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rndis media disconnect\0A\00", [40 x i8] zeroinitializer }, align 32
@rndis_msg_indicate._entry_ptr.39 = internal global ptr @rndis_msg_indicate._entry.37, section ".printk_index", align 4
@rndis_msg_indicate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.2, i32 76, ptr @.str.36, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rndis indication: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rndis_msg_indicate._entry_ptr.42 = internal global ptr @rndis_msg_indicate._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@rndis_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 252, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RNDIS_MSG_QUERY(0x%08x) failed, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rndis_query\00", [20 x i8] zeroinitializer }, align 32
@rndis_query._entry_ptr = internal global ptr @rndis_query._entry, section ".printk_index", align 4
@rndis_query._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 272, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"RNDIS_MSG_QUERY(0x%08x) invalid response - off %d len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rndis_query._entry_ptr.48 = internal global ptr @rndis_query._entry.46, section ".printk_index", align 4
@products = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 5680, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @rndis_poll_status_info to i32) }, %struct.usb_device_id { i16 897, i16 9099, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @rndis_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @rndis_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -17, i8 1, i8 1, i8 0, i32 ptrtoint (ptr @rndis_poll_status_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -32, i8 1, i8 3, i8 0, i32 ptrtoint (ptr @rndis_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -17, i8 4, i8 1, i8 0, i32 ptrtoint (ptr @rndis_info to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rndis_poll_status_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.49, i32 4152, ptr @rndis_bind, ptr @rndis_unbind, ptr null, ptr null, ptr null, ptr null, ptr @rndis_status, ptr null, ptr @rndis_rx_fixup, ptr @rndis_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@rndis_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.50, i32 4152, ptr @rndis_bind, ptr @rndis_unbind, ptr null, ptr null, ptr null, ptr null, ptr @rndis_status, ptr null, ptr @rndis_rx_fixup, ptr @rndis_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RNDIS device (poll status before control)\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RNDIS device\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 50331648, i64 100663296]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1073807371, i64 1073807372]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 47, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 162, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 167, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 189, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 195, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 201, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 206, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 338, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"rndis_netdev_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 277, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 353, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 359, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 365, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 374, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 398, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 405, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 417, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 437, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 507, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"rndis_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 637, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 70, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 73, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 76, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1981, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 251, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 270, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 605, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"rndis_poll_status_info\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 592, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant [11 x i8] c"rndis_info\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 582, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 593, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [32 x i8] c"../drivers/net/usb/rndis_host.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 583, i32 17 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__exitcall_rndis_driver_exit, ptr @__initcall__kmod_rndis_host__356_647_rndis_driver_init6, ptr @__ksymtab_generic_rndis_bind, ptr @__ksymtab_rndis_command, ptr @__ksymtab_rndis_rx_fixup, ptr @__ksymtab_rndis_status, ptr @__ksymtab_rndis_tx_fixup, ptr @__ksymtab_rndis_unbind, ptr @generic_rndis_bind._entry, ptr @generic_rndis_bind._entry.16, ptr @generic_rndis_bind._entry.19, ptr @generic_rndis_bind._entry.26, ptr @generic_rndis_bind._entry.29, ptr @generic_rndis_bind._entry_ptr, ptr @generic_rndis_bind._entry_ptr.18, ptr @generic_rndis_bind._entry_ptr.22, ptr @generic_rndis_bind._entry_ptr.28, ptr @generic_rndis_bind._entry_ptr.31, ptr @rndis_driver_exit, ptr @rndis_msg_indicate._entry, ptr @rndis_msg_indicate._entry.37, ptr @rndis_msg_indicate._entry.40, ptr @rndis_msg_indicate._entry_ptr, ptr @rndis_msg_indicate._entry_ptr.39, ptr @rndis_msg_indicate._entry_ptr.42, ptr @rndis_query._entry, ptr @rndis_query._entry.46, ptr @rndis_query._entry_ptr, ptr @rndis_query._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @rndis_netdev_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @rndis_driver, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @products, ptr @rndis_poll_status_info, ptr @rndis_info, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_rndis_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_rndis_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_rndis_bind._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_rndis_bind._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_rndis_bind._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_msg_indicate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_msg_indicate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_msg_indicate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_query._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_poll_status_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rndis_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_status.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_status, %if.then)) #7
          to label %do.end4 [label %if.then], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_status.__UNIQUE_ID_ddebug344, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5) #7
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rndis_command(ptr noundef %dev, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %notification = alloca %struct.usb_cdc_notification, align 8
  %partial = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %notification) #7
  %0 = ptrtoint ptr %notification to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %notification, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %partial) #7
  %1 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %partial, align 4, !annotation !136
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %buf, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then [
    i32 100663296, label %entry.if.end11_crit_edge
    i32 50331648, label %entry.if.end11_crit_edge344
  ]

entry.if.end11_crit_edge344:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xid5 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 22
  %5 = ptrtoint ptr %xid5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xid5, align 4
  %inc = add i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  %spec.select314 = select i1 %tobool6.not, i32 2, i32 %inc
  %spec.select315 = select i1 %tobool6.not, i32 1, i32 %6
  %7 = ptrtoint ptr %xid5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select314, ptr %xid5, align 4
  %request_id10 = getelementptr inbounds %struct.rndis_msg_hdr, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %request_id10 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %spec.select315, ptr %request_id10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge, %entry.if.end11_crit_edge344
  %xid.1 = phi i32 [ %spec.select315, %if.then ], [ 0, %entry.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge344 ]
  %control = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %9 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber, align 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i = shl i32 %18, 8
  %or = or i32 %shl.i, -2147483648
  %conv13 = zext i8 %14 to i16
  %msg_len14 = getelementptr inbounds %struct.rndis_msg_hdr, ptr %buf, i32 0, i32 1
  %19 = ptrtoint ptr %msg_len14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %msg_len14, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %conv15 = trunc i32 %21 to i16
  %call16 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv13, ptr noundef %buf, i16 noundef zeroext %conv15, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xid.1)
  %cmp19 = icmp eq i32 %xid.1, 0
  %spec.select316 = select i1 %cmp17, i1 true, i1 %cmp19, !prof !137
  br i1 %spec.select316, label %if.end11.cleanup_crit_edge, label %if.end28, !prof !137

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end11
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_info, align 4
  %data29 = getelementptr inbounds %struct.driver_info, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data29, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end28.if.end51_crit_edge, label %if.then31

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then31:                                        ; preds = %if.end28
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %status34 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %28 = ptrtoint ptr %status34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %status34, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress, align 2
  %conv36 = zext i8 %31 to i32
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %27, align 8
  %shl.i332 = shl i32 %33, 8
  %shl1.i = shl nuw nsw i32 %conv36, 15
  %or.i = or i32 %shl1.i, %shl.i332
  %or39 = or i32 %or.i, 1073741952
  %call40 = call i32 @usb_interrupt_msg(ptr noundef %27, i32 noundef %or39, ptr noundef nonnull %notification, i32 noundef 8, ptr noundef nonnull %partial, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then31.cleanup_crit_edge, label %if.then31.if.end51_crit_edge, !prof !137

if.then31.if.end51_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.then31.if.end51_crit_edge, %if.end28.if.end51_crit_edge
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %buf, align 1
  %36 = or i32 %35, 128
  %conv62 = trunc i32 %buflen to i16
  %status75 = getelementptr inbounds %struct.rndis_msg_hdr, ptr %buf, i32 0, i32 3
  %request_id76 = getelementptr inbounds %struct.rndis_msg_hdr, ptr %buf, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end223.for.body_crit_edge, %if.end51
  %count.0343 = phi i32 [ 0, %if.end51 ], [ %inc224, %if.end223.for.body_crit_edge ]
  %37 = call ptr @memset(ptr %buf, i32 0, i32 1025)
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i333 = shl i32 %41, 8
  %or60 = or i32 %shl.i333, -2147483520
  %call63 = call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or60, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv13, ptr noundef %buf, i16 noundef zeroext %conv62, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call63)
  %cmp64 = icmp sgt i32 %call63, 7
  br i1 %cmp64, label %if.then72, label %do.body205, !prof !138

if.then72:                                        ; preds = %for.body
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %buf, align 1
  %44 = ptrtoint ptr %msg_len14 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %msg_len14, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %request_id76 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %request_id76, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %36)
  %cmp77 = icmp eq i32 %43, %36
  br i1 %cmp77, label %if.then85, label %if.else, !prof !138

if.then85:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %xid.1)
  %cmp86 = icmp eq i32 %48, %xid.1
  br i1 %cmp86, label %if.then94, label %do.body128, !prof !138

if.then94:                                        ; preds = %if.then85
  %49 = ptrtoint ptr %status75 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %status75, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663424, i32 %36)
  %cmp95 = icmp eq i32 %36, 100663424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp105 = icmp eq i32 %50, 0
  %or.cond = select i1 %cmp95, i1 true, i1 %cmp105
  br i1 %or.cond, label %if.then94.cleanup_crit_edge, label %do.body, !prof !139

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_command.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_command, %if.then123)) #7
          to label %cleanup [label %if.then123], !srcloc !135

if.then123:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %control, align 4
  %dev125 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_command.__UNIQUE_ID_ddebug345, ptr noundef %dev125, ptr noundef nonnull @.str.5, i32 noundef %51) #7
  br label %cleanup

do.body128:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_command.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_command, %if.then140)) #7
          to label %if.end223 [label %if.then140], !srcloc !135

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %control, align 4
  %dev142 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_command.__UNIQUE_ID_ddebug346, ptr noundef %dev142, ptr noundef nonnull @.str.6, i32 noundef %48, i32 noundef %xid.1) #7
  br label %if.end223

if.else:                                          ; preds = %if.then72
  %56 = call i32 @llvm.bswap.i32(i32 %43)
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %56, label %do.body184 [
    i32 7, label %sw.bb
    i32 8, label %sw.bb146
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rndis_msg_indicate(ptr noundef %dev, ptr noundef %buf, i32 noundef %buflen)
  br label %if.end223

sw.bb146:                                         ; preds = %if.else
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 134217856, ptr %buf, align 1
  %59 = ptrtoint ptr %msg_len14 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 268435456, ptr %msg_len14, align 1
  %60 = ptrtoint ptr %status75 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 0, ptr %status75, align 1
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i334 = shl i32 %64, 8
  %or153 = or i32 %shl.i334, -2147483648
  %call155 = call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or153, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv13, ptr noundef %buf, i16 noundef zeroext 16, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %do.body165, label %sw.bb146.if.end223_crit_edge, !prof !137

sw.bb146.if.end223_crit_edge:                     ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end223

do.body165:                                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_command.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_command, %if.then177)) #7
          to label %if.end223 [label %if.then177], !srcloc !135

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %control, align 4
  %dev179 = getelementptr inbounds %struct.usb_interface, ptr %66, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_command.__UNIQUE_ID_ddebug347, ptr noundef %dev179, ptr noundef nonnull @.str.7, i32 noundef %call155) #7
  br label %if.end223

do.body184:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_command.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_command, %if.then196)) #7
          to label %if.end223 [label %if.then196], !srcloc !135

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %control, align 4
  %dev198 = getelementptr inbounds %struct.usb_interface, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %buf, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_command.__UNIQUE_ID_ddebug348, ptr noundef %dev198, ptr noundef nonnull @.str.8, i32 noundef %71, i32 noundef %46) #7
  br label %if.end223

do.body205:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_command.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_command, %if.then217)) #7
          to label %if.end223 [label %if.then217], !srcloc !135

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %control, align 4
  %dev219 = getelementptr inbounds %struct.usb_interface, ptr %73, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_command.__UNIQUE_ID_ddebug349, ptr noundef %dev219, ptr noundef nonnull @.str.9, i32 noundef %call63) #7
  br label %if.end223

if.end223:                                        ; preds = %if.then217, %do.body205, %if.then196, %do.body184, %if.then177, %do.body165, %sw.bb146.if.end223_crit_edge, %sw.bb, %if.then140, %do.body128
  call void @msleep(i32 noundef 40) #7
  %inc224 = add nuw nsw i32 %count.0343, 1
  %exitcond.not = icmp eq i32 %inc224, 10
  br i1 %exitcond.not, label %do.body225, label %if.end223.for.body_crit_edge

if.end223.for.body_crit_edge:                     ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body225:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_command.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_command, %if.then237)) #7
          to label %cleanup [label %if.then237], !srcloc !135

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %control, align 4
  %dev239 = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_command.__UNIQUE_ID_ddebug350, ptr noundef %dev239, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then237, %do.body225, %if.then123, %do.body, %if.then94.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end11.cleanup_crit_edge ], [ %call40, %if.then31.cleanup_crit_edge ], [ 0, %if.then94.cleanup_crit_edge ], [ -47, %if.then123 ], [ -110, %if.then237 ], [ -47, %do.body ], [ -110, %do.body225 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %partial) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %notification) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rndis_msg_indicate(ptr noundef %dev, ptr noundef %msg, i32 noundef %buflen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_info, align 4
  %indication = getelementptr inbounds %struct.driver_info, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %indication to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indication, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %dev, ptr noundef %msg, i32 noundef %buflen) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %status4 = getelementptr inbounds %struct.rndis_indicate, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %status4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %status4, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %8, label %do.end11 [
    i32 1073807371, label %do.end
    i32 1073807372, label %do.end8
  ]

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34) #10
  br label %if.end

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38) #10
  br label %if.end

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %do.end11, %do.end8, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_rndis_bind(ptr noundef %dev, ptr noundef %intf, i32 noundef %flags) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %phym_unspec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net2 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phym_unspec)
  %2 = ptrtoint ptr %phym_unspec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %phym_unspec, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1025) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %dev, ptr noundef %intf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33554432, ptr %call7.i, align 8
  %msg_len = getelementptr inbounds %struct.rndis_init, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 402653184, ptr %msg_len, align 4
  %major_version = getelementptr inbounds %struct.rndis_init, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %major_version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %major_version, align 4
  %minor_version = getelementptr inbounds %struct.rndis_init, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %minor_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %minor_version, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %9, 44
  store i16 %add, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %conv8 = zext i16 %add to i32
  %add9 = add i32 %11, %conv8
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %12 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add9, ptr %hard_mtu, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %out = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %17 = lshr i32 %16, 15
  %and.i = and i32 %17, 15
  %and1.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end5.if.end.i_crit_edge, label %do.end.i, !prof !138

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1981, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end5.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.usb_device, ptr %14, i32 0, i32 22, i32 %and.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool59.not.i = icmp eq ptr %19, null
  br i1 %tobool59.not.i, label %usb_maxpacket.exit.thread, label %usb_maxpacket.exit

usb_maxpacket.exit.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %maxpacket374 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %20 = ptrtoint ptr %maxpacket374 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %maxpacket374, align 4
  br label %do.body

usb_maxpacket.exit:                               ; preds = %if.end.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %23 = and i16 %22, -249
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #7
  %conv11 = zext i16 %24 to i32
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %25 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv11, ptr %maxpacket, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp13 = icmp eq i16 %23, 0
  br i1 %cmp13, label %usb_maxpacket.exit.do.body_crit_edge, label %if.end30

usb_maxpacket.exit.do.body_crit_edge:             ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %usb_maxpacket.exit.do.body_crit_edge, %usb_maxpacket.exit.thread
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.fail_and_release_crit_edge, label %do.body18

do.body.fail_and_release_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_and_release

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_rndis_bind.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_rndis_bind, %if.then24)) #7
          to label %fail_and_release [label %if.then24], !srcloc !135

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @generic_rndis_bind.__UNIQUE_ID_ddebug351, ptr noundef %29, ptr noundef nonnull @.str.12) #7
  br label %fail_and_release

if.end30:                                         ; preds = %usb_maxpacket.exit
  %30 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hard_mtu, align 4
  %add33 = add nuw nsw i32 %conv11, 1
  %add34 = add i32 %add33, %31
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %neg = sub nsw i32 0, %conv11
  %and37 = and i32 %add34, %neg
  %32 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and37, ptr %rx_urb_size, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %and37)
  %max_transfer_size = getelementptr inbounds %struct.rndis_init, ptr %call7.i, i32 0, i32 5
  %34 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_transfer_size, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rndis_netdev_ops, ptr %netdev_ops, align 8
  %call39 = tail call i32 @rndis_command(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end51, label %if.end53, !prof !137

do.end51:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.13, i32 noundef %call39) #10
  br label %fail_and_release

if.end53:                                         ; preds = %if.end30
  %max_transfer_size54 = getelementptr inbounds %struct.rndis_init_c, ptr %call7.i, i32 0, i32 9
  %36 = ptrtoint ptr %max_transfer_size54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_transfer_size54, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hard_mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp56 = icmp ult i32 %38, %40
  br i1 %cmp56, label %if.then58, label %if.end53.do.body85_crit_edge

if.end53.do.body85_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body85

if.then58:                                        ; preds = %if.end53
  %41 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hard_header_len, align 2
  %conv60 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv60)
  %cmp61.not = icmp ugt i32 %38, %conv60
  %dev73 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %cmp61.not, label %do.end72, label %do.end66

do.end66:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.17, i32 noundef %40, i32 noundef %38) #10
  br label %halt_fail_and_release

do.end72:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %sub77 = sub i32 %38, %conv60
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev73, ptr noundef nonnull @.str.20, i32 noundef %40, i32 noundef %38, i32 noundef %sub77) #10
  %43 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %hard_mtu, align 4
  %44 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hard_header_len, align 2
  %conv81 = zext i16 %45 to i32
  %sub82 = sub i32 %38, %conv81
  %46 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub82, ptr %mtu, align 4
  br label %do.body85

do.body85:                                        ; preds = %do.end72, %if.end53.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_rndis_bind.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_rndis_bind, %if.then97)) #7
          to label %do.end103 [label %if.then97], !srcloc !135

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %dev98 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %47 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hard_mtu, align 4
  %49 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_urb_size, align 4
  %packet_alignment = getelementptr inbounds %struct.rndis_init_c, ptr %call7.i, i32 0, i32 10
  %51 = ptrtoint ptr %packet_alignment to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %packet_alignment, align 8
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %shl = shl nuw i32 1, %53
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @generic_rndis_bind.__UNIQUE_ID_ddebug352, ptr noundef %dev98, ptr noundef nonnull @.str.23, i32 noundef %48, i32 noundef %38, i32 noundef %50, i32 noundef %shl) #7
  br label %do.end103

do.end103:                                        ; preds = %if.then97, %do.body85
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %54 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_info, align 4
  %early_init = getelementptr inbounds %struct.driver_info, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %early_init to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %early_init, align 4
  %tobool104.not = icmp eq ptr %57, null
  br i1 %tobool104.not, label %do.end103.if.end111_crit_edge, label %land.lhs.true

do.end103.if.end111_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

land.lhs.true:                                    ; preds = %do.end103
  %call107 = tail call i32 %57(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108.not = icmp eq i32 %call107, 0
  br i1 %cmp108.not, label %land.lhs.true.if.end111_crit_edge, label %land.lhs.true.halt_fail_and_release_crit_edge

land.lhs.true.halt_fail_and_release_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %halt_fail_and_release

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.end111:                                        ; preds = %land.lhs.true.if.end111_crit_edge, %do.end103.if.end111_crit_edge
  %58 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %59 = call ptr @memset(ptr %58, i32 0, i32 24)
  %60 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 67108864, ptr %call7.i, align 8
  %61 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 536870912, ptr %msg_len, align 4
  %62 = ptrtoint ptr %major_version to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 33685760, ptr %major_version, align 4
  %63 = ptrtoint ptr %minor_version to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 67108864, ptr %minor_version, align 8
  %64 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 335544320, ptr %max_transfer_size, align 4
  %call.i = tail call i32 @rndis_command(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef 1025) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i342, label %if.end.i343, !prof !137

do.end.i342:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.44, i32 noundef 66050, i32 noundef %call.i) #10
  br label %if.then116

if.end.i343:                                      ; preds = %if.end111
  %65 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_transfer_size, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  %68 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %minor_version, align 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  %add9.i = add i32 %67, 8
  %add10.i = add i32 %add9.i, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %add10.i)
  %cmp11.i = icmp ult i32 %add10.i, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %69)
  %cmp21.not.i = icmp eq i32 %69, 67108864
  %or.cond = and i1 %cmp21.not.i, %cmp11.i
  br i1 %or.cond, label %rndis_query.exit, label %do.end26.i, !prof !140

do.end26.i:                                       ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #9
  %dev27.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.47, i32 noundef 66050, i32 noundef %67, i32 noundef %70) #10
  br label %if.then116

rndis_query.exit:                                 ; preds = %if.end.i343
  %request_id.i = getelementptr inbounds %struct.rndis_query_c, ptr %call7.i, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %request_id.i, i32 %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp113.not = icmp ne i32 %call.i, 0
  %tobool115.not = icmp eq ptr %add.ptr.i, null
  %or.cond387 = select i1 %cmp113.not, i1 true, i1 %tobool115.not
  br i1 %or.cond387, label %rndis_query.exit.if.then116_crit_edge, label %rndis_query.exit.if.end117_crit_edge

rndis_query.exit.if.end117_crit_edge:             ; preds = %rndis_query.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

rndis_query.exit.if.then116_crit_edge:            ; preds = %rndis_query.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.then116:                                       ; preds = %rndis_query.exit.if.then116_crit_edge, %do.end26.i, %do.end.i342
  %71 = ptrtoint ptr %phym_unspec to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %phym_unspec, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %rndis_query.exit.if.end117_crit_edge
  %phym.1 = phi ptr [ %phym_unspec, %if.then116 ], [ %add.ptr.i, %rndis_query.exit.if.end117_crit_edge ]
  %and118 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end150_crit_edge, label %land.lhs.true120

if.end117.if.end150_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

land.lhs.true120:                                 ; preds = %if.end117
  %72 = ptrtoint ptr %phym.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %phym.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %73)
  %cmp122.not = icmp eq i32 %73, 16777216
  br i1 %cmp122.not, label %land.lhs.true120.if.end150_crit_edge, label %do.body125

land.lhs.true120.if.end150_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

do.body125:                                       ; preds = %land.lhs.true120
  %msg_enable126 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %74 = ptrtoint ptr %msg_enable126 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable126, align 4
  %and127 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body125.halt_fail_and_release_crit_edge, label %do.body130

do.body125.halt_fail_and_release_crit_edge:       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %halt_fail_and_release

do.body130:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_rndis_bind.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_rndis_bind, %if.then142)) #7
          to label %halt_fail_and_release [label %if.then142], !srcloc !135

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @generic_rndis_bind.__UNIQUE_ID_ddebug353, ptr noundef %77, ptr noundef nonnull @.str.24) #7
  br label %halt_fail_and_release

if.end150:                                        ; preds = %land.lhs.true120.if.end150_crit_edge, %if.end117.if.end150_crit_edge
  %and151 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end150.if.end183_crit_edge, label %land.lhs.true153

if.end150.if.end183_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end183

land.lhs.true153:                                 ; preds = %if.end150
  %78 = ptrtoint ptr %phym.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %phym.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %79)
  %cmp155 = icmp eq i32 %79, 16777216
  br i1 %cmp155, label %do.body158, label %land.lhs.true153.if.end183_crit_edge

land.lhs.true153.if.end183_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end183

do.body158:                                       ; preds = %land.lhs.true153
  %msg_enable159 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %80 = ptrtoint ptr %msg_enable159 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable159, align 4
  %and160 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %do.body158.halt_fail_and_release_crit_edge, label %do.body163

do.body158.halt_fail_and_release_crit_edge:       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  br label %halt_fail_and_release

do.body163:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_rndis_bind.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_rndis_bind, %if.then175)) #7
          to label %halt_fail_and_release [label %if.then175], !srcloc !135

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @generic_rndis_bind.__UNIQUE_ID_ddebug354, ptr noundef %83, ptr noundef nonnull @.str.25) #7
  br label %halt_fail_and_release

if.end183:                                        ; preds = %land.lhs.true153.if.end183_crit_edge, %if.end150.if.end183_crit_edge
  %84 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %85 = call ptr @memset(ptr %84, i32 0, i32 68)
  %86 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 67108864, ptr %call7.i, align 8
  %87 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1275068416, ptr %msg_len, align 4
  %88 = ptrtoint ptr %major_version to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 16843009, ptr %major_version, align 4
  %89 = ptrtoint ptr %minor_version to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 805306368, ptr %minor_version, align 8
  %90 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 335544320, ptr %max_transfer_size, align 4
  %call.i349 = tail call i32 @rndis_command(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef 1025) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %cmp.i350 = icmp slt i32 %call.i349, 0
  br i1 %cmp.i350, label %do.end.i352, label %if.end.i356, !prof !137

do.end.i352:                                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i351 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i351, ptr noundef nonnull @.str.44, i32 noundef 16843009, i32 noundef %call.i349) #10
  br label %do.end196

if.end.i356:                                      ; preds = %if.end183
  %91 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_transfer_size, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  %94 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %minor_version, align 8
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  %add9.i353 = add i32 %93, 8
  %add10.i354 = add i32 %add9.i353, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %add10.i354)
  %cmp11.i355 = icmp ult i32 %add10.i354, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %95)
  %cmp21.not.i358 = icmp eq i32 %95, 100663296
  %or.cond388 = and i1 %cmp21.not.i358, %cmp11.i355
  br i1 %or.cond388, label %if.end198, label %do.end26.i365, !prof !140

do.end26.i365:                                    ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #9
  %dev27.i364 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i364, ptr noundef nonnull @.str.47, i32 noundef 16843009, i32 noundef %93, i32 noundef %96) #10
  br label %do.end196

do.end196:                                        ; preds = %do.end26.i365, %do.end.i352
  %retval.0.i366.ph = phi i32 [ -33, %do.end26.i365 ], [ %call.i349, %do.end.i352 ]
  %dev197 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev197, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i366.ph) #10
  br label %halt_fail_and_release

if.end198:                                        ; preds = %if.end.i356
  %request_id.i361 = getelementptr inbounds %struct.rndis_query_c, ptr %call7.i, i32 0, i32 2
  %add.ptr.i362 = getelementptr i8, ptr %request_id.i361, i32 %93
  %97 = ptrtoint ptr %add.ptr.i362 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr.i362, align 1
  %99 = and i8 %98, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool201.not = icmp eq i8 %99, 0
  br i1 %tobool201.not, label %if.else, label %if.then202

if.then202:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #7
  %100 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #7
  %101 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %addr.i, align 1
  %103 = and i8 %102, -4
  %104 = or i8 %103, 2
  store i8 %104, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #7
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 55
  %105 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #7
  br label %if.end203

if.else:                                          ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %add.ptr.i362, i32 noundef 6) #7
  br label %if.end203

if.end203:                                        ; preds = %if.else, %if.then202
  %106 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %107 = call ptr @memset(ptr %106, i32 0, i32 20)
  %108 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 83886080, ptr %call7.i, align 8
  %109 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 536870912, ptr %msg_len, align 4
  %110 = ptrtoint ptr %major_version to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 234946816, ptr %major_version, align 4
  %111 = ptrtoint ptr %minor_version to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 67108864, ptr %minor_version, align 8
  %112 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 335544320, ptr %max_transfer_size, align 4
  %add.ptr = getelementptr i8, ptr %call7.i, i32 28
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 754974720, ptr %add.ptr, align 4
  %call206 = call i32 @rndis_command(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %do.end218, label %if.end203.cleanup.sink.split_crit_edge, !prof !137

if.end203.cleanup.sink.split_crit_edge:           ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end218:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  %dev219 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev219, ptr noundef nonnull @.str.30, i32 noundef %call206) #10
  br label %halt_fail_and_release

halt_fail_and_release:                            ; preds = %do.end218, %do.end196, %if.then175, %do.body163, %do.body158.halt_fail_and_release_crit_edge, %if.then142, %do.body130, %do.body125.halt_fail_and_release_crit_edge, %land.lhs.true.halt_fail_and_release_crit_edge, %do.end66
  %retval1.0 = phi i32 [ -22, %do.end66 ], [ %call39, %land.lhs.true.halt_fail_and_release_crit_edge ], [ %retval.0.i366.ph, %do.end196 ], [ %call206, %do.end218 ], [ -19, %if.then142 ], [ -19, %do.body125.halt_fail_and_release_crit_edge ], [ -19, %if.then175 ], [ -19, %do.body158.halt_fail_and_release_crit_edge ], [ -19, %do.body130 ], [ -19, %do.body163 ]
  %114 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %114, align 8
  %116 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 50331648, ptr %call7.i, align 8
  %117 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 201326592, ptr %msg_len, align 4
  %call223 = call i32 @rndis_command(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef 1025)
  br label %fail_and_release

fail_and_release:                                 ; preds = %halt_fail_and_release, %do.end51, %if.then24, %do.body18, %do.body.fail_and_release_crit_edge
  %retval1.1 = phi i32 [ %call39, %do.end51 ], [ %retval1.0, %halt_fail_and_release ], [ -22, %if.then24 ], [ -22, %do.body.fail_and_release_crit_edge ], [ -22, %do.body18 ]
  %data224 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %118 = ptrtoint ptr %data224 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data224, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %119, i32 0, i32 7, i32 8
  %120 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %driver_data.i.i, align 4
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %121 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %driver.i, align 4
  %add.ptr.i368 = getelementptr i8, ptr %122, i32 -96
  %123 = load ptr, ptr %data224, align 4
  call void @usb_driver_release_interface(ptr noundef %add.ptr.i368, ptr noundef %123) #7
  %124 = ptrtoint ptr %data224 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %data224, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail_and_release, %if.end203.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end203.cleanup.sink.split_crit_edge ], [ %call3, %if.end.cleanup.sink.split_crit_edge ], [ %retval1.1, %fail_and_release ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phym_unspec)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_generic_cdc_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rndis_unbind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1025) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50331648, ptr %call7.i.i, align 8
  %msg_len = getelementptr inbounds %struct.rndis_halt, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 201326592, ptr %msg_len, align 4
  %call1 = tail call i32 @rndis_command(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 1025)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @usbnet_cdc_unbind(ptr noundef %dev, ptr noundef %intf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_unbind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rndis_rx_fixup(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

while.cond.preheader:                             ; preds = %entry
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not112 = icmp eq i32 %7, 0
  br i1 %tobool.not112, label %while.cond.preheader.return_crit_edge, label %while.body.lr.ph, !prof !137

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end65.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %36, %if.end65.while.body_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %10, align 1
  %msg_len6 = getelementptr inbounds %struct.rndis_data_hdr, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %msg_len6 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %msg_len6, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %data_offset7 = getelementptr inbounds %struct.rndis_data_hdr, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %data_offset7 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %data_offset7, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %data_len8 = getelementptr inbounds %struct.rndis_data_hdr, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %data_len8 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data_len8, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %cmp9.not = icmp ne i32 %12, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %15)
  %cmp12 = icmp ult i32 %8, %15
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp12
  br i1 %or.cond, label %while.body.if.then23_crit_edge, label %lor.rhs, !prof !141

while.body.if.then23_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.rhs:                                          ; preds = %while.body
  %add = add i32 %18, 8
  %add14 = add i32 %add, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %15)
  %cmp15 = icmp ugt i32 %add14, %15
  br i1 %cmp15, label %lor.rhs.if.then23_crit_edge, label %if.end40, !prof !137

lor.rhs.if.then23_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %lor.rhs.if.then23_crit_edge, %while.body.if.then23_crit_edge
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 13
  %24 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_frame_errors, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rx_frame_errors, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_rx_fixup.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_rx_fixup, %cleanup.thread103)) #7
          to label %return [label %cleanup.thread103], !srcloc !135

cleanup.thread103:                                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 4
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %10, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_rx_fixup.__UNIQUE_ID_ddebug355, ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef %30, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %32) #7
  br label %return

if.end40:                                         ; preds = %lor.rhs
  %call42 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #7
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %sub = sub i32 %21, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %sub)
  %cmp44 = icmp ult i32 %sub, 45
  br i1 %cmp44, label %if.then52, label %if.end53, !prof !138

if.then52:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %21) #7
  br label %return

if.end53:                                         ; preds = %if.end40
  %call54 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end53.return_crit_edge, label %if.end65, !prof !137

if.end53.return_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end65:                                         ; preds = %if.end53
  %sub66 = add i32 %15, -44
  %call67 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub66) #7
  tail call void @skb_trim(ptr noundef nonnull %call54, i32 noundef %21) #7
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call54) #7
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %if.end65.return_crit_edge, label %if.end65.while.body_crit_edge, !prof !137

if.end65.while.body_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end65.return_crit_edge:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end65.return_crit_edge, %if.end53.return_crit_edge, %if.then52, %cleanup.thread103, %if.then23, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %cleanup.thread103 ], [ 1, %if.then52 ], [ 0, %if.then23 ], [ 1, %while.cond.preheader.return_crit_edge ], [ 1, %if.end65.return_crit_edge ], [ 1, %if.end53.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rndis_tx_fixup(ptr nocapture readnone %dev, ptr noundef %skb, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %skb_cloned.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then_crit_edge, label %skb_cloned.exit.if.end24_crit_edge, !prof !138

skb_cloned.exit.if.end24_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

skb_cloned.exit.if.then_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_cloned.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %sub.ptr.sub.i)
  %cmp = icmp ugt i32 %sub.ptr.sub.i, 43
  br i1 %cmp, label %if.then.fill_crit_edge, label %if.end, !prof !137

if.then.fill_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill

if.end:                                           ; preds = %if.then
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.skb_tailroom.exit_crit_edge

if.end.skb_tailroom.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i65 = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i66 = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i67 = sub i32 %sub.ptr.lhs.cast.i65, %sub.ptr.rhs.cast.i66
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i67, %cond.false.i ], [ 0, %if.end.skb_tailroom.exit_crit_edge ]
  %add = add i32 %cond.i, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %add)
  %cmp14 = icmp ugt i32 %add, 43
  br i1 %cmp14, label %if.then21, label %skb_tailroom.exit.if.end24_crit_edge, !prof !138

skb_tailroom.exit.if.end24_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %10, i32 44
  %17 = call ptr @memmove(ptr %add.ptr, ptr %8, i32 %1)
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %1
  %tail.i69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i69 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %tail.i69, align 8
  br label %fill

if.end24:                                         ; preds = %skb_tailroom.exit.if.end24_crit_edge, %skb_cloned.exit.if.end24_crit_edge
  %call25 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 44, i32 noundef 1, i32 noundef %flags) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.cleanup39_crit_edge, label %if.end24.fill_crit_edge, !prof !137

if.end24.fill_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill

if.end24.cleanup39_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

fill:                                             ; preds = %if.end24.fill_crit_edge, %if.then21, %if.then.fill_crit_edge
  %skb.addr.0 = phi ptr [ %call25, %if.end24.fill_crit_edge ], [ %skb, %if.then21 ], [ %skb, %if.then.fill_crit_edge ]
  %data.i70 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %20 = ptrtoint ptr %data.i70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %21, i32 -44
  store ptr %add.ptr.i71, ptr %data.i70, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %22 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %23, 44
  store i32 %add.i, ptr %len1.i, align 4
  %24 = getelementptr i8, ptr %21, i32 -40
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 16777216, ptr %add.ptr.i71, align 1
  %27 = load i32, ptr %len1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %msg_len = getelementptr i8, ptr %21, i32 -40
  %29 = ptrtoint ptr %msg_len to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %msg_len, align 1
  %data_offset = getelementptr i8, ptr %21, i32 -36
  %30 = ptrtoint ptr %data_offset to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 603979776, ptr %data_offset, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %1)
  %data_len = getelementptr i8, ptr %21, i32 -32
  %32 = ptrtoint ptr %data_len to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %data_len, align 1
  br label %cleanup39

cleanup39:                                        ; preds = %fill, %if.end24.cleanup39_crit_edge
  %retval.0 = phi ptr [ %skb.addr.0, %fill ], [ null, %if.end24.cleanup39_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rndis_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rndis_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @rndis_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_bind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_rndis_bind(ptr noundef %dev, ptr noundef %intf, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72, !73, !75, !77, !79, !80, !82, !84, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/rndis_host.c", i32 47, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rndis_status.__UNIQUE_ID_ddebug344, !1, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!6 = !{ptr @__ksymtab_rndis_status, !7, !"__ksymtab_rndis_status", i1 false, i1 false}
!7 = !{!"../drivers/net/usb/rndis_host.c", i32 52, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/rndis_host.c", i32 162, i32 6}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rndis_command.__UNIQUE_ID_ddebug345, !9, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/usb/rndis_host.c", i32 167, i32 5}
!14 = !{ptr @rndis_command.__UNIQUE_ID_ddebug346, !13, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/rndis_host.c", i32 189, i32 6}
!17 = !{ptr @rndis_command.__UNIQUE_ID_ddebug347, !16, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/rndis_host.c", i32 195, i32 5}
!20 = !{ptr @rndis_command.__UNIQUE_ID_ddebug348, !19, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/rndis_host.c", i32 201, i32 4}
!23 = !{ptr @rndis_command.__UNIQUE_ID_ddebug349, !22, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/rndis_host.c", i32 206, i32 2}
!26 = !{ptr @rndis_command.__UNIQUE_ID_ddebug350, !25, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!27 = !{ptr @__ksymtab_rndis_command, !28, !"__ksymtab_rndis_command", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/rndis_host.c", i32 209, i32 1}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/rndis_host.c", i32 338, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @generic_rndis_bind.__UNIQUE_ID_ddebug351, !30, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/rndis_host.c", i32 353, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @generic_rndis_bind._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @generic_rndis_bind._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/rndis_host.c", i32 359, i32 4}
!41 = !{ptr @generic_rndis_bind._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @generic_rndis_bind._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/rndis_host.c", i32 365, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @generic_rndis_bind._entry.19, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @generic_rndis_bind._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/rndis_host.c", i32 374, i32 2}
!50 = !{ptr @generic_rndis_bind.__UNIQUE_ID_ddebug352, !49, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/rndis_host.c", i32 398, i32 3}
!53 = !{ptr @generic_rndis_bind.__UNIQUE_ID_ddebug353, !52, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/usb/rndis_host.c", i32 405, i32 3}
!56 = !{ptr @generic_rndis_bind.__UNIQUE_ID_ddebug354, !55, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/rndis_host.c", i32 417, i32 3}
!59 = !{ptr @generic_rndis_bind._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @generic_rndis_bind._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/rndis_host.c", i32 437, i32 3}
!63 = !{ptr @generic_rndis_bind._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @generic_rndis_bind._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @__ksymtab_generic_rndis_bind, !66, !"__ksymtab_generic_rndis_bind", i1 false, i1 false}
!66 = !{!"../drivers/net/usb/rndis_host.c", i32 459, i32 1}
!67 = !{ptr @__ksymtab_rndis_unbind, !68, !"__ksymtab_rndis_unbind", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/rndis_host.c", i32 481, i32 1}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/rndis_host.c", i32 507, i32 4}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rndis_rx_fixup.__UNIQUE_ID_ddebug355, !70, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!73 = !{ptr @__ksymtab_rndis_rx_fixup, !74, !"__ksymtab_rndis_rx_fixup", i1 false, i1 false}
!74 = !{!"../drivers/net/usb/rndis_host.c", i32 532, i32 1}
!75 = !{ptr @__ksymtab_rndis_tx_fixup, !76, !"__ksymtab_rndis_tx_fixup", i1 false, i1 false}
!76 = !{!"../drivers/net/usb/rndis_host.c", i32 579, i32 1}
!77 = !{ptr @__initcall__kmod_rndis_host__356_647_rndis_driver_init6, !78, !"__initcall__kmod_rndis_host__356_647_rndis_driver_init6", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/rndis_host.c", i32 647, i32 1}
!79 = !{ptr @__exitcall_rndis_driver_exit, !78, !"__exitcall_rndis_driver_exit", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_author357, !81, !"__UNIQUE_ID_author357", i1 false, i1 false}
!81 = !{!"../drivers/net/usb/rndis_host.c", i32 649, i32 1}
!82 = !{ptr @__UNIQUE_ID_description358, !83, !"__UNIQUE_ID_description358", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/rndis_host.c", i32 650, i32 1}
!84 = !{ptr @__UNIQUE_ID_file359, !85, !"__UNIQUE_ID_file359", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/rndis_host.c", i32 651, i32 1}
!86 = !{ptr @__UNIQUE_ID_license360, !85, !"__UNIQUE_ID_license360", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/usb/rndis_host.c", i32 70, i32 4}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rndis_msg_indicate._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @rndis_msg_indicate._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/usb/rndis_host.c", i32 73, i32 4}
!95 = !{ptr @rndis_msg_indicate._entry.37, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rndis_msg_indicate._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/usb/rndis_host.c", i32 76, i32 4}
!99 = !{ptr @rndis_msg_indicate._entry.40, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rndis_msg_indicate._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!103 = !{ptr @rndis_netdev_ops, !104, !"rndis_netdev_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/usb/rndis_host.c", i32 277, i32 36}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/usb/rndis_host.c", i32 251, i32 3}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rndis_query._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @rndis_query._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/usb/rndis_host.c", i32 270, i32 2}
!112 = !{ptr @rndis_query._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @rndis_query._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @rndis_driver, !115, !"rndis_driver", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/rndis_host.c", i32 637, i32 26}
!116 = !{ptr @products, !117, !"products", i1 false, i1 false}
!117 = !{!"../drivers/net/usb/rndis_host.c", i32 605, i32 35}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/usb/rndis_host.c", i32 593, i32 17}
!120 = !{ptr @rndis_poll_status_info, !121, !"rndis_poll_status_info", i1 false, i1 false}
!121 = !{!"../drivers/net/usb/rndis_host.c", i32 592, i32 33}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/usb/rndis_host.c", i32 583, i32 17}
!124 = !{ptr @rndis_info, !125, !"rndis_info", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/rndis_host.c", i32 582, i32 33}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i64 2148971401, i64 2148971406, i64 2148971419, i64 2148971463, i64 2148971497, i64 2148971518}
!136 = !{!"auto-init"}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{!"branch_weights", i32 4002001, i32 2000}
!140 = !{!"branch_weights", i32 2000, i32 2002}
!141 = !{!"branch_weights", i32 4001, i32 4000000}
