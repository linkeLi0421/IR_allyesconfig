; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/etas_es58x/es58x_core.c_pt.bc'
source_filename = "../drivers/net/can/usb/etas_es58x/es58x_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.es58x_parameters = type { ptr, ptr, ptr, i32, %struct.can_clock, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.can_clock = type { i32 }
%struct.es58x_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.156, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.156 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.es58x_device = type { ptr, ptr, [2 x ptr], ptr, ptr, i32, i32, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.atomic_t, i64, i64, [100 x i64], i16, i8, i8, i16, %union.es58x_urb_cmd }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.es58x_urb_cmd = type <{ %struct.anon.151, [7805 x i8] }>
%struct.anon.151 = type { i16, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.153, i8, i8, i8, [8 x i8] }
%union.anon.153 = type { i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author464 = internal constant [63 x i8] c"etas_es58x.author=Vincent Mailhol <mailhol.vincent@wanadoo.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_author465 = internal constant [77 x i8] c"etas_es58x.author=Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [69 x i8] c"etas_es58x.description=Socket CAN driver for ETAS ES58X USB adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_version467 = internal constant [24 x i8] c"etas_es58x.version=1.00\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"etas_es58x\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file468 = internal constant [58 x i8] c"etas_es58x.file=drivers/net/can/usb/etas_es58x/etas_es58x\00", section ".modinfo", align 1
@__UNIQUE_ID_license469 = internal constant [26 x i8] c"etas_es58x.license=GPL v2\00", section ".modinfo", align 1
@es58x_rx_timestamp.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"es58x_rx_timestamp\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/can/usb/etas_es58x/es58x_core.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: request round-trip time: %llu ns\0A\00", [58 x i8] zeroinitializer }, align 32
@es58x_rx_timestamp.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Device timestamp: %llu, diff with kernel: %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: %s is down, dropping %d echo packets\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.es58x_can_get_echo_skb = private unnamed_addr constant [23 x i8] c"es58x_can_get_echo_skb\00", align 1
@es58x_can_get_echo_skb.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_can_get_echo_skb, ptr @.str.4, ptr @.str.8, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Bus is off or device is restarting. Ignoring %u echo packets from index %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Received %u echo packets from index: %u but echo skb queue is empty.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not find echo skb for echo packet index: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Received %u echo packets but have only %d echo skb. Dropping %d echo skb\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Only %d entries left in device queue, num_echo_skb: %d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: DLC is %d but maximum should be %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.es58x_rx_can_msg = private unnamed_addr constant [17 x i8] c"es58x_rx_can_msg\00", align 1
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s is down, dropping packet\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.es58x_rx_err_msg = private unnamed_addr constant [17 x i8] c"es58x_rx_err_msg\00", align 1
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Both error and event are zero\0A\00", [61 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.16, i8 0, i8 -84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Error BITSTUFF\0A\00", [16 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.17, i8 0, i8 -82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Error FORMAT\0A\00", [18 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.18, i8 0, i8 -80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Error ACK\0A\00", [21 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.19, i8 0, i8 -78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Error BIT\0A\00", [21 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.20, i8 0, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Error CRC\0A\00", [21 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.21, i8 0, i8 -75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Error: expected a recessive bit but monitored a dominant one\0A\00", [34 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.22, i8 0, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Error expected a dominant bit but monitored a recessive one\0A\00", [35 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.23, i8 0, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Error OVERLOAD\0A\00", [16 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.24, i8 0, i8 -69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unspecified error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unspecified error code 0x%04X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: state transition: BUS OFF -> ACTIVE\0A\00", [55 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.27, i8 0, i8 -63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Event CAN BUS ACTIVE\0A\00", [42 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.28, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Event CAN BUS PASSIVE\0A\00", [41 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.29, i8 0, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Event CAN BUS WARNING\0A\00", [41 x i8] zeroinitializer }, align 32
@es58x_rx_err_msg.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_rx_err_msg, ptr @.str.4, ptr @.str.30, i8 0, i8 -52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Event CAN BUS OFF\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Lost connection on either CAN high or CAN low\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unspecified event code 0x%04X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Got %d consecutive warning events with no successful RX or TX. Forcing bus-off\0A\00", [48 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"es58x_rx_cmd_ret_u8\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: OK\0A\00", [24 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 938, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unspecified failure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8._entry_ptr = internal global ptr @es58x_rx_cmd_ret_u8._entry, section ".printk_index", align 4
@es58x_rx_cmd_ret_u8._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.4, i32 942, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: device ran out of memory\0A\00", [34 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8._entry_ptr.42 = internal global ptr @es58x_rx_cmd_ret_u8._entry.40, section ".printk_index", align 4
@es58x_rx_cmd_ret_u8._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.4, i32 947, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: CRC of previous command is incorrect\0A\00", [54 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8._entry_ptr.45 = internal global ptr @es58x_rx_cmd_ret_u8._entry.43, section ".printk_index", align 4
@es58x_rx_cmd_ret_u8._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.4, i32 952, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: returned unknown value: 0x%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u8._entry_ptr.48 = internal global ptr @es58x_rx_cmd_ret_u8._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: %s (Serial Number %s): CAN%d channel becomes ready\0A\00", [40 x i8] zeroinitializer }, align 32
@es58x_rx_cmd_ret_u32.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.4, ptr @.str.36, i8 0, i8 -7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"es58x_rx_cmd_ret_u32\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s: channel is already opened, closing and re-opening it to reflect new configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: channel is already closed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: some incompatible parameters have been adjusted\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: TX messages might have been reordered\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: command timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: fifo is full\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: bad configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: no resource available\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s returned unknown value: 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@__initcall__kmod_etas_es58x__495_2290_es58x_driver_init6 = internal global ptr @es58x_driver_init, section ".initcall6.init", align 4
@es58x_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @es58x_probe, ptr @es58x_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @es58x_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_es58x_driver_exit = internal global ptr @es58x_driver_exit, section ".exitcall.exit", align 4
@.str.60 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Bad echo packet index: %u. First index: %u, end index %u, num_echo_skb: %02u/%02u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Received echo index is from the past. Ignoring it\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Received echo index is from the future. Ignoring it\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Recovery: dropping %u echo skb from index %u to %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Set bittiming\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Enable channel\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Disable channel\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Transmit message\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reset RX\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reset TX\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Device error\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@es58x_alloc_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1554, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No memory left for URBs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"es58x_alloc_urb\00", [16 x i8] zeroinitializer }, align 32
@es58x_alloc_urb._entry_ptr = internal global ptr @es58x_alloc_urb._entry, section ".printk_index", align 4
@es58x_alloc_urb._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.4, i32 1561, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@es58x_alloc_urb._entry_ptr.76 = internal global ptr @es58x_alloc_urb._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: USB send urb failure: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.es58x_submit_urb = private unnamed_addr constant [17 x i8] c"es58x_submit_urb\00", align 1
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: error %pe\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.es58x_write_bulk_callback = private unnamed_addr constant [26 x i8] c"es58x_write_bulk_callback\00", align 1
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"etas_es58x urb->transfer_buffer: \00", [62 x i8] zeroinitializer }, align 32
@es58x_write_bulk_callback.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_write_bulk_callback, ptr @.str.4, ptr @.str.78, i8 1, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@es58x_id_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4236, i16 345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 515, i16 4236, i16 360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 515, i16 4236, i16 361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@es58x_init_es58x_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 2186, ptr @.str.83, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Starting %s %s (Serial Number %s) driver version %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"es58x_init_es58x_dev\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@es58x_init_es58x_dev._entry_ptr = internal global ptr @es58x_init_es58x_dev._entry, section ".printk_index", align 4
@es58x_fd_param = external dso_local constant %struct.es58x_parameters, align 4
@es58x_fd_ops = external dso_local constant %struct.es58x_operators, align 4
@es581_4_param = external dso_local constant %struct.es58x_parameters, align 4
@es581_4_ops = external dso_local constant %struct.es58x_operators, align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@es58x_get_product_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 2150, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Could not read the product info: %pe\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"es58x_get_product_info\00", [41 x i8] zeroinitializer }, align 32
@es58x_get_product_info._entry_ptr = internal global ptr @es58x_get_product_info._entry, section ".printk_index", align 4
@es58x_get_product_info._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.4, i32 2156, ptr @.str.91, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Buffer is too small, result might be truncated\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@es58x_get_product_info._entry_ptr.92 = internal global ptr @es58x_get_product_info._entry.89, section ".printk_index", align 4
@es58x_get_product_info._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.4, i32 2158, ptr @.str.83, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Product info: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@es58x_get_product_info._entry_ptr.95 = internal global ptr @es58x_get_product_info._entry.93, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@es58x_init_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 2083, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not allocate candev\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"es58x_init_netdev\00", [46 x i8] zeroinitializer }, align 32
@es58x_init_netdev._entry_ptr = internal global ptr @es58x_init_netdev._entry, section ".printk_index", align 4
@es58x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @es58x_open, ptr @es58x_stop, ptr @es58x_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Could not open the network device: %pe\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.es58x_open = private unnamed_addr constant [11 x i8] c"es58x_open\00", align 1
@es58x_alloc_rx_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 1739, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Could not setup any rx URBs\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"es58x_alloc_rx_urbs\00", [44 x i8] zeroinitializer }, align 32
@es58x_alloc_rx_urbs._entry_ptr = internal global ptr @es58x_alloc_rx_urbs._entry, section ".printk_index", align 4
@es58x_alloc_rx_urbs.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 1, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Allocated %d rx URBs each of size %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.es58x_read_bulk_callback = private unnamed_addr constant [25 x i8] c"es58x_read_bulk_callback\00", align 1
@es58x_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, i32 1423, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry_ptr = internal global ptr @es58x_read_bulk_callback._entry, section ".printk_index", align 4
@es58x_read_bulk_callback.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, ptr @.str.80, i8 1, i8 100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@es58x_read_bulk_callback._rs.102 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, i32 1430, ptr @.str.91, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: error %pe. Device unplugged?\0A\00", [62 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry_ptr.105 = internal global ptr @es58x_read_bulk_callback._entry.103, section ".printk_index", align 4
@es58x_read_bulk_callback._rs.106 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, i32 1436, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry_ptr.108 = internal global ptr @es58x_read_bulk_callback._entry.107, section ".printk_index", align 4
@es58x_read_bulk_callback._rs.109 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, ptr @.str.78, i8 1, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@es58x_read_bulk_callback._rs.110 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, i32 1446, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry_ptr.112 = internal global ptr @es58x_read_bulk_callback._entry.111, section ".printk_index", align 4
@es58x_read_bulk_callback._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, i32 1453, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"es58x_split_urb() returned error %pe\00", [59 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry_ptr.115 = internal global ptr @es58x_read_bulk_callback._entry.113, section ".printk_index", align 4
@es58x_read_bulk_callback.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, ptr @.str.80, i8 1, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@es58x_read_bulk_callback._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @__func__.es58x_read_bulk_callback, ptr @.str.4, i32 1477, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed resubmitting read bulk urb: %pe\0A\00", [56 x i8] zeroinitializer }, align 32
@es58x_read_bulk_callback._entry_ptr.119 = internal global ptr @es58x_read_bulk_callback._entry.117, section ".printk_index", align 4
@es58x_handle_incomplete_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.es58x_handle_incomplete_cmd = private unnamed_addr constant [28 x i8] c"es58x_handle_incomplete_cmd\00", align 1
@es58x_handle_incomplete_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.es58x_handle_incomplete_cmd, ptr @.str.4, i32 1326, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Could not reconstitute incomplete command from previous URB, dropping %d bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@es58x_handle_incomplete_cmd._entry_ptr = internal global ptr @es58x_handle_incomplete_cmd._entry, section ".printk_index", align 4
@es58x_handle_incomplete_cmd._rs.121 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_handle_incomplete_cmd._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @__func__.es58x_handle_incomplete_cmd, ptr @.str.4, i32 1330, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Error code: %pe, es58x_dev->rx_cmd_buf_len: %d, urb->actual_length: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@es58x_handle_incomplete_cmd._entry_ptr.124 = internal global ptr @es58x_handle_incomplete_cmd._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"etas_es58x &es58x_dev->rx_cmd_buf: \00", [60 x i8] zeroinitializer }, align 32
@es58x_check_rx_urb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.es58x_check_rx_urb = private unnamed_addr constant [19 x i8] c"es58x_check_rx_urb\00", align 1
@es58x_check_rx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @__func__.es58x_check_rx_urb, ptr @.str.4, i32 1186, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: Expected sequence 0x%04X for start of frame but got 0x%04X.\0A\00", [63 x i8] zeroinitializer }, align 32
@es58x_check_rx_urb._entry_ptr = internal global ptr @es58x_check_rx_urb._entry, section ".printk_index", align 4
@es58x_check_rx_urb._rs.127 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_check_rx_urb._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @__func__.es58x_check_rx_urb, ptr @.str.4, i32 1196, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: Biggest expected size for rx urb_cmd is %u but receive a command of size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@es58x_check_rx_urb._entry_ptr.130 = internal global ptr @es58x_check_rx_urb._entry.128, section ".printk_index", align 4
@es58x_check_crc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.es58x_check_crc = private unnamed_addr constant [16 x i8] c"es58x_check_crc\00", align 1
@es58x_check_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @__func__.es58x_check_crc, ptr @.str.4, i32 144, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Bad CRC, urb_len: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@es58x_check_crc._entry_ptr = internal global ptr @es58x_check_crc._entry, section ".printk_index", align 4
@es58x_handle_urb_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.es58x_handle_urb_cmd = private unnamed_addr constant [21 x i8] c"es58x_handle_urb_cmd\00", align 1
@es58x_handle_urb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @__func__.es58x_handle_urb_cmd, ptr @.str.4, i32 1105, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device is not ready\0A\00", [43 x i8] zeroinitializer }, align 32
@es58x_handle_urb_cmd._entry_ptr = internal global ptr @es58x_handle_urb_cmd._entry, section ".printk_index", align 4
@es58x_handle_urb_cmd._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @__func__.es58x_handle_urb_cmd, ptr @.str.4, i32 1118, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ops->handle_urb_cmd() returned error %pe\00", [55 x i8] zeroinitializer }, align 32
@es58x_handle_urb_cmd._entry_ptr.135 = internal global ptr @es58x_handle_urb_cmd._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"etas_es58x urb_cmd: \00", [43 x i8] zeroinitializer }, align 32
@es58x_handle_urb_cmd._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @__func__.es58x_handle_urb_cmd, ptr @.str.4, i32 1128, ptr @.str.139, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ops->handle_urb_cmd() returned error %pe, detaching all network devices\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@es58x_handle_urb_cmd._entry_ptr.140 = internal global ptr @es58x_handle_urb_cmd._entry.137, section ".printk_index", align 4
@es58x_split_urb_try_recovery._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.es58x_split_urb_try_recovery = private unnamed_addr constant [29 x i8] c"es58x_split_urb_try_recovery\00", align 1
@es58x_split_urb_try_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @__func__.es58x_split_urb_try_recovery, ptr @.str.4, i32 1276, ptr @.str.83, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Recovery successful! Dropped %d bytes (urb_cmd_len: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@es58x_split_urb_try_recovery._entry_ptr = internal global ptr @es58x_split_urb_try_recovery._entry, section ".printk_index", align 4
@es58x_split_urb_try_recovery._rs.142 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@es58x_split_urb_try_recovery._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @__func__.es58x_split_urb_try_recovery, ptr @.str.4, i32 1285, ptr @.str.91, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Recovery failed\0A\00", [43 x i8] zeroinitializer }, align 32
@es58x_split_urb_try_recovery._entry_ptr.145 = internal global ptr @es58x_split_urb_try_recovery._entry.143, section ".printk_index", align 4
@es58x_set_realtime_diff_ns._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.4, i32 233, ptr @.str.91, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Previous request to set timestamp has not completed yet\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"es58x_set_realtime_diff_ns\00", [37 x i8] zeroinitializer }, align 32
@es58x_set_realtime_diff_ns._entry_ptr = internal global ptr @es58x_set_realtime_diff_ns._entry, section ".printk_index", align 4
@es58x_free_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 1758, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Timeout, some TX urbs still remain\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"es58x_free_urbs\00", [16 x i8] zeroinitializer }, align 32
@es58x_free_urbs._entry_ptr = internal global ptr @es58x_free_urbs._entry, section ".printk_index", align 4
@es58x_free_urbs._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.4, i32 1771, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"All idle urbs were freed but tx_urb_idle_cnt is %d\0A\00", [44 x i8] zeroinitializer }, align 32
@es58x_free_urbs._entry_ptr.152 = internal global ptr @es58x_free_urbs._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: dropping %d TX messages\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.es58x_flush_pending_tx_msg = private unnamed_addr constant [27 x i8] c"es58x_flush_pending_tx_msg\00", align 1
@.str.154 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: send message failure: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.es58x_start_xmit = private unnamed_addr constant [17 x i8] c"es58x_start_xmit\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@es58x_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.4, i32 2276, ptr @.str.83, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disconnecting %s %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"es58x_disconnect\00", [47 x i8] zeroinitializer }, align 32
@es58x_disconnect._entry_ptr = internal global ptr @es58x_disconnect._entry, section ".printk_index", align 4
@switch.table.es58x_rx_cmd_ret_u32 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [36 x i8] zeroinitializer }, align 32
@switch.table.es58x_rx_cmd_ret_u8 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1073758208, i64 1073758209, i64 2147483648, i64 2147483656, i64 2147495938, i64 2147500032, i64 2147500033, i64 2147500034]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 2147483648]
@__sancov_gen_cov_switch_values.162 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 128, i64 129, i64 153]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967221, i64 4294967294]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.167 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967221, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.169 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294967186, i64 4294967206, i64 4294967222, i64 4294967240, i64 4294967252, i64 4294967274, i64 4294967277]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 25, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 205, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 212, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 395, i32 9 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 401, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 412, i32 9 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 422, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 432, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 542, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 581, i32 7 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 671, i32 24 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 678, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 691, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 698, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 705, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 712, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 719, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 726, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 734, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 742, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 749, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 757, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 771, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 775, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 783, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 801, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 817, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 832, i32 9 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 845, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 869, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 934, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 938, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 942, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 946, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 951, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 987, i32 9 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 999, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1009, i32 9 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1018, i32 9 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1031, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1037, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1042, i32 22 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1046, i32 23 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1050, i32 22 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1054, i32 22 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1058, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant [13 x i8] c"es58x_driver\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2283, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 331, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 339, i32 9 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 344, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 349, i32 9 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 891, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 893, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 895, i32 10 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 897, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 899, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 901, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 903, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 906, i32 9 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1554, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1561, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1641, i32 22 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1506, i32 23 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1508, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [15 x i8] c"es58x_id_table\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 38, i32 35 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2184, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1367, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1368, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2148, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2154, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2158, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2083, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"es58x_netdev_ops\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1981, i32 36 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1816, i32 21 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1739, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1742, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1422, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1429, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1435, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1440, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1445, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1452, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1475, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1324, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1327, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1331, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1184, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1193, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 142, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1105, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1116, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1119, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1126, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1273, i32 5 }
@___asan_gen_.621 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1285, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 231, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1757, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1769, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 499, i32 23 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 1974, i32 22 }
@___asan_gen_.661 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 104, i32 6 }
@___asan_gen_.663 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.670 = private constant [47 x i8] c"../drivers/net/can/usb/etas_es58x/es58x_core.c\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.670, i32 2275, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [34 x i8] c"switch.table.es58x_rx_cmd_ret_u32\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [33 x i8] c"switch.table.es58x_rx_cmd_ret_u8\00", align 1
@llvm.compiler.used = appending global [211 x ptr] [ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file468, ptr @__UNIQUE_ID_license469, ptr @__UNIQUE_ID_version467, ptr @__exitcall_es58x_driver_exit, ptr @__initcall__kmod_etas_es58x__495_2290_es58x_driver_init6, ptr @__modver_attr, ptr @es58x_alloc_rx_urbs._entry, ptr @es58x_alloc_rx_urbs._entry_ptr, ptr @es58x_alloc_urb._entry, ptr @es58x_alloc_urb._entry.74, ptr @es58x_alloc_urb._entry_ptr, ptr @es58x_alloc_urb._entry_ptr.76, ptr @es58x_check_crc._entry, ptr @es58x_check_crc._entry_ptr, ptr @es58x_check_rx_urb._entry, ptr @es58x_check_rx_urb._entry.128, ptr @es58x_check_rx_urb._entry_ptr, ptr @es58x_check_rx_urb._entry_ptr.130, ptr @es58x_disconnect._entry, ptr @es58x_disconnect._entry_ptr, ptr @es58x_driver_exit, ptr @es58x_free_urbs._entry, ptr @es58x_free_urbs._entry.150, ptr @es58x_free_urbs._entry_ptr, ptr @es58x_free_urbs._entry_ptr.152, ptr @es58x_get_product_info._entry, ptr @es58x_get_product_info._entry.89, ptr @es58x_get_product_info._entry.93, ptr @es58x_get_product_info._entry_ptr, ptr @es58x_get_product_info._entry_ptr.92, ptr @es58x_get_product_info._entry_ptr.95, ptr @es58x_handle_incomplete_cmd._entry, ptr @es58x_handle_incomplete_cmd._entry.122, ptr @es58x_handle_incomplete_cmd._entry_ptr, ptr @es58x_handle_incomplete_cmd._entry_ptr.124, ptr @es58x_handle_urb_cmd._entry, ptr @es58x_handle_urb_cmd._entry.133, ptr @es58x_handle_urb_cmd._entry.137, ptr @es58x_handle_urb_cmd._entry_ptr, ptr @es58x_handle_urb_cmd._entry_ptr.135, ptr @es58x_handle_urb_cmd._entry_ptr.140, ptr @es58x_init_es58x_dev._entry, ptr @es58x_init_es58x_dev._entry_ptr, ptr @es58x_init_netdev._entry, ptr @es58x_init_netdev._entry_ptr, ptr @es58x_read_bulk_callback._entry, ptr @es58x_read_bulk_callback._entry.103, ptr @es58x_read_bulk_callback._entry.107, ptr @es58x_read_bulk_callback._entry.111, ptr @es58x_read_bulk_callback._entry.113, ptr @es58x_read_bulk_callback._entry.117, ptr @es58x_read_bulk_callback._entry_ptr, ptr @es58x_read_bulk_callback._entry_ptr.105, ptr @es58x_read_bulk_callback._entry_ptr.108, ptr @es58x_read_bulk_callback._entry_ptr.112, ptr @es58x_read_bulk_callback._entry_ptr.115, ptr @es58x_read_bulk_callback._entry_ptr.119, ptr @es58x_rx_cmd_ret_u8._entry, ptr @es58x_rx_cmd_ret_u8._entry.40, ptr @es58x_rx_cmd_ret_u8._entry.43, ptr @es58x_rx_cmd_ret_u8._entry.46, ptr @es58x_rx_cmd_ret_u8._entry_ptr, ptr @es58x_rx_cmd_ret_u8._entry_ptr.42, ptr @es58x_rx_cmd_ret_u8._entry_ptr.45, ptr @es58x_rx_cmd_ret_u8._entry_ptr.48, ptr @es58x_set_realtime_diff_ns._entry, ptr @es58x_set_realtime_diff_ns._entry_ptr, ptr @es58x_split_urb_try_recovery._entry, ptr @es58x_split_urb_try_recovery._entry.143, ptr @es58x_split_urb_try_recovery._entry_ptr, ptr @es58x_split_urb_try_recovery._entry_ptr.145, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @es58x_rx_cmd_ret_u8._rs, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @es58x_driver, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @es58x_id_table, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @init_usb_anchor.__key, ptr @.str.84, ptr @init_usb_anchor.__key.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @es58x_netdev_ops, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @es58x_read_bulk_callback._rs, ptr @es58x_read_bulk_callback._rs.102, ptr @.str.104, ptr @es58x_read_bulk_callback._rs.106, ptr @es58x_read_bulk_callback._rs.109, ptr @es58x_read_bulk_callback._rs.110, ptr @.str.114, ptr @es58x_read_bulk_callback._rs.116, ptr @.str.118, ptr @es58x_handle_incomplete_cmd._rs, ptr @.str.120, ptr @es58x_handle_incomplete_cmd._rs.121, ptr @.str.123, ptr @.str.125, ptr @es58x_check_rx_urb._rs, ptr @.str.126, ptr @es58x_check_rx_urb._rs.127, ptr @.str.129, ptr @es58x_check_crc._rs, ptr @.str.131, ptr @es58x_handle_urb_cmd._rs, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @es58x_split_urb_try_recovery._rs, ptr @.str.141, ptr @es58x_split_urb_try_recovery._rs.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @switch.table.es58x_rx_cmd_ret_u32, ptr @switch.table.es58x_rx_cmd_ret_u8], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_rx_cmd_ret_u8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_rx_cmd_ret_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_rx_cmd_ret_u8._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_rx_cmd_ret_u8._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_rx_cmd_ret_u8._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_alloc_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_alloc_urb._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_init_es58x_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_get_product_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_get_product_info._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_get_product_info._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_init_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_alloc_rx_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._rs.102 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._rs.106 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._rs.109 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._rs.110 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_read_bulk_callback._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_incomplete_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_incomplete_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_incomplete_cmd._rs.121 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_incomplete_cmd._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_check_rx_urb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_check_rx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_check_rx_urb._rs.127 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_check_rx_urb._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_check_crc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_check_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_urb_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_urb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_urb_cmd._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_handle_urb_cmd._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_split_urb_try_recovery._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_split_urb_try_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_split_urb_try_recovery._rs.142 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_split_urb_try_recovery._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_set_realtime_diff_ns._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_free_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_free_urbs._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.es58x_rx_cmd_ret_u32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.es58x_rx_cmd_ret_u8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @es58x_rx_timestamp(ptr nocapture noundef %es58x_dev, i64 noundef %timestamp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %mul.i = mul i64 %timestamp, 500
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_timestamp.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_timestamp, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 8
  %ktime_req_ns = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 11
  %2 = ptrtoint ptr %ktime_req_ns to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ktime_req_ns, align 8
  %sub = sub i64 %call.i.i, %3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es58x_rx_timestamp.__UNIQUE_ID_ddebug470, ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i64 noundef %sub) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ktime_req_ns6 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 11
  %4 = ptrtoint ptr %ktime_req_ns6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ktime_req_ns6, align 8
  %add = add i64 %5, %call.i.i
  %div37 = lshr i64 %add, 1
  %sub7 = sub i64 %div37, %mul.i
  %realtime_diff_ns = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 12
  %6 = ptrtoint ptr %realtime_diff_ns to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub7, ptr %realtime_diff_ns, align 8
  store i64 0, ptr %ktime_req_ns6, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_timestamp.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_timestamp, %do.end28)) #9
          to label %if.then23 [label %do.end28], !srcloc !376

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %es58x_dev, align 8
  %9 = ptrtoint ptr %realtime_diff_ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %realtime_diff_ns, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es58x_rx_timestamp.__UNIQUE_ID_ddebug471, ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i64 noundef %mul.i, i64 noundef %10) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_can_get_echo_skb(ptr noundef %netdev, i32 noundef %rcv_packet_idx, ptr nocapture noundef readonly %tstamps, i32 noundef %pkts) local_unnamed_addr #1 align 64 {
