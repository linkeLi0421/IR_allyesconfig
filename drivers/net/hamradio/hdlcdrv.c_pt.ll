; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/hdlcdrv.c_pt.bc'
source_filename = "../drivers/net/hamradio/hdlcdrv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hdlcdrv_receiver\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlcdrv_receiver\09\09\09\09"
module asm "\09.long\09__crc_hdlcdrv_receiver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlcdrv_receiver:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlcdrv_receiver\22\09\09\09\09\09"
module asm "__kstrtabns_hdlcdrv_receiver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlcdrv_transmitter\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlcdrv_transmitter\09\09\09\09"
module asm "\09.long\09__crc_hdlcdrv_transmitter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlcdrv_transmitter:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlcdrv_transmitter\22\09\09\09\09\09"
module asm "__kstrtabns_hdlcdrv_transmitter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlcdrv_arbitrate\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlcdrv_arbitrate\09\09\09\09"
module asm "\09.long\09__crc_hdlcdrv_arbitrate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlcdrv_arbitrate:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlcdrv_arbitrate\22\09\09\09\09\09"
module asm "__kstrtabns_hdlcdrv_arbitrate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlcdrv_register\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlcdrv_register\09\09\09\09"
module asm "\09.long\09__crc_hdlcdrv_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlcdrv_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlcdrv_register\22\09\09\09\09\09"
module asm "__kstrtabns_hdlcdrv_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlcdrv_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlcdrv_unregister\09\09\09\09"
module asm "\09.long\09__crc_hdlcdrv_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlcdrv_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlcdrv_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hdlcdrv_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hdlcdrv_channel_params = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.hdlcdrv_state = type { i32, i32, ptr, %struct.anon.146, %struct.hdlcdrv_pttoutput, %struct.hdlcdrv_channel_params, %struct.hdlcdrv_hdlcrx, %struct.hdlcdrv_hdlctx, %struct.hdlcdrv_bitbuffer, %struct.hdlcdrv_bitbuffer, i32, ptr }
%struct.anon.146 = type { i32 }
%struct.hdlcdrv_pttoutput = type { i32, i32, i32, i32, i32 }
%struct.hdlcdrv_hdlcrx = type { %struct.hdlcdrv_hdlcbuffer, i32, i32, i32, i32, i32, i8, i32, ptr, [402 x i8] }
%struct.hdlcdrv_hdlcbuffer = type { %struct.spinlock, i32, i32, [32 x i16] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hdlcdrv_hdlctx = type { %struct.hdlcdrv_hdlcbuffer, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [402 x i8] }
%struct.hdlcdrv_bitbuffer = type { i32, i32, i32, [256 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.hdlcdrv_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hdlcdrv_ioctl = type { i32, %union.anon.145 }
%union.anon.145 = type { %struct.hdlcdrv_params, [100 x i8] }
%struct.hdlcdrv_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@hdlcdrv_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014hdlcdrv: cannot register net device %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdlcdrv_register\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/hamradio/hdlcdrv.c\00", [33 x i8] zeroinitializer }, align 32
@hdlcdrv_register._entry_ptr = internal global ptr @hdlcdrv_register._entry, section ".printk_index", align 4
@__kstrtab_hdlcdrv_receiver = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlcdrv_receiver = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlcdrv_receiver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlcdrv_receiver to i32), ptr @__kstrtab_hdlcdrv_receiver, ptr @__kstrtabns_hdlcdrv_receiver }, section "___ksymtab+hdlcdrv_receiver", align 4
@__kstrtab_hdlcdrv_transmitter = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlcdrv_transmitter = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlcdrv_transmitter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlcdrv_transmitter to i32), ptr @__kstrtab_hdlcdrv_transmitter, ptr @__kstrtabns_hdlcdrv_transmitter }, section "___ksymtab+hdlcdrv_transmitter", align 4
@__kstrtab_hdlcdrv_arbitrate = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlcdrv_arbitrate = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlcdrv_arbitrate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlcdrv_arbitrate to i32), ptr @__kstrtab_hdlcdrv_arbitrate, ptr @__kstrtabns_hdlcdrv_arbitrate }, section "___ksymtab+hdlcdrv_arbitrate", align 4
@__kstrtab_hdlcdrv_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlcdrv_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlcdrv_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlcdrv_register to i32), ptr @__kstrtab_hdlcdrv_register, ptr @__kstrtabns_hdlcdrv_register }, section "___ksymtab+hdlcdrv_register", align 4
@__kstrtab_hdlcdrv_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlcdrv_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlcdrv_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlcdrv_unregister to i32), ptr @__kstrtab_hdlcdrv_unregister, ptr @__kstrtabns_hdlcdrv_unregister }, section "___ksymtab+hdlcdrv_unregister", align 4
@hdlcdrv_cleanup_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016hdlcdrv: cleanup\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdlcdrv_cleanup_driver\00", [41 x i8] zeroinitializer }, align 32
@hdlcdrv_cleanup_driver._entry_ptr = internal global ptr @hdlcdrv_cleanup_driver._entry, section ".printk_index", align 4
@__UNIQUE_ID_author457 = internal constant [75 x i8] c"hdlcdrv.author=Thomas M. Sailer, sailer@ife.ee.ethz.ch, hb9jnx@hb9w.che.eu\00", section ".modinfo", align 1
@__UNIQUE_ID_description458 = internal constant [72 x i8] c"hdlcdrv.description=Packet Radio network interface HDLC encoder/decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_file459 = internal constant [42 x i8] c"hdlcdrv.file=drivers/net/hamradio/hdlcdrv\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [20 x i8] c"hdlcdrv.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_hdlcdrv__461_764_hdlcdrv_init_driver6 = internal global ptr @hdlcdrv_init_driver, section ".initcall6.init", align 4
@__exitcall_hdlcdrv_cleanup_driver = internal global ptr @hdlcdrv_cleanup_driver, section ".exitcall.exit", align 4
@hdlc_rx_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: memory squeeze, dropping packet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdlc_rx_flag\00", [19 x i8] zeroinitializer }, align 32
@hdlc_rx_flag._entry_ptr = internal global ptr @hdlc_rx_flag._entry, section ".printk_index", align 4
@hdlcdrv_setup.dflt_ch_params = internal constant { %struct.hdlcdrv_channel_params, [44 x i8] } { %struct.hdlcdrv_channel_params { i32 20, i32 2, i32 10, i32 40, i32 0 }, [44 x i8] zeroinitializer }, align 32
@hdlcdrv_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&s->hdlcrx.hbuf.lock\00", [43 x i8] zeroinitializer }, align 32
@hdlcdrv_setup.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&s->hdlctx.hbuf.lock\00", [43 x i8] zeroinitializer }, align 32
@hdlcdrv_netdev = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hdlcdrv_open, ptr @hdlcdrv_close, ptr @hdlcdrv_send_packet, ptr null, ptr null, ptr null, ptr null, ptr @hdlcdrv_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdlcdrv_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax25_header_ops = external dso_local constant %struct.header_ops, align 4
@ax25_bcast = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@ax25_defaddr = external dso_local constant %struct.ax25_address, align 1
@do_kiss_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016hdlcdrv.c: channel params: TX delay = %ums\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_kiss_params\00", [17 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr = internal global ptr @do_kiss_params._entry, section ".printk_index", align 4
@do_kiss_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016hdlcdrv.c: channel params: p persistence = %u\0A\00", [47 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.14 = internal global ptr @do_kiss_params._entry.12, section ".printk_index", align 4
@do_kiss_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016hdlcdrv.c: channel params: slot time = %ums\0A\00", [49 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.17 = internal global ptr @do_kiss_params._entry.15, section ".printk_index", align 4
@do_kiss_params._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016hdlcdrv.c: channel params: TX tail = %ums\0A\00", [51 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.20 = internal global ptr @do_kiss_params._entry.18, section ".printk_index", align 4
@do_kiss_params._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016hdlcdrv.c: channel params: %s duplex\0A\00", [56 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.23 = internal global ptr @do_kiss_params._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hdlcdrv_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016hdlcdrv: (C) 1996-2000 Thomas Sailer HB9JNX/AE4WA\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdlcdrv_init_driver\00", [44 x i8] zeroinitializer }, align 32
@hdlcdrv_init_driver._entry_ptr = internal global ptr @hdlcdrv_init_driver._entry, section ".printk_index", align 4
@hdlcdrv_init_driver._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016hdlcdrv: version 0.8\0A\00", [40 x i8] zeroinitializer }, align 32
@hdlcdrv_init_driver._entry_ptr.33 = internal global ptr @hdlcdrv_init_driver._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 10, i64 11, i64 20, i64 21, i64 22, i64 30, i64 31, i64 43]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 712, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 756, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 144, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"dflt_ch_params\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 632, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 643, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 648, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"hdlcdrv_netdev\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 619, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 227, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 231, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 235, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 239, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 243, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 156, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 747, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [34 x i8] c"../drivers/net/hamradio/hdlcdrv.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 748, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author457, ptr @__UNIQUE_ID_description458, ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__exitcall_hdlcdrv_cleanup_driver, ptr @__initcall__kmod_hdlcdrv__461_764_hdlcdrv_init_driver6, ptr @__ksymtab_hdlcdrv_arbitrate, ptr @__ksymtab_hdlcdrv_receiver, ptr @__ksymtab_hdlcdrv_register, ptr @__ksymtab_hdlcdrv_transmitter, ptr @__ksymtab_hdlcdrv_unregister, ptr @do_kiss_params._entry, ptr @do_kiss_params._entry.12, ptr @do_kiss_params._entry.15, ptr @do_kiss_params._entry.18, ptr @do_kiss_params._entry.21, ptr @do_kiss_params._entry_ptr, ptr @do_kiss_params._entry_ptr.14, ptr @do_kiss_params._entry_ptr.17, ptr @do_kiss_params._entry_ptr.20, ptr @do_kiss_params._entry_ptr.23, ptr @hdlc_rx_flag._entry, ptr @hdlc_rx_flag._entry_ptr, ptr @hdlcdrv_cleanup_driver, ptr @hdlcdrv_cleanup_driver._entry, ptr @hdlcdrv_cleanup_driver._entry_ptr, ptr @hdlcdrv_init_driver._entry, ptr @hdlcdrv_init_driver._entry.31, ptr @hdlcdrv_init_driver._entry_ptr, ptr @hdlcdrv_init_driver._entry_ptr.33, ptr @hdlcdrv_register._entry, ptr @hdlcdrv_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hdlcdrv_setup.dflt_ch_params, ptr @hdlcdrv_setup.__key, ptr @.str.7, ptr @hdlcdrv_setup.__key.8, ptr @.str.9, ptr @hdlcdrv_netdev, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_cleanup_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_rx_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_setup.dflt_ch_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_setup.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_netdev to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdrv_init_driver._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdlcdrv_receiver(ptr noundef %dev, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %1)
  %cmp.not = icmp eq i32 %1, 1522984824
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hdlcrx = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6
  %in_hdlc_rx = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %in_hdlc_rx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call2.i204 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlcrx) #8
  %rd.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd.i, align 4
  %wr.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 0, i32 2
  %4 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.i.not205 = icmp eq i32 %3, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlcrx, i32 noundef %call2.i204) #8
  br i1 %cmp5.i.not205, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %wr.i152 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 9, i32 1
  %bitstream = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 3
  %bitbuf = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 4
  %numbits = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 5
  %rx_state35 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 2
  %len.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 7
  %bp.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 8
  %buffer.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 9
  %stats21.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  br label %while.body