entry:
  %frame_len.i.i = alloca i32, align 4
  %frame_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_head = getelementptr i8, ptr %netdev, i32 2628
  %0 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %netdev, i32 2624
  %2 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tail, align 4
  %sub = sub i32 %1, %3
  %es58x_dev = getelementptr i8, ptr %netdev, i32 2616
  %4 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %es58x_dev, align 4
  %param = getelementptr inbounds %struct.es58x_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param, align 8
  %fifo_mask1 = getelementptr inbounds %struct.es58x_parameters, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fifo_mask1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fifo_mask1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.es58x_can_get_echo_skb, ptr noundef %netdev, i32 noundef %pkts) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %12 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_dropped, align 4
  %add = add i32 %13, %pkts
  store i32 %add, ptr %tx_dropped, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %state.i129 = getelementptr i8, ptr %netdev, i32 2472
  %14 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp ult i32 %15, 3
  br i1 %cmp.i, label %if.else21, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %do.body10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_can_get_echo_skb.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_can_get_echo_skb, %cleanup)) #9
          to label %if.then16 [label %cleanup], !srcloc !376

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_can_get_echo_skb.__UNIQUE_ID_ddebug472, ptr noundef %netdev, ptr noundef nonnull @.str.8, i32 noundef %pkts, i32 noundef %rcv_packet_idx) #9
  br label %cleanup

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.else21
  %call23 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end26_crit_edge, label %if.then25

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %pkts, i32 noundef %rcv_packet_idx) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then22.if.end26_crit_edge
  %tx_dropped28 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %16 = ptrtoint ptr %tx_dropped28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_dropped28, align 4
  %add29 = add i32 %17, %pkts
  store i32 %add29, ptr %tx_dropped28, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rcv_packet_idx)
  %cmp34.not = icmp eq i32 %3, %rcv_packet_idx
  br i1 %cmp34.not, label %if.end32.if.end44_crit_edge, label %if.then35

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then35:                                        ; preds = %if.end32
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %call1.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then35.if.end.i_crit_edge, label %if.then.i

if.then35.if.end.i_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_tail, align 4
  %22 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_head, align 4
  %sub.i = sub i32 %23, %21
  %echo_skb_max.i = getelementptr i8, ptr %netdev, i32 2464
  %24 = ptrtoint ptr %echo_skb_max.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %echo_skb_max.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.60, i32 noundef %rcv_packet_idx, i32 noundef %21, i32 noundef %23, i32 noundef %sub.i, i32 noundef %25) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then35.if.end.i_crit_edge
  %26 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_tail, align 4
  %sub5.i = sub i32 %rcv_packet_idx, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp.i130 = icmp slt i32 %sub5.i, 0
  br i1 %cmp.i130, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.then38_crit_edge, label %if.then9.i

if.then6.i.if.then38_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.61) #12
  br label %if.then38

if.else.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_head, align 4
  %sub12.i = sub i32 %rcv_packet_idx, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub12.i)
  %cmp13.i = icmp sgt i32 %sub12.i, -1
  %call15.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.else19.i

if.then14.i:                                      ; preds = %if.else.i
  br i1 %tobool16.not.i, label %if.then14.i.if.then38_crit_edge, label %if.then17.i

if.then14.i.if.then38_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.62) #12
  br label %if.then38

if.else19.i:                                      ; preds = %if.else.i
  br i1 %tobool16.not.i, label %if.else19.i.if.end27.i_crit_edge, label %if.then22.i

if.else19.i.if.end27.i_crit_edge:                 ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_tail, align 4
  %sub24.i = sub i32 %rcv_packet_idx, %31
  %sub26.i = add i32 %rcv_packet_idx, -1
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.63, i32 noundef %sub24.i, i32 noundef %31, i32 noundef %sub26.i) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.else19.i.if.end27.i_crit_edge
  %32 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %rcv_packet_idx)
  %cmp29.not60.i = icmp eq i32 %33, %rcv_packet_idx
  br i1 %cmp29.not60.i, label %if.end27.i.if.end44_crit_edge, label %while.body.lr.ph.i

if.end27.i.if.end44_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

while.body.lr.ph.i:                               ; preds = %if.end27.i
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %tx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %es58x_can_free_echo_skb_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %34 = phi i32 [ %33, %while.body.lr.ph.i ], [ %inc.i.i, %es58x_can_free_echo_skb_tail.exit.i.while.body.i_crit_edge ]
  %35 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp32.i = icmp eq i32 %34, %36
  br i1 %cmp32.i, label %while.body.i.if.then38_crit_edge, label %if.end34.i

while.body.i.if.then38_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end34.i:                                       ; preds = %while.body.i
  %37 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %es58x_dev, align 4
  %param.i.i = getelementptr inbounds %struct.es58x_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %param.i.i, align 8
  %fifo_mask1.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %fifo_mask1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fifo_mask1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_len.i.i) #9
  %43 = ptrtoint ptr %frame_len.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %frame_len.i.i, align 4
  %44 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_tail, align 4
  %conv.i.i = zext i16 %42 to i32
  %and.i.i = and i32 %45, %conv.i.i
  call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %and.i.i, ptr noundef nonnull %frame_len.i.i) #9
  %46 = ptrtoint ptr %frame_len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frame_len.i.i, align 4
  %48 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i.i, label %if.end34.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !377

if.end34.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_can_free_echo_skb_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end34.i
  %dql.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i.i.i.i, i32 noundef %47) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !378
  %adj_limit.i.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %adj_limit.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %adj_limit.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %dql.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %dql.i.i.i.i, align 128
  %sub.i.i.i.i.i = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge, label %if.end14.i.i.i.i, !prof !377

if.end.i.i.i.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_can_free_echo_skb_tail.exit.i

if.end14.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  %call15.i.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.i)
  %tobool16.not.i.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i.i, label %if.end14.i.i.i.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge, label %if.then17.i.i.i.i

if.end14.i.i.i.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge: ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_can_free_echo_skb_tail.exit.i

if.then17.i.i.i.i:                                ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_schedule_queue(ptr noundef %49) #9
  br label %es58x_can_free_echo_skb_tail.exit.i

es58x_can_free_echo_skb_tail.exit.i:              ; preds = %if.then17.i.i.i.i, %if.end14.i.i.i.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge, %if.end.i.i.i.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge, %if.end34.i.es58x_can_free_echo_skb_tail.exit.i_crit_edge
  %54 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_tail, align 4
  %inc.i.i = add i32 %55, 1
  store i32 %inc.i.i, ptr %tx_tail, align 4
  %56 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_dropped.i.i, align 4
  %inc3.i.i = add i32 %57, 1
  store i32 %inc3.i.i, ptr %tx_dropped.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_len.i.i) #9
  %cmp29.not.i = icmp eq i32 %inc.i.i, %rcv_packet_idx
  br i1 %cmp29.not.i, label %es58x_can_free_echo_skb_tail.exit.i.if.end44_crit_edge, label %es58x_can_free_echo_skb_tail.exit.i.while.body.i_crit_edge

es58x_can_free_echo_skb_tail.exit.i.while.body.i_crit_edge: ; preds = %es58x_can_free_echo_skb_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

es58x_can_free_echo_skb_tail.exit.i.if.end44_crit_edge: ; preds = %es58x_can_free_echo_skb_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then38:                                        ; preds = %while.body.i.if.then38_crit_edge, %if.then17.i, %if.then14.i.if.then38_crit_edge, %if.then9.i, %if.then6.i.if.then38_crit_edge
  %call39 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.cleanup_crit_edge, label %if.then41

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %rcv_packet_idx) #12
  br label %cleanup

if.end44:                                         ; preds = %es58x_can_free_echo_skb_tail.exit.i.if.end44_crit_edge, %if.end27.i.if.end44_crit_edge, %if.end32.if.end44_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %pkts)
  %cmp45 = icmp ult i32 %sub, %pkts
  br i1 %cmp45, label %if.then46, label %if.end44.if.end56_crit_edge

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then46:                                        ; preds = %if.end44
  %sub47 = sub i32 %pkts, %sub
  %call48 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then46.if.end51_crit_edge, label %if.then50

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.11, i32 noundef %pkts, i32 noundef %sub, i32 noundef %sub47) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then46.if.end51_crit_edge
  %tx_dropped53 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %58 = ptrtoint ptr %tx_dropped53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_dropped53, align 4
  %add54 = add i32 %59, %sub47
  store i32 %add54, ptr %tx_dropped53, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end51, %if.end44.if.end56_crit_edge
  %pkts.addr.0 = phi i32 [ %sub, %if.end51 ], [ %pkts, %if.end44.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts.addr.0)
  %cmp57142.not = icmp eq i32 %pkts.addr.0, 0
  br i1 %cmp57142.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i147 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %netdev_completed_queue.exit

for.body.lr.ph:                                   ; preds = %if.end56
  %conv = zext i16 %9 to i32
  %echo_skb = getelementptr i8, ptr %netdev, i32 2468
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc68, %if.end62.for.body_crit_edge ]
  %rx_total_frame_len.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %add66, %if.end62.for.body_crit_edge ]
  %60 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_tail, align 4
  %and = and i32 %61, %conv
  %62 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %echo_skb, align 4
  %arrayidx = getelementptr ptr, ptr %63, i32 %and
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_len) #9
  %66 = ptrtoint ptr %frame_len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %frame_len, align 4
  %tobool59.not = icmp eq ptr %65, null
  br i1 %tobool59.not, label %for.body.if.end62_crit_edge, label %if.then60

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61 = getelementptr i64, ptr %tstamps, i32 %i.0144
  %67 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx61, align 8
  %69 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %es58x_dev, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %71 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 7
  %mul.i.i = mul i64 %68, 500
  %realtime_diff_ns.i = getelementptr inbounds %struct.es58x_device, ptr %70, i32 0, i32 12
  %73 = ptrtoint ptr %realtime_diff_ns.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %realtime_diff_ns.i, align 8
  %add.i = add i64 %74, %mul.i.i
  %75 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add.i, ptr %hwtstamps.i.i, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %for.body.if.end62_crit_edge
  %call63 = call i32 @can_get_echo_skb(ptr noundef %netdev, i32 noundef %and, ptr noundef nonnull %frame_len) #9
  %76 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_bytes, align 4
  %add65 = add i32 %77, %call63
  store i32 %add65, ptr %tx_bytes, align 4
  %78 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %frame_len, align 4
  %add66 = add i32 %79, %rx_total_frame_len.0143
  %80 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_tail, align 4
  %inc = add i32 %81, 1
  store i32 %inc, ptr %tx_tail, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_len) #9
  %inc68 = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc68, %pkts.addr.0
  br i1 %exitcond.not, label %for.end, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end62
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %82 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %_tx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add66)
  %tobool.not.i.i = icmp eq i32 %add66, 0
  br i1 %tobool.not.i.i, label %for.end.netdev_completed_queue.exit_crit_edge, label %if.end.i.i, !prof !377

for.end.netdev_completed_queue.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_completed_queue.exit

if.end.i.i:                                       ; preds = %for.end
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %add66) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !378
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 15, i32 1
  %84 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %86 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %85, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_completed_queue.exit_crit_edge, label %if.end14.i.i, !prof !377

if.end.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_completed_queue.exit

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 13
  %call15.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_completed_queue.exit_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_completed_queue.exit

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_schedule_queue(ptr noundef %83) #9
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %if.then17.i.i, %if.end14.i.i.netdev_completed_queue.exit_crit_edge, %if.end.i.i.netdev_completed_queue.exit_crit_edge, %for.end.netdev_completed_queue.exit_crit_edge, %for.end.thread
  %_tx.i.i149 = phi ptr [ %_tx.i.i147, %for.end.thread ], [ %_tx.i.i, %for.end.netdev_completed_queue.exit_crit_edge ], [ %_tx.i.i, %if.end.i.i.netdev_completed_queue.exit_crit_edge ], [ %_tx.i.i, %if.end14.i.i.netdev_completed_queue.exit_crit_edge ], [ %_tx.i.i, %if.then17.i.i ]
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %88 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_packets, align 4
  %add70 = add i32 %89, %pkts.addr.0
  store i32 %add70, ptr %tx_packets, align 4
  %err_passive_before_rtx_success = getelementptr i8, ptr %netdev, i32 2634
  %90 = ptrtoint ptr %err_passive_before_rtx_success to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %err_passive_before_rtx_success, align 2
  %91 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_head, align 4
  %93 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_tail, align 4
  %sub.i134 = sub i32 %92, %94
  %echo_skb_max.i135 = getelementptr i8, ptr %netdev, i32 2464
  %95 = ptrtoint ptr %echo_skb_max.i135 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %echo_skb_max.i135, align 4
  %97 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %es58x_dev, align 4
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %param.i, align 8
  %tx_bulk_max.i = getelementptr inbounds %struct.es58x_parameters, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %tx_bulk_max.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %tx_bulk_max.i, align 4
  %conv.i = zext i8 %102 to i32
  %sub1.i = add i32 %96, 1
  %add.i136 = sub i32 %sub1.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i134, i32 %add.i136)
  %cmp.i137.not = icmp ult i32 %sub.i134, %add.i136
  br i1 %cmp.i137.not, label %if.then72, label %netdev_completed_queue.exit.cleanup_crit_edge

netdev_completed_queue.exit.cleanup_crit_edge:    ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then72:                                        ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %_tx.i.i149 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i149, align 128
  call void @netif_tx_wake_queue(ptr noundef %104) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %netdev_completed_queue.exit.cleanup_crit_edge, %if.then41, %if.then38.cleanup_crit_edge, %if.end26, %if.then16, %do.body10, %if.then6.cleanup_crit_edge, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_tx_ack_msg(ptr noundef %netdev, i16 noundef zeroext %tx_free_entries, i32 noundef %rx_cmd_ret_u32) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %tx_free_entries to i32
  %es58x_dev = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 4
  %param = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 8
  %tx_bulk_max = getelementptr inbounds %struct.es58x_parameters, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %tx_bulk_max to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_bulk_max, align 4
  %6 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %tx_free_entries)
  %cmp.not = icmp ult i16 %6, %tx_free_entries
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %tx_head = getelementptr i8, ptr %netdev, i32 2628
  %7 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %netdev, i32 2624
  %9 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_tail, align 4
  %sub = sub i32 %8, %10
  %echo_skb_max = getelementptr i8, ptr %netdev, i32 2464
  %11 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %echo_skb_max, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %sub, i32 noundef %12) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %call7 = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef %netdev, i32 noundef 3, i32 noundef %rx_cmd_ret_u32)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_rx_cmd_ret_u32(ptr noundef %netdev, i32 noundef %cmd_ret_type, i32 noundef %rx_cmd_ret_u32) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %es58x_dev = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 4
  %ops1 = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd_ret_type)
  %4 = icmp ult i32 %cmd_ret_type, 7
  br i1 %4, label %switch.lookup, label %entry.es58x_cmd_ret_desc.exit_crit_edge

entry.es58x_cmd_ret_desc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_cmd_ret_desc.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.es58x_rx_cmd_ret_u32, i32 0, i32 %cmd_ret_type
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %es58x_cmd_ret_desc.exit

es58x_cmd_ret_desc.exit:                          ; preds = %switch.lookup, %entry.es58x_cmd_ret_desc.exit_crit_edge
  %retval.0.i80 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.71, %entry.es58x_cmd_ret_desc.exit_crit_edge ]
  %6 = zext i32 %rx_cmd_ret_u32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rx_cmd_ret_u32, label %sw.default37 [
    i32 0, label %sw.bb
    i32 -2147483648, label %sw.bb15
    i32 -2147467263, label %sw.bb30
    i32 1073758208, label %sw.bb31
    i32 1073758209, label %sw.bb32
    i32 -2147483640, label %sw.bb33
    i32 -2147471358, label %sw.bb34
    i32 -2147467264, label %sw.bb35
    i32 -2147467262, label %sw.bb36
  ]

sw.bb:                                            ; preds = %es58x_cmd_ret_desc.exit
  %7 = zext i32 %cmd_ret_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %cmd_ret_type, label %do.body8 [
    i32 1, label %sw.bb3
    i32 3, label %sw.bb.cleanup38_crit_edge
  ]

sw.bb.cleanup38_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @es58x_can_reset_echo_fifo(ptr noundef %netdev)
  %state = getelementptr i8, ptr %netdev, i32 2472
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %10) #9
  %11 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %es58x_dev, align 4
  %udev = getelementptr inbounds %struct.es58x_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %product = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 31
  %15 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %product, align 8
  %serial = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 33
  %17 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial, align 8
  %channel_idx = getelementptr i8, ptr %netdev, i32 2635
  %19 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel_idx, align 1
  %conv = zext i8 %20 to i32
  %add = add nuw nsw i32 %conv, 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.49, ptr noundef nonnull %retval.0.i80, ptr noundef %16, ptr noundef %18, i32 noundef %add) #12
  br label %cleanup38

do.body8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_cmd_ret_u32.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_cmd_ret_u32, %cleanup38)) #9
          to label %if.then [label %cleanup38], !srcloc !376

if.then:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_cmd_ret_u32.__UNIQUE_ID_ddebug488, ptr noundef %netdev, ptr noundef nonnull @.str.36, ptr noundef nonnull %retval.0.i80) #9
  br label %cleanup38

sw.bb15:                                          ; preds = %es58x_cmd_ret_desc.exit
  %21 = zext i32 %cmd_ret_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %cmd_ret_type, label %if.end29 [
    i32 1, label %if.then17
    i32 2, label %if.then28
  ]

if.then17:                                        ; preds = %sw.bb15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.51, ptr noundef nonnull %retval.0.i80) #12
  %disable_channel = getelementptr inbounds %struct.es58x_operators, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %disable_channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable_channel, align 4
  %call19 = tail call i32 %23(ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then17.cleanup38_crit_edge

if.then17.cleanup38_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %enable_channel = getelementptr inbounds %struct.es58x_operators, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %enable_channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enable_channel, align 4
  %call24 = tail call i32 %25(ptr noundef %add.ptr.i.i) #9
  br label %cleanup38

if.then28:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.52, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

if.end29:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.37, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb30:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.41, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb31:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.53, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb32:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.54, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb33:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.55, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb34:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.56, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb35:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.57, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.bb36:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.58, ptr noundef nonnull %retval.0.i80) #12
  br label %cleanup38

sw.default37:                                     ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.59, ptr noundef nonnull %retval.0.i80, i32 noundef %rx_cmd_ret_u32) #12
  br label %cleanup38

cleanup38:                                        ; preds = %sw.default37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %if.end29, %if.then28, %if.end22, %if.then17.cleanup38_crit_edge, %if.then, %do.body8, %sw.bb3, %sw.bb.cleanup38_crit_edge
  %retval.1 = phi i32 [ -74, %sw.default37 ], [ -16, %sw.bb36 ], [ -22, %sw.bb35 ], [ 0, %sw.bb34 ], [ -110, %sw.bb33 ], [ 0, %sw.bb32 ], [ 0, %sw.bb31 ], [ -12, %sw.bb30 ], [ 0, %if.then28 ], [ -74, %if.end29 ], [ 0, %if.then ], [ 0, %sw.bb.cleanup38_crit_edge ], [ 0, %sw.bb3 ], [ %call24, %if.end22 ], [ %call19, %if.then17.cleanup38_crit_edge ], [ 0, %do.body8 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_rx_can_msg(ptr noundef %netdev, i64 noundef %timestamp, ptr nocapture noundef readonly %data, i32 noundef %can_id, i32 noundef %es58x_flags, i8 noundef zeroext %dlc) local_unnamed_addr #1 align 64 {
entry:
  %cfd = alloca ptr, align 4
  %ccf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfd) #9
  %0 = ptrtoint ptr %cfd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cfd, align 4, !annotation !379
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccf) #9
  %1 = ptrtoint ptr %ccf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ccf, align 4, !annotation !379
  %and = and i32 %es58x_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %dlc)
  %cmp = icmp ugt i8 %dlc, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %dlc to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.es58x_rx_can_msg, i32 noundef %conv, i32 noundef 15) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %dlc) #9
  %call6 = call ptr @alloc_canfd_skb(ptr noundef %netdev, ptr noundef nonnull %cfd) #9
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i8 @llvm.umin.i8(i8 %dlc, i8 8)
  %call14 = call ptr @alloc_can_skb(ptr noundef %netdev, ptr noundef nonnull %ccf) #9
  %3 = ptrtoint ptr %ccf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ccf, align 4
  %5 = ptrtoint ptr %cfd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %cfd, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %skb.0 = phi ptr [ %call6, %if.then5 ], [ %call14, %if.else ]
  %len.0 = phi i8 [ %call, %if.then5 ], [ %2, %if.else ]
  %tobool16.not = icmp eq ptr %skb.0, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %6 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %can_id, ptr %9, align 8
  %and20 = and i32 %es58x_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfd, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %or = or i32 %14, -2147483648
  store i32 %or, ptr %12, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  br i1 %tobool.not, label %if.else43, label %if.then26

if.then26:                                        ; preds = %if.end24
  %15 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfd, align 4
  %len27 = getelementptr inbounds %struct.canfd_frame, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %len27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %len.0, ptr %len27, align 4
  %and28 = and i32 %es58x_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then26.if.end34_crit_edge, label %if.then30

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 1
  %20 = or i8 %19, 1
  store i8 %20, ptr %flags, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then26.if.end34_crit_edge
  %and35 = and i32 %es58x_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end51_crit_edge, label %if.then37

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %flags38 = getelementptr inbounds %struct.canfd_frame, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %flags38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags38, align 1
  %23 = or i8 %22, 2
  store i8 %23, ptr %flags38, align 1
  br label %if.end51

if.else43:                                        ; preds = %if.end24
  %24 = ptrtoint ptr %ccf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ccf, align 4
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %26 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %dlc)
  %cmp.i = icmp ugt i8 %dlc, 8
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.else43.can_frame_set_cc_len.exit_crit_edge

if.else43.can_frame_set_cc_len.exit_crit_edge:    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_frame_set_cc_len.exit

if.then.i:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %dlc, ptr %len8_dlc.i, align 1
  br label %can_frame_set_cc_len.exit

can_frame_set_cc_len.exit:                        ; preds = %if.then.i, %if.else43.can_frame_set_cc_len.exit_crit_edge
  %29 = call i8 @llvm.umin.i8(i8 %dlc, i8 8) #9
  %30 = getelementptr inbounds %struct.can_frame, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %30, align 4
  %and45 = and i32 %es58x_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %can_frame_set_cc_len.exit.if.end51_crit_edge, label %if.then47

can_frame_set_cc_len.exit.if.end51_crit_edge:     ; preds = %can_frame_set_cc_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %can_frame_set_cc_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 8
  %or49 = or i32 %33, 1073741824
  store i32 %or49, ptr %25, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %can_frame_set_cc_len.exit.if.end51_crit_edge, %if.then37, %if.end34.if.end51_crit_edge
  %len.1 = phi i8 [ %len.0, %if.then37 ], [ %len.0, %if.end34.if.end51_crit_edge ], [ 0, %if.then47 ], [ %len.0, %can_frame_set_cc_len.exit.if.end51_crit_edge ]
  %34 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfd, align 4
  %data52 = getelementptr inbounds %struct.canfd_frame, ptr %35, i32 0, i32 5
  %conv53 = zext i8 %len.1 to i32
  %36 = call ptr @memcpy(ptr %data52, ptr %data, i32 %conv53)
  %stats54 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  %37 = ptrtoint ptr %stats54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats54, align 8
  %inc55 = add i32 %38, 1
  store i32 %inc55, ptr %stats54, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 2
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %40, %conv53
  store i32 %add, ptr %rx_bytes, align 8
  %es58x_dev1.i = getelementptr i8, ptr %netdev, i32 2616
  %41 = ptrtoint ptr %es58x_dev1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %es58x_dev1.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %43 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 7
  %mul.i.i = mul i64 %timestamp, 500
  %realtime_diff_ns.i = getelementptr inbounds %struct.es58x_device, ptr %42, i32 0, i32 12
  %45 = ptrtoint ptr %realtime_diff_ns.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %realtime_diff_ns.i, align 8
  %add.i = add i64 %46, %mul.i.i
  %47 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add.i, ptr %hwtstamps.i.i, align 8
  %call58 = call i32 @netif_rx(ptr noundef nonnull %skb.0) #9
  %err_passive_before_rtx_success = getelementptr i8, ptr %netdev, i32 2634
  %48 = ptrtoint ptr %err_passive_before_rtx_success to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %err_passive_before_rtx_success, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then17, %if.then
  %retval.0 = phi i32 [ -90, %if.then ], [ 0, %if.end51 ], [ 0, %if.then17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_rx_err_msg(ptr noundef %netdev, i32 noundef %error, i32 noundef %event, i64 noundef %timestamp) local_unnamed_addr #1 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %can_stats2 = getelementptr i8, ptr %netdev, i32 2308
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #9
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cf, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.es58x_rx_err_msg, ptr noundef %netdev) #12
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %3 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %5 = or i32 %event, %error
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.es58x_rx_err_msg) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = call ptr @alloc_can_err_skb(ptr noundef %netdev, ptr noundef nonnull %cf) #9
  %7 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %error, label %sw.default [
    i32 0, label %if.end9.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
    i32 4, label %sw.bb63
    i32 8, label %sw.bb93
    i32 16, label %sw.bb127
    i32 32, label %sw.bb161
    i32 64, label %sw.bb195
    i32 128, label %sw.bb229
    i32 -2147483648, label %sw.bb263
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  %call11 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.bb.if.end24_crit_edge, label %do.body14

sw.bb.if.end24_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.body14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end24)) #9
          to label %if.then20 [label %if.end24], !srcloc !376

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug475, ptr noundef %netdev, ptr noundef nonnull @.str.16) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body14, %sw.bb.if.end24_crit_edge
  %8 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cf, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %if.end24.sw.epilog_crit_edge, label %if.then26

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.can_frame, ptr %9, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 2
  %12 = or i8 %11, 4
  store i8 %12, ptr %arrayidx, align 2
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end9
  %call30 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %sw.bb29.if.end54_crit_edge, label %do.body34

sw.bb29.if.end54_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.body34:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end54)) #9
          to label %if.then48 [label %if.end54], !srcloc !376

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug476, ptr noundef %netdev, ptr noundef nonnull @.str.17) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %do.body34, %sw.bb29.if.end54_crit_edge
  %13 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf, align 4
  %tobool55.not = icmp eq ptr %14, null
  br i1 %tobool55.not, label %if.end54.sw.epilog_crit_edge, label %if.then56

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx58 = getelementptr %struct.can_frame, ptr %14, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx58, align 2
  %17 = or i8 %16, 2
  store i8 %17, ptr %arrayidx58, align 2
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end9
  %call64 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %sw.bb63.if.end88_crit_edge, label %do.body68

sw.bb63.if.end88_crit_edge:                       ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

do.body68:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end88)) #9
          to label %if.then82 [label %if.end88], !srcloc !376

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug477, ptr noundef %netdev, ptr noundef nonnull @.str.18) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %do.body68, %sw.bb63.if.end88_crit_edge
  %18 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cf, align 4
  %tobool89.not = icmp eq ptr %19, null
  br i1 %tobool89.not, label %if.end88.sw.epilog_crit_edge, label %if.then90

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %or91 = or i32 %21, 32
  store i32 %or91, ptr %19, align 8
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end9
  %call94 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %sw.bb93.if.end118_crit_edge, label %do.body98

sw.bb93.if.end118_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

do.body98:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end118)) #9
          to label %if.then112 [label %if.end118], !srcloc !376

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug478, ptr noundef %netdev, ptr noundef nonnull @.str.19) #9
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %do.body98, %sw.bb93.if.end118_crit_edge
  %22 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cf, align 4
  %tobool119.not = icmp eq ptr %23, null
  br i1 %tobool119.not, label %if.end118.sw.epilog_crit_edge, label %if.then120

if.end118.sw.epilog_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then120:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx122 = getelementptr %struct.can_frame, ptr %23, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx122, align 2
  %26 = or i8 %25, 1
  store i8 %26, ptr %arrayidx122, align 2
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end9
  %call128 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %sw.bb127.if.end152_crit_edge, label %do.body132

sw.bb127.if.end152_crit_edge:                     ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.body132:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end152)) #9
          to label %if.then146 [label %if.end152], !srcloc !376

if.then146:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug479, ptr noundef %netdev, ptr noundef nonnull @.str.20) #9
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %do.body132, %sw.bb127.if.end152_crit_edge
  %27 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cf, align 4
  %tobool153.not = icmp eq ptr %28, null
  br i1 %tobool153.not, label %if.end152.sw.epilog_crit_edge, label %if.then154

if.end152.sw.epilog_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx156 = getelementptr %struct.can_frame, ptr %28, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx156, align 1
  %31 = or i8 %30, 8
  store i8 %31, ptr %arrayidx156, align 1
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end9
  %call162 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %sw.bb161.if.end186_crit_edge, label %do.body166

sw.bb161.if.end186_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

do.body166:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end186)) #9
          to label %if.then180 [label %if.end186], !srcloc !376

if.then180:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug480, ptr noundef %netdev, ptr noundef nonnull @.str.21) #9
  br label %if.end186

if.end186:                                        ; preds = %if.then180, %do.body166, %sw.bb161.if.end186_crit_edge
  %32 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cf, align 4
  %tobool187.not = icmp eq ptr %33, null
  br i1 %tobool187.not, label %if.end186.sw.epilog_crit_edge, label %if.then188

if.end186.sw.epilog_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then188:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx190 = getelementptr %struct.can_frame, ptr %33, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx190, align 2
  %36 = or i8 %35, 16
  store i8 %36, ptr %arrayidx190, align 2
  br label %sw.epilog

sw.bb195:                                         ; preds = %if.end9
  %call196 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %sw.bb195.if.end220_crit_edge, label %do.body200

sw.bb195.if.end220_crit_edge:                     ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

do.body200:                                       ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end220)) #9
          to label %if.then214 [label %if.end220], !srcloc !376

if.then214:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug481, ptr noundef %netdev, ptr noundef nonnull @.str.22) #9
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %do.body200, %sw.bb195.if.end220_crit_edge
  %37 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf, align 4
  %tobool221.not = icmp eq ptr %38, null
  br i1 %tobool221.not, label %if.end220.sw.epilog_crit_edge, label %if.then222

if.end220.sw.epilog_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then222:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx224 = getelementptr %struct.can_frame, ptr %38, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx224, align 2
  %41 = or i8 %40, 8
  store i8 %41, ptr %arrayidx224, align 2
  br label %sw.epilog

sw.bb229:                                         ; preds = %if.end9
  %call230 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %sw.bb229.if.end254_crit_edge, label %do.body234

sw.bb229.if.end254_crit_edge:                     ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

do.body234:                                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end254)) #9
          to label %if.then248 [label %if.end254], !srcloc !376

if.then248:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug482, ptr noundef %netdev, ptr noundef nonnull @.str.23) #9
  br label %if.end254

if.end254:                                        ; preds = %if.then248, %do.body234, %sw.bb229.if.end254_crit_edge
  %42 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cf, align 4
  %tobool255.not = icmp eq ptr %43, null
  br i1 %tobool255.not, label %if.end254.sw.epilog_crit_edge, label %if.then256

if.end254.sw.epilog_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then256:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx258 = getelementptr %struct.can_frame, ptr %43, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx258, align 2
  %46 = or i8 %45, 32
  store i8 %46, ptr %arrayidx258, align 2
  br label %sw.epilog

sw.bb263:                                         ; preds = %if.end9
  %call264 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %sw.bb263.if.end288_crit_edge, label %do.body268

sw.bb263.if.end288_crit_edge:                     ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end288

do.body268:                                       ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end288)) #9
          to label %if.then282 [label %if.end288], !srcloc !376

if.then282:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug483, ptr noundef %netdev, ptr noundef nonnull @.str.24) #9
  br label %if.end288

if.end288:                                        ; preds = %if.then282, %do.body268, %sw.bb263.if.end288_crit_edge
  %47 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cf, align 4
  %tobool289.not = icmp eq ptr %48, null
  br i1 %tobool289.not, label %if.end288.sw.epilog_crit_edge, label %if.then290

if.end288.sw.epilog_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then290:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %or292 = or i32 %50, 8
  store i32 %or292, ptr %48, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  %call294 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %sw.default.if.end297_crit_edge, label %if.then296

sw.default.if.end297_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297

if.then296:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.es58x_rx_err_msg, i32 noundef %error) #12
  br label %if.end297

if.end297:                                        ; preds = %if.then296, %sw.default.if.end297_crit_edge
  %51 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cf, align 4
  %tobool298.not = icmp eq ptr %52, null
  br i1 %tobool298.not, label %if.end297.sw.epilog_crit_edge, label %if.then299

if.end297.sw.epilog_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then299:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %or301 = or i32 %54, 8
  store i32 %or301, ptr %52, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then299, %if.end297.sw.epilog_crit_edge, %if.then290, %if.end288.sw.epilog_crit_edge, %if.then256, %if.end254.sw.epilog_crit_edge, %if.then222, %if.end220.sw.epilog_crit_edge, %if.then188, %if.end186.sw.epilog_crit_edge, %if.then154, %if.end152.sw.epilog_crit_edge, %if.then120, %if.end118.sw.epilog_crit_edge, %if.then90, %if.end88.sw.epilog_crit_edge, %if.then56, %if.end54.sw.epilog_crit_edge, %if.then26, %if.end24.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %55 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %event, label %sw.default498 [
    i32 0, label %sw.epilog.sw.epilog508_crit_edge
    i32 1, label %sw.bb303
    i32 2, label %sw.bb342
    i32 4, label %sw.bb395
    i32 8, label %sw.bb441
    i32 16, label %sw.bb480
  ]

sw.epilog.sw.epilog508_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog508

sw.bb303:                                         ; preds = %sw.epilog
  %state = getelementptr i8, ptr %netdev, i32 2472
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp304 = icmp eq i32 %57, 3
  br i1 %cmp304, label %if.then306, label %sw.bb303.if.end307_crit_edge

sw.bb303.if.end307_crit_edge:                     ; preds = %sw.bb303
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

if.then306:                                       ; preds = %sw.bb303
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.es58x_rx_err_msg) #12
  br label %if.end307

if.end307:                                        ; preds = %if.then306, %sw.bb303.if.end307_crit_edge
  %call308 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.end307.if.end332_crit_edge, label %do.body312

if.end307.if.end332_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end332

do.body312:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end332)) #9
          to label %if.then326 [label %if.end332], !srcloc !376

if.then326:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug484, ptr noundef %netdev, ptr noundef nonnull @.str.27) #9
  br label %if.end332

if.end332:                                        ; preds = %if.then326, %do.body312, %if.end307.if.end332_crit_edge
  %58 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cf, align 4
  %tobool333.not = icmp eq ptr %59, null
  br i1 %tobool333.not, label %if.end332.if.end340_crit_edge, label %if.then334

if.end332.if.end340_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end340

if.then334:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx336 = getelementptr %struct.can_frame, ptr %59, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx336, align 1
  %62 = or i8 %61, 64
  store i8 %62, ptr %arrayidx336, align 1
  br label %if.end340

if.end340:                                        ; preds = %if.then334, %if.end332.if.end340_crit_edge
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %state, align 4
  br label %sw.epilog508

sw.bb342:                                         ; preds = %sw.epilog
  %call343 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %sw.bb342.if.end367_crit_edge, label %do.body347

sw.bb342.if.end367_crit_edge:                     ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end367

do.body347:                                       ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end367)) #9
          to label %if.then361 [label %if.end367], !srcloc !376

if.then361:                                       ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug485, ptr noundef %netdev, ptr noundef nonnull @.str.28) #9
  br label %if.end367

if.end367:                                        ; preds = %if.then361, %do.body347, %sw.bb342.if.end367_crit_edge
  %64 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cf, align 4
  %tobool368.not = icmp eq ptr %65, null
  br i1 %tobool368.not, label %if.end367.if.end380_crit_edge, label %if.then369

if.end367.if.end380_crit_edge:                    ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end380

if.then369:                                       ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx371 = getelementptr %struct.can_frame, ptr %65, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx371, align 1
  %68 = or i8 %67, 16
  store i8 %68, ptr %arrayidx371, align 1
  %69 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cf, align 4
  %arrayidx376 = getelementptr %struct.can_frame, ptr %70, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx376, align 1
  %73 = or i8 %72, 32
  store i8 %73, ptr %arrayidx376, align 1
  br label %if.end380

if.end380:                                        ; preds = %if.then369, %if.end367.if.end380_crit_edge
  %state381 = getelementptr i8, ptr %netdev, i32 2472
  %74 = ptrtoint ptr %state381 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state381, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp382 = icmp ult i32 %75, 3
  br i1 %cmp382, label %if.then384, label %if.end380.if.end386_crit_edge

if.end380.if.end386_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end386

if.then384:                                       ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %state381 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %state381, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then384, %if.end380.if.end386_crit_edge
  %error_passive = getelementptr i8, ptr %netdev, i32 2316
  %77 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %error_passive, align 4
  %inc387 = add i32 %78, 1
  store i32 %inc387, ptr %error_passive, align 4
  %err_passive_before_rtx_success = getelementptr i8, ptr %netdev, i32 2634
  %79 = ptrtoint ptr %err_passive_before_rtx_success to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %err_passive_before_rtx_success, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp389.not = icmp eq i8 %80, -1
  br i1 %cmp389.not, label %if.end386.sw.epilog508_crit_edge, label %if.then391

if.end386.sw.epilog508_crit_edge:                 ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog508

if.then391:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #11
  %inc393 = add nuw i8 %80, 1
  %81 = ptrtoint ptr %err_passive_before_rtx_success to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %inc393, ptr %err_passive_before_rtx_success, align 2
  br label %sw.epilog508

sw.bb395:                                         ; preds = %sw.epilog
  %call396 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call396)
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %sw.bb395.if.end420_crit_edge, label %do.body400

sw.bb395.if.end420_crit_edge:                     ; preds = %sw.bb395
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end420

do.body400:                                       ; preds = %sw.bb395
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end420)) #9
          to label %if.then414 [label %if.end420], !srcloc !376

if.then414:                                       ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug486, ptr noundef %netdev, ptr noundef nonnull @.str.29) #9
  br label %if.end420

if.end420:                                        ; preds = %if.then414, %do.body400, %sw.bb395.if.end420_crit_edge
  %82 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cf, align 4
  %tobool421.not = icmp eq ptr %83, null
  br i1 %tobool421.not, label %if.end420.if.end433_crit_edge, label %if.then422

if.end420.if.end433_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end433

if.then422:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx424 = getelementptr %struct.can_frame, ptr %83, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx424, align 1
  %86 = or i8 %85, 4
  store i8 %86, ptr %arrayidx424, align 1
  %87 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cf, align 4
  %arrayidx429 = getelementptr %struct.can_frame, ptr %88, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx429, align 1
  %91 = or i8 %90, 8
  store i8 %91, ptr %arrayidx429, align 1
  br label %if.end433

if.end433:                                        ; preds = %if.then422, %if.end420.if.end433_crit_edge
  %state434 = getelementptr i8, ptr %netdev, i32 2472
  %92 = ptrtoint ptr %state434 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state434, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp435 = icmp ult i32 %93, 3
  br i1 %cmp435, label %if.then437, label %if.end433.if.end439_crit_edge

if.end433.if.end439_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end439

if.then437:                                       ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %state434 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %state434, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.then437, %if.end433.if.end439_crit_edge
  %error_warning = getelementptr i8, ptr %netdev, i32 2312
  %95 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %error_warning, align 4
  %inc440 = add i32 %96, 1
  store i32 %inc440, ptr %error_warning, align 4
  br label %sw.epilog508

sw.bb441:                                         ; preds = %sw.epilog
  %call442 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call442)
  %tobool443.not = icmp eq i32 %call442, 0
  br i1 %tobool443.not, label %sw.bb441.if.end466_crit_edge, label %do.body446