while.body:                                       ; preds = %hdlc_rx_add_bytes.exit189.while.body_crit_edge, %while.body.lr.ph
  %call2.i148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlcrx) #8
  %6 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd.i, align 4
  %8 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.i151 = icmp eq i32 %7, %9
  br i1 %cmp5.i151, label %while.body.hdlcdrv_hbuf_get.exit_crit_edge, label %if.else.i

while.body.hdlcdrv_hbuf_get.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlcdrv_hbuf_get.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %7, 1
  %rem.i = and i32 %add.i, 31
  %arrayidx.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlcrx, i32 0, i32 3, i32 %7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  %12 = ptrtoint ptr %rd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rem.i, ptr %rd.i, align 4
  br label %hdlcdrv_hbuf_get.exit

hdlcdrv_hbuf_get.exit:                            ; preds = %if.else.i, %while.body.hdlcdrv_hbuf_get.exit_crit_edge
  %val.0.i = phi i16 [ %11, %if.else.i ], [ 0, %while.body.hdlcdrv_hbuf_get.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlcrx, i32 noundef %call2.i148) #8
  %conv = zext i16 %val.0.i to i32
  %conv.i = trunc i16 %val.0.i to i8
  %13 = ptrtoint ptr %wr.i152 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wr.i152, align 4
  %arrayidx.i153 = getelementptr %struct.hdlcdrv_state, ptr %s, i32 0, i32 9, i32 3, i32 %14
  %15 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx.i153, align 1
  %16 = load i32, ptr %wr.i152, align 4
  %add.i154 = add i32 %16, 1
  %rem.i155 = and i32 %add.i154, 255
  %shr.i = lshr i16 %val.0.i, 8
  %conv4.i = trunc i16 %shr.i to i8
  %arrayidx7.i = getelementptr %struct.hdlcdrv_state, ptr %s, i32 0, i32 9, i32 3, i32 %rem.i155
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i, ptr %arrayidx7.i, align 1
  %add9.i = add i32 %16, 2
  %rem10.i = and i32 %add9.i, 255
  store i32 %rem10.i, ptr %wr.i152, align 4
  %18 = ptrtoint ptr %bitstream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bitstream, align 4
  %shr = lshr i32 %19, 16
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shr, %shl
  store i32 %or, ptr %bitstream, align 4
  %20 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitbuf, align 4
  %shr14 = lshr i32 %21, 16
  %or18 = or i32 %shr14, %shl
  store i32 %or18, ptr %bitbuf, align 4
  %22 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numbits, align 4
  %add = add i32 %23, 16
  store i32 %add, ptr %numbits, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hdlcdrv_hbuf_get.exit
  %mask6.0202 = phi i32 [ 65535, %hdlcdrv_hbuf_get.exit ], [ %or83, %for.inc.for.body_crit_edge ]
  %mask5.0200 = phi i32 [ 63488, %hdlcdrv_hbuf_get.exit ], [ %shl81, %for.inc.for.body_crit_edge ]
  %mask4.0198 = phi i32 [ 129024, %hdlcdrv_hbuf_get.exit ], [ %shl80, %for.inc.for.body_crit_edge ]
  %mask3.0196 = phi i32 [ 64512, %hdlcdrv_hbuf_get.exit ], [ %shl79, %for.inc.for.body_crit_edge ]
  %mask2.0194 = phi i32 [ 130560, %hdlcdrv_hbuf_get.exit ], [ %shl78, %for.inc.for.body_crit_edge ]
  %mask1.0193 = phi i32 [ 130048, %hdlcdrv_hbuf_get.exit ], [ %shl77, %for.inc.for.body_crit_edge ]
  %i.0190 = phi i32 [ 15, %hdlcdrv_hbuf_get.exit ], [ %dec76, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %bitstream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bitstream, align 4
  %and = and i32 %25, %mask1.0193
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mask1.0193)
  %cmp24 = icmp eq i32 %and, %mask1.0193
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_state35, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %and30 = and i32 %25, %mask2.0194
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %mask3.0196)
  %cmp31 = icmp eq i32 %and30, %mask3.0196
  br i1 %cmp31, label %if.then33, label %if.else54

if.then33:                                        ; preds = %if.else
  %27 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_state35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %if.then33.if.end46_crit_edge, label %if.then37

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then37:                                        ; preds = %if.then33
  %29 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bitbuf, align 4
  %add40 = add nuw nsw i32 %i.0190, 8
  %shl41 = shl i32 %30, %add40
  %31 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %numbits, align 4
  %sub = sub nuw nsw i32 -8, %i.0190
  %sub44 = add i32 %sub, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub44)
  %cmp19.i = icmp sgt i32 %sub44, 7
  br i1 %cmp19.i, label %if.then37.while.body.i_crit_edge, label %if.then37.hdlc_rx_add_bytes.exitthread-pre-split_crit_edge

if.then37.hdlc_rx_add_bytes.exitthread-pre-split_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_rx_add_bytes.exitthread-pre-split

if.then37.while.body.i_crit_edge:                 ; preds = %if.then37
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then37.while.body.i_crit_edge
  %num.addr.021.i = phi i32 [ %sub8.i, %if.end.i.while.body.i_crit_edge ], [ %sub44, %if.then37.while.body.i_crit_edge ]
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 401, i32 %34)
  %cmp2.i = icmp ugt i32 %34, 401
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rx_state35, align 4
  br label %hdlc_rx_add_bytes.exit

if.end.i:                                         ; preds = %while.body.i
  %sub.i = sub nsw i32 32, %num.addr.021.i
  %shr.i156 = lshr i32 %shl41, %sub.i
  %conv.i157 = trunc i32 %shr.i156 to i8
  %36 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bp.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %37, i32 1
  store ptr %incdec.ptr.i, ptr %bp.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i157, ptr %37, align 1
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %len.i, align 4
  %sub8.i = add nsw i32 %num.addr.021.i, -8
  %41 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_state35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp ne i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %num.addr.021.i)
  %cmp.i = icmp sgt i32 %num.addr.021.i, 15
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.hdlc_rx_add_bytes.exitthread-pre-split_crit_edge

if.end.i.hdlc_rx_add_bytes.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_rx_add_bytes.exitthread-pre-split

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

hdlc_rx_add_bytes.exitthread-pre-split:           ; preds = %if.end.i.hdlc_rx_add_bytes.exitthread-pre-split_crit_edge, %if.then37.hdlc_rx_add_bytes.exitthread-pre-split_crit_edge
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %len.i, align 4
  br label %hdlc_rx_add_bytes.exit

hdlc_rx_add_bytes.exit:                           ; preds = %hdlc_rx_add_bytes.exitthread-pre-split, %if.then.i
  %44 = phi i32 [ %.pr, %hdlc_rx_add_bytes.exitthread-pre-split ], [ %34, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i160 = icmp slt i32 %44, 4
  br i1 %cmp.i160, label %hdlc_rx_add_bytes.exit.if.end46_crit_edge, label %if.end.i161

hdlc_rx_add_bytes.exit.if.end46_crit_edge:        ; preds = %hdlc_rx_add_bytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end.i161:                                      ; preds = %hdlc_rx_add_bytes.exit
  %call.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %buffer.i, i32 noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3912, i16 %call.i.i)
  %cmp.i.not.i = icmp eq i16 %call.i.i, -3912
  br i1 %cmp.i.not.i, label %if.end5.i, label %if.end.i161.if.end46_crit_edge

if.end.i161.if.end46_crit_edge:                   ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end5.i:                                        ; preds = %if.end.i161
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %add.i162 = add i32 %46, -1
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i162, i32 noundef 2592) #8
  %tobool9.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool9.not.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %dev) #11
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i163 = add i32 %46, -2
  %call14.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add.i162) #8
  %incdec.ptr.i164 = getelementptr i8, ptr %call14.i, i32 1
  %47 = ptrtoint ptr %call14.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %call14.i, align 1
  %48 = call ptr @memcpy(ptr %incdec.ptr.i164, ptr %buffer.i, i32 %sub.i163)
  %49 = getelementptr inbounds %struct.anon.0, ptr %call.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %49, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %53 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %55 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %56 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 2, ptr %protocol.i, align 8
  %call20.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i, %do.end.i
  %stats21.sink38.i = phi ptr [ %stats21.i, %if.end13.i ], [ %rx_dropped.i, %do.end.i ]
  %58 = ptrtoint ptr %stats21.sink38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stats21.sink38.i, align 8
  %inc22.i = add i32 %59, 1
  store i32 %inc22.i, ptr %stats21.sink38.i, align 8
  br label %if.end46