sw.bb441.if.end466_crit_edge:                     ; preds = %sw.bb441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end466

do.body446:                                       ; preds = %sw.bb441
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_err_msg, %if.end466)) #9
          to label %if.then460 [label %if.end466], !srcloc !376

if.then460:                                       ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_rx_err_msg.__UNIQUE_ID_ddebug487, ptr noundef %netdev, ptr noundef nonnull @.str.30) #9
  br label %if.end466

if.end466:                                        ; preds = %if.then460, %do.body446, %sw.bb441.if.end466_crit_edge
  %97 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cf, align 4
  %tobool467.not = icmp eq ptr %98, null
  br i1 %tobool467.not, label %if.end466.if.end471_crit_edge, label %if.then468

if.end466.if.end471_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end471

if.then468:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %or470 = or i32 %100, 64
  store i32 %or470, ptr %98, align 8
  br label %if.end471

if.end471:                                        ; preds = %if.then468, %if.end466.if.end471_crit_edge
  %bus_off = getelementptr i8, ptr %netdev, i32 2320
  %101 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bus_off, align 4
  %inc472 = add i32 %102, 1
  store i32 %inc472, ptr %bus_off, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %103 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %104, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %state473 = getelementptr i8, ptr %netdev, i32 2472
  %105 = ptrtoint ptr %state473 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state473, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp474.not = icmp eq i32 %106, 3
  br i1 %cmp474.not, label %if.end471.sw.epilog508_crit_edge, label %if.then476

if.end471.sw.epilog508_crit_edge:                 ; preds = %if.end471
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog508

if.then476:                                       ; preds = %if.end471
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %state473 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %state473, align 4
  call void @can_bus_off(ptr noundef %netdev) #9
  %do_set_mode = getelementptr i8, ptr %netdev, i32 2596
  %108 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %do_set_mode, align 4
  %call478 = call i32 %109(ptr noundef %netdev, i32 noundef 0) #9
  br label %sw.epilog508

sw.bb480:                                         ; preds = %sw.epilog
  %call481 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %sw.bb480.if.end484_crit_edge, label %if.then483

sw.bb480.if.end484_crit_edge:                     ; preds = %sw.bb480
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end484

if.then483:                                       ; preds = %sw.bb480
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.31) #12
  br label %if.end484

if.end484:                                        ; preds = %if.then483, %sw.bb480.if.end484_crit_edge
  %110 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cf, align 4
  %tobool485.not = icmp eq ptr %111, null
  br i1 %tobool485.not, label %if.end484.cleanup_crit_edge, label %if.then486

if.end484.cleanup_crit_edge:                      ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then486:                                       ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx488 = getelementptr %struct.can_frame, ptr %111, i32 0, i32 5, i32 4
  %112 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx488, align 4
  %114 = or i8 %113, 4
  store i8 %114, ptr %arrayidx488, align 4
  %115 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cf, align 4
  %arrayidx493 = getelementptr %struct.can_frame, ptr %116, i32 0, i32 5, i32 4
  %117 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx493, align 4
  %119 = or i8 %118, 64
  store i8 %119, ptr %arrayidx493, align 4
  br label %sw.epilog508

sw.default498:                                    ; preds = %sw.epilog
  %call499 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call499)
  %tobool500.not = icmp eq i32 %call499, 0
  br i1 %tobool500.not, label %sw.default498.if.end502_crit_edge, label %if.then501

sw.default498.if.end502_crit_edge:                ; preds = %sw.default498
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end502

if.then501:                                       ; preds = %sw.default498
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.es58x_rx_err_msg, i32 noundef %event) #12
  br label %if.end502

if.end502:                                        ; preds = %if.then501, %sw.default498.if.end502_crit_edge
  %120 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cf, align 4
  %tobool503.not = icmp eq ptr %121, null
  br i1 %tobool503.not, label %if.end502.if.end539_crit_edge, label %if.then504

if.end502.if.end539_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.then504:                                       ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 8
  %or506 = or i32 %123, 4
  store i32 %or506, ptr %121, align 8
  br label %sw.epilog508

sw.epilog508:                                     ; preds = %if.then504, %if.then486, %if.then476, %if.end471.sw.epilog508_crit_edge, %if.end439, %if.then391, %if.end386.sw.epilog508_crit_edge, %if.end340, %sw.epilog.sw.epilog508_crit_edge
  %ret.0.ph = phi i32 [ %event, %sw.epilog.sw.epilog508_crit_edge ], [ 0, %if.end340 ], [ 0, %if.end386.sw.epilog508_crit_edge ], [ 0, %if.then391 ], [ 0, %if.end439 ], [ 0, %if.end471.sw.epilog508_crit_edge ], [ %call478, %if.then476 ], [ 0, %if.then486 ], [ 0, %if.then504 ]
  %124 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr = load ptr, ptr %cf, align 4
  %tobool509.not = icmp eq ptr %.pr, null
  br i1 %tobool509.not, label %sw.epilog508.if.end539_crit_edge, label %if.then510

sw.epilog508.if.end539_crit_edge:                 ; preds = %sw.epilog508
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.then510:                                       ; preds = %sw.epilog508
  %arrayidx512 = getelementptr %struct.can_frame, ptr %.pr, i32 0, i32 5, i32 1
  %125 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx512, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool513.not = icmp eq i8 %126, 0
  br i1 %tobool513.not, label %if.then510.if.end517_crit_edge, label %if.then514

if.then510.if.end517_crit_edge:                   ; preds = %if.then510
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end517

if.then514:                                       ; preds = %if.then510
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %.pr, align 8
  %or516 = or i32 %128, 4
  store i32 %or516, ptr %.pr, align 8
  br label %if.end517

if.end517:                                        ; preds = %if.then514, %if.then510.if.end517_crit_edge
  %129 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cf, align 4
  %arrayidx519 = getelementptr %struct.can_frame, ptr %130, i32 0, i32 5, i32 2
  %131 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx519, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool521.not = icmp eq i8 %132, 0
  br i1 %tobool521.not, label %lor.lhs.false, label %if.end517.if.then526_crit_edge

if.end517.if.then526_crit_edge:                   ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then526

lor.lhs.false:                                    ; preds = %if.end517
  %arrayidx523 = getelementptr %struct.can_frame, ptr %130, i32 0, i32 5, i32 3
  %133 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx523, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool525.not = icmp eq i8 %134, 0
  br i1 %tobool525.not, label %lor.lhs.false.if.end530_crit_edge, label %lor.lhs.false.if.then526_crit_edge

lor.lhs.false.if.then526_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then526

lor.lhs.false.if.end530_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end530

if.then526:                                       ; preds = %lor.lhs.false.if.then526_crit_edge, %if.end517.if.then526_crit_edge
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %130, align 8
  %or528 = or i32 %136, 8
  store i32 %or528, ptr %130, align 8
  %137 = ptrtoint ptr %can_stats2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %can_stats2, align 4
  %inc529 = add i32 %138, 1
  store i32 %inc529, ptr %can_stats2, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.then526, %lor.lhs.false.if.end530_crit_edge
  %139 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cf, align 4
  %arrayidx532 = getelementptr %struct.can_frame, ptr %140, i32 0, i32 5, i32 4
  %141 = ptrtoint ptr %arrayidx532 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx532, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool533.not = icmp eq i8 %142, 0
  br i1 %tobool533.not, label %if.end530.if.end537_crit_edge, label %if.then534

if.end530.if.end537_crit_edge:                    ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end537

if.then534:                                       ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %140, align 8
  %or536 = or i32 %144, 16
  store i32 %or536, ptr %140, align 8
  br label %if.end537

if.end537:                                        ; preds = %if.then534, %if.end530.if.end537_crit_edge
  %es58x_dev1.i = getelementptr i8, ptr %netdev, i32 2616
  %145 = ptrtoint ptr %es58x_dev1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %es58x_dev1.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 17
  %147 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %148, i32 0, i32 7
  %mul.i.i = mul i64 %timestamp, 500
  %realtime_diff_ns.i = getelementptr inbounds %struct.es58x_device, ptr %146, i32 0, i32 12
  %149 = ptrtoint ptr %realtime_diff_ns.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %realtime_diff_ns.i, align 8
  %add.i = add i64 %150, %mul.i.i
  %151 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %add.i, ptr %hwtstamps.i.i, align 8
  %call538 = call i32 @netif_rx(ptr noundef %call10) #9
  br label %if.end539

if.end539:                                        ; preds = %if.end537, %sw.epilog508.if.end539_crit_edge, %if.end502.if.end539_crit_edge
  %ret.0675 = phi i32 [ %ret.0.ph, %if.end537 ], [ %ret.0.ph, %sw.epilog508.if.end539_crit_edge ], [ 0, %if.end502.if.end539_crit_edge ]
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool540.not = icmp eq i32 %and, 0
  br i1 %tobool540.not, label %if.end539.cleanup_crit_edge, label %land.lhs.true541

if.end539.cleanup_crit_edge:                      ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true541:                                 ; preds = %if.end539
  %err_passive_before_rtx_success542 = getelementptr i8, ptr %netdev, i32 2634
  %152 = ptrtoint ptr %err_passive_before_rtx_success542 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %err_passive_before_rtx_success542, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %153)
  %cmp544 = icmp eq i8 %153, -2
  br i1 %cmp544, label %if.then546, label %land.lhs.true541.cleanup_crit_edge

land.lhs.true541.cleanup_crit_edge:               ; preds = %land.lhs.true541
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then546:                                       ; preds = %land.lhs.true541
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.33, i32 noundef 254) #12
  %call549 = call i32 @es58x_rx_err_msg(ptr noundef %netdev, i32 noundef 0, i32 noundef 8, i64 noundef %timestamp)
  br label %cleanup

cleanup:                                          ; preds = %if.then546, %land.lhs.true541.cleanup_crit_edge, %if.end539.cleanup_crit_edge, %if.end484.cleanup_crit_edge, %if.then8, %if.end
  %retval.0 = phi i32 [ -22, %if.then8 ], [ %call549, %if.then546 ], [ 0, %if.end ], [ %ret.0675, %land.lhs.true541.cleanup_crit_edge ], [ %ret.0675, %if.end539.cleanup_crit_edge ], [ 0, %if.end484.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_rx_cmd_ret_u8(ptr noundef %dev, i32 noundef %cmd_ret_type, i32 noundef %rx_cmd_ret_u8) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd_ret_type)
  %0 = icmp ult i32 %cmd_ret_type, 7
  br i1 %0, label %switch.lookup, label %entry.es58x_cmd_ret_desc.exit_crit_edge

entry.es58x_cmd_ret_desc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_cmd_ret_desc.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.es58x_rx_cmd_ret_u8, i32 0, i32 %cmd_ret_type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %es58x_cmd_ret_desc.exit

es58x_cmd_ret_desc.exit:                          ; preds = %switch.lookup, %entry.es58x_cmd_ret_desc.exit_crit_edge
  %retval.0.i31 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.71, %entry.es58x_cmd_ret_desc.exit_crit_edge ]
  %2 = zext i32 %rx_cmd_ret_u8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %rx_cmd_ret_u8, label %do.end21 [
    i32 0, label %do.body
    i32 128, label %do.end10
    i32 129, label %do.end14
    i32 153, label %do.end18
  ]

do.body:                                          ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_rx_cmd_ret_u8.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_rx_cmd_ret_u8, %cleanup)) #9
          to label %land.lhs.true [label %cleanup], !srcloc !376

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_rx_cmd_ret_u8._rs, ptr noundef nonnull @.str.35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es58x_rx_cmd_ret_u8.descriptor, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull %retval.0.i31) #9
  br label %cleanup

do.end10:                                         ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull %retval.0.i31) #12
  br label %cleanup

do.end14:                                         ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull %retval.0.i31) #12
  br label %cleanup

do.end18:                                         ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull %retval.0.i31) #12
  br label %cleanup

do.end21:                                         ; preds = %es58x_cmd_ret_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %retval.0.i31, i32 noundef %rx_cmd_ret_u8) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end18, %do.end14, %do.end10, %if.then, %land.lhs.true.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -74, %do.end21 ], [ -5, %do.end18 ], [ -12, %do.end14 ], [ -74, %do.end10 ], [ 0, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es58x_can_reset_echo_fifo(ptr nocapture noundef %netdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tail = getelementptr i8, ptr %netdev, i32 2624
  %0 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_tail, align 4
  %tx_head = getelementptr i8, ptr %netdev, i32 2628
  %1 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_head, align 4
  %tx_urb = getelementptr i8, ptr %netdev, i32 2620
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_urb, align 4
  %err_passive_before_rtx_success = getelementptr i8, ptr %netdev, i32 2634
  %3 = ptrtoint ptr %err_passive_before_rtx_success to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %err_passive_before_rtx_success, align 2
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #9
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @es58x_send_msg(ptr noundef %es58x_dev, i8 noundef zeroext %cmd_type, i8 noundef zeroext %cmd_id, ptr nocapture noundef readonly %msg, i16 noundef zeroext %msg_len, i32 noundef %channel_idx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %channel_idx)
  %cmp = icmp eq i32 %channel_idx, 255
  %netdev1 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2
  %arrayidx3 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %channel_idx
  %netdev.0.in = select i1 %cmp, ptr %netdev1, ptr %arrayidx3
  %0 = ptrtoint ptr %netdev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %netdev.0 = load ptr, ptr %netdev.0.in, align 4
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param.i, align 8
  %urb_cmd_header_len.i = getelementptr inbounds %struct.es58x_parameters, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %urb_cmd_header_len.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %urb_cmd_header_len.i, align 1
  %conv.i = zext i8 %4 to i32
  %conv1.i = zext i16 %msg_len to i32
  %add.i = add nuw nsw i32 %conv1.i, 2
  %add2.i = add nuw nsw i32 %add.i, %conv.i
  %tx_urb_cmd_max_len = getelementptr inbounds %struct.es58x_parameters, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %tx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_urb_cmd_max_len, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %conv)
  %cmp4 = icmp ugt i32 %add2.i, %conv
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call fastcc ptr @es58x_get_tx_urb(ptr noundef %es58x_dev)
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  %ops = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %fill_urb_header = getelementptr inbounds %struct.es58x_operators, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %fill_urb_header to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fill_urb_header, align 4
  %conv11 = trunc i32 %channel_idx to i8
  tail call void %12(ptr noundef %8, i8 noundef zeroext %cmd_type, i8 noundef zeroext %cmd_id, i8 noundef zeroext %conv11, i16 noundef zeroext %msg_len) #9
  %13 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param.i, align 8
  %urb_cmd_header_len = getelementptr inbounds %struct.es58x_parameters, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %urb_cmd_header_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %urb_cmd_header_len, align 1
  %idxprom = zext i8 %16 to i32
  %arrayidx13 = getelementptr [0 x i8], ptr %8, i32 0, i32 %idxprom
  %17 = call ptr @memcpy(ptr %arrayidx13, ptr %msg, i32 %conv1.i)
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add2.i, ptr %transfer_buffer_length, align 4
  %call15 = tail call fastcc i32 @es58x_submit_urb(ptr noundef %es58x_dev, ptr noundef nonnull %call8, ptr noundef %netdev.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end10 ], [ -75, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @es58x_get_tx_urb(ptr noundef %es58x_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_urbs_idle_cnt = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 10
  %tx_urbs_idle = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 9
  %call = tail call ptr @usb_get_from_anchor(ptr noundef %tx_urbs_idle) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_urbs_idle_cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %tx_urbs_idle_cnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_urbs_idle_cnt, ptr %tx_urbs_idle_cnt, i32 1, ptr elementtype(i32) %tx_urbs_idle_cnt) #9, !srcloc !381
  %asmresult.i.i.i.i41 = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !382
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %asmresult.i.i.i.i41)
  %cmp42 = icmp sgt i32 %asmresult.i.i.i.i41, 6
  br i1 %cmp42, label %while.body.lr.ph, label %while.cond.preheader.cleanup17_crit_edge

while.cond.preheader.cleanup17_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %param13 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  br label %while.body

if.then:                                          ; preds = %entry
  %param = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param, align 8
  %tx_urb_cmd_max_len = getelementptr inbounds %struct.es58x_parameters, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %tx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_urb_cmd_max_len, align 4
  %conv = zext i16 %4 to i32
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.72) #12
  br label %cleanup17

if.end.i:                                         ; preds = %if.then
  %udev.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 1
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %call1.i = tail call ptr @usb_alloc_coherent(ptr noundef %8, i32 noundef %conv, i32 noundef 2592, ptr noundef %transfer_dma.i) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end5.i, label %if.end

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.75) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %cleanup17

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %12, 4
  store i32 %or.i, ptr %transfer_flags.i, align 4
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  %tx_pipe = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 6
  %15 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_pipe, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %context4.i, align 4
  br label %cleanup17

while.body:                                       ; preds = %cleanup16.while.body_crit_edge, %while.body.lr.ph
  %call9 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_urbs_idle) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %while.body.cleanup17_crit_edge, label %cleanup16

while.body.cleanup17_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

cleanup16:                                        ; preds = %while.body
  %dev = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %param13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %param13, align 8
  %tx_urb_cmd_max_len14 = getelementptr inbounds %struct.es58x_parameters, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %tx_urb_cmd_max_len14 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tx_urb_cmd_max_len14, align 4
  %conv15 = zext i16 %28 to i32
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 15
  %31 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %24, i32 noundef %conv15, ptr noundef %30, i32 noundef %32) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call9) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_urbs_idle_cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %tx_urbs_idle_cnt, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_urbs_idle_cnt, ptr %tx_urbs_idle_cnt, i32 1, ptr elementtype(i32) %tx_urbs_idle_cnt) #9, !srcloc !381
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !382
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 6
  br i1 %cmp, label %cleanup16.while.body_crit_edge, label %cleanup16.cleanup17_crit_edge

cleanup16.cleanup17_crit_edge:                    ; preds = %cleanup16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

cleanup16.while.body_crit_edge:                   ; preds = %cleanup16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup17:                                        ; preds = %cleanup16.cleanup17_crit_edge, %while.body.cleanup17_crit_edge, %if.end, %do.end5.i, %do.end.i, %while.cond.preheader.cleanup17_crit_edge
  %retval.1 = phi ptr [ %call.i, %if.end ], [ null, %do.end5.i ], [ null, %do.end.i ], [ %call, %while.cond.preheader.cleanup17_crit_edge ], [ %call, %while.body.cleanup17_crit_edge ], [ %call, %cleanup16.cleanup17_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es58x_submit_urb(ptr noundef %es58x_dev, ptr noundef %urb, ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_buffer_length, align 4
  %conv.i.i = and i32 %3, 65535
  %sub1.i.i = add nsw i32 %conv.i.i, -4
  %arrayidx.i.i = getelementptr [0 x i8], ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx.i.i, i32 noundef %sub1.i.i) #9
  %sub.i = add nsw i32 %conv.i.i, -2
  %arrayidx.i = getelementptr [0 x i8], ptr %1, i32 0, i32 %sub.i
  %4 = tail call i16 @llvm.bswap.i16(i16 %call.i.i) #9
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %arrayidx.i, align 1
  %udev = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %tx_pipe = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 6
  %8 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pipe, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %11 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %pipe2.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @es58x_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %13 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %netdev, ptr %context4.i, align 4
  %tx_urbs_busy = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 8
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %tx_urbs_busy) #9
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.es58x_submit_urb, ptr noundef nonnull %14) #12
  tail call void @usb_unanchor_urb(ptr noundef %urb) #9
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %param = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %param, align 8
  %tx_urb_cmd_max_len = getelementptr inbounds %struct.es58x_parameters, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %tx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_urb_cmd_max_len, align 4
  %conv4 = zext i16 %20 to i32
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %23 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %16, i32 noundef %conv4, ptr noundef %22, i32 noundef %24) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @usb_free_urb(ptr noundef %urb) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @es58x_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @es58x_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @es58x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @es58x_write_bulk_callback(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %es58x_dev1 = getelementptr i8, ptr %1, i32 2616
  %2 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %es58x_dev1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -75, label %sw.bb
    i32 -2, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_write_bulk_callback, ptr noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %11, i32 noundef %13, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb5.if.end21_crit_edge, label %do.body9

sw.bb5.if.end21_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body9:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_write_bulk_callback.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_write_bulk_callback, %if.end21)) #9
          to label %if.then15 [label %if.end21], !srcloc !376

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %16 = inttoptr i32 %15 to ptr
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @es58x_write_bulk_callback.__UNIQUE_ID_ddebug493, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_write_bulk_callback, ptr noundef %16) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %do.body9, %sw.bb5.if.end21_crit_edge
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %param = getelementptr inbounds %struct.es58x_device, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %param, align 8
  %tx_urb_cmd_max_len = getelementptr inbounds %struct.es58x_parameters, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %tx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tx_urb_cmd_max_len, align 4
  %conv = zext i16 %22 to i32
  %transfer_buffer22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer22, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %25 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %18, i32 noundef %conv, ptr noundef %24, i32 noundef %26) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call23 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.default.sw.epilog_crit_edge, label %if.then25

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then25:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %29 = inttoptr i32 %28 to ptr
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_write_bulk_callback, ptr noundef %29) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then25, %sw.default.sw.epilog_crit_edge, %if.end, %entry.sw.epilog_crit_edge
  %tx_urbs_idle = getelementptr inbounds %struct.es58x_device, ptr %3, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %tx_urbs_idle) #9
  %tx_urbs_idle_cnt = getelementptr inbounds %struct.es58x_device, ptr %3, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_urbs_idle_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_urbs_idle_cnt, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_urbs_idle_cnt, ptr %tx_urbs_idle_cnt, i32 1, ptr elementtype(i32) %tx_urbs_idle_cnt) #9, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #1 align 64 {
entry:
  %ep_in.i = alloca ptr, align 4
  %ep_out.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep_in.i) #9
  %4 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep_in.i, align 4, !annotation !379
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep_out.i) #9
  %5 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep_out.i, align 4, !annotation !379
  %manufacturer.i = getelementptr i8, ptr %3, i32 1108
  %6 = ptrtoint ptr %manufacturer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %manufacturer.i, align 4
  %product.i = getelementptr i8, ptr %3, i32 1104
  %8 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %product.i, align 8
  %serial.i = getelementptr i8, ptr %3, i32 1112
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.81, ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef nonnull @.str.2) #12
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting.i, align 4
  %call2.i = call i32 @usb_find_common_endpoints(ptr noundef %13, ptr noundef nonnull %ep_in.i, ptr noundef nonnull %ep_out.i, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = inttoptr i32 %call2.i to ptr
  br label %es58x_init_es58x_dev.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.es58x_parameters, ptr @es581_4_param, i32 0, i32 9) to i32))
  %.val.i = load i16, ptr getelementptr inbounds (%struct.es58x_parameters, ptr @es581_4_param, i32 0, i32 9), align 2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.es58x_parameters, ptr @es58x_fd_param, i32 0, i32 9) to i32))
  %.val75.i = load i16, ptr getelementptr inbounds (%struct.es58x_parameters, ptr @es58x_fd_param, i32 0, i32 9), align 2
  %15 = select i1 %tobool4.not.i, i16 %.val.i, i16 %.val75.i
  %conv.i.i = zext i16 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1198
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %es58x_init_es58x_dev.exit.thread, label %if.end12.i

es58x_init_es58x_dev.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_out.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_in.i) #9
  br label %if.then

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %es581_4_param.es58x_fd_param.i = select i1 %tobool4.not.i, ptr @es581_4_param, ptr @es58x_fd_param
  %es581_4_ops.es58x_fd_ops.i = select i1 %tobool4.not.i, ptr @es581_4_ops, ptr @es58x_fd_ops
  %param13.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %param13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %es581_4_param.es58x_fd_param.i, ptr %param13.i, align 8
  %ops14.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %ops14.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %es581_4_ops.es58x_fd_ops.i, ptr %ops14.i, align 4
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1.i, ptr %call.i.i, align 8
  %udev16.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %udev16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i.i, ptr %udev16.i, align 4
  %and17.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %spec.select.i = select i1 %tobool18.not.i, i8 1, i8 2
  %20 = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select.i, ptr %20, align 2
  %rx_urbs.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 7
  %22 = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 7, i32 1
  %23 = call ptr @memset(ptr %22, i32 0, i32 104)
  %24 = ptrtoint ptr %rx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %rx_urbs.i, ptr %rx_urbs.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rx_urbs.i, ptr %prev.i.i.i, align 4
  call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.84, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 7, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_usb_anchor.__key.85, i16 noundef signext 3) #9
  %tx_urbs_idle.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 9
  %26 = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 9, i32 1
  %27 = call ptr @memset(ptr %26, i32 0, i32 104)
  %28 = ptrtoint ptr %tx_urbs_idle.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %tx_urbs_idle.i, ptr %tx_urbs_idle.i, align 4
  %prev.i.i66.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 9, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx_urbs_idle.i, ptr %prev.i.i66.i, align 4
  call void @__init_waitqueue_head(ptr noundef %26, ptr noundef nonnull @.str.84, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i68.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 9, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i68.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_usb_anchor.__key.85, i16 noundef signext 3) #9
  %tx_urbs_busy.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 8
  %30 = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 8, i32 1
  %31 = call ptr @memset(ptr %30, i32 0, i32 104)
  %32 = ptrtoint ptr %tx_urbs_busy.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %tx_urbs_busy.i, ptr %tx_urbs_busy.i, align 4
  %prev.i.i69.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 8, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tx_urbs_busy.i, ptr %prev.i.i69.i, align 4
  call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.84, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i71.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 8, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i71.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_usb_anchor.__key.85, i16 noundef signext 3) #9
  %tx_urbs_idle_cnt.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_urbs_idle_cnt.i, i32 noundef 4) #9
  %34 = ptrtoint ptr %tx_urbs_idle_cnt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %tx_urbs_idle_cnt.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %36 = ptrtoint ptr %udev16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev16.i, align 4
  %38 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ep_in.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 8
  %shl.i.i = shl i32 %43, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or25.i = or i32 %or.i.i, -1073741696
  %rx_pipe.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or25.i, ptr %rx_pipe.i, align 8
  %45 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep_out.i, align 4
  %bEndpointAddress27.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %bEndpointAddress27.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress27.i, align 1
  %conv28.i = zext i8 %48 to i32
  %49 = load i32, ptr %37, align 8
  %shl.i72.i = shl i32 %49, 8
  %shl1.i73.i = shl nuw nsw i32 %conv28.i, 15
  %or.i74.i = or i32 %shl.i72.i, %shl1.i73.i
  %or30.i = or i32 %or.i74.i, -1073741824
  %tx_pipe.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or30.i, ptr %tx_pipe.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 4
  %51 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %wMaxPacketSize.i, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #9
  %rx_max_packet_size.i = getelementptr inbounds %struct.es58x_device, ptr %call.i.i, i32 0, i32 14
  %54 = ptrtoint ptr %rx_max_packet_size.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %rx_max_packet_size.i, align 8
  br label %es58x_init_es58x_dev.exit

es58x_init_es58x_dev.exit:                        ; preds = %if.end12.i, %if.then.i
  %retval.0.i = phi ptr [ %14, %if.then.i ], [ %call.i.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_out.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_in.i) #9
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %es58x_init_es58x_dev.exit.if.then_crit_edge, label %if.end

es58x_init_es58x_dev.exit.if.then_crit_edge:      ; preds = %es58x_init_es58x_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %es58x_init_es58x_dev.exit.if.then_crit_edge, %es58x_init_es58x_dev.exit.thread
  %retval.0.i42 = phi ptr [ inttoptr (i32 -12 to ptr), %es58x_init_es58x_dev.exit.thread ], [ %retval.0.i, %es58x_init_es58x_dev.exit.if.then_crit_edge ]
  %55 = ptrtoint ptr %retval.0.i42 to i32
  br label %cleanup

if.end:                                           ; preds = %es58x_init_es58x_dev.exit
  %udev1.i = getelementptr inbounds %struct.es58x_device, ptr %retval.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3264, i32 noundef 127) #13
  %tobool.not.i24 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i24, label %if.end.cleanup_crit_edge, label %if.end.i27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i27:                                       ; preds = %if.end
  %call2.i25 = call i32 @usb_string(ptr noundef %57, i32 noundef 6, ptr noundef nonnull %call7.i.i, i32 noundef 127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25)
  %cmp.i26 = icmp slt i32 %call2.i25, 0
  br i1 %cmp.i26, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %retval.0.i, align 8
  %61 = inttoptr i32 %call2.i25 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull %61) #12
  br label %es58x_get_product_info.exit

if.end5.i:                                        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %call2.i25)
  %cmp6.i = icmp ugt i32 %call2.i25, 125
  br i1 %cmp6.i, label %do.end10.i, label %if.end5.i.do.end15.i_crit_edge

if.end5.i.do.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i

do.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %retval.0.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #12
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end10.i, %if.end5.i.do.end15.i_crit_edge
  %64 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %retval.0.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.94, ptr noundef nonnull %call7.i.i) #12
  br label %es58x_get_product_info.exit

es58x_get_product_info.exit:                      ; preds = %do.end15.i, %do.end.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %66 = call i32 @llvm.smin.i32(i32 %call2.i25, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i25)
  %tobool.not = icmp sgt i32 %call2.i25, -1
  br i1 %tobool.not, label %for.cond.preheader, label %es58x_get_product_info.exit.cleanup_crit_edge

es58x_get_product_info.exit.cleanup_crit_edge:    ; preds = %es58x_get_product_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %es58x_get_product_info.exit
  %num_can_ch = getelementptr inbounds %struct.es58x_device, ptr %retval.0.i, i32 0, i32 15
  %67 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_can_ch, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp55.not = icmp eq i8 %68, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %retval.0.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch_idx.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %69 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %retval.0.i, align 8
  %71 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %param.i, align 8
  %fifo_mask.i = getelementptr inbounds %struct.es58x_parameters, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %fifo_mask.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fifo_mask.i, align 4
  %conv.i29 = zext i16 %74 to i32
  %add.i = add nuw nsw i32 %conv.i29, 1
  %call.i = call ptr @alloc_candev_mqs(i32 noundef 332, i32 noundef %add.i, i32 noundef 1, i32 noundef 1) #9
  %tobool.not.i30 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i30, label %do.end.i31, label %if.end.i33

do.end.i31:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.96) #12
  br label %if.then9

if.end.i33:                                       ; preds = %for.body
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %75 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %70, ptr %parent.i, align 8
  %arrayidx.i = getelementptr %struct.es58x_device, ptr %retval.0.i, i32 0, i32 2, i32 %ch_idx.056
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %77 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %param.i, align 8
  %es58x_dev3.i.i = getelementptr i8, ptr %call.i, i32 2616
  %79 = ptrtoint ptr %es58x_dev3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %retval.0.i, ptr %es58x_dev3.i.i, align 4
  %conv.i.i32 = trunc i32 %ch_idx.056 to i8
  %channel_idx4.i.i = getelementptr i8, ptr %call.i, i32 2635
  %80 = ptrtoint ptr %channel_idx4.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv.i.i32, ptr %channel_idx4.i.i, align 1
  %tx_urb.i.i = getelementptr i8, ptr %call.i, i32 2620
  %81 = ptrtoint ptr %tx_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %tx_urb.i.i, align 4
  %tx_can_msg_cnt.i.i = getelementptr i8, ptr %call.i, i32 2632
  %82 = ptrtoint ptr %tx_can_msg_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %tx_can_msg_cnt.i.i, align 4
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %78, align 4
  %bittiming_const5.i.i = getelementptr i8, ptr %call.i, i32 2332
  %85 = ptrtoint ptr %bittiming_const5.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %bittiming_const5.i.i, align 4
  %ctrlmode_supported.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %78, i32 0, i32 5
  %86 = ptrtoint ptr %ctrlmode_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ctrlmode_supported.i.i, align 4
  %and.i.i = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i33.es58x_init_priv.exit.i_crit_edge, label %if.then.i.i

if.end.i33.es58x_init_priv.exit.i_crit_edge:      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_init_priv.exit.i

if.then.i.i:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  %data_bittiming_const.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %78, i32 0, i32 1
  %88 = ptrtoint ptr %data_bittiming_const.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data_bittiming_const.i.i, align 4
  %data_bittiming_const6.i.i = getelementptr i8, ptr %call.i, i32 2336
  %90 = ptrtoint ptr %data_bittiming_const6.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %data_bittiming_const6.i.i, align 4
  %tdc_const.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %78, i32 0, i32 2
  %91 = ptrtoint ptr %tdc_const.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tdc_const.i.i, align 4
  %tdc_const7.i.i = getelementptr i8, ptr %call.i, i32 2404
  %93 = ptrtoint ptr %tdc_const7.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %tdc_const7.i.i, align 4
  br label %es58x_init_priv.exit.i

es58x_init_priv.exit.i:                           ; preds = %if.then.i.i, %if.end.i33.es58x_init_priv.exit.i_crit_edge
  %bitrate_max.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %78, i32 0, i32 3
  %94 = ptrtoint ptr %bitrate_max.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bitrate_max.i.i, align 4
  %bitrate_max8.i.i = getelementptr i8, ptr %call.i, i32 2436
  %96 = ptrtoint ptr %bitrate_max8.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %bitrate_max8.i.i, align 4
  %clock.i.i = getelementptr i8, ptr %call.i, i32 2440
  %clock9.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %78, i32 0, i32 4
  %97 = ptrtoint ptr %clock9.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %clock9.i.i, align 4
  %99 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %clock.i.i, align 4
  %state.i.i = getelementptr i8, ptr %call.i, i32 2472
  %100 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %state.i.i, align 4
  %101 = ptrtoint ptr %ctrlmode_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ctrlmode_supported.i.i, align 4
  %ctrlmode_supported11.i.i = getelementptr i8, ptr %call.i, i32 2480
  %103 = ptrtoint ptr %ctrlmode_supported11.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %ctrlmode_supported11.i.i, align 4
  %do_set_mode.i.i = getelementptr i8, ptr %call.i, i32 2596
  %104 = ptrtoint ptr %do_set_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @es58x_set_mode, ptr %do_set_mode.i.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %105 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @es58x_netdev_ops, ptr %netdev_ops.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 14
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %107, 262144
  store i32 %or.i, ptr %flags.i, align 8
  %conv5.i = trunc i32 %ch_idx.056 to i16
  %dev_port.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 61
  %108 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv5.i, ptr %dev_port.i, align 4
  %call6.i = call i32 @register_candev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.inc, label %es58x_init_priv.exit.i.if.then9_crit_edge

es58x_init_priv.exit.i.if.then9_crit_edge:        ; preds = %es58x_init_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %es58x_init_priv.exit.i.if.then9_crit_edge, %do.end.i31
  %retval.0.i34.ph = phi i32 [ -12, %do.end.i31 ], [ %call6.i, %es58x_init_priv.exit.i.if.then9_crit_edge ]
  %109 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_can_ch, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp13.not.i = icmp eq i8 %110, 0
  br i1 %cmp13.not.i, label %if.then9.cleanup_crit_edge, label %if.then9.for.body.i_crit_edge

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.then9.for.body.i_crit_edge ]
  %arrayidx.i35 = getelementptr %struct.es58x_device, ptr %retval.0.i, i32 0, i32 2, i32 %i.014.i
  %111 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i35, align 4
  %tobool.not.i36 = icmp eq ptr %112, null
  br i1 %tobool.not.i36, label %for.body.i.cleanup.i_crit_edge, label %if.end.i37

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i37:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @unregister_candev(ptr noundef nonnull %112) #9
  %113 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %arrayidx.i35, align 4
  call void @free_candev(ptr noundef nonnull %112) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i37, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %114 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_can_ch, align 2
  %conv.i38 = zext i8 %115 to i32
  %cmp.i39 = icmp ult i32 %inc.i, %conv.i38
  br i1 %cmp.i39, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc:                                          ; preds = %es58x_init_priv.exit.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 103
  %116 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %_tx.i.i, align 128
  %118 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %param.i, align 8
  %dql_min_limit.i = getelementptr inbounds %struct.es58x_parameters, ptr %119, i32 0, i32 11
  %120 = ptrtoint ptr %dql_min_limit.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %dql_min_limit.i, align 2
  %conv12.i = zext i16 %121 to i32
  %min_limit1.i.i = getelementptr inbounds %struct.netdev_queue, ptr %117, i32 0, i32 15, i32 12
  %122 = ptrtoint ptr %min_limit1.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv12.i, ptr %min_limit1.i.i, align 32
  %inc = add nuw nsw i32 %ch_idx.056, 1
  %123 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %num_can_ch, align 2
  %conv = zext i8 %124 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %es58x_get_product_info.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %55, %if.then ], [ %66, %es58x_get_product_info.exit.cleanup_crit_edge ], [ %retval.0.i34.ph, %if.then9.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.i34.ph, %cleanup.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @es58x_disconnect(ptr noundef %intf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %udev = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %manufacturer, align 4
  %product = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %product, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.157, ptr noundef %5, ptr noundef %7) #12
  %num_can_ch.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %num_can_ch.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_can_ch.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13.not.i = icmp eq i8 %9, 0
  br i1 %cmp13.not.i, label %entry.es58x_free_netdevs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.es58x_free_netdevs.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_free_netdevs.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.es58x_device, ptr %1, i32 0, i32 2, i32 %i.014.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_candev(ptr noundef nonnull %11) #9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @free_candev(ptr noundef nonnull %11) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %13 = ptrtoint ptr %num_can_ch.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_can_ch.i, align 2
  %conv.i = zext i8 %14 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.es58x_free_netdevs.exit_crit_edge

cleanup.i.es58x_free_netdevs.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_free_netdevs.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

es58x_free_netdevs.exit:                          ; preds = %cleanup.i.es58x_free_netdevs.exit_crit_edge, %entry.es58x_free_netdevs.exit_crit_edge
  tail call fastcc void @es58x_free_urbs(ptr noundef %1)
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_set_mode(ptr noundef %netdev, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state = getelementptr i8, ptr %netdev, i32 2472
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %2, label %sw.bb.cleanup_crit_edge [
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %es58x_dev = getelementptr i8, ptr %netdev, i32 2616
  %4 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %es58x_dev, align 4
  %ops = getelementptr inbounds %struct.es58x_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %enable_channel = getelementptr inbounds %struct.es58x_operators, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %enable_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_channel, align 4
  %call2 = tail call i32 %9(ptr noundef %add.ptr.i.i) #9
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @es58x_open(ptr noundef %netdev)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %state8 = getelementptr i8, ptr %netdev, i32 2472
  %10 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cond = icmp eq i32 %11, 4
  br i1 %cond, label %sw.bb6.cleanup_crit_edge, label %sw.default11

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default11:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %es58x_dev12 = getelementptr i8, ptr %netdev, i32 2616
  %12 = ptrtoint ptr %es58x_dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %es58x_dev12, align 4
  %ops13 = getelementptr inbounds %struct.es58x_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops13, align 4
  %disable_channel = getelementptr inbounds %struct.es58x_operators, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %disable_channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disable_channel, align 4
  %call14 = tail call i32 %17(ptr noundef %add.ptr.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default11, %sw.bb6.cleanup_crit_edge, %sw.bb3, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %sw.default11 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb6.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_open(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %es58x_dev1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev1, align 4
  %opened_channel_cnt = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %opened_channel_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opened_channel_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @es58x_alloc_rx_urbs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ktime_req_ns.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ktime_req_ns.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ktime_req_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.i = icmp eq i64 %5, 0
  br i1 %tobool.not.i, label %es58x_set_realtime_diff_ns.exit, label %es58x_set_realtime_diff_ns.exit.thread

es58x_set_realtime_diff_ns.exit.thread:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #12
  br label %free_urbs

es58x_set_realtime_diff_ns.exit:                  ; preds = %if.end
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %8 = ptrtoint ptr %ktime_req_ns.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i.i.i, ptr %ktime_req_ns.i, align 8
  %ops.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %get_timestamp.i = getelementptr inbounds %struct.es58x_operators, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %get_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_timestamp.i, align 4
  %call2.i = tail call i32 %12(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %es58x_set_realtime_diff_ns.exit.if.end9_crit_edge, label %es58x_set_realtime_diff_ns.exit.free_urbs_crit_edge

es58x_set_realtime_diff_ns.exit.free_urbs_crit_edge: ; preds = %es58x_set_realtime_diff_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_urbs

es58x_set_realtime_diff_ns.exit.if.end9_crit_edge: ; preds = %es58x_set_realtime_diff_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %es58x_set_realtime_diff_ns.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @open_candev(ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.free_urbs_crit_edge

if.end9.free_urbs_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_urbs

if.end13:                                         ; preds = %if.end9
  %ops = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %enable_channel = getelementptr inbounds %struct.es58x_operators, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %enable_channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable_channel, align 4
  %call15 = tail call i32 %16(ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.free_urbs_crit_edge

if.end13.free_urbs_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_urbs

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %opened_channel_cnt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %opened_channel_cnt, align 1
  %inc = add i8 %18, 1
  store i8 %inc, ptr %opened_channel_cnt, align 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

free_urbs:                                        ; preds = %if.end13.free_urbs_crit_edge, %if.end9.free_urbs_crit_edge, %es58x_set_realtime_diff_ns.exit.free_urbs_crit_edge, %es58x_set_realtime_diff_ns.exit.thread
  %ret.0 = phi i32 [ %call10, %if.end9.free_urbs_crit_edge ], [ %call15, %if.end13.free_urbs_crit_edge ], [ %call2.i, %es58x_set_realtime_diff_ns.exit.free_urbs_crit_edge ], [ -16, %es58x_set_realtime_diff_ns.exit.thread ]
  %21 = ptrtoint ptr %opened_channel_cnt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %opened_channel_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %if.then22, label %free_urbs.if.end23_crit_edge

free_urbs.if.end23_crit_edge:                     ; preds = %free_urbs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %free_urbs
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @es58x_free_urbs(ptr noundef %1)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %free_urbs.if.end23_crit_edge
  %23 = inttoptr i32 %ret.0 to ptr
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.es58x_open, ptr noundef %23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end18, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end23 ], [ 0, %if.end18 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es58x_alloc_rx_urbs(ptr noundef %es58x_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 8
  %param2 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %2 = ptrtoint ptr %param2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param2, align 8
  %rx_max_packet_size = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 14
  %4 = ptrtoint ptr %rx_max_packet_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_max_packet_size, align 8
  %conv = zext i16 %5 to i32
  %rx_urb_max = getelementptr inbounds %struct.es58x_parameters, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rx_urb_max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_urb_max, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp73.not = icmp eq i8 %7, 0
  br i1 %cmp73.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %udev.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 1
  %rx_pipe = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 5
  %rx_urbs = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end9.for.body_crit_edge ]
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.72) #12
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %call1.i = tail call ptr @usb_alloc_coherent(ptr noundef %11, i32 noundef %conv, i32 noundef 3264, ptr noundef %transfer_dma.i) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end5.i, label %if.end

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.75) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %for.end

if.end:                                           ; preds = %if.end.i
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %15, 4
  store i32 %or.i, ptr %transfer_flags.i, align 4
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %18 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pipe, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %24 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @es58x_read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %25 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %es58x_dev, ptr %context4.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_urbs) #9
  %call5 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #9
  %26 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev.i, align 4
  %28 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %27, i32 noundef %conv, ptr noundef nonnull %call1.i, i32 noundef %29) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %for.end

if.end9:                                          ; preds = %if.end
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  %inc = add nuw nsw i32 %i.074, 1
  %30 = ptrtoint ptr %rx_urb_max to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx_urb_max, align 2
  %conv3 = zext i8 %31 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.do.body14_crit_edge

if.end9.do.body14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.then7, %do.end5.i, %do.end.i
  %ret.1 = phi i32 [ %call5, %if.then7 ], [ -12, %do.end5.i ], [ -12, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.074)
  %cmp10 = icmp eq i32 %i.074, 0
  br i1 %cmp10, label %for.end.do.end_crit_edge, label %for.end.do.body14_crit_edge

for.end.do.body14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.189 = phi i32 [ %ret.1, %for.end.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #12
  br label %cleanup

do.body14:                                        ; preds = %for.end.do.body14_crit_edge, %if.end9.do.body14_crit_edge
  %ret.195 = phi i32 [ %ret.1, %for.end.do.body14_crit_edge ], [ 0, %if.end9.do.body14_crit_edge ]
  %i.06894 = phi i32 [ %i.074, %for.end.do.body14_crit_edge ], [ %inc, %if.end9.do.body14_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_alloc_rx_urbs.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_alloc_rx_urbs, %cleanup)) #9
          to label %if.then20 [label %cleanup], !srcloc !376

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es58x_alloc_rx_urbs.__UNIQUE_ID_ddebug494, ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, i32 noundef %i.06894, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body14, %do.end
  %ret.188 = phi i32 [ %ret.195, %do.body14 ], [ %ret.195, %if.then20 ], [ %ret.189, %do.end ]
  ret i32 %ret.188
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es58x_free_urbs(ptr noundef %es58x_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_urbs_busy = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 8
  %call = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %tx_urbs_busy, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149) #12
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_urbs_busy) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_urbs_idle = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 9
  %call229 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_urbs_idle) #9
  %cmp.not30 = icmp eq ptr %call229, null
  br i1 %cmp.not30, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %param = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %tx_urbs_idle_cnt = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call231 = phi ptr [ %call229, %while.body.lr.ph ], [ %call2, %while.body.while.body_crit_edge ]
  %dev3 = getelementptr inbounds %struct.urb, ptr %call231, i32 0, i32 8
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 8
  %tx_urb_cmd_max_len = getelementptr inbounds %struct.es58x_parameters, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %tx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_urb_cmd_max_len, align 4
  %conv = zext i16 %7 to i32
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call231, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call231, i32 0, i32 15
  %10 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef %conv, ptr noundef %9, i32 noundef %11) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call231) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_urbs_idle_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_urbs_idle_cnt, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_urbs_idle_cnt, ptr %tx_urbs_idle_cnt, i32 1, ptr elementtype(i32) %tx_urbs_idle_cnt) #9, !srcloc !384
  %call2 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_urbs_idle) #9
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %tx_urbs_idle_cnt4 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 10
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_urbs_idle_cnt4, i32 noundef 4) #9
  %13 = ptrtoint ptr %tx_urbs_idle_cnt4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tx_urbs_idle_cnt4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %while.end.if.end14_crit_edge, label %do.end10

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end10:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %es58x_dev, align 8
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_urbs_idle_cnt4, i32 noundef 4) #9
  %17 = ptrtoint ptr %tx_urbs_idle_cnt4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_urbs_idle_cnt4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.151, i32 noundef %18) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end10, %while.end.if.end14_crit_edge
  %rx_urbs = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_urbs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @es58x_read_bulk_callback(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %5, label %do.body66 [
    i32 0, label %sw.epilog
    i32 -75, label %do.body
    i32 -71, label %do.body18
    i32 -2, label %entry.do.body31_crit_edge
    i32 -32, label %entry.do.body31_crit_edge266
    i32 -108, label %do.body44
  ]

entry.do.body31_crit_edge266:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_read_bulk_callback._rs, ptr noundef nonnull @__func__.es58x_read_bulk_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.body7_crit_edge, label %do.end

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_read_bulk_callback, ptr noundef %9) #12
  br label %do.body7