if.end46:                                         ; preds = %cleanup.sink.split.i, %if.end.i161.if.end46_crit_edge, %hdlc_rx_add_bytes.exit.if.end46_crit_edge, %if.then33.if.end46_crit_edge
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %len.i, align 4
  %61 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buffer.i, ptr %bp.i, align 4
  %62 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %rx_state35, align 4
  %63 = ptrtoint ptr %numbits to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.0190, ptr %numbits, align 4
  br label %for.inc

if.else54:                                        ; preds = %if.else
  %and57 = and i32 %25, %mask4.0198
  call void @__sanitizer_cov_trace_cmp4(i32 %and57, i32 %mask5.0200)
  %cmp58 = icmp eq i32 %and57, %mask5.0200
  br i1 %cmp58, label %if.then60, label %if.else54.for.inc_crit_edge

if.else54.for.inc_crit_edge:                      ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then60:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %numbits, align 4
  %dec = add i32 %65, -1
  store i32 %dec, ptr %numbits, align 4
  %66 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bitbuf, align 4
  %neg = xor i32 %mask6.0202, -1
  %and65 = and i32 %67, %neg
  %and68 = and i32 %67, %mask6.0202
  %shl69 = shl i32 %and68, 1
  %or70 = or i32 %shl69, %and65
  store i32 %or70, ptr %bitbuf, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %if.else54.for.inc_crit_edge, %if.end46, %if.then26
  %dec76 = add nsw i32 %i.0190, -1
  %shl77 = shl i32 %mask1.0193, 1
  %shl78 = shl i32 %mask2.0194, 1
  %shl79 = shl i32 %mask3.0196, 1
  %shl80 = shl i32 %mask4.0198, 1
  %shl81 = shl i32 %mask5.0200, 1
  %shl82 = shl i32 %mask6.0202, 1
  %or83 = or i32 %shl82, 1
  %cmp20 = icmp sgt i32 %i.0190, 0
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %68 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bitbuf, align 4
  %70 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %numbits, align 4
  %72 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_state35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not18.i166 = icmp ne i32 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %71)
  %cmp19.i167 = icmp sgt i32 %71, 7
  %or.cond20.i168 = and i1 %cmp19.i167, %tobool.not18.i166
  br i1 %or.cond20.i168, label %for.end.while.body.i175_crit_edge, label %for.end.hdlc_rx_add_bytes.exit189_crit_edge

for.end.hdlc_rx_add_bytes.exit189_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_rx_add_bytes.exit189

for.end.while.body.i175_crit_edge:                ; preds = %for.end
  br label %while.body.i175

while.body.i175:                                  ; preds = %if.end.i187.while.body.i175_crit_edge, %for.end.while.body.i175_crit_edge
  %added.022.i172 = phi i32 [ %add.i183, %if.end.i187.while.body.i175_crit_edge ], [ 0, %for.end.while.body.i175_crit_edge ]
  %num.addr.021.i173 = phi i32 [ %sub8.i182, %if.end.i187.while.body.i175_crit_edge ], [ %71, %for.end.while.body.i175_crit_edge ]
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 401, i32 %75)
  %cmp2.i174 = icmp ugt i32 %75, 401
  br i1 %cmp2.i174, label %if.then.i176, label %if.end.i187

if.then.i176:                                     ; preds = %while.body.i175
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %rx_state35, align 4
  br label %hdlc_rx_add_bytes.exit189

if.end.i187:                                      ; preds = %while.body.i175
  %sub.i177 = sub nsw i32 32, %num.addr.021.i173
  %shr.i178 = lshr i32 %69, %sub.i177
  %conv.i179 = trunc i32 %shr.i178 to i8
  %77 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bp.i, align 4
  %incdec.ptr.i180 = getelementptr i8, ptr %78, i32 1
  store ptr %incdec.ptr.i180, ptr %bp.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i179, ptr %78, align 1
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %inc.i181 = add i32 %81, 1
  store i32 %inc.i181, ptr %len.i, align 4
  %sub8.i182 = add nsw i32 %num.addr.021.i173, -8
  %add.i183 = add nuw nsw i32 %added.022.i172, 8
  %82 = ptrtoint ptr %rx_state35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_state35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i184 = icmp ne i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %num.addr.021.i173)
  %cmp.i185 = icmp sgt i32 %num.addr.021.i173, 15
  %or.cond.i186 = select i1 %tobool.not.i184, i1 %cmp.i185, i1 false
  br i1 %or.cond.i186, label %if.end.i187.while.body.i175_crit_edge, label %if.end.i187.hdlc_rx_add_bytes.exit189_crit_edge

if.end.i187.hdlc_rx_add_bytes.exit189_crit_edge:  ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_rx_add_bytes.exit189

if.end.i187.while.body.i175_crit_edge:            ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i175

hdlc_rx_add_bytes.exit189:                        ; preds = %if.end.i187.hdlc_rx_add_bytes.exit189_crit_edge, %if.then.i176, %for.end.hdlc_rx_add_bytes.exit189_crit_edge
  %retval.0.i188 = phi i32 [ 0, %if.then.i176 ], [ 0, %for.end.hdlc_rx_add_bytes.exit189_crit_edge ], [ %add.i183, %if.end.i187.hdlc_rx_add_bytes.exit189_crit_edge ]
  %84 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %numbits, align 4
  %sub91 = sub i32 %85, %retval.0.i188
  store i32 %sub91, ptr %numbits, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlcrx) #8
  %86 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rd.i, align 4
  %88 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %wr.i, align 4
  %cmp5.i.not = icmp eq i32 %87, %89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlcrx, i32 noundef %call2.i) #8
  br i1 %cmp5.i.not, label %hdlc_rx_add_bytes.exit189.while.end_crit_edge, label %hdlc_rx_add_bytes.exit189.while.body_crit_edge

hdlc_rx_add_bytes.exit189.while.body_crit_edge:   ; preds = %hdlc_rx_add_bytes.exit189
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

hdlc_rx_add_bytes.exit189.while.end_crit_edge:    ; preds = %hdlc_rx_add_bytes.exit189
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %hdlc_rx_add_bytes.exit189.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %in_hdlc_rx) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdlcdrv_transmitter(ptr nocapture noundef %dev, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %1)
  %cmp.not = icmp eq i32 %1, 1522984824
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hdlctx = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7
  %in_hdlc_tx = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %in_hdlc_tx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %numbits = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 9
  %rd.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 0, i32 1
  %wr.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 0, i32 2
  %bitbuf = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 8
  %tx_state = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 2
  %len87 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 10
  %bp99 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 11
  %bitstream108 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 4
  %numflags93 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 3
  %skb45 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %buffer = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 12
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %tx_tail = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5, i32 1
  %par = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %2 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numbits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp5 = icmp sgt i32 %3, 15
  br i1 %cmp5, label %if.then6, label %for.cond.if.end21_crit_edge

for.cond.if.end21_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then6:                                         ; preds = %for.cond
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx) #8
  %4 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd.i, align 4
  %add.i = add i32 %5, 31
  %6 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wr.i, align 4
  %sub.i = sub i32 %add.i, %7
  %rem.i = and i32 %sub.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i.not = icmp eq i32 %rem.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx, i32 noundef %call2.i) #8
  br i1 %tobool.not.i.not, label %if.then6.cleanup.sink.split_crit_edge, label %if.end13

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.then6
  %8 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bitbuf, align 4
  %call2.i231 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx) #8
  %10 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr.i, align 4
  %add.i233 = add i32 %11, 1
  %rem.i234 = and i32 %add.i233, 31
  %12 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i234, i32 %13)
  %cmp5.not.i = icmp eq i32 %rem.i234, %13
  br i1 %cmp5.not.i, label %if.end13.hdlcdrv_hbuf_put.exit_crit_edge, label %if.then.i

if.end13.hdlcdrv_hbuf_put.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlcdrv_hbuf_put.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %9 to i16
  %arrayidx.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlctx, i32 0, i32 3, i32 %11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %arrayidx.i, align 2
  %15 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %rem.i234, ptr %wr.i, align 4
  br label %hdlcdrv_hbuf_put.exit

hdlcdrv_hbuf_put.exit:                            ; preds = %if.then.i, %if.end13.hdlcdrv_hbuf_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx, i32 noundef %call2.i231) #8
  %16 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitbuf, align 4
  %shr = lshr i32 %17, 16
  store i32 %shr, ptr %bitbuf, align 4
  %18 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numbits, align 4
  %sub = add i32 %19, -16
  store i32 %sub, ptr %numbits, align 4
  br label %if.end21

if.end21:                                         ; preds = %hdlcdrv_hbuf_put.exit, %for.cond.if.end21_crit_edge
  %20 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_state, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end21.cleanup.sink.split_crit_edge [
    i32 0, label %if.end21.sw.bb_crit_edge
    i32 1, label %if.end21.sw.bb_crit_edge242
    i32 2, label %sw.bb85
  ]

if.end21.sw.bb_crit_edge242:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end21.sw.bb_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end21.sw.bb_crit_edge, %if.end21.sw.bb_crit_edge242
  %23 = ptrtoint ptr %numflags93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numflags93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %if.end36, label %if.then27

if.then27:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %24, -1
  %25 = ptrtoint ptr %numflags93 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec, ptr %numflags93, align 4
  %26 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numbits, align 4
  %shl = shl i32 32382, %27
  %28 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitbuf, align 4
  %or = or i32 %29, %shl
  store i32 %or, ptr %bitbuf, align 4
  %add = add i32 %27, 16
  store i32 %add, ptr %numbits, align 4
  br label %for.cond.backedge

if.end36:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp39 = icmp eq i32 %21, 1
  br i1 %cmp39, label %if.end36.cleanup.sink.split_crit_edge, label %if.end44

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end36
  %30 = ptrtoint ptr %skb45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb45, align 4
  %tobool46.not = icmp eq ptr %31, null
  br i1 %tobool46.not, label %if.then47, label %if.end57

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_tail, align 4
  %34 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %par, align 4
  %mul = mul i32 %35, %33
  %div48 = sdiv i32 %mul, 1600
  %36 = tail call i32 @llvm.smax.i32(i32 %div48, i32 2)
  %37 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %tx_state, align 4
  %38 = ptrtoint ptr %numflags93 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %numflags93, align 4
  br label %for.cond.backedge

if.end57:                                         ; preds = %if.end44
  %39 = ptrtoint ptr %skb45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %skb45, align 4
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %41) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %44 = add i32 %43, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 -398, i32 %44)
  %45 = icmp ult i32 %44, -398
  br i1 %45, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tx_state, align 4
  %47 = ptrtoint ptr %numflags93 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %numflags93, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %31, i32 noundef 1) #8
  br label %for.cond.backedge

if.end70:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %sub59 = add nsw i32 %43, -1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 1
  %50 = call ptr @memcpy(ptr %buffer, ptr %add.ptr.i, i32 %sub59)
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %31, i32 noundef 1) #8
  %51 = ptrtoint ptr %bp99 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buffer, ptr %bp99, align 4
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %buffer, i32 noundef %sub59) #8
  %52 = xor i16 %call.i, -1
  %add.ptr.i236 = getelementptr i8, ptr %buffer, i32 %sub59
  %conv1.i = trunc i16 %52 to i8
  %incdec.ptr.i = getelementptr i8, ptr %buffer, i32 %43
  %53 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv1.i, ptr %add.ptr.i236, align 1
  %54 = lshr i16 %52, 8
  %conv2.i = trunc i16 %54 to i8
  %55 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv2.i, ptr %incdec.ptr.i, align 1
  %add79 = add nuw nsw i32 %43, 1
  %56 = ptrtoint ptr %len87 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add79, ptr %len87, align 4
  %57 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %tx_state, align 4
  %58 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %bitstream108, align 4
  %59 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %for.cond.backedge

sw.bb85:                                          ; preds = %if.end21
  %61 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool88.not = icmp eq i32 %62, 0
  br i1 %tobool88.not, label %if.then89, label %if.end94

if.then89:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tx_state, align 4
  %64 = ptrtoint ptr %numflags93 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %numflags93, align 4
  br label %for.cond.backedge

if.end94:                                         ; preds = %sw.bb85
  %dec97 = add i32 %62, -1
  %65 = ptrtoint ptr %len87 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %dec97, ptr %len87, align 4
  %66 = ptrtoint ptr %bp99 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bp99, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv100 = zext i8 %69 to i32
  %70 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %numbits, align 4
  %shl103 = shl i32 %conv100, %71
  %72 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bitbuf, align 4
  %or106 = or i32 %73, %shl103
  store i32 %or106, ptr %bitbuf, align 4
  %74 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bitstream108, align 4
  %shr109 = lshr i32 %75, 8
  store i32 %shr109, ptr %bitstream108, align 4
  %incdec.ptr = getelementptr i8, ptr %67, i32 1
  store ptr %incdec.ptr, ptr %bp99, align 4
  %76 = load i8, ptr %67, align 1
  %conv112 = zext i8 %76 to i32
  %shl113 = shl nuw nsw i32 %conv112, 16
  %or116 = or i32 %shl113, %shr109
  store i32 %or116, ptr %bitstream108, align 4
  %sub119 = sub i32 31, %71
  %shr120 = lshr i32 -1, %sub119
  %add123 = add i32 %71, 8
  store i32 %add123, ptr %numbits, align 4
  %and = and i32 %or116, 126976
  call void @__sanitizer_cov_trace_const_cmp4(i32 126976, i32 %and)
  %cmp129.not = icmp eq i32 %and, 126976
  br i1 %cmp129.not, label %if.end132, label %if.end94.for.inc_crit_edge

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end132:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %and135 = and i32 %or116, 16711679
  %77 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and135, ptr %bitstream108, align 4
  %78 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bitbuf, align 4
  %and138 = and i32 %79, %shr120
  %neg141 = xor i32 %shr120, -1
  %and142 = and i32 %79, %neg141
  %shl143 = shl i32 %and142, 1
  %or144 = or i32 %shl143, %and138
  store i32 %or144, ptr %bitbuf, align 4
  %80 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %numbits, align 4
  %inc149 = add i32 %81, 1
  store i32 %inc149, ptr %numbits, align 4
  %shl150 = shl i32 %shr120, 1
  %or151 = or i32 %shl150, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end132, %if.end94.for.inc_crit_edge
  %82 = phi i32 [ %or116, %if.end94.for.inc_crit_edge ], [ %and135, %if.end132 ]
  %mask3.1 = phi i32 [ %shr120, %if.end94.for.inc_crit_edge ], [ %or151, %if.end132 ]
  %shl155 = shl i32 %mask3.1, 1
  %or156 = or i32 %shl155, 1
  %and.1 = and i32 %82, 253952
  call void @__sanitizer_cov_trace_const_cmp4(i32 253952, i32 %and.1)
  %cmp129.not.1 = icmp eq i32 %and.1, 253952
  br i1 %cmp129.not.1, label %if.end132.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end132.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %and135.1 = and i32 %82, -131073
  %83 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and135.1, ptr %bitstream108, align 4
  %84 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bitbuf, align 4
  %and138.1 = and i32 %85, %or156
  %neg141.1 = xor i32 %shl155, 2147483646
  %and142.1 = and i32 %85, %neg141.1
  %shl143.1 = shl i32 %and142.1, 1
  %or144.1 = or i32 %shl143.1, %and138.1
  store i32 %or144.1, ptr %bitbuf, align 4
  %86 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %numbits, align 4
  %inc149.1 = add i32 %87, 1
  store i32 %inc149.1, ptr %numbits, align 4
  %shl150.1 = shl i32 %or156, 1
  %or151.1 = or i32 %shl150.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end132.1, %for.inc.for.inc.1_crit_edge
  %88 = phi i32 [ %82, %for.inc.for.inc.1_crit_edge ], [ %and135.1, %if.end132.1 ]
  %mask3.1.1 = phi i32 [ %or156, %for.inc.for.inc.1_crit_edge ], [ %or151.1, %if.end132.1 ]
  %shl155.1 = shl i32 %mask3.1.1, 1
  %or156.1 = or i32 %shl155.1, 1
  %and.2 = and i32 %88, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 507904, i32 %and.2)
  %cmp129.not.2 = icmp eq i32 %and.2, 507904
  br i1 %cmp129.not.2, label %if.end132.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end132.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %and135.2 = and i32 %88, -262145
  %89 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and135.2, ptr %bitstream108, align 4
  %90 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bitbuf, align 4
  %and138.2 = and i32 %91, %or156.1
  %neg141.2 = xor i32 %shl155.1, 2147483646
  %and142.2 = and i32 %91, %neg141.2
  %shl143.2 = shl i32 %and142.2, 1
  %or144.2 = or i32 %shl143.2, %and138.2
  store i32 %or144.2, ptr %bitbuf, align 4
  %92 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %numbits, align 4
  %inc149.2 = add i32 %93, 1
  store i32 %inc149.2, ptr %numbits, align 4
  %shl150.2 = shl i32 %or156.1, 1
  %or151.2 = or i32 %shl150.2, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end132.2, %for.inc.1.for.inc.2_crit_edge
  %94 = phi i32 [ %88, %for.inc.1.for.inc.2_crit_edge ], [ %and135.2, %if.end132.2 ]
  %mask3.1.2 = phi i32 [ %or156.1, %for.inc.1.for.inc.2_crit_edge ], [ %or151.2, %if.end132.2 ]
  %shl155.2 = shl i32 %mask3.1.2, 1
  %or156.2 = or i32 %shl155.2, 1
  %and.3 = and i32 %94, 1015808
  call void @__sanitizer_cov_trace_const_cmp4(i32 1015808, i32 %and.3)
  %cmp129.not.3 = icmp eq i32 %and.3, 1015808
  br i1 %cmp129.not.3, label %if.end132.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end132.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %and135.3 = and i32 %94, -524289
  %95 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and135.3, ptr %bitstream108, align 4
  %96 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bitbuf, align 4
  %and138.3 = and i32 %97, %or156.2
  %neg141.3 = xor i32 %shl155.2, 2147483646
  %and142.3 = and i32 %97, %neg141.3
  %shl143.3 = shl i32 %and142.3, 1
  %or144.3 = or i32 %shl143.3, %and138.3
  store i32 %or144.3, ptr %bitbuf, align 4
  %98 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %numbits, align 4
  %inc149.3 = add i32 %99, 1
  store i32 %inc149.3, ptr %numbits, align 4
  %shl150.3 = shl i32 %or156.2, 1
  %or151.3 = or i32 %shl150.3, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end132.3, %for.inc.2.for.inc.3_crit_edge
  %100 = phi i32 [ %94, %for.inc.2.for.inc.3_crit_edge ], [ %and135.3, %if.end132.3 ]
  %mask3.1.3 = phi i32 [ %or156.2, %for.inc.2.for.inc.3_crit_edge ], [ %or151.3, %if.end132.3 ]
  %shl155.3 = shl i32 %mask3.1.3, 1
  %or156.3 = or i32 %shl155.3, 1
  %and.4 = and i32 %100, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031616, i32 %and.4)
  %cmp129.not.4 = icmp eq i32 %and.4, 2031616
  br i1 %cmp129.not.4, label %if.end132.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end132.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %and135.4 = and i32 %100, -1048577
  %101 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and135.4, ptr %bitstream108, align 4
  %102 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bitbuf, align 4
  %and138.4 = and i32 %103, %or156.3
  %neg141.4 = xor i32 %shl155.3, 2147483646
  %and142.4 = and i32 %103, %neg141.4
  %shl143.4 = shl i32 %and142.4, 1
  %or144.4 = or i32 %shl143.4, %and138.4
  store i32 %or144.4, ptr %bitbuf, align 4
  %104 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %numbits, align 4
  %inc149.4 = add i32 %105, 1
  store i32 %inc149.4, ptr %numbits, align 4
  %shl150.4 = shl i32 %or156.3, 1
  %or151.4 = or i32 %shl150.4, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end132.4, %for.inc.3.for.inc.4_crit_edge
  %106 = phi i32 [ %100, %for.inc.3.for.inc.4_crit_edge ], [ %and135.4, %if.end132.4 ]
  %mask3.1.4 = phi i32 [ %or156.3, %for.inc.3.for.inc.4_crit_edge ], [ %or151.4, %if.end132.4 ]
  %shl155.4 = shl i32 %mask3.1.4, 1
  %or156.4 = or i32 %shl155.4, 1
  %and.5 = and i32 %106, 4063232
  call void @__sanitizer_cov_trace_const_cmp4(i32 4063232, i32 %and.5)
  %cmp129.not.5 = icmp eq i32 %and.5, 4063232
  br i1 %cmp129.not.5, label %if.end132.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.end132.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %and135.5 = and i32 %106, -2097153
  %107 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and135.5, ptr %bitstream108, align 4
  %108 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bitbuf, align 4
  %and138.5 = and i32 %109, %or156.4
  %neg141.5 = xor i32 %shl155.4, 2147483646
  %and142.5 = and i32 %109, %neg141.5
  %shl143.5 = shl i32 %and142.5, 1
  %or144.5 = or i32 %shl143.5, %and138.5
  store i32 %or144.5, ptr %bitbuf, align 4
  %110 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %numbits, align 4
  %inc149.5 = add i32 %111, 1
  store i32 %inc149.5, ptr %numbits, align 4
  %shl150.5 = shl i32 %or156.4, 1
  %or151.5 = or i32 %shl150.5, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end132.5, %for.inc.4.for.inc.5_crit_edge
  %112 = phi i32 [ %106, %for.inc.4.for.inc.5_crit_edge ], [ %and135.5, %if.end132.5 ]
  %mask3.1.5 = phi i32 [ %or156.4, %for.inc.4.for.inc.5_crit_edge ], [ %or151.5, %if.end132.5 ]
  %shl155.5 = shl i32 %mask3.1.5, 1
  %or156.5 = or i32 %shl155.5, 1
  %and.6 = and i32 %112, 8126464
  call void @__sanitizer_cov_trace_const_cmp4(i32 8126464, i32 %and.6)
  %cmp129.not.6 = icmp eq i32 %and.6, 8126464
  br i1 %cmp129.not.6, label %if.end132.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.end132.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %and135.6 = and i32 %112, -4194305
  %113 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and135.6, ptr %bitstream108, align 4
  %114 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bitbuf, align 4
  %and138.6 = and i32 %115, %or156.5
  %neg141.6 = xor i32 %shl155.5, 2147483646
  %and142.6 = and i32 %115, %neg141.6
  %shl143.6 = shl i32 %and142.6, 1
  %or144.6 = or i32 %shl143.6, %and138.6
  store i32 %or144.6, ptr %bitbuf, align 4
  %116 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %numbits, align 4
  %inc149.6 = add i32 %117, 1
  store i32 %inc149.6, ptr %numbits, align 4
  %shl150.6 = shl i32 %or156.5, 1
  %or151.6 = or i32 %shl150.6, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end132.6, %for.inc.5.for.inc.6_crit_edge
  %118 = phi i32 [ %112, %for.inc.5.for.inc.6_crit_edge ], [ %and135.6, %if.end132.6 ]
  %mask3.1.6 = phi i32 [ %or156.5, %for.inc.5.for.inc.6_crit_edge ], [ %or151.6, %if.end132.6 ]
  %and.7 = and i32 %118, 16252928
  call void @__sanitizer_cov_trace_const_cmp4(i32 16252928, i32 %and.7)
  %cmp129.not.7 = icmp eq i32 %and.7, 16252928
  br i1 %cmp129.not.7, label %if.end132.7, label %for.inc.6.for.cond.backedge_crit_edge