do.body7:                                         ; preds = %do.end, %do.body.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_read_bulk_callback.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_read_bulk_callback, %resubmit_urb)) #9
          to label %if.then13 [label %resubmit_urb], !srcloc !376

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %11, i32 noundef %13, i1 noundef zeroext false) #9
  br label %resubmit_urb

do.body18:                                        ; preds = %entry
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_read_bulk_callback._rs.102, ptr noundef nonnull @__func__.es58x_read_bulk_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.free_urb_crit_edge, label %do.end24

do.body18.free_urb_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_urb

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %16 = inttoptr i32 %15 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.es58x_read_bulk_callback, ptr noundef %16) #12
  br label %free_urb

do.body31:                                        ; preds = %entry.do.body31_crit_edge, %entry.do.body31_crit_edge266
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_read_bulk_callback._rs.106, ptr noundef nonnull @__func__.es58x_read_bulk_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body31.free_urb_crit_edge, label %do.end37

do.body31.free_urb_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_urb

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %19 = inttoptr i32 %18 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_read_bulk_callback, ptr noundef %19) #12
  br label %free_urb

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_read_bulk_callback.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_read_bulk_callback, %free_urb)) #9
          to label %land.lhs.true [label %free_urb], !srcloc !376

land.lhs.true:                                    ; preds = %do.body44
  %call58 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_read_bulk_callback._rs.109, ptr noundef nonnull @__func__.es58x_read_bulk_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true.free_urb_crit_edge, label %if.then60

land.lhs.true.free_urb_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_urb

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %22 = inttoptr i32 %21 to ptr
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es58x_read_bulk_callback.descriptor, ptr noundef %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_read_bulk_callback, ptr noundef %22) #9
  br label %free_urb

do.body66:                                        ; preds = %entry
  %call67 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_read_bulk_callback._rs.110, ptr noundef nonnull @__func__.es58x_read_bulk_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body66.resubmit_urb_crit_edge, label %do.end72

do.body66.resubmit_urb_crit_edge:                 ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

do.end72:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %25 = inttoptr i32 %24 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.es58x_read_bulk_callback, ptr noundef %25) #12
  br label %resubmit_urb

sw.epilog:                                        ; preds = %entry
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %28 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual_length.i, align 4
  %rx_cmd_buf_len.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %rx_cmd_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_cmd_buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i = icmp eq i16 %31, 0
  br i1 %cmp.not.i, label %sw.epilog.if.end10.i_crit_edge, label %if.then.i

sw.epilog.if.end10.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i:                                        ; preds = %sw.epilog
  %conv.i.i = zext i16 %31 to i32
  %param.i.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %param.i.i, align 8
  %rx_urb_cmd_max_len.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %rx_urb_cmd_max_len.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_urb_cmd_max_len.i.i, align 2
  %conv1.i.i = zext i16 %35 to i32
  %sub.i.i = sub nsw i32 %conv1.i.i, %conv.i.i
  %36 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 %29) #9
  %add.i.i.i = add nsw i32 %36, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv1.i.i)
  %cmp.i.i.i = icmp sgt i32 %add.i.i.i, %conv1.i.i
  br i1 %cmp.i.i.i, label %if.end.thread99.i, label %if.end.i.i

if.end.thread99.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %rx_cmd_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %rx_cmd_buf_len.i, align 4
  br label %do.end84

if.end.i.i:                                       ; preds = %if.then.i
  %rx_cmd_buf.i.i.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 18
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr %rx_cmd_buf.i.i.i, i32 0, i32 %conv.i.i
  %38 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %27, i32 %36)
  %39 = ptrtoint ptr %rx_cmd_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rx_cmd_buf_len.i, align 4
  %41 = trunc i32 %36 to i16
  %conv7.i.i.i = add i16 %40, %41
  store i16 %conv7.i.i.i, ptr %rx_cmd_buf_len.i, align 4
  %conv8.i.i = zext i16 %conv7.i.i.i to i32
  %call9.i.i = tail call fastcc i32 @es58x_check_rx_urb(ptr noundef %1, ptr noundef %rx_cmd_buf.i.i.i, i32 noundef %conv8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call9.i.i)
  %cmp10.i.i = icmp eq i32 %call9.i.i, -61
  br i1 %cmp10.i.i, label %if.end.i.i.resubmit_urb_crit_edge, label %if.else.i.i

if.end.i.i.resubmit_urb_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp13.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp13.i.i, label %do.body.i.i, label %if.end41.i.i

do.body.i.i:                                      ; preds = %if.else.i.i
  %call16.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_handle_incomplete_cmd._rs, ptr noundef nonnull @__func__.es58x_handle_incomplete_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.body23.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body23.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %44 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length.i, align 4
  %add.i.i = add i32 %45, %conv.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.120, i32 noundef %add.i.i) #12
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %do.end.i.i, %do.body.i.i.do.body23.i.i_crit_edge
  %call24.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_handle_incomplete_cmd._rs.121, ptr noundef nonnull @__func__.es58x_handle_incomplete_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %do.body23.i.i.do.end35.i.i_crit_edge, label %do.end29.i.i

do.body23.i.i.do.end35.i.i_crit_edge:             ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i.i

do.end29.i.i:                                     ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %48 = inttoptr i32 %call9.i.i to ptr
  %49 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %actual_length.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.123, ptr noundef nonnull %48, i32 noundef %conv.i.i, i32 noundef %50) #12
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %do.end29.i.i, %do.body23.i.i.do.end35.i.i_crit_edge
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.125, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %rx_cmd_buf.i.i.i, i32 noundef %conv.i.i, i1 noundef zeroext false) #9
  %51 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transfer_buffer.i, align 4
  %53 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual_length.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %52, i32 noundef %54, i1 noundef zeroext false) #9
  %55 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual_length.i, align 4
  br label %es58x_handle_incomplete_cmd.exit.i

if.end41.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @es58x_handle_urb_cmd(ptr noundef %1, ptr noundef %rx_cmd_buf.i.i.i) #9
  %sub43.i.i = sub nsw i32 %call9.i.i, %conv.i.i
  br label %es58x_handle_incomplete_cmd.exit.i

es58x_handle_incomplete_cmd.exit.i:               ; preds = %if.end41.i.i, %do.end35.i.i
  %retval.0.i.i = phi i32 [ %56, %do.end35.i.i ], [ %sub43.i.i, %if.end41.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i.i)
  %cmp2.not.i = icmp eq i32 %retval.0.i.i, -61
  br i1 %cmp2.not.i, label %es58x_handle_incomplete_cmd.exit.i.resubmit_urb_crit_edge, label %if.end.i

es58x_handle_incomplete_cmd.exit.i.resubmit_urb_crit_edge: ; preds = %es58x_handle_incomplete_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

if.end.i:                                         ; preds = %es58x_handle_incomplete_cmd.exit.i
  %57 = ptrtoint ptr %rx_cmd_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %rx_cmd_buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp6.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp6.i, label %if.end.i.es58x_split_urb.exit_crit_edge, label %if.end9.i

if.end.i.es58x_split_urb.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_split_urb.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %27, i32 %retval.0.i.i
  %sub.i = sub i32 %29, %retval.0.i.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end9.i, %sw.epilog.if.end10.i_crit_edge
  %raw_cmd.0.i = phi ptr [ %add.ptr.i, %if.end9.i ], [ %27, %sw.epilog.if.end10.i_crit_edge ]
  %raw_cmd_len.0.i = phi i32 [ %sub.i, %if.end9.i ], [ %29, %sw.epilog.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw_cmd_len.0.i)
  %cmp11112.i = icmp sgt i32 %raw_cmd_len.0.i, 0
  br i1 %cmp11112.i, label %while.body.lr.ph.i, label %if.end10.i.resubmit_urb_crit_edge

if.end10.i.resubmit_urb_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

while.body.lr.ph.i:                               ; preds = %if.end10.i
  %num_can_ch.i.i.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 15
  %param.i85.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %raw_cmd_len.1115.i = phi i32 [ %raw_cmd_len.0.i, %while.body.lr.ph.i ], [ %raw_cmd_len.1.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %raw_cmd.1113.i = phi ptr [ %raw_cmd.0.i, %while.body.lr.ph.i ], [ %raw_cmd.1.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %58 = ptrtoint ptr %raw_cmd.1113.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %raw_cmd.1113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %59)
  %cmp14.i = icmp eq i8 %59, 17
  br i1 %cmp14.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i8, ptr %raw_cmd.1113.i, i32 1
  %dec.i = add nsw i32 %raw_cmd_len.1115.i, -1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end37.i, %if.then16.i
  %raw_cmd.1.be.i = phi ptr [ %incdec.ptr.i, %if.then16.i ], [ %add.ptr38.i, %if.end37.i ]
  %raw_cmd_len.1.be.i = phi i32 [ %dec.i, %if.then16.i ], [ %sub39.i, %if.end37.i ]
  %cmp11.i = icmp sgt i32 %raw_cmd_len.1.be.i, 0
  br i1 %cmp11.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.resubmit_urb_crit_edge

while.cond.backedge.i.resubmit_urb_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end17.i:                                       ; preds = %while.body.i
  %call18.i = tail call fastcc i32 @es58x_check_rx_urb(ptr noundef %1, ptr noundef %raw_cmd.1113.i, i32 noundef %raw_cmd_len.1115.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp sgt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @es58x_handle_urb_cmd(ptr noundef %1, ptr noundef %raw_cmd.1113.i) #9
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call18.i)
  %cmp22.i = icmp eq i32 %call18.i, -61
  br i1 %cmp22.i, label %if.then24.i, label %if.else26.i

if.then24.i:                                      ; preds = %if.else.i
  %60 = ptrtoint ptr %rx_cmd_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rx_cmd_buf_len.i, align 4
  %conv.i76.i = zext i16 %61 to i32
  %add.i77.i = add nuw i32 %raw_cmd_len.1115.i, %conv.i76.i
  %62 = ptrtoint ptr %param.i85.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %param.i85.i, align 8
  %rx_urb_cmd_max_len.i79.i = getelementptr inbounds %struct.es58x_parameters, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %rx_urb_cmd_max_len.i79.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rx_urb_cmd_max_len.i79.i, align 2
  %conv1.i80.i = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i77.i, i32 %conv1.i80.i)
  %cmp.i.i = icmp sgt i32 %add.i77.i, %conv1.i80.i
  br i1 %cmp.i.i, label %if.then24.i.resubmit_urb_crit_edge, label %if.end.i81.i

if.then24.i.resubmit_urb_crit_edge:               ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

if.end.i81.i:                                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_cmd_buf.i.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 18
  %arrayidx.i.i = getelementptr [0 x i8], ptr %rx_cmd_buf.i.i, i32 0, i32 %conv.i76.i
  %66 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %raw_cmd.1113.i, i32 %raw_cmd_len.1115.i)
  %67 = ptrtoint ptr %rx_cmd_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rx_cmd_buf_len.i, align 4
  %69 = trunc i32 %raw_cmd_len.1115.i to i16
  %conv7.i.i = add i16 %68, %69
  store i16 %conv7.i.i, ptr %rx_cmd_buf_len.i, align 4
  br label %resubmit_urb

if.else26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp27.i = icmp slt i32 %call18.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.else26.i.if.end37.i_crit_edge

if.else26.i.if.end37.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.else26.i
  %70 = ptrtoint ptr %num_can_ch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_can_ch.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp11.not.i.i.i = icmp eq i8 %71, 0
  br i1 %cmp11.not.i.i.i, label %if.then29.i.es58x_increment_rx_errors.exit.i.i_crit_edge, label %if.then29.i.for.body.i.i.i_crit_edge

if.then29.i.for.body.i.i.i_crit_edge:             ; preds = %if.then29.i
  br label %for.body.i.i.i

if.then29.i.es58x_increment_rx_errors.exit.i.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_increment_rx_errors.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then29.i.for.body.i.i.i_crit_edge
  %i.012.i.i.i = phi i32 [ %inc4.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then29.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i83.i = getelementptr %struct.es58x_device, ptr %1, i32 0, i32 2, i32 %i.012.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i83.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 36, i32 4
  %74 = ptrtoint ptr %rx_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_errors.i.i.i, align 8
  %inc.i.i.i = add i32 %75, 1
  store i32 %inc.i.i.i, ptr %rx_errors.i.i.i, align 8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc4.i.i.i = add nuw nsw i32 %i.012.i.i.i, 1
  %76 = ptrtoint ptr %num_can_ch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_can_ch.i.i.i, align 2
  %conv.i.i.i = zext i8 %77 to i32
  %cmp.i.i84.i = icmp ult i32 %inc4.i.i.i, %conv.i.i.i
  br i1 %cmp.i.i84.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.es58x_increment_rx_errors.exit.i.i_crit_edge

for.inc.i.i.i.es58x_increment_rx_errors.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_increment_rx_errors.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

es58x_increment_rx_errors.exit.i.i:               ; preds = %for.inc.i.i.i.es58x_increment_rx_errors.exit.i.i_crit_edge, %if.then29.i.es58x_increment_rx_errors.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %raw_cmd_len.1115.i)
  %cmp45.i.i = icmp ugt i32 %raw_cmd_len.1115.i, 2
  br i1 %cmp45.i.i, label %while.body.lr.ph.i.i, label %es58x_increment_rx_errors.exit.i.i.do.body18.i.i_crit_edge

es58x_increment_rx_errors.exit.i.i.do.body18.i.i_crit_edge: ; preds = %es58x_increment_rx_errors.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18.i.i

while.body.lr.ph.i.i:                             ; preds = %es58x_increment_rx_errors.exit.i.i
  %78 = add i32 %raw_cmd_len.1115.i, -3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end17.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dropped_bytes.049.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %if.end17.i.i.while.body.i.i_crit_edge ]
  %raw_cmd_len.addr.047.i.i = phi i32 [ %raw_cmd_len.1115.i, %while.body.lr.ph.i.i ], [ %dec.i.i, %if.end17.i.i.while.body.i.i_crit_edge ]
  %raw_cmd.addr.046.i.i = phi ptr [ %raw_cmd.1113.i, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end17.i.i.while.body.i.i_crit_edge ]
  %79 = ptrtoint ptr %raw_cmd.addr.046.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %raw_cmd.addr.046.i.i, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #9
  %82 = ptrtoint ptr %param.i85.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %param.i85.i, align 8
  %rx_start_of_frame.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %rx_start_of_frame.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rx_start_of_frame.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %85)
  %cmp3.i.i = icmp eq i16 %81, %85
  br i1 %cmp3.i.i, label %if.then.i.i, label %while.body.i.i.if.end17.i.i_crit_edge

while.body.i.i.if.end17.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %call5.i.i = tail call fastcc i32 @es58x_check_rx_urb(ptr noundef %1, ptr noundef %raw_cmd.addr.046.i.i, i32 noundef %raw_cmd_len.addr.047.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call5.i.i)
  %cmp6.i.i = icmp eq i32 %call5.i.i, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp8.i.i = icmp sgt i32 %call5.i.i, 0
  %or.cond.i.i = or i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond.i.i, label %do.body.i87.i, label %if.then.i.i.if.end17.i.i_crit_edge

if.then.i.i.if.end17.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

do.body.i87.i:                                    ; preds = %if.then.i.i
  %call11.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_split_urb_try_recovery._rs, ptr noundef nonnull @__func__.es58x_split_urb_try_recovery) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool.not.i86.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool.not.i86.i, label %do.body.i87.i.es58x_split_urb_try_recovery.exit.i_crit_edge, label %do.end.i88.i

do.body.i87.i.es58x_split_urb_try_recovery.exit.i_crit_edge: ; preds = %do.body.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_split_urb_try_recovery.exit.i

do.end.i88.i:                                     ; preds = %do.body.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.141, i32 noundef %dropped_bytes.049.i.i, i32 noundef %call5.i.i) #12
  br label %es58x_split_urb_try_recovery.exit.i

if.end17.i.i:                                     ; preds = %if.then.i.i.if.end17.i.i_crit_edge, %while.body.i.i.if.end17.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i8, ptr %raw_cmd.addr.046.i.i, i32 1
  %dec.i.i = add i32 %raw_cmd_len.addr.047.i.i, -1
  %inc.i.i = add nuw i32 %dropped_bytes.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %dropped_bytes.049.i.i, %78
  br i1 %exitcond.not.i.i, label %if.end17.i.i.do.body18.i.i_crit_edge, label %if.end17.i.i.while.body.i.i_crit_edge

if.end17.i.i.while.body.i.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end17.i.i.do.body18.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18.i.i

do.body18.i.i:                                    ; preds = %if.end17.i.i.do.body18.i.i_crit_edge, %es58x_increment_rx_errors.exit.i.i.do.body18.i.i_crit_edge
  %call19.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_split_urb_try_recovery._rs.142, ptr noundef nonnull @__func__.es58x_split_urb_try_recovery) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.body18.i.i.do.end84_crit_edge, label %do.end24.i.i

do.body18.i.i.do.end84_crit_edge:                 ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

do.end24.i.i:                                     ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.es58x_split_urb_try_recovery) #12
  br label %do.end84

es58x_split_urb_try_recovery.exit.i:              ; preds = %do.end.i88.i, %do.body.i87.i.es58x_split_urb_try_recovery.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dropped_bytes.049.i.i)
  %cmp31.i = icmp slt i32 %dropped_bytes.049.i.i, 0
  br i1 %cmp31.i, label %es58x_split_urb_try_recovery.exit.i.es58x_split_urb.exit_crit_edge, label %es58x_split_urb_try_recovery.exit.i.if.end37.i_crit_edge

es58x_split_urb_try_recovery.exit.i.if.end37.i_crit_edge: ; preds = %es58x_split_urb_try_recovery.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

es58x_split_urb_try_recovery.exit.i.es58x_split_urb.exit_crit_edge: ; preds = %es58x_split_urb_try_recovery.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %es58x_split_urb.exit

if.end37.i:                                       ; preds = %es58x_split_urb_try_recovery.exit.i.if.end37.i_crit_edge, %if.else26.i.if.end37.i_crit_edge, %if.then21.i
  %ret.0.i = phi i32 [ %call18.i, %if.then21.i ], [ %dropped_bytes.049.i.i, %es58x_split_urb_try_recovery.exit.i.if.end37.i_crit_edge ], [ 0, %if.else26.i.if.end37.i_crit_edge ]
  %add.ptr38.i = getelementptr i8, ptr %raw_cmd.1113.i, i32 %ret.0.i
  %sub39.i = sub i32 %raw_cmd_len.1115.i, %ret.0.i
  br label %while.cond.backedge.i

es58x_split_urb.exit:                             ; preds = %es58x_split_urb_try_recovery.exit.i.es58x_split_urb.exit_crit_edge, %if.end.i.es58x_split_urb.exit_crit_edge
  %retval.0.i187 = phi i32 [ %retval.0.i.i, %if.end.i.es58x_split_urb.exit_crit_edge ], [ %dropped_bytes.049.i.i, %es58x_split_urb_try_recovery.exit.i.es58x_split_urb.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i187)
  %cmp.not.not = icmp eq i32 %retval.0.i187, -61
  br i1 %cmp.not.not, label %es58x_split_urb.exit.resubmit_urb_crit_edge, label %es58x_split_urb.exit.do.end84_crit_edge

es58x_split_urb.exit.do.end84_crit_edge:          ; preds = %es58x_split_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

es58x_split_urb.exit.resubmit_urb_crit_edge:      ; preds = %es58x_split_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

do.end84:                                         ; preds = %es58x_split_urb.exit.do.end84_crit_edge, %do.end24.i.i, %do.body18.i.i.do.end84_crit_edge, %if.end.thread99.i
  %retval.0.i187223 = phi i32 [ %retval.0.i187, %es58x_split_urb.exit.do.end84_crit_edge ], [ -74, %do.body18.i.i.do.end84_crit_edge ], [ -74, %do.end24.i.i ], [ -90, %if.end.thread99.i ]
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %92 = inttoptr i32 %retval.0.i187223 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.114, ptr noundef %92) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es58x_read_bulk_callback.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@es58x_read_bulk_callback, %do.end105)) #9
          to label %if.then101 [label %do.end105], !srcloc !376