for.inc.6.for.cond.backedge_crit_edge:            ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end132.7, %for.inc.6.for.cond.backedge_crit_edge, %if.then89, %if.end70, %if.then65, %if.then47, %if.then27
  br label %for.cond

if.end132.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %shl155.6 = shl i32 %mask3.1.6, 1
  %or156.6 = or i32 %shl155.6, 1
  %and135.7 = and i32 %118, -8388609
  %119 = ptrtoint ptr %bitstream108 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %and135.7, ptr %bitstream108, align 4
  %120 = ptrtoint ptr %bitbuf to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bitbuf, align 4
  %and138.7 = and i32 %121, %or156.6
  %neg141.7 = xor i32 %shl155.6, 2147483646
  %and142.7 = and i32 %121, %neg141.7
  %shl143.7 = shl i32 %and142.7, 1
  %or144.7 = or i32 %shl143.7, %and138.7
  store i32 %or144.7, ptr %bitbuf, align 4
  %122 = ptrtoint ptr %numbits to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %numbits, align 4
  %inc149.7 = add i32 %123, 1
  store i32 %inc149.7, ptr %numbits, align 4
  br label %for.cond.backedge

cleanup.sink.split:                               ; preds = %if.end36.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %in_hdlc_tx) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdlcdrv_arbitrate(ptr nocapture noundef %dev, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %1)
  %cmp.not = icmp eq i32 %1, 1522984824
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %ptt = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %ptt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %skb = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 11
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.return_crit_edge, label %if.end

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %fulldup = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %fulldup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fulldup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_state.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_state.i, align 4
  %ch_params.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5
  %9 = ptrtoint ptr %ch_params.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_params.i, align 4
  %par.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 3
  %11 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %par.i, align 4
  %mul.i = mul i32 %12, %10
  %div1.i = sdiv i32 %mul.i, 1600
  %numflags.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %numflags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1.i, ptr %numflags.i, align 4
  %numbits.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 9
  %14 = ptrtoint ptr %numbits.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %numbits.i, align 4
  %bitstream.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %bitstream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bitstream.i, align 4
  %bitbuf.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %bitbuf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bitbuf.i, align 4
  tail call void @hdlcdrv_transmitter(ptr noundef %dev, ptr noundef nonnull %s) #8
  %17 = ptrtoint ptr %ptt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ptt, align 4
  %ptt_keyed.i = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 10
  %18 = ptrtoint ptr %ptt_keyed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptt_keyed.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %ptt_keyed.i, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %dcd = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %dcd to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %slottime = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slottime, align 4
  %slotcnt = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %slotcnt, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %slotcnt14 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 7
  %25 = ptrtoint ptr %slotcnt14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slotcnt14, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %slotcnt14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %if.end12.return_crit_edge, label %if.end18

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end18:                                         ; preds = %if.end12
  %slottime20 = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %slottime20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slottime20, align 4
  %29 = ptrtoint ptr %slotcnt14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %slotcnt14, align 4
  %call = tail call i32 @prandom_u32() #8
  %rem = and i32 %call, 255
  %ppersist = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %ppersist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ppersist, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %31)
  %cmp24 = icmp ugt i32 %rem, %31
  br i1 %cmp24, label %if.end18.return_crit_edge, label %if.end27

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @start_tx(ptr noundef %dev, ptr noundef nonnull %s)
  br label %return