if.then101:                                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %transfer_buffer.i, align 4
  %95 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %actual_length.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %94, i32 noundef %96, i1 noundef zeroext false) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %do.end84
  %num_can_ch.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 15
  %97 = ptrtoint ptr %num_can_ch.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num_can_ch.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp11.not.i = icmp eq i8 %98, 0
  br i1 %cmp11.not.i, label %do.end105.resubmit_urb_crit_edge, label %do.end105.for.body.i_crit_edge

do.end105.for.body.i_crit_edge:                   ; preds = %do.end105
  br label %for.body.i

do.end105.resubmit_urb_crit_edge:                 ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end105.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc4.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end105.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.es58x_device, ptr %1, i32 0, i32 2, i32 %i.012.i
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i188

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i188:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 36, i32 4
  %101 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %102, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i188, %for.body.i.for.inc.i_crit_edge
  %inc4.i = add nuw nsw i32 %i.012.i, 1
  %103 = ptrtoint ptr %num_can_ch.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num_can_ch.i, align 2
  %conv.i = zext i8 %104 to i32
  %cmp.i = icmp ult i32 %inc4.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.resubmit_urb_crit_edge

for.inc.i.resubmit_urb_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

resubmit_urb:                                     ; preds = %for.inc.i.resubmit_urb_crit_edge, %do.end105.resubmit_urb_crit_edge, %es58x_split_urb.exit.resubmit_urb_crit_edge, %if.end.i81.i, %if.then24.i.resubmit_urb_crit_edge, %while.cond.backedge.i.resubmit_urb_crit_edge, %if.end10.i.resubmit_urb_crit_edge, %es58x_handle_incomplete_cmd.exit.i.resubmit_urb_crit_edge, %if.end.i.i.resubmit_urb_crit_edge, %do.end72, %do.body66.resubmit_urb_crit_edge, %if.then13, %do.body7
  %udev = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %udev, align 4
  %rx_pipe = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_pipe, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %109 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %110 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %108, ptr %pipe2.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %111 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @es58x_read_bulk_callback, ptr %complete.i, align 4
  %112 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %1, ptr %context, align 4
  %call109 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %113 = zext i32 %call109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %call109, label %do.body121 [
    i32 -19, label %for.cond.preheader
    i32 0, label %resubmit_urb.cleanup_crit_edge
  ]

resubmit_urb.cleanup_crit_edge:                   ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %resubmit_urb
  %num_can_ch = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 15
  %114 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_can_ch, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp112208.not = icmp eq i8 %115, 0
  br i1 %cmp112208.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0209 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.es58x_device, ptr %1, i32 0, i32 2, i32 %i.0209
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx, align 4
  %tobool114.not = icmp eq ptr %117, null
  br i1 %tobool114.not, label %for.body.for.inc_crit_edge, label %if.then115

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then115:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_device_detach(ptr noundef nonnull %117) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then115, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0209, 1
  %118 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_can_ch, align 2
  %conv = zext i8 %119 to i32
  %cmp112 = icmp ult i32 %inc, %conv
  br i1 %cmp112, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body121:                                       ; preds = %resubmit_urb
  %call122 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_read_bulk_callback._rs.116, ptr noundef nonnull @__func__.es58x_read_bulk_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.body121.cleanup_crit_edge, label %do.end127

do.body121.cleanup_crit_edge:                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end127:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  %120 = inttoptr i32 %call109 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.118, ptr noundef %120) #12
  br label %cleanup

free_urb:                                         ; preds = %if.then60, %land.lhs.true.free_urb_crit_edge, %do.body44, %do.end37, %do.body31.free_urb_crit_edge, %do.end24, %do.body18.free_urb_crit_edge
  %dev134 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %121 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev134, align 4
  %transfer_buffer_length135 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %123 = ptrtoint ptr %transfer_buffer_length135 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %transfer_buffer_length135, align 4
  %transfer_buffer136 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %125 = ptrtoint ptr %transfer_buffer136 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %transfer_buffer136, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %127 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %122, i32 noundef %124, ptr noundef %126, i32 noundef %128) #9
  br label %cleanup

cleanup:                                          ; preds = %free_urb, %do.end127, %do.body121.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %resubmit_urb.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es58x_check_rx_urb(ptr nocapture noundef readonly %es58x_dev, ptr noundef %urb_cmd, i32 noundef %urb_actual_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param2 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %0 = ptrtoint ptr %param2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param2, align 8
  %urb_cmd_header_len = getelementptr inbounds %struct.es58x_parameters, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %urb_cmd_header_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %urb_cmd_header_len, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %urb_actual_len)
  %cmp = icmp ugt i32 %conv, %urb_actual_len
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %urb_cmd to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %urb_cmd, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %conv5 = zext i16 %6 to i32
  %rx_start_of_frame = getelementptr inbounds %struct.es58x_parameters, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %rx_start_of_frame to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_start_of_frame, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp7.not = icmp eq i16 %6, %8
  br i1 %cmp7.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.end
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_check_rx_urb._rs, ptr noundef nonnull @__func__.es58x_check_rx_urb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %es58x_dev, align 8
  %11 = ptrtoint ptr %rx_start_of_frame to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_start_of_frame, align 2
  %conv15 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.es58x_check_rx_urb, i32 noundef %conv15, i32 noundef %conv5) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call21 = tail call zeroext i16 %16(ptr noundef %urb_cmd) #9
  %17 = ptrtoint ptr %param2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %param2, align 8
  %urb_cmd_header_len.i = getelementptr inbounds %struct.es58x_parameters, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %urb_cmd_header_len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %urb_cmd_header_len.i, align 1
  %conv.i = zext i8 %20 to i32
  %conv1.i = zext i16 %call21 to i32
  %add.i = add nuw nsw i32 %conv1.i, 2
  %add2.i = add nuw nsw i32 %add.i, %conv.i
  %rx_urb_cmd_max_len = getelementptr inbounds %struct.es58x_parameters, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %rx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rx_urb_cmd_max_len, align 2
  %conv23 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %conv23)
  %cmp24 = icmp ugt i32 %add2.i, %conv23
  br i1 %cmp24, label %do.body27, label %if.else

do.body27:                                        ; preds = %if.end20
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_check_rx_urb._rs.127, ptr noundef nonnull @__func__.es58x_check_rx_urb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %do.end33

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %es58x_dev, align 8
  %25 = ptrtoint ptr %rx_urb_cmd_max_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_urb_cmd_max_len, align 2
  %conv36 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.es58x_check_rx_urb, i32 noundef %conv36, i32 noundef %add2.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %urb_actual_len)
  %cmp40 = icmp ugt i32 %add2.i, %urb_actual_len
  br i1 %cmp40, label %if.else.cleanup_crit_edge, label %if.end44

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.else
  %conv.i.i = and i32 %add2.i, 65535
  %sub1.i.i = add nsw i32 %conv.i.i, -4
  %arrayidx.i.i = getelementptr [0 x i8], ptr %urb_cmd, i32 0, i32 2
  %call.i.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx.i.i, i32 noundef %sub1.i.i) #9
  %sub.i.i = add nsw i32 %conv.i.i, -2
  %arrayidx.i16.i = getelementptr [0 x i8], ptr %urb_cmd, i32 0, i32 %sub.i.i
  %27 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx.i16.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %call.i.i)
  %cmp.not.i = icmp eq i16 %29, %call.i.i
  br i1 %cmp.not.i, label %if.end44.cleanup_crit_edge, label %do.body.i

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end44
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_check_crc._rs, ptr noundef nonnull @__func__.es58x_check_crc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.131, ptr noundef nonnull @__func__.es58x_check_crc, i32 noundef %conv.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end33, %do.body27.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ -56, %do.end ], [ -56, %do.body.cleanup_crit_edge ], [ -75, %do.end33 ], [ -75, %do.body27.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ], [ %add2.i, %if.end44.cleanup_crit_edge ], [ -74, %do.end.i ], [ -74, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es58x_handle_urb_cmd(ptr noundef %es58x_dev, ptr noundef %urb_cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 4
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %handle_urb_cmd = getelementptr inbounds %struct.es58x_operators, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %handle_urb_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_urb_cmd, align 4
  %call = tail call i32 %3(ptr noundef %es58x_dev, ptr noundef %urb_cmd) #9
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call, label %do.end18 [
    i32 0, label %entry.cleanup_crit_edge
    i32 -19, label %do.body
    i32 -22, label %entry.sw.bb7_crit_edge
    i32 -90, label %entry.sw.bb7_crit_edge62
    i32 -56, label %entry.sw.bb7_crit_edge63
    i32 -74, label %entry.sw.bb7_crit_edge64
    i32 -44, label %entry.sw.bb7_crit_edge65
    i32 -110, label %entry.sw.bb7_crit_edge66
  ]

entry.sw.bb7_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @es58x_handle_urb_cmd._rs, ptr noundef nonnull @__func__.es58x_handle_urb_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.132) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge62, %entry.sw.bb7_crit_edge63, %entry.sw.bb7_crit_edge64, %entry.sw.bb7_crit_edge65, %entry.sw.bb7_crit_edge66
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call8 = tail call zeroext i16 %8(ptr noundef %urb_cmd) #9
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 3
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param.i, align 8
  %urb_cmd_header_len.i = getelementptr inbounds %struct.es58x_parameters, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %urb_cmd_header_len.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %urb_cmd_header_len.i, align 1
  %conv.i = zext i8 %12 to i32
  %conv1.i = zext i16 %call8 to i32
  %add.i = add nuw nsw i32 %conv1.i, 2
  %add2.i = add nuw nsw i32 %add.i, %conv.i
  %13 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %es58x_dev, align 8
  %15 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.134, ptr noundef %15) #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %urb_cmd, i32 noundef %add2.i, i1 noundef zeroext false) #9
  br label %sw.epilog

do.end18:                                         ; preds = %entry
  %16 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %es58x_dev, align 8
  %18 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %17, ptr noundef nonnull @.str.138, ptr noundef %18) #12
  %num_can_ch = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %19 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_can_ch, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp60.not = icmp eq i8 %20, 0
  br i1 %cmp60.not, label %do.end18.for.end_crit_edge, label %do.end18.for.body_crit_edge

do.end18.for.body_crit_edge:                      ; preds = %do.end18
  br label %for.body

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end18.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %i.061
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.then23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_device_detach(ptr noundef nonnull %22) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %23 = ptrtoint ptr %num_can_ch to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_can_ch, align 2
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end18.for.end_crit_edge
  %25 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops1, align 4
  %reset_device = getelementptr inbounds %struct.es58x_operators, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %reset_device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset_device, align 4
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %for.end.sw.epilog_crit_edge, label %if.then29

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 %28(ptr noundef %es58x_dev) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29, %for.end.sw.epilog_crit_edge, %sw.bb7, %do.end, %do.body.sw.epilog_crit_edge
  %num_can_ch.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %29 = ptrtoint ptr %num_can_ch.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_can_ch.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp11.not.i = icmp eq i8 %30, 0
  br i1 %cmp11.not.i, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body.i_crit_edge

sw.epilog.for.body.i_crit_edge:                   ; preds = %sw.epilog
  br label %for.body.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc4.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.epilog.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %i.012.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 36, i32 4
  %33 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc4.i = add nuw nsw i32 %i.012.i, 1
  %35 = ptrtoint ptr %num_can_ch.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_can_ch.i, align 2
  %conv.i58 = zext i8 %36 to i32
  %cmp.i = icmp ult i32 %inc4.i, %conv.i58
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_stop(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %es58x_dev1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %ops = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %disable_channel = getelementptr inbounds %struct.es58x_operators, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %disable_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_channel, align 4
  %call2 = tail call i32 %7(ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %netdev, i32 2472
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %state, align 4
  %tx_tail.i = getelementptr i8, ptr %netdev, i32 2624
  %9 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_tail.i, align 4
  %tx_head.i = getelementptr i8, ptr %netdev, i32 2628
  %10 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_head.i, align 4
  %tx_urb.i = getelementptr i8, ptr %netdev, i32 2620
  %11 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_urb.i, align 4
  %err_passive_before_rtx_success.i = getelementptr i8, ptr %netdev, i32 2634
  %12 = ptrtoint ptr %err_passive_before_rtx_success.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %err_passive_before_rtx_success.i, align 2
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #9
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i.i) #9
  tail call void @close_candev(ptr noundef %netdev) #9
  tail call fastcc void @es58x_flush_pending_tx_msg(ptr noundef %netdev)
  %opened_channel_cnt = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %opened_channel_cnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %opened_channel_cnt, align 1
  %dec = add i8 %16, -1
  store i8 %dec, ptr %opened_channel_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool4.not = icmp eq i8 %dec, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @es58x_free_urbs(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_start_xmit(ptr noundef %skb, ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %es58x_dev1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.170)
  switch i16 %5, label %entry.if.then_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.if.then_crit_edge, !prof !385

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp6.i = icmp ugt i8 %10, 8
  br i1 %cmp6.i, label %lor.rhs.i.if.then_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !377

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs.i.if.then_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %12)
  %cmp16.not.i = icmp eq i32 %12, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.if.then_crit_edge, !prof !385

if.then14.i.if.then_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp21.i = icmp ugt i8 %14, 64
  br i1 %cmp21.i, label %lor.rhs18.i.if.then_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !377

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs18.i.if.then_crit_edge:                    ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.if.then_crit_edge, label %if.then.i.i, !prof !385

land.rhs.i.i.if.then_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.155, i32 noundef 104, i32 noundef 9, ptr noundef null) #9
  br label %if.then

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %18 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp38.i.i = icmp eq i16 %18, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end4_crit_edge

if.end37.i.i.if.end4_crit_edge:                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex.i.i, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %16, align 8
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %skbcnt.i.i, align 4
  %25 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %28 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %31 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %33 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end4

if.then:                                          ; preds = %if.then.i.i, %land.rhs.i.i.if.then_crit_edge, %lor.rhs18.i.if.then_crit_edge, %if.then14.i.if.then_crit_edge, %lor.rhs.i.if.then_crit_edge, %if.then.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %36 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  %tx_urb = getelementptr i8, ptr %netdev, i32 2620
  %38 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_urb, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.xmit_commit_crit_edge

if.then.xmit_commit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %xmit_commit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.then40.i.i, %if.end37.i.i.if.end4_crit_edge
  %tx_urb5 = getelementptr i8, ptr %netdev, i32 2620
  %40 = ptrtoint ptr %tx_urb5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_urb5, align 4
  %tobool6.not = icmp eq ptr %41, null
  br i1 %tobool6.not, label %if.end4.if.then19_crit_edge, label %land.lhs.true

if.end4.if.then19_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

land.lhs.true:                                    ; preds = %if.end4
  %tx_can_msg_is_fd = getelementptr i8, ptr %netdev, i32 2633
  %42 = ptrtoint ptr %tx_can_msg_is_fd to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_can_msg_is_fd, align 1, !range !386
  %len.i91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = ptrtoint ptr %len.i91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %45)
  %cmp.i = icmp eq i32 %45, 72
  %46 = zext i1 %cmp.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %46)
  %cmp.not = icmp eq i8 %43, %46
  br i1 %cmp.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %state.i.i = getelementptr i8, ptr %netdev, i32 2472
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i.i92 = icmp ult i32 %48, 3
  br i1 %cmp.i.i92, label %if.end.i, label %if.then11.drop_skb_crit_edge

if.then11.drop_skb_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_skb

if.end.i:                                         ; preds = %if.then11
  %tx_head.i.i = getelementptr i8, ptr %netdev, i32 2628
  %49 = ptrtoint ptr %tx_head.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_head.i.i, align 4
  %tx_tail.i.i = getelementptr i8, ptr %netdev, i32 2624
  %51 = ptrtoint ptr %tx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_tail.i.i, align 4
  %sub.i.i = sub i32 %50, %52
  %echo_skb_max.i.i = getelementptr i8, ptr %netdev, i32 2464
  %53 = ptrtoint ptr %echo_skb_max.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %echo_skb_max.i.i, align 4
  %55 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %es58x_dev1, align 4
  %param.i.i = getelementptr inbounds %struct.es58x_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %param.i.i, align 8
  %tx_bulk_max.i.i = getelementptr inbounds %struct.es58x_parameters, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %tx_bulk_max.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tx_bulk_max.i.i, align 4
  %conv.i.i = zext i8 %60 to i32
  %sub1.i.i = add i32 %54, 1
  %add.i.i = sub i32 %sub1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add.i.i)
  %cmp.i17.not.i = icmp ult i32 %sub.i.i, %add.i.i
  br i1 %cmp.i17.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %63 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %es58x_dev1, align 4
  %65 = ptrtoint ptr %tx_urb5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_urb5, align 4
  %call5.i = tail call fastcc i32 @es58x_submit_urb(ptr noundef %64, ptr noundef %66, ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i93 = icmp eq i32 %call5.i, 0
  br i1 %cmp.i93, label %if.end16.thread, label %if.end4.i.drop_skb_crit_edge

if.end4.i.drop_skb_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_skb

if.end16.thread:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %tx_urb5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %tx_urb5, align 4
  br label %if.then19

if.end16:                                         ; preds = %land.lhs.true
  %68 = ptrtoint ptr %tx_urb5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr.pr = load ptr, ptr %tx_urb5, align 4
  %tobool18.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool18.not, label %if.end16.if.then19_crit_edge, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %if.end16.if.then19_crit_edge, %if.end16.thread, %if.end4.if.then19_crit_edge
  %call20 = tail call fastcc ptr @es58x_get_tx_urb(ptr noundef %1)
  %69 = ptrtoint ptr %tx_urb5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call20, ptr %tx_urb5, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %if.then19.drop_skb_crit_edge, label %if.end25

if.then19.drop_skb_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_skb

if.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %tx_can_msg_cnt = getelementptr i8, ptr %netdev, i32 2632
  %70 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %tx_can_msg_cnt, align 4
  %len.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len.i95 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %72)
  %cmp.i96 = icmp eq i32 %72, 72
  %tx_can_msg_is_fd27 = getelementptr i8, ptr %netdev, i32 2633
  %frombool = zext i1 %cmp.i96 to i8
  %73 = ptrtoint ptr %tx_can_msg_is_fd27 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %frombool, ptr %tx_can_msg_is_fd27, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end16.if.end28_crit_edge
  %ops = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 4
  %74 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops, align 4
  %tx_can_msg = getelementptr inbounds %struct.es58x_operators, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %tx_can_msg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_can_msg, align 4
  %call29 = tail call i32 %77(ptr noundef %add.ptr.i.i, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.drop_skb_crit_edge

if.end28.drop_skb_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_skb

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @can_skb_get_frame_len(ptr noundef %skb) #9
  %tx_head = getelementptr i8, ptr %netdev, i32 2628
  %78 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_head, align 4
  %param = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %param, align 8
  %fifo_mask = getelementptr inbounds %struct.es58x_parameters, ptr %81, i32 0, i32 10
  %82 = ptrtoint ptr %fifo_mask to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %fifo_mask, align 4
  %conv34 = zext i16 %83 to i32
  %and = and i32 %79, %conv34
  %call35 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %and, i32 noundef %call33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.xmit_failure_crit_edge

if.end32.xmit_failure_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %xmit_failure

if.end38:                                         ; preds = %if.end32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %84 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %call33)
  %cmp.i.i.i = icmp ugt i32 %call33, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !377

do.body2.i.i.i:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !387
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end38
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15, i32 2
  %86 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call33, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !388
  %87 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %88, %call33
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15, i32 1
  %89 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %91 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i97 = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i97, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i, !prof !385

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_sent_queue.exit

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i.i98 = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !389
  %92 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %94 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.netdev_sent_queue.exit_crit_edge, !prof !377

if.end.i.i.netdev_sent_queue.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i98) #9
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %96 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_head, align 4
  %inc = add i32 %97, 1
  store i32 %inc, ptr %tx_head, align 4
  %tx_can_msg_cnt40 = getelementptr i8, ptr %netdev, i32 2632
  %98 = ptrtoint ptr %tx_can_msg_cnt40 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tx_can_msg_cnt40, align 4
  %inc41 = add i8 %99, 1
  store i8 %inc41, ptr %tx_can_msg_cnt40, align 4
  br label %xmit_commit

xmit_commit:                                      ; preds = %netdev_sent_queue.exit, %if.then.xmit_commit_crit_edge
  %100 = tail call i32 @llvm.read_register.i32(metadata !366) #9
  %and.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i99 = add i32 %105, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %106 = inttoptr i32 %add.i.i99 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.i.not.i = icmp eq i8 %108, 0
  br i1 %tobool.i.not.i, label %xmit_commit.if.then43_crit_edge, label %land.lhs.true.i

xmit_commit.if.then43_crit_edge:                  ; preds = %xmit_commit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

land.lhs.true.i:                                  ; preds = %xmit_commit
  %tx_tail.i = getelementptr i8, ptr %netdev, i32 2624
  %109 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_tail.i, align 4
  %tx_head.i = getelementptr i8, ptr %netdev, i32 2628
  %111 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tx_head.i, align 4
  %echo_skb_max.i = getelementptr i8, ptr %netdev, i32 2464
  %113 = ptrtoint ptr %echo_skb_max.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %echo_skb_max.i, align 4
  %sub.neg.i = sub i32 %110, %112
  %sub1.i = sub i32 0, %114
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i, i32 %sub1.i)
  %cmp.not.i = icmp eq i32 %sub.neg.i, %sub1.i
  br i1 %cmp.not.i, label %land.lhs.true.i.if.then43_crit_edge, label %es58x_xmit_more.exit

land.lhs.true.i.if.then43_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

es58x_xmit_more.exit:                             ; preds = %land.lhs.true.i
  %tx_can_msg_cnt.i = getelementptr i8, ptr %netdev, i32 2632
  %115 = ptrtoint ptr %tx_can_msg_cnt.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tx_can_msg_cnt.i, align 4
  %117 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %es58x_dev1, align 4
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %param.i, align 8
  %tx_bulk_max.i = getelementptr inbounds %struct.es58x_parameters, ptr %120, i32 0, i32 12
  %121 = ptrtoint ptr %tx_bulk_max.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %tx_bulk_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %122)
  %cmp3.i = icmp ult i8 %116, %122
  br i1 %cmp3.i, label %es58x_xmit_more.exit.cleanup_crit_edge, label %es58x_xmit_more.exit.if.then43_crit_edge

es58x_xmit_more.exit.if.then43_crit_edge:         ; preds = %es58x_xmit_more.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