return:                                           ; preds = %if.end27, %if.end18.return_crit_edge, %if.end12.return_crit_edge, %if.then9, %if.then6, %lor.lhs.false3.return_crit_edge, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_tx(ptr nocapture noundef %dev, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_state = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_state, align 4
  %ch_params = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 5
  %1 = ptrtoint ptr %ch_params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ch_params, align 4
  %par = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %par, align 4
  %mul = mul i32 %4, %2
  %div1 = sdiv i32 %mul, 1600
  %numflags = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %numflags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div1, ptr %numflags, align 4
  %numbits = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %numbits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %numbits, align 4
  %bitstream = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %bitstream to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bitstream, align 4
  %bitbuf = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 8
  %8 = ptrtoint ptr %bitbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bitbuf, align 4
  tail call void @hdlcdrv_transmitter(ptr noundef %dev, ptr noundef %s)
  %ptt = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %ptt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ptt, align 4
  %ptt_keyed = getelementptr inbounds %struct.hdlcdrv_state, ptr %s, i32 0, i32 10
  %10 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ptt_keyed, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %ptt_keyed, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hdlcdrv_register(ptr noundef %ops, i32 noundef %privsize, ptr noundef %ifname, i32 noundef %baseaddr, i32 noundef %irq, i32 noundef %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %privsize, i32 1716)
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef %0, ptr noundef %ifname, i8 noundef zeroext 0, ptr noundef nonnull @hdlcdrv_setup, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1522984824, ptr %add.ptr.i, align 4
  %ops5 = getelementptr i8, ptr %call, i32 2312
  %2 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops5, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %baseaddr, ptr %base_addr, align 32
  %irq6 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %4 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq6, align 4
  %conv = trunc i32 %dma to i8
  %dma7 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 53
  %5 = ptrtoint ptr %dma7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %dma7, align 1
  %call8 = tail call i32 @register_netdev(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call) #11
  tail call void @free_netdev(ptr noundef nonnull %call) #8
  %6 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %do.end ], [ %call, %if.end3.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcdrv_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_params = getelementptr i8, ptr %dev, i32 2340
  %0 = call ptr @memcpy(ptr %ch_params, ptr @hdlcdrv_setup.dflt_ch_params, i32 20)
  %ptt_keyed = getelementptr i8, ptr %dev, i32 4012
  %1 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ptt_keyed, align 4
  %hdlcrx = getelementptr i8, ptr %dev, i32 2360
  tail call void @__raw_spin_lock_init(ptr noundef %hdlcrx, ptr noundef nonnull @.str.7, ptr noundef nonnull @hdlcdrv_setup.__key, i16 noundef signext 3) #8
  %wr = getelementptr i8, ptr %dev, i32 2408
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wr, align 4
  %rd = getelementptr i8, ptr %dev, i32 2404
  %3 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rd, align 4
  %in_hdlc_rx = getelementptr i8, ptr %dev, i32 2476
  %4 = ptrtoint ptr %in_hdlc_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %in_hdlc_rx, align 4
  %rx_state = getelementptr i8, ptr %dev, i32 2480
  %5 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_state, align 4
  %hdlctx = getelementptr i8, ptr %dev, i32 2912
  tail call void @__raw_spin_lock_init(ptr noundef %hdlctx, ptr noundef nonnull @.str.9, ptr noundef nonnull @hdlcdrv_setup.__key.8, i16 noundef signext 3) #8
  %wr16 = getelementptr i8, ptr %dev, i32 2960
  %6 = ptrtoint ptr %wr16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wr16, align 4
  %rd19 = getelementptr i8, ptr %dev, i32 2956
  %7 = ptrtoint ptr %rd19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rd19, align 4
  %in_hdlc_tx = getelementptr i8, ptr %dev, i32 3028
  %8 = ptrtoint ptr %in_hdlc_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %in_hdlc_tx, align 4
  %tx_state = getelementptr i8, ptr %dev, i32 3032
  %9 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tx_state, align 4
  %numflags = getelementptr i8, ptr %dev, i32 3036
  %10 = ptrtoint ptr %numflags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %numflags, align 4
  %numbits = getelementptr i8, ptr %dev, i32 3060
  %11 = ptrtoint ptr %numbits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %numbits, align 4
  %bitbuf = getelementptr i8, ptr %dev, i32 3056
  %12 = ptrtoint ptr %bitbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bitbuf, align 4
  %bitstream = getelementptr i8, ptr %dev, i32 3040
  %13 = ptrtoint ptr %bitstream to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bitstream, align 4
  %ptt = getelementptr i8, ptr %dev, i32 3044
  %14 = ptrtoint ptr %ptt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ptt, align 4
  %slottime = getelementptr i8, ptr %dev, i32 2348
  %15 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slottime, align 4
  %slotcnt = getelementptr i8, ptr %dev, i32 3052
  %17 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %slotcnt, align 4
  %calibrate = getelementptr i8, ptr %dev, i32 3048
  %18 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %calibrate, align 4
  %bitbuf_channel = getelementptr i8, ptr %dev, i32 3476
  %wr30 = getelementptr i8, ptr %dev, i32 3480
  %19 = ptrtoint ptr %wr30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wr30, align 4
  %20 = ptrtoint ptr %bitbuf_channel to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bitbuf_channel, align 4
  %shreg = getelementptr i8, ptr %dev, i32 3484
  %21 = ptrtoint ptr %shreg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %shreg, align 4
  %bitbuf_hdlc = getelementptr i8, ptr %dev, i32 3744
  %wr34 = getelementptr i8, ptr %dev, i32 3748
  %22 = ptrtoint ptr %wr34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %wr34, align 4
  %23 = ptrtoint ptr %bitbuf_hdlc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bitbuf_hdlc, align 4
  %shreg38 = getelementptr i8, ptr %dev, i32 3752
  %24 = ptrtoint ptr %shreg38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %shreg38, align 4
  %skb = getelementptr i8, ptr %dev, i32 4016
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %skb, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hdlcdrv_netdev, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %27 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ax25_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 3, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 89, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %30 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %31 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %addr_len, align 1
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %32 = call ptr @memcpy(ptr %broadcast, ptr @ax25_bcast, i32 7)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ax25_defaddr, i32 noundef 7) #8
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %33 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %tx_queue_len, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdlcdrv_unregister(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %1)
  %cmp.not = icmp eq i32 %1, 1522984824
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !96

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/hamradio/hdlcdrv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 726, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

do.end7:                                          ; preds = %entry
  %opened = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %do.end7.if.end14_crit_edge, label %land.lhs.true

do.end7.if.end14_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end7
  %ops = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.hdlcdrv_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %land.lhs.true.if.end14_crit_edge, label %if.then10

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 %7(ptr noundef %dev) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true.if.end14_crit_edge, %do.end7.if.end14_crit_edge
  tail call void @unregister_netdev(ptr noundef %dev) #8
  tail call void @free_netdev(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlcdrv_cleanup_driver() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdrv_init_driver() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdrv_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %open = getelementptr inbounds %struct.hdlcdrv_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %opened = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %opened, align 4
  %wr = getelementptr i8, ptr %dev, i32 2408
  %5 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wr, align 4
  %rd = getelementptr i8, ptr %dev, i32 2404
  %6 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rd, align 4
  %in_hdlc_rx = getelementptr i8, ptr %dev, i32 2476
  %7 = ptrtoint ptr %in_hdlc_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_hdlc_rx, align 4
  %rx_state = getelementptr i8, ptr %dev, i32 2480
  %8 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_state, align 4
  %wr8 = getelementptr i8, ptr %dev, i32 2960
  %9 = ptrtoint ptr %wr8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wr8, align 4
  %rd11 = getelementptr i8, ptr %dev, i32 2956
  %10 = ptrtoint ptr %rd11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rd11, align 4
  %in_hdlc_tx = getelementptr i8, ptr %dev, i32 3028
  %11 = ptrtoint ptr %in_hdlc_tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %in_hdlc_tx, align 4
  %tx_state = getelementptr i8, ptr %dev, i32 3032
  %12 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tx_state, align 4
  %numflags = getelementptr i8, ptr %dev, i32 3036
  %13 = ptrtoint ptr %numflags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %numflags, align 4
  %numbits = getelementptr i8, ptr %dev, i32 3060
  %14 = ptrtoint ptr %numbits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %numbits, align 4
  %bitbuf = getelementptr i8, ptr %dev, i32 3056
  %15 = ptrtoint ptr %bitbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bitbuf, align 4
  %bitstream = getelementptr i8, ptr %dev, i32 3040
  %16 = ptrtoint ptr %bitstream to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bitstream, align 4
  %ptt = getelementptr i8, ptr %dev, i32 3044
  %17 = ptrtoint ptr %ptt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ptt, align 4
  %slottime = getelementptr i8, ptr %dev, i32 2348
  %18 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slottime, align 4
  %slotcnt = getelementptr i8, ptr %dev, i32 3052
  %20 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %slotcnt, align 4
  %calibrate = getelementptr i8, ptr %dev, i32 3048
  %21 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %calibrate, align 4
  %22 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %open, align 4
  %call23 = tail call i32 %23(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call23, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdrv_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %ops = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %close = getelementptr inbounds %struct.hdlcdrv_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 %5(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %skb = getelementptr i8, ptr %dev, i32 4016
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %7) #8
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %skb, align 4
  %opened = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %opened, align 4
  ret i32 %i.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdrv_send_packet(ptr noundef %skb, ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @ax25_ip_xmit(ptr noundef %skb) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not = icmp eq i8 %5, 0
  br i1 %cmp4.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ult i32 %7, 2
  br i1 %cmp.i, label %if.then6.do_kiss_params.exit_crit_edge, label %if.end.i

if.then6.do_kiss_params.exit_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_kiss_params.exit

if.end.i:                                         ; preds = %if.then6
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %5, label %if.end.i.do_kiss_params.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb5.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb25.i
    i8 5, label %sw.bb35.i
  ]

if.end.i.do_kiss_params.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_kiss_params.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1.i = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %ch_params.i = getelementptr i8, ptr %dev, i32 2340
  %11 = ptrtoint ptr %ch_params.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2.i, ptr %ch_params.i, align 4
  %mul.i = mul nuw nsw i32 %conv2.i, 10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %mul.i) #11
  br label %do_kiss_params.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr i8, ptr %3, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %13 to i32
  %ppersist.i = getelementptr i8, ptr %dev, i32 2352
  %14 = ptrtoint ptr %ppersist.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7.i, ptr %ppersist.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv7.i) #11
  br label %do_kiss_params.exit

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i = getelementptr i8, ptr %3, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %16 to i32
  %slottime.i = getelementptr i8, ptr %dev, i32 2348
  %17 = ptrtoint ptr %slottime.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17.i, ptr %slottime.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv17.i) #11
  br label %do_kiss_params.exit

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.i = getelementptr i8, ptr %3, i32 1
  %18 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %19 to i32
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2344
  %20 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv27.i, ptr %tx_tail.i, align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv27.i) #11
  br label %do_kiss_params.exit

sw.bb35.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36.i = getelementptr i8, ptr %3, i32 1
  %21 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i = icmp ne i8 %22, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %fulldup.i = getelementptr i8, ptr %dev, i32 2356
  %23 = ptrtoint ptr %fulldup.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lnot.ext.i, ptr %fulldup.i, align 4
  %cond.i = select i1 %tobool.i, ptr @.str.24, ptr @.str.25
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %cond.i) #11
  br label %do_kiss_params.exit

do_kiss_params.exit:                              ; preds = %sw.bb35.i, %sw.bb25.i, %sw.bb15.i, %sw.bb5.i, %sw.bb.i, %if.end.i.do_kiss_params.exit_crit_edge, %if.then6.do_kiss_params.exit_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %skb9 = getelementptr i8, ptr %dev, i32 4016
  %24 = ptrtoint ptr %skb9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb9, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %28 = ptrtoint ptr %skb9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %skb9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %do_kiss_params.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %do_kiss_params.exit ], [ 0, %if.then10 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdrv_set_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdrv_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #0 align 64 {
entry:
  %bi = alloca %struct.hdlcdrv_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %bi) #8
  %0 = call ptr @memset(ptr %bi, i32 255, i32 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35312
  br i1 %cmp.not, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #12
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bi, i32 noundef 132) #8
  %2 = call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bi, ptr noundef %data, i32 noundef 132) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 132, %if.then.i.if.then11.i.i_crit_edge ], [ 132, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 132, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %bi, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %6 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %7, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb30
    i32 0, label %sw.bb54
    i32 1, label %sw.bb71
    i32 22, label %sw.bb103
    i32 20, label %sw.bb122
    i32 21, label %sw.bb134
    i32 30, label %sw.bb154
    i32 31, label %sw.bb168
    i32 43, label %sw.bb188
  ]