es58x_xmit_more.exit.cleanup_crit_edge:           ; preds = %es58x_xmit_more.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %es58x_xmit_more.exit.if.then43_crit_edge, %land.lhs.true.i.if.then43_crit_edge, %xmit_commit.if.then43_crit_edge
  %state.i.i100 = getelementptr i8, ptr %netdev, i32 2472
  %123 = ptrtoint ptr %state.i.i100 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp.i.i101 = icmp ult i32 %124, 3
  br i1 %cmp.i.i101, label %if.end.i113, label %if.then43.xmit_failure_crit_edge

if.then43.xmit_failure_crit_edge:                 ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %xmit_failure

if.end.i113:                                      ; preds = %if.then43
  %tx_head.i.i102 = getelementptr i8, ptr %netdev, i32 2628
  %125 = ptrtoint ptr %tx_head.i.i102 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_head.i.i102, align 4
  %tx_tail.i.i103 = getelementptr i8, ptr %netdev, i32 2624
  %127 = ptrtoint ptr %tx_tail.i.i103 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_tail.i.i103, align 4
  %sub.i.i104 = sub i32 %126, %128
  %echo_skb_max.i.i105 = getelementptr i8, ptr %netdev, i32 2464
  %129 = ptrtoint ptr %echo_skb_max.i.i105 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %echo_skb_max.i.i105, align 4
  %131 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %es58x_dev1, align 4
  %param.i.i107 = getelementptr inbounds %struct.es58x_device, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %param.i.i107 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %param.i.i107, align 8
  %tx_bulk_max.i.i108 = getelementptr inbounds %struct.es58x_parameters, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %tx_bulk_max.i.i108 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %tx_bulk_max.i.i108, align 4
  %conv.i.i109 = zext i8 %136 to i32
  %sub1.i.i110 = add i32 %130, 1
  %add.i.i111 = sub i32 %sub1.i.i110, %conv.i.i109
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i104, i32 %add.i.i111)
  %cmp.i17.not.i112 = icmp ult i32 %sub.i.i104, %add.i.i111
  br i1 %cmp.i17.not.i112, label %if.end.i113.if.end4.i120_crit_edge, label %if.then3.i116

if.end.i113.if.end4.i120_crit_edge:               ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i120

if.then3.i116:                                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i.i114 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %137 = ptrtoint ptr %_tx.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i.i114, align 128
  %state.i.i.i115 = getelementptr inbounds %struct.netdev_queue, ptr %138, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i115) #9
  br label %if.end4.i120

if.end4.i120:                                     ; preds = %if.then3.i116, %if.end.i113.if.end4.i120_crit_edge
  %139 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %es58x_dev1, align 4
  %tx_urb.i117 = getelementptr i8, ptr %netdev, i32 2620
  %141 = ptrtoint ptr %tx_urb.i117 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tx_urb.i117, align 4
  %call5.i118 = tail call fastcc i32 @es58x_submit_urb(ptr noundef %140, ptr noundef %142, ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i118)
  %cmp.i119 = icmp eq i32 %call5.i118, 0
  br i1 %cmp.i119, label %es58x_xmit_commit.exit123, label %if.end4.i120.xmit_failure_crit_edge

if.end4.i120.xmit_failure_crit_edge:              ; preds = %if.end4.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %xmit_failure

es58x_xmit_commit.exit123:                        ; preds = %if.end4.i120
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %tx_urb.i117 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %tx_urb.i117, align 4
  br label %cleanup

drop_skb:                                         ; preds = %if.end28.drop_skb_crit_edge, %if.then19.drop_skb_crit_edge, %if.end4.i.drop_skb_crit_edge, %if.then11.drop_skb_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end28.drop_skb_crit_edge ], [ -12, %if.then19.drop_skb_crit_edge ], [ %call5.i, %if.end4.i.drop_skb_crit_edge ], [ -100, %if.then11.drop_skb_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb) #9
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %144 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_dropped, align 4
  %inc49 = add i32 %145, 1
  store i32 %inc49, ptr %tx_dropped, align 4
  br label %xmit_failure

xmit_failure:                                     ; preds = %drop_skb, %if.end4.i120.xmit_failure_crit_edge, %if.then43.xmit_failure_crit_edge, %if.end32.xmit_failure_crit_edge
  %ret.1 = phi i32 [ %ret.0, %drop_skb ], [ %call35, %if.end32.xmit_failure_crit_edge ], [ %call5.i118, %if.end4.i120.xmit_failure_crit_edge ], [ -100, %if.then43.xmit_failure_crit_edge ]
  %146 = inttoptr i32 %ret.1 to ptr
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.es58x_start_xmit, ptr noundef %146) #12
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %147 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_errors, align 4
  %inc52 = add i32 %148, 1
  store i32 %inc52, ptr %tx_errors, align 4
  tail call fastcc void @es58x_flush_pending_tx_msg(ptr noundef %netdev)
  br label %cleanup

cleanup:                                          ; preds = %xmit_failure, %es58x_xmit_commit.exit123, %es58x_xmit_more.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es58x_flush_pending_tx_msg(ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  %frame_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %es58x_dev1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev1, align 4
  %tx_urb = getelementptr i8, ptr %netdev, i32 2620
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_urb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_can_msg_cnt = getelementptr i8, ptr %netdev, i32 2632
  %4 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_can_msg_cnt, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.es58x_flush_pending_tx_msg, i32 noundef %conv) #12
  %6 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_can_msg_cnt, align 4
  %conv3 = zext i8 %7 to i32
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %8 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dropped, align 4
  %add = add i32 %9, %conv3
  store i32 %add, ptr %tx_dropped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not33 = icmp eq i8 %7, 0
  br i1 %cmp.not33, label %if.then.while.end_crit_edge, label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then
  %tx_head = getelementptr i8, ptr %netdev, i32 2628
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %while.body

while.body:                                       ; preds = %netdev_completed_queue.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i8 [ %7, %while.body.lr.ph ], [ %30, %netdev_completed_queue.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_len) #9
  %11 = ptrtoint ptr %frame_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frame_len, align 4
  %12 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %es58x_dev1, align 4
  %param = getelementptr inbounds %struct.es58x_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %param, align 8
  %fifo_mask8 = getelementptr inbounds %struct.es58x_parameters, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %fifo_mask8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fifo_mask8, align 4
  %18 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_head, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %tx_head, align 4
  %dec10 = add i8 %10, -1
  %20 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %dec10, ptr %tx_can_msg_cnt, align 4
  %conv12 = zext i16 %17 to i32
  %and = and i32 %dec, %conv12
  call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %and, ptr noundef nonnull %frame_len) #9
  %21 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_len, align 4
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %while.body.netdev_completed_queue.exit_crit_edge, label %if.end.i.i, !prof !377

while.body.netdev_completed_queue.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_completed_queue.exit

if.end.i.i:                                       ; preds = %while.body
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %22) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !378
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %27 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_completed_queue.exit_crit_edge, label %if.end14.i.i, !prof !377

if.end.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_completed_queue.exit

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  %call15.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_completed_queue.exit_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_completed_queue.exit

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_schedule_queue(ptr noundef %24) #9
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %if.then17.i.i, %if.end14.i.i.netdev_completed_queue.exit_crit_edge, %if.end.i.i.netdev_completed_queue.exit_crit_edge, %while.body.netdev_completed_queue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_len) #9
  %29 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_can_msg_cnt, align 4
  %cmp.not = icmp eq i8 %30, 0
  br i1 %cmp.not, label %netdev_completed_queue.exit.while.end_crit_edge, label %netdev_completed_queue.exit.while.body_crit_edge

netdev_completed_queue.exit.while.body_crit_edge: ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

netdev_completed_queue.exit.while.end_crit_edge:  ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %netdev_completed_queue.exit.while.end_crit_edge, %if.then.while.end_crit_edge
  %31 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_urb, align 4
  %33 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %es58x_dev1, align 4
  %tx_urbs_idle = getelementptr inbounds %struct.es58x_device, ptr %34, i32 0, i32 9
  call void @usb_anchor_urb(ptr noundef %32, ptr noundef %tx_urbs_idle) #9
  %tx_urbs_idle_cnt = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_urbs_idle_cnt, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %tx_urbs_idle_cnt, i32 1, i32 3, i32 1) #9
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_urbs_idle_cnt, ptr %tx_urbs_idle_cnt, i32 1, ptr elementtype(i32) %tx_urbs_idle_cnt) #9, !srcloc !383
  %36 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_urb, align 4
  call void @usb_free_urb(ptr noundef %37) #9
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %38 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %tx_urb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_skb_get_frame_len(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188, !190, !191, !193, !195, !197, !198, !199, !200, !201, !203, !204, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !230, !232, !233, !234, !235, !237, !238, !240, !241, !242, !243, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !259, !260, !261, !263, !264, !265, !267, !269, !270, !271, !272, !274, !275, !276, !277, !278, !280, !281, !282, !283, !285, !287, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !301, !302, !304, !305, !306, !307, !308, !310, !311, !312, !314, !316, !317, !318, !319, !321, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !346, !348, !350, !352, !354, !356, !357, !359, !361, !362, !363, !364}
!llvm.named.register.sp = !{!366}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @__UNIQUE_ID_author464, !1, !"__UNIQUE_ID_author464", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_author465, !3, !"__UNIQUE_ID_author465", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_description466, !5, !"__UNIQUE_ID_description466", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_version467, !7, !"__UNIQUE_ID_version467", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 25, i32 1}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__modver_attr, !7, !"__modver_attr", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file468, !13, !"__UNIQUE_ID_file468", i1 false, i1 false}
!13 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 26, i32 1}
!14 = !{ptr @__UNIQUE_ID_license469, !13, !"__UNIQUE_ID_license469", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 205, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @es58x_rx_timestamp.__UNIQUE_ID_ddebug470, !16, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 212, i32 2}
!22 = !{ptr @es58x_rx_timestamp.__UNIQUE_ID_ddebug471, !21, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 395, i32 9}
!25 = !{ptr @__func__.es58x_can_get_echo_skb, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 396, i32 9}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 401, i32 4}
!29 = !{ptr @es58x_can_get_echo_skb.__UNIQUE_ID_ddebug472, !28, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 412, i32 9}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 422, i32 10}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 432, i32 8}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 542, i32 8}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 581, i32 7}
!40 = !{ptr @__func__.es58x_rx_can_msg, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 582, i32 7}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 671, i32 24}
!44 = !{ptr @__func__.es58x_rx_err_msg, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 672, i32 9}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 678, i32 22}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 691, i32 4}
!50 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug475, !49, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 698, i32 4}
!53 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug476, !52, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 705, i32 4}
!56 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug477, !55, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 712, i32 4}
!59 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug478, !58, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 719, i32 4}
!62 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug479, !61, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 726, i32 4}
!65 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug480, !64, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 734, i32 4}
!68 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug481, !67, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 742, i32 4}
!71 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug482, !70, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 749, i32 4}
!74 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug483, !73, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 757, i32 8}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 771, i32 8}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 775, i32 4}
!81 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug484, !80, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 783, i32 4}
!84 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug485, !83, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 801, i32 4}
!87 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug486, !86, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 817, i32 4}
!90 = !{ptr @es58x_rx_err_msg.__UNIQUE_ID_ddebug487, !89, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 832, i32 9}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 845, i32 8}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 869, i32 8}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 934, i32 3}
!99 = !{ptr @es58x_rx_cmd_ret_u8._rs, !98, !"_rs", i1 false, i1 false}
!100 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @es58x_rx_cmd_ret_u8.descriptor, !98, !"descriptor", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 938, i32 3}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @es58x_rx_cmd_ret_u8._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @es58x_rx_cmd_ret_u8._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 942, i32 3}
!111 = !{ptr @es58x_rx_cmd_ret_u8._entry.40, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @es58x_rx_cmd_ret_u8._entry_ptr.42, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 946, i32 3}
!115 = !{ptr @es58x_rx_cmd_ret_u8._entry.43, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @es58x_rx_cmd_ret_u8._entry_ptr.45, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 951, i32 3}
!119 = !{ptr @es58x_rx_cmd_ret_u8._entry.46, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @es58x_rx_cmd_ret_u8._entry_ptr.48, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 987, i32 9}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 999, i32 4}
!125 = !{ptr @es58x_rx_cmd_ret_u32.__UNIQUE_ID_ddebug488, !124, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1009, i32 9}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1018, i32 9}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1031, i32 8}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1037, i32 8}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1042, i32 22}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1046, i32 23}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1050, i32 22}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1054, i32 22}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1058, i32 22}
!144 = !{ptr @__initcall__kmod_etas_es58x__495_2290_es58x_driver_init6, !145, !"__initcall__kmod_etas_es58x__495_2290_es58x_driver_init6", i1 false, i1 false}
!145 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2290, i32 1}
!146 = !{ptr @__exitcall_es58x_driver_exit, !145, !"__exitcall_es58x_driver_exit", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 331, i32 8}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 339, i32 9}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 344, i32 8}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 349, i32 9}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 891, i32 10}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 893, i32 10}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 895, i32 10}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 897, i32 10}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 899, i32 10}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 901, i32 10}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 903, i32 10}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 906, i32 9}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1554, i32 3}
!173 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @es58x_alloc_urb._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @es58x_alloc_urb._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1561, i32 3}
!178 = !{ptr @es58x_alloc_urb._entry.74, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @es58x_alloc_urb._entry_ptr.76, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1641, i32 22}
!182 = !{ptr @__func__.es58x_submit_urb, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1642, i32 7}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1506, i32 23}
!186 = !{ptr @__func__.es58x_write_bulk_callback, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1507, i32 8}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1508, i32 3}
!190 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @es58x_write_bulk_callback.__UNIQUE_ID_ddebug493, !192, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!192 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1514, i32 4}
!193 = !{ptr @es58x_driver, !194, !"es58x_driver", i1 false, i1 false}
!194 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2283, i32 26}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2184, i32 2}
!197 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @es58x_init_es58x_dev._entry, !196, !"_entry", i1 false, i1 false}
!200 = !{ptr @es58x_init_es58x_dev._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @init_usb_anchor.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!203 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @init_usb_anchor.__key.85, !205, !"__key", i1 false, i1 false}
!205 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!206 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2148, i32 3}
!209 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @es58x_get_product_info._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @es58x_get_product_info._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2154, i32 3}
!214 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @es58x_get_product_info._entry.89, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @es58x_get_product_info._entry_ptr.92, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2158, i32 2}
!219 = !{ptr @es58x_get_product_info._entry.93, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @es58x_get_product_info._entry_ptr.95, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2083, i32 3}
!223 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @es58x_init_netdev._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @es58x_init_netdev._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1816, i32 21}
!228 = !{ptr @__func__.es58x_open, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1817, i32 6}
!230 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1739, i32 3}
!232 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @es58x_alloc_rx_urbs._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @es58x_alloc_rx_urbs._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.101, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1742, i32 2}
!237 = !{ptr @es58x_alloc_rx_urbs.__UNIQUE_ID_ddebug494, !236, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!238 = !{ptr @es58x_read_bulk_callback._rs, !239, !"_rs", i1 false, i1 false}
!239 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1422, i32 3}
!240 = !{ptr @__func__.es58x_read_bulk_callback, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @es58x_read_bulk_callback._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @es58x_read_bulk_callback._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @es58x_read_bulk_callback.__UNIQUE_ID_ddebug491, !244, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!244 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1424, i32 3}
!245 = !{ptr @es58x_read_bulk_callback._rs.102, !246, !"_rs", i1 false, i1 false}
!246 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1429, i32 3}
!247 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @es58x_read_bulk_callback._entry.103, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @es58x_read_bulk_callback._entry_ptr.105, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @es58x_read_bulk_callback._rs.106, !251, !"_rs", i1 false, i1 false}
!251 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1435, i32 3}
!252 = !{ptr @es58x_read_bulk_callback._entry.107, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @es58x_read_bulk_callback._entry_ptr.108, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @es58x_read_bulk_callback._rs.109, !255, !"_rs", i1 false, i1 false}
!255 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1440, i32 3}
!256 = !{ptr @es58x_read_bulk_callback.descriptor, !255, !"descriptor", i1 false, i1 false}
!257 = !{ptr @es58x_read_bulk_callback._rs.110, !258, !"_rs", i1 false, i1 false}
!258 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1445, i32 3}
!259 = !{ptr @es58x_read_bulk_callback._entry.111, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @es58x_read_bulk_callback._entry_ptr.112, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1452, i32 3}
!263 = !{ptr @es58x_read_bulk_callback._entry.113, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @es58x_read_bulk_callback._entry_ptr.115, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @es58x_read_bulk_callback.__UNIQUE_ID_ddebug492, !266, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!266 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1454, i32 3}
!267 = !{ptr @es58x_read_bulk_callback._rs.116, !268, !"_rs", i1 false, i1 false}
!268 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1475, i32 3}
!269 = !{ptr @.str.118, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @es58x_read_bulk_callback._entry.117, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @es58x_read_bulk_callback._entry_ptr.119, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @es58x_handle_incomplete_cmd._rs, !273, !"_rs", i1 false, i1 false}
!273 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1324, i32 3}
!274 = !{ptr @__func__.es58x_handle_incomplete_cmd, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @es58x_handle_incomplete_cmd._entry, !273, !"_entry", i1 false, i1 false}
!277 = !{ptr @es58x_handle_incomplete_cmd._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @es58x_handle_incomplete_cmd._rs.121, !279, !"_rs", i1 false, i1 false}
!279 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1327, i32 3}
!280 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @es58x_handle_incomplete_cmd._entry.122, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @es58x_handle_incomplete_cmd._entry_ptr.124, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.125, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1331, i32 3}
!285 = !{ptr @es58x_check_rx_urb._rs, !286, !"_rs", i1 false, i1 false}
!286 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1184, i32 3}
!287 = !{ptr @__func__.es58x_check_rx_urb, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.126, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @es58x_check_rx_urb._entry, !286, !"_entry", i1 false, i1 false}
!290 = !{ptr @es58x_check_rx_urb._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @es58x_check_rx_urb._rs.127, !292, !"_rs", i1 false, i1 false}
!292 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1193, i32 3}
!293 = !{ptr @.str.129, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @es58x_check_rx_urb._entry.128, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @es58x_check_rx_urb._entry_ptr.130, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @es58x_check_crc._rs, !297, !"_rs", i1 false, i1 false}
!297 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 142, i32 3}
!298 = !{ptr @__func__.es58x_check_crc, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.131, !297, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @es58x_check_crc._entry, !297, !"_entry", i1 false, i1 false}
!301 = !{ptr @es58x_check_crc._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @es58x_handle_urb_cmd._rs, !303, !"_rs", i1 false, i1 false}
!303 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1105, i32 3}
!304 = !{ptr @__func__.es58x_handle_urb_cmd, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.132, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @es58x_handle_urb_cmd._entry, !303, !"_entry", i1 false, i1 false}
!307 = !{ptr @es58x_handle_urb_cmd._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.134, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1116, i32 3}
!310 = !{ptr @es58x_handle_urb_cmd._entry.133, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @es58x_handle_urb_cmd._entry_ptr.135, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.136, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1119, i32 3}
!314 = !{ptr @.str.138, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1126, i32 3}
!316 = !{ptr @.str.139, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @es58x_handle_urb_cmd._entry.137, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @es58x_handle_urb_cmd._entry_ptr.140, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @es58x_split_urb_try_recovery._rs, !320, !"_rs", i1 false, i1 false}
!320 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1273, i32 5}
!321 = !{ptr @__func__.es58x_split_urb_try_recovery, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.141, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @es58x_split_urb_try_recovery._entry, !320, !"_entry", i1 false, i1 false}
!324 = !{ptr @es58x_split_urb_try_recovery._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @es58x_split_urb_try_recovery._rs.142, !326, !"_rs", i1 false, i1 false}
!326 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1285, i32 2}
!327 = !{ptr @.str.144, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @es58x_split_urb_try_recovery._entry.143, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @es58x_split_urb_try_recovery._entry_ptr.145, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.146, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 231, i32 3}
!332 = !{ptr @.str.147, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @es58x_set_realtime_diff_ns._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @es58x_set_realtime_diff_ns._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.148, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1757, i32 3}
!337 = !{ptr @.str.149, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @es58x_free_urbs._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @es58x_free_urbs._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.151, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1769, i32 3}
!342 = !{ptr @es58x_free_urbs._entry.150, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @es58x_free_urbs._entry_ptr.152, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @es58x_netdev_ops, !345, !"es58x_netdev_ops", i1 false, i1 false}
!345 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1981, i32 36}
!346 = !{ptr @.str.153, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 499, i32 23}
!348 = !{ptr @__func__.es58x_flush_pending_tx_msg, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 500, i32 8}
!350 = !{ptr @.str.154, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1974, i32 22}
!352 = !{ptr @__func__.es58x_start_xmit, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 1975, i32 7}
!354 = distinct !{null, !355, !"__already_done", i1 false, i1 false}
!355 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!356 = !{ptr @.str.155, !355, !"<string literal>", i1 false, i1 false}
!357 = distinct !{null, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!359 = !{ptr @.str.157, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 2275, i32 2}
!361 = !{ptr @.str.158, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @es58x_disconnect._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @es58x_disconnect._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @es58x_id_table, !365, !"es58x_id_table", i1 false, i1 false}
!365 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.c", i32 38, i32 35}
!366 = !{!"sp"}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{i64 2148754710, i64 2148754715, i64 2148754728, i64 2148754772, i64 2148754806, i64 2148754827}
!377 = !{!"branch_weights", i32 1, i32 2000}
!378 = !{i64 2156041817}
!379 = !{!"auto-init"}
!380 = !{i64 2148361347}
!381 = !{i64 2148276080, i64 2148276112, i64 2148276141, i64 2148276175, i64 2148276206, i64 2148276229}
!382 = !{i64 2148361576}
!383 = !{i64 2148272895, i64 2148272921, i64 2148272950, i64 2148272984, i64 2148273015, i64 2148273038}
!384 = !{i64 2148275360, i64 2148275386, i64 2148275415, i64 2148275449, i64 2148275480, i64 2148275503}
!385 = !{!"branch_weights", i32 2000, i32 1}
!386 = !{i8 0, i8 2}
!387 = !{i64 2154149357, i64 2154149857, i64 2154149394, i64 2154149450, i64 2154149484, i64 2154149508, i64 2154149549, i64 2154149570, i64 2154149598, i64 2154149632}
!388 = !{i64 2154150701}
!389 = !{i64 2156040746}