sw.default:                                       ; preds = %if.end6
  %ops = getelementptr i8, ptr %dev, i32 2312
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %sw.default.cleanup_crit_edge, label %land.lhs.true

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.default
  %ioctl = getelementptr inbounds %struct.hdlcdrv_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioctl, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 %12(ptr noundef %dev, ptr noundef %data, ptr noundef nonnull %bi, i32 noundef 35312) #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %ch_params = getelementptr i8, ptr %dev, i32 2340
  %13 = ptrtoint ptr %ch_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch_params, align 4
  %data16 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %15 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %data16, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2344
  %16 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_tail, align 4
  %tx_tail20 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %tx_tail20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_tail20, align 4
  %slottime = getelementptr i8, ptr %dev, i32 2348
  %19 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slottime, align 4
  %slottime23 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %slottime23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %slottime23, align 4
  %ppersist = getelementptr i8, ptr %dev, i32 2352
  %22 = ptrtoint ptr %ppersist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ppersist, align 4
  %ppersist26 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %ppersist26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ppersist26, align 4
  %fulldup = getelementptr i8, ptr %dev, i32 2356
  %25 = ptrtoint ptr %fulldup to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fulldup, align 4
  %fulldup29 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %fulldup29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fulldup29, align 4
  br label %if.then.i279

sw.bb30:                                          ; preds = %if.end6
  %call31 = call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call31, label %if.end33, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %data34 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %28 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data34, align 4
  %ch_params36 = getelementptr i8, ptr %dev, i32 2340
  %30 = ptrtoint ptr %ch_params36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ch_params36, align 4
  %tx_tail39 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %tx_tail39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_tail39, align 4
  %tx_tail41 = getelementptr i8, ptr %dev, i32 2344
  %33 = ptrtoint ptr %tx_tail41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tx_tail41, align 4
  %slottime43 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %slottime43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slottime43, align 4
  %slottime45 = getelementptr i8, ptr %dev, i32 2348
  %36 = ptrtoint ptr %slottime45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %slottime45, align 4
  %ppersist47 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %ppersist47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ppersist47, align 4
  %ppersist49 = getelementptr i8, ptr %dev, i32 2352
  %39 = ptrtoint ptr %ppersist49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ppersist49, align 4
  %fulldup51 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 4
  %40 = ptrtoint ptr %fulldup51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fulldup51, align 4
  %fulldup53 = getelementptr i8, ptr %dev, i32 2356
  %42 = ptrtoint ptr %fulldup53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fulldup53, align 4
  %slotcnt = getelementptr i8, ptr %dev, i32 3052
  %43 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %slotcnt, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %44 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_addr, align 32
  %data55 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %46 = ptrtoint ptr %data55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %data55, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %irq57 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %irq57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq57, align 4
  %dma = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 53
  %50 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dma, align 1
  %conv = zext i8 %51 to i32
  %dma59 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %dma59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv, ptr %dma59, align 4
  %ptt_out = getelementptr i8, ptr %dev, i32 2320
  %53 = ptrtoint ptr %ptt_out to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ptt_out, align 4
  %dma261 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %dma261 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dma261, align 4
  %seriobase = getelementptr i8, ptr %dev, i32 2324
  %56 = ptrtoint ptr %seriobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %seriobase, align 4
  %seriobase64 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 4
  %58 = ptrtoint ptr %seriobase64 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %seriobase64, align 4
  %pariobase = getelementptr i8, ptr %dev, i32 2328
  %59 = ptrtoint ptr %pariobase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pariobase, align 4
  %pariobase67 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 5
  %61 = ptrtoint ptr %pariobase67 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pariobase67, align 4
  %midiiobase = getelementptr i8, ptr %dev, i32 2332
  %62 = ptrtoint ptr %midiiobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %midiiobase, align 4
  %midiiobase70 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 6
  %64 = ptrtoint ptr %midiiobase70 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %midiiobase70, align 4
  br label %if.then.i279

sw.bb71:                                          ; preds = %if.end6
  %call72 = call zeroext i1 @capable(i32 noundef 17) #8
  br i1 %call72, label %lor.lhs.false, label %sw.bb71.cleanup_crit_edge

sw.bb71.cleanup_crit_edge:                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb71
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end76, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %data77 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %67 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data77, align 4
  %base_addr79 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %69 = ptrtoint ptr %base_addr79 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %base_addr79, align 32
  %irq81 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %70 = ptrtoint ptr %irq81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq81, align 4
  %irq82 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %72 = ptrtoint ptr %irq82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %irq82, align 4
  %dma84 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %73 = ptrtoint ptr %dma84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma84, align 4
  %conv85 = trunc i32 %74 to i8
  %dma86 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 53
  %75 = ptrtoint ptr %dma86 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv85, ptr %dma86, align 1
  %dma288 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 3
  %76 = ptrtoint ptr %dma288 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma288, align 4
  %ptt_out89 = getelementptr i8, ptr %dev, i32 2320
  %78 = ptrtoint ptr %ptt_out89 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %ptt_out89, align 4
  %seriobase92 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 4
  %79 = ptrtoint ptr %seriobase92 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %seriobase92, align 4
  %seriobase94 = getelementptr i8, ptr %dev, i32 2324
  %81 = ptrtoint ptr %seriobase94 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %seriobase94, align 4
  %pariobase96 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 5
  %82 = ptrtoint ptr %pariobase96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pariobase96, align 4
  %pariobase98 = getelementptr i8, ptr %dev, i32 2328
  %84 = ptrtoint ptr %pariobase98 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %pariobase98, align 4
  %midiiobase100 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 6
  %85 = ptrtoint ptr %midiiobase100 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %midiiobase100, align 4
  %midiiobase102 = getelementptr i8, ptr %dev, i32 2332
  %87 = ptrtoint ptr %midiiobase102 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %midiiobase102, align 4
  br label %cleanup

sw.bb103:                                         ; preds = %if.end6
  %ptt.i = getelementptr i8, ptr %dev, i32 3044
  %88 = ptrtoint ptr %ptt.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ptt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %sw.bb103.hdlcdrv_ptt.exit_crit_edge

sw.bb103.hdlcdrv_ptt.exit_crit_edge:              ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlcdrv_ptt.exit

lor.rhs.i:                                        ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #10
  %calibrate.i = getelementptr i8, ptr %dev, i32 3048
  %90 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %calibrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i = icmp sgt i32 %91, 0
  %phi.cast.i = zext i1 %cmp.i to i32
  br label %hdlcdrv_ptt.exit

hdlcdrv_ptt.exit:                                 ; preds = %lor.rhs.i, %sw.bb103.hdlcdrv_ptt.exit_crit_edge
  %92 = phi i32 [ 1, %sw.bb103.hdlcdrv_ptt.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %data105 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %93 = ptrtoint ptr %data105 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %data105, align 4
  %dcd = getelementptr i8, ptr %dev, i32 2496
  %94 = ptrtoint ptr %dcd to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dcd, align 4
  %conv106 = zext i8 %95 to i32
  %dcd108 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %96 = ptrtoint ptr %dcd108 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv106, ptr %dcd108, align 4
  %ptt_keyed = getelementptr i8, ptr %dev, i32 4012
  %97 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptt_keyed, align 4
  %ptt_keyed110 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %99 = ptrtoint ptr %ptt_keyed110 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %ptt_keyed110, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %100 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_packets, align 4
  %tx_packets112 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 3
  %102 = ptrtoint ptr %tx_packets112 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %tx_packets112, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %103 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_errors, align 4
  %tx_errors115 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 4
  %105 = ptrtoint ptr %tx_errors115 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %tx_errors115, align 4
  %106 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %stats, align 8
  %rx_packets118 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 5
  %108 = ptrtoint ptr %rx_packets118 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %rx_packets118, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %109 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_errors, align 8
  %rx_errors121 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 6
  %111 = ptrtoint ptr %rx_errors121 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rx_errors121, align 4
  br label %if.then.i279

sw.bb122:                                         ; preds = %if.end6
  %ptt.i285 = getelementptr i8, ptr %dev, i32 3044
  %112 = ptrtoint ptr %ptt.i285 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ptt.i285, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i286 = icmp eq i8 %113, 0
  br i1 %tobool.not.i286, label %lor.rhs.i290, label %sw.bb122.hdlcdrv_ptt.exit291_crit_edge

sw.bb122.hdlcdrv_ptt.exit291_crit_edge:           ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlcdrv_ptt.exit291

lor.rhs.i290:                                     ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #10
  %calibrate.i287 = getelementptr i8, ptr %dev, i32 3048
  %114 = ptrtoint ptr %calibrate.i287 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %calibrate.i287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i288 = icmp sgt i32 %115, 0
  %phi.cast.i289 = zext i1 %cmp.i288 to i32
  br label %hdlcdrv_ptt.exit291

hdlcdrv_ptt.exit291:                              ; preds = %lor.rhs.i290, %sw.bb122.hdlcdrv_ptt.exit291_crit_edge
  %116 = phi i32 [ 1, %sw.bb122.hdlcdrv_ptt.exit291_crit_edge ], [ %phi.cast.i289, %lor.rhs.i290 ]
  %data124 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %117 = ptrtoint ptr %data124 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %data124, align 4
  %dcd127 = getelementptr i8, ptr %dev, i32 2496
  %118 = ptrtoint ptr %dcd127 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %dcd127, align 4
  %conv128 = zext i8 %119 to i32
  %dcd130 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %120 = ptrtoint ptr %dcd130 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv128, ptr %dcd130, align 4
  %ptt_keyed131 = getelementptr i8, ptr %dev, i32 4012
  %121 = ptrtoint ptr %ptt_keyed131 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ptt_keyed131, align 4
  %ptt_keyed133 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %123 = ptrtoint ptr %ptt_keyed133 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ptt_keyed133, align 4
  br label %if.then.i279

sw.bb134:                                         ; preds = %if.end6
  %call135 = call zeroext i1 @capable(i32 noundef 17) #8
  br i1 %call135, label %if.end137, label %sw.bb134.cleanup_crit_edge

sw.bb134.cleanup_crit_edge:                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end137:                                        ; preds = %sw.bb134
  %par = getelementptr i8, ptr %dev, i32 2316
  %124 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp138 = icmp slt i32 %125, 1
  br i1 %cmp138, label %if.end137.cleanup_crit_edge, label %if.end141

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end141:                                        ; preds = %if.end137
  %data142 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %126 = ptrtoint ptr %data142 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data142, align 4
  %div296 = udiv i32 2147483647, %125
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %div296)
  %cmp145 = icmp ugt i32 %127, %div296
  br i1 %cmp145, label %if.end141.cleanup_crit_edge, label %if.end148

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %127, %125
  %div152275 = lshr i32 %mul, 4
  %calibrate = getelementptr i8, ptr %dev, i32 3048
  %128 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %div152275, ptr %calibrate, align 4
  br label %cleanup

sw.bb154:                                         ; preds = %if.end6
  %bitbuf_channel = getelementptr i8, ptr %dev, i32 3476
  %129 = ptrtoint ptr %bitbuf_channel to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bitbuf_channel, align 4
  %wr = getelementptr i8, ptr %dev, i32 3480
  %131 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %wr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp156 = icmp eq i32 %130, %132
  br i1 %cmp156, label %sw.bb154.cleanup_crit_edge, label %if.end159

sw.bb154.cleanup_crit_edge:                       ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end159:                                        ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.hdlcdrv_state, ptr %add.ptr.i, i32 0, i32 8, i32 3, i32 %130
  %133 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx, align 1
  %data163 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %135 = ptrtoint ptr %data163 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %data163, align 4
  %add = add i32 %130, 1
  %rem = and i32 %add, 255
  %136 = ptrtoint ptr %bitbuf_channel to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %rem, ptr %bitbuf_channel, align 4
  br label %if.then.i279

sw.bb168:                                         ; preds = %if.end6
  %bitbuf_hdlc = getelementptr i8, ptr %dev, i32 3744
  %137 = ptrtoint ptr %bitbuf_hdlc to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bitbuf_hdlc, align 4
  %wr171 = getelementptr i8, ptr %dev, i32 3748
  %139 = ptrtoint ptr %wr171 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %wr171, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp172 = icmp eq i32 %138, %140
  br i1 %cmp172, label %sw.bb168.cleanup_crit_edge, label %if.end175

sw.bb168.cleanup_crit_edge:                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end175:                                        ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx180 = getelementptr %struct.hdlcdrv_state, ptr %add.ptr.i, i32 0, i32 9, i32 3, i32 %138
  %141 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx180, align 1
  %data181 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %143 = ptrtoint ptr %data181 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %data181, align 4
  %add184 = add i32 %138, 1
  %rem185 = and i32 %add184, 255
  %144 = ptrtoint ptr %bitbuf_hdlc to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %rem185, ptr %bitbuf_hdlc, align 4
  br label %if.then.i279

sw.bb188:                                         ; preds = %if.end6
  %ops189 = getelementptr i8, ptr %dev, i32 2312
  %145 = ptrtoint ptr %ops189 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops189, align 4
  %tobool190.not = icmp eq ptr %146, null
  br i1 %tobool190.not, label %sw.bb188.if.end199_crit_edge, label %land.lhs.true191

sw.bb188.if.end199_crit_edge:                     ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

land.lhs.true191:                                 ; preds = %sw.bb188
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %tobool193.not = icmp eq ptr %148, null
  br i1 %tobool193.not, label %land.lhs.true191.if.end199_crit_edge, label %if.then194

land.lhs.true191.if.end199_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.then194:                                       ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #10
  %data195 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %call198 = call i32 @strlcpy(ptr noundef %data195, ptr noundef nonnull %148, i32 noundef 32) #8
  br label %if.then.i279

if.end199:                                        ; preds = %land.lhs.true191.if.end199_crit_edge, %sw.bb188.if.end199_crit_edge
  %data200 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %bi, i32 0, i32 1
  %149 = ptrtoint ptr %data200 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %data200, align 4
  br label %if.then.i279

if.then.i279:                                     ; preds = %if.end199, %if.then194, %if.end175, %if.end159, %hdlcdrv_ptt.exit291, %hdlcdrv_ptt.exit, %sw.bb54, %sw.bb
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i278 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i278, label %if.then.i279.cleanup_crit_edge, label %copy_to_user.exit

if.then.i279.cleanup_crit_edge:                   ; preds = %if.then.i279
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i279
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i283 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bi, i32 noundef 132) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %bi, i32 noundef 132) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool203.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool203.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i279.cleanup_crit_edge, %sw.bb168.cleanup_crit_edge, %sw.bb154.cleanup_crit_edge, %if.end148, %if.end141.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %sw.bb134.cleanup_crit_edge, %if.end76, %lor.lhs.false.cleanup_crit_edge, %sw.bb71.cleanup_crit_edge, %if.end33, %sw.bb30.cleanup_crit_edge, %if.then11, %land.lhs.true.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then11 ], [ 0, %if.end148 ], [ 0, %if.end76 ], [ 0, %if.end33 ], [ -515, %entry.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %sw.default.cleanup_crit_edge ], [ -13, %sw.bb30.cleanup_crit_edge ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %sw.bb71.cleanup_crit_edge ], [ -1, %sw.bb134.cleanup_crit_edge ], [ -22, %if.end137.cleanup_crit_edge ], [ -22, %if.end141.cleanup_crit_edge ], [ -11, %sw.bb154.cleanup_crit_edge ], [ -11, %sw.bb168.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i279.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %bi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ip_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 712, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hdlcdrv_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hdlcdrv_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_hdlcdrv_receiver, !7, !"__ksymtab_hdlcdrv_receiver", i1 false, i1 false}
!7 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 737, i32 1}
!8 = !{ptr @__ksymtab_hdlcdrv_transmitter, !9, !"__ksymtab_hdlcdrv_transmitter", i1 false, i1 false}
!9 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 738, i32 1}
!10 = !{ptr @__ksymtab_hdlcdrv_arbitrate, !11, !"__ksymtab_hdlcdrv_arbitrate", i1 false, i1 false}
!11 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 739, i32 1}
!12 = !{ptr @__ksymtab_hdlcdrv_register, !13, !"__ksymtab_hdlcdrv_register", i1 false, i1 false}
!13 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 740, i32 1}
!14 = !{ptr @__ksymtab_hdlcdrv_unregister, !15, !"__ksymtab_hdlcdrv_unregister", i1 false, i1 false}
!15 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 741, i32 1}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 756, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hdlcdrv_cleanup_driver._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hdlcdrv_cleanup_driver._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author457, !22, !"__UNIQUE_ID_author457", i1 false, i1 false}
!22 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 761, i32 1}
!23 = !{ptr @__UNIQUE_ID_description458, !24, !"__UNIQUE_ID_description458", i1 false, i1 false}
!24 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 762, i32 1}
!25 = !{ptr @__UNIQUE_ID_file459, !26, !"__UNIQUE_ID_file459", i1 false, i1 false}
!26 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 763, i32 1}
!27 = !{ptr @__UNIQUE_ID_license460, !26, !"__UNIQUE_ID_license460", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_hdlcdrv__461_764_hdlcdrv_init_driver6, !29, !"__initcall__kmod_hdlcdrv__461_764_hdlcdrv_init_driver6", i1 false, i1 false}
!29 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 764, i32 1}
!30 = !{ptr @__exitcall_hdlcdrv_cleanup_driver, !31, !"__exitcall_hdlcdrv_cleanup_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 765, i32 1}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 144, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hdlc_rx_flag._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hdlc_rx_flag._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @hdlcdrv_setup.dflt_ch_params, !38, !"dflt_ch_params", i1 false, i1 false}
!38 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 632, i32 45}
!39 = !{ptr @hdlcdrv_setup.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 643, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hdlcdrv_setup.__key.8, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 648, i32 2}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hdlcdrv_netdev, !46, !"hdlcdrv_netdev", i1 false, i1 false}
!46 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 619, i32 36}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 227, i32 3}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @do_kiss_params._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @do_kiss_params._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 231, i32 3}
!54 = !{ptr @do_kiss_params._entry.12, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @do_kiss_params._entry_ptr.14, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 235, i32 3}
!58 = !{ptr @do_kiss_params._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @do_kiss_params._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 239, i32 3}
!62 = !{ptr @do_kiss_params._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @do_kiss_params._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 243, i32 3}
!66 = !{ptr @do_kiss_params._entry.21, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @do_kiss_params._entry_ptr.23, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!72 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 747, i32 2}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hdlcdrv_init_driver._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @hdlcdrv_init_driver._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/hamradio/hdlcdrv.c", i32 748, i32 2}
!84 = !{ptr @hdlcdrv_init_driver._entry.31, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @hdlcdrv_init_driver._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2156924630, i64 2156925125, i64 2156924667, i64 2156924723, i64 2156924757, i64 2156924781, i64 2156924822, i64 2156924843, i64 2156924871, i64 2156924905}
!98 = !{i64 4777497}
!99 = !{i64 4777694}
!100 = !{i64 2152262927}
