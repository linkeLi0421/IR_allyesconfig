; ModuleID = '/llk/IR_all_yes/drivers/usb/atm/usbatm.c_pt.bc'
source_filename = "../drivers/usb/atm/usbatm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usbatm_usb_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_usbatm_usb_probe\09\09\09\09"
module asm "\09.long\09__crc_usbatm_usb_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbatm_usb_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22usbatm_usb_probe\22\09\09\09\09\09"
module asm "__kstrtabns_usbatm_usb_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbatm_usb_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_usbatm_usb_disconnect\09\09\09\09"
module asm "\09.long\09__crc_usbatm_usb_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbatm_usb_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22usbatm_usb_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_usbatm_usb_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usbatm_data = type { ptr, ptr, [16 x i8], i32, ptr, ptr, [64 x i8], ptr, %struct.kref, %struct.mutex, i32, ptr, %struct.completion, %struct.completion, %struct.list_head, %struct.usbatm_channel, %struct.usbatm_channel, %struct.sk_buff_head, ptr, ptr, i32, i16, ptr, i32, [0 x ptr] }
%struct.usbatm_channel = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.timer_list, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usbatm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
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
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.145, i8, %union.anon.147 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i8, i8 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.151 }
%struct.anon.151 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.usbatm_vcc_data = type { %struct.list_head, i16, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_num_rcv_urbs = internal constant [20 x i8] c"usbatm.num_rcv_urbs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_rcv_urbs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_num_rcv_urbs = internal constant %struct.kernel_param { ptr @__param_str_num_rcv_urbs, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @num_rcv_urbs } }, section "__param", align 4
@__UNIQUE_ID_num_rcv_urbstype462 = internal constant [34 x i8] c"usbatm.parmtype=num_rcv_urbs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_rcv_urbs463 = internal constant [85 x i8] c"usbatm.parm=num_rcv_urbs:Number of urbs used for reception (range: 0-16, default: 4)\00", section ".modinfo", align 1
@__param_str_num_snd_urbs = internal constant [20 x i8] c"usbatm.num_snd_urbs\00", align 1
@num_snd_urbs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_num_snd_urbs = internal constant %struct.kernel_param { ptr @__param_str_num_snd_urbs, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @num_snd_urbs } }, section "__param", align 4
@__UNIQUE_ID_num_snd_urbstype464 = internal constant [34 x i8] c"usbatm.parmtype=num_snd_urbs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_snd_urbs465 = internal constant [88 x i8] c"usbatm.parm=num_snd_urbs:Number of urbs used for transmission (range: 0-16, default: 4)\00", section ".modinfo", align 1
@__param_str_rcv_buf_bytes = internal constant [21 x i8] c"usbatm.rcv_buf_bytes\00", align 1
@rcv_buf_bytes = internal global { i32, [28 x i8] } { i32 3392, [28 x i8] zeroinitializer }, align 32
@__param_rcv_buf_bytes = internal constant %struct.kernel_param { ptr @__param_str_rcv_buf_bytes, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @rcv_buf_bytes } }, section "__param", align 4
@__UNIQUE_ID_rcv_buf_bytestype466 = internal constant [35 x i8] c"usbatm.parmtype=rcv_buf_bytes:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rcv_buf_bytes467 = internal constant [107 x i8] c"usbatm.parm=rcv_buf_bytes:Size of the buffers used for reception, in bytes (range: 1-65536, default: 3392)\00", section ".modinfo", align 1
@__param_str_snd_buf_bytes = internal constant [21 x i8] c"usbatm.snd_buf_bytes\00", align 1
@snd_buf_bytes = internal global { i32, [28 x i8] } { i32 3392, [28 x i8] zeroinitializer }, align 32
@__param_snd_buf_bytes = internal constant %struct.kernel_param { ptr @__param_str_snd_buf_bytes, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @snd_buf_bytes } }, section "__param", align 4
@__UNIQUE_ID_snd_buf_bytestype468 = internal constant [35 x i8] c"usbatm.parmtype=snd_buf_bytes:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_snd_buf_bytes469 = internal constant [110 x i8] c"usbatm.parm=snd_buf_bytes:Size of the buffers used for transmission, in bytes (range: 1-65536, default: 3392)\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" (\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@usbatm_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1058, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: bind failed: %d!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbatm_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/atm/usbatm.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbatm_usb_probe._entry_ptr = internal global ptr @usbatm_usb_probe._entry, section ".printk_index", align 4
@usbatm_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&instance->serialize\00", [43 x i8] zeroinitializer }, align 32
@usbatm_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1098, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid endpoint %02x!\0A\00", [36 x i8] zeroinitializer }, align 32
@usbatm_usb_probe._entry_ptr.10 = internal global ptr @usbatm_usb_probe._entry.8, section ".printk_index", align 4
@usbatm_usb_probe.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbatm\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: using %d byte buffer for %s channel 0x%p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_usbatm_usb_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbatm_usb_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_usbatm_usb_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbatm_usb_probe to i32), ptr @__kstrtab_usbatm_usb_probe, ptr @__kstrtabns_usbatm_usb_probe }, section "___ksymtab_gpl+usbatm_usb_probe", align 4
@usbatm_usb_disconnect.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbatm_usb_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: NULL instance!\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_usbatm_usb_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbatm_usb_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_usbatm_usb_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbatm_usb_disconnect to i32), ptr @__kstrtab_usbatm_usb_disconnect, ptr @__kstrtabns_usbatm_usb_disconnect }, section "___ksymtab_gpl+usbatm_usb_disconnect", align 4
@__initcall__kmod_usbatm__484_1297_usbatm_usb_init6 = internal global ptr @usbatm_usb_init, section ".initcall6.init", align 4
@__exitcall_usbatm_usb_exit = internal global ptr @usbatm_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author485 = internal constant [65 x i8] c"usbatm.author=Johan Verrept, Duncan Sands <duncan.sands@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description486 = internal constant [43 x i8] c"usbatm.description=Generic USB ATM/DSL I/O\00", section ".modinfo", align 1
@__UNIQUE_ID_file487 = internal constant [35 x i8] c"usbatm.file=drivers/usb/atm/usbatm\00", section ".modinfo", align 1
@__UNIQUE_ID_license488 = internal constant [19 x i8] c"usbatm.license=GPL\00", section ".modinfo", align 1
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@usbatm_init_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&channel->lock\00", [17 x i8] zeroinitializer }, align 32
@usbatm_init_channel.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&channel->delay)\00", [46 x i8] zeroinitializer }, align 32
@usbatm_rx_process._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@usbatm_rx_process.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbatm_rx_process\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ATM dev %d: %s: status %d in frame %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbatm_extract_one_cell\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ATM dev %d: %s: unknown vpi/vci (%hd/%d)!\0A\00", [53 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ATM dev %d: %s: OAM not supported (vpi %d, vci %d)!\0A\00", [41 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._entry_ptr = internal global ptr @usbatm_extract_one_cell._entry, section ".printk_index", align 4
@usbatm_extract_one_cell._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell.descriptor.30 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.4, ptr @.str.31, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ATM dev %d: %s: buffer overrun (sarb->len %u, vcc: 0x%p)!\0A\00", [37 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell.descriptor.36 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.4, ptr @.str.37, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ATM dev %d: %s: bogus pdu_length %u (sarb->len: %u, vcc: 0x%p)!\0A\00", [63 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell.descriptor.39 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.4, ptr @.str.40, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ATM dev %d: %s: packet failed crc check (vcc: 0x%p)!\0A\00", [42 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.26, ptr @.str.4, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ATM dev %d: %s: no memory for skb (length: %u)!\0A\00", [45 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell._entry_ptr.43 = internal global ptr @usbatm_extract_one_cell._entry.41, section ".printk_index", align 4
@usbatm_extract_one_cell._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_extract_one_cell.descriptor.45 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.4, ptr @.str.46, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ATM dev %d: %s: failed atm_charge (skb->truesize: %u)!\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.usbatm_submit_urb = private unnamed_addr constant [18 x i8] c"usbatm_submit_urb\00", align 1
@usbatm_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @__func__.usbatm_submit_urb, ptr @.str.4, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014ATM dev %d: %s: urb 0x%p submission failed (%d)!\0A\00", [44 x i8] zeroinitializer }, align 32
@usbatm_submit_urb._entry_ptr = internal global ptr @usbatm_submit_urb._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.usbatm_complete = private unnamed_addr constant [16 x i8] c"usbatm_complete\00", align 1
@usbatm_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.usbatm_complete, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014ATM dev %d: %s: urb 0x%p failed (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@usbatm_complete._entry_ptr = internal global ptr @usbatm_complete._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@usbatm_heavy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: failed to create kernel_thread (%ld)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbatm_heavy_init\00", [46 x i8] zeroinitializer }, align 32
@usbatm_heavy_init._entry_ptr = internal global ptr @usbatm_heavy_init._entry, section ".printk_index", align 4
@usbatm_atm_devops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr @usbatm_atm_dev_close, ptr @usbatm_atm_open, ptr @usbatm_atm_close, ptr @usbatm_atm_ioctl, ptr @usbatm_atm_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbatm_atm_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@usbatm_atm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 914, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to register ATM device!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbatm_atm_init\00", [16 x i8] zeroinitializer }, align 32
@usbatm_atm_init._entry_ptr = internal global ptr @usbatm_atm_init._entry, section ".printk_index", align 4
@usbatm_atm_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ATM dev %d: %s: atm_start failed: %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@usbatm_atm_init._entry_ptr.57 = internal global ptr @usbatm_atm_init._entry.55, section ".printk_index", align 4
@usbatm_atm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014ATM dev %d: %s: unsupported ATM type %d!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbatm_atm_open\00", [16 x i8] zeroinitializer }, align 32
@usbatm_atm_open._entry_ptr = internal global ptr @usbatm_atm_open._entry, section ".printk_index", align 4
@usbatm_atm_open.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ATM dev %d: %s: max_sdu %d out of range!\0A\00", [54 x i8] zeroinitializer }, align 32
@usbatm_atm_open.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.59, ptr @.str.4, ptr @.str.61, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ATM dev %d: %s: disconnected!\0A\00", [33 x i8] zeroinitializer }, align 32
@usbatm_atm_open.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.59, ptr @.str.4, ptr @.str.62, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ATM dev %d: %s: %hd/%d already in use!\0A\00", [56 x i8] zeroinitializer }, align 32
@usbatm_atm_open._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.4, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ATM dev %d: %s: no memory for SAR buffer!\0A\00", [51 x i8] zeroinitializer }, align 32
@usbatm_atm_open._entry_ptr.65 = internal global ptr @usbatm_atm_open._entry.63, section ".printk_index", align 4
@usbatm_atm_open.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.59, ptr @.str.4, ptr @.str.66, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ATM dev %d: %s: allocated vcc data 0x%p\0A\00", [55 x i8] zeroinitializer }, align 32
@usbatm_cancel_send.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbatm_cancel_send\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ATM dev %d: %s: popping skb 0x%p\0A\00", [62 x i8] zeroinitializer }, align 32
@usbatm_cancel_send.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.67, ptr @.str.4, ptr @.str.69, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ATM dev %d: %s: popping current skb (0x%p)\0A\00", [52 x i8] zeroinitializer }, align 32
@usbatm_atm_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_atm_send.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.70, ptr @.str.4, ptr @.str.71, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbatm_atm_send\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ATM dev %d: %s: unsupported ATM type %d!\0A\00", [54 x i8] zeroinitializer }, align 32
@usbatm_atm_send._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbatm_atm_send.descriptor.73 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.70, ptr @.str.4, ptr @.str.74, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ATM dev %d: %s: packet too long (%d vs %d)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAC: %pM\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"AAL5: tx %d ( %d err ), rx %d ( %d err, %d drop )\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Line down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line state unknown\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"num_rcv_urbs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 98, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"num_snd_urbs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 99, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"rcv_buf_bytes\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 100, i32 21 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"snd_buf_bytes\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 101, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1044, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1054, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1058, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1065, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1097, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1115, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1214, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 912, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 87, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1984, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1003, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1005, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 542, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 306, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 317, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 326, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 353, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 360, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 373, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 384, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 224, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 267, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 979, i32 6 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 982, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"usbatm_atm_devops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 162, i32 32 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 914, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 928, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 783, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 789, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 796, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 802, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 819, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 839, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 628, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 637, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 660, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 666, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 739, i32 24 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 742, i32 24 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 746, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 755, i32 25 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 759, i32 26 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 761, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private constant [28 x i8] c"../drivers/usb/atm/usbatm.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 763, i32 26 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author485, ptr @__UNIQUE_ID_description486, ptr @__UNIQUE_ID_file487, ptr @__UNIQUE_ID_license488, ptr @__UNIQUE_ID_num_rcv_urbs463, ptr @__UNIQUE_ID_num_rcv_urbstype462, ptr @__UNIQUE_ID_num_snd_urbs465, ptr @__UNIQUE_ID_num_snd_urbstype464, ptr @__UNIQUE_ID_rcv_buf_bytes467, ptr @__UNIQUE_ID_rcv_buf_bytestype466, ptr @__UNIQUE_ID_snd_buf_bytes469, ptr @__UNIQUE_ID_snd_buf_bytestype468, ptr @__exitcall_usbatm_usb_exit, ptr @__initcall__kmod_usbatm__484_1297_usbatm_usb_init6, ptr @__ksymtab_usbatm_usb_disconnect, ptr @__ksymtab_usbatm_usb_probe, ptr @__param_num_rcv_urbs, ptr @__param_num_snd_urbs, ptr @__param_rcv_buf_bytes, ptr @__param_snd_buf_bytes, ptr @usbatm_atm_init._entry, ptr @usbatm_atm_init._entry.55, ptr @usbatm_atm_init._entry_ptr, ptr @usbatm_atm_init._entry_ptr.57, ptr @usbatm_atm_open._entry, ptr @usbatm_atm_open._entry.63, ptr @usbatm_atm_open._entry_ptr, ptr @usbatm_atm_open._entry_ptr.65, ptr @usbatm_complete._entry, ptr @usbatm_complete._entry_ptr, ptr @usbatm_extract_one_cell._entry, ptr @usbatm_extract_one_cell._entry.41, ptr @usbatm_extract_one_cell._entry_ptr, ptr @usbatm_extract_one_cell._entry_ptr.43, ptr @usbatm_heavy_init._entry, ptr @usbatm_heavy_init._entry_ptr, ptr @usbatm_submit_urb._entry, ptr @usbatm_submit_urb._entry_ptr, ptr @usbatm_usb_exit, ptr @usbatm_usb_probe._entry, ptr @usbatm_usb_probe._entry.8, ptr @usbatm_usb_probe._entry_ptr, ptr @usbatm_usb_probe._entry_ptr.10, ptr @num_rcv_urbs, ptr @num_snd_urbs, ptr @rcv_buf_bytes, ptr @snd_buf_bytes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @usbatm_usb_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @init_completion.__key, ptr @.str.18, ptr @skb_queue_head_init.__key, ptr @.str.19, ptr @usbatm_init_channel.__key, ptr @.str.20, ptr @usbatm_init_channel.__key.21, ptr @.str.22, ptr @usbatm_rx_process._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @usbatm_extract_one_cell._rs, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @usbatm_extract_one_cell._rs.29, ptr @.str.31, ptr @usbatm_extract_one_cell._rs.35, ptr @.str.37, ptr @usbatm_extract_one_cell._rs.38, ptr @.str.40, ptr @.str.42, ptr @usbatm_extract_one_cell._rs.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @usbatm_atm_devops, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @usbatm_atm_send._rs, ptr @.str.70, ptr @.str.71, ptr @usbatm_atm_send._rs.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rcv_urbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_snd_urbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_buf_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_buf_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_init_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_init_channel.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_rx_process._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_extract_one_cell._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_heavy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_devops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_open._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbatm_atm_send._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbatm_usb_probe(ptr noundef %intf, ptr noundef %id, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = load i32, ptr @num_snd_urbs, align 4
  %3 = load i32, ptr @num_rcv_urbs, align 4
  %add = add i32 %2, %3
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #15
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 696) #15
  %retval.0.i412 = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i412, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup242_crit_edge, label %if.end

entry.cleanup242_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup242

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %driver, ptr %call9.i.i, align 128
  %driver_name = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %call6 = tail call i32 @strlcpy(ptr noundef %driver_name, ptr noundef %9, i32 noundef 16) #15
  %usb_dev7 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %usb_dev7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %usb_dev7, align 4
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %usb_intf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %intf, ptr %usb_intf, align 32
  %description = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 6
  %iProduct = getelementptr i8, ptr %1, i32 943
  %12 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iProduct, align 1
  %conv = zext i8 %13 to i32
  %call9 = tail call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef %description, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end.bind_crit_edge, label %if.end12

if.end.bind_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %bind

if.end12:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %description, i32 %call9
  %sub = sub nsw i32 64, %call9
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str) #15
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %call13
  %sub15 = sub i32 %sub, %call13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub15)
  %cmp16 = icmp slt i32 %sub15, 1
  br i1 %cmp16, label %if.end12.bind_crit_edge, label %lor.lhs.false

if.end12.bind_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %bind

lor.lhs.false:                                    ; preds = %if.end12
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.17, ptr noundef %17, ptr noundef %devpath.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub15)
  %cmp.not.i = icmp slt i32 %call.i, %sub15
  %spec.select.i416 = select i1 %cmp.not.i, i32 %call.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i416)
  %cmp19 = icmp slt i32 %spec.select.i416, 0
  br i1 %cmp19, label %lor.lhs.false.bind_crit_edge, label %if.end22

lor.lhs.false.bind_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %bind

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr23 = getelementptr i8, ptr %add.ptr14, i32 %spec.select.i416
  %sub24 = sub nsw i32 %sub15, %spec.select.i416
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.1)
  br label %bind

bind:                                             ; preds = %if.end22, %lor.lhs.false.bind_crit_edge, %if.end12.bind_crit_edge, %if.end.bind_crit_edge
  %bind26 = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 1
  %18 = ptrtoint ptr %bind26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bind26, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %bind.if.end33_crit_edge, label %land.lhs.true

bind.if.end33_crit_edge:                          ; preds = %bind
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true:                                    ; preds = %bind
  %call29 = tail call i32 %19(ptr noundef nonnull %call9.i.i, ptr noundef %intf, ptr noundef %id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call29) #19
  br label %fail_free

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %bind.if.end33_crit_edge
  %refcount = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #15
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refcount, align 8
  %serialize = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %serialize, ptr noundef nonnull @.str.7, ptr noundef nonnull @usbatm_usb_probe.__key) #15
  %thread = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %thread, align 4
  %thread_started = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %thread_started to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %thread_started, align 16
  %wait.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #15
  %thread_exited = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 13
  %23 = ptrtoint ptr %thread_exited to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %thread_exited, align 8
  %wait.i417 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i417, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #15
  %vcc_list = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %vcc_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %vcc_list, ptr %vcc_list, align 64
  %prev.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vcc_list, ptr %prev.i, align 4
  %sndqueue = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 17
  %lock.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 17, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #15
  %26 = ptrtoint ptr %sndqueue to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sndqueue, ptr %sndqueue, align 8
  %prev.i.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 17, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sndqueue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qlen.i.i, align 16
  %rx_channel = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15
  %lock.i418 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i418, ptr noundef nonnull @.str.20, ptr noundef nonnull @usbatm_init_channel.__key, i16 noundef signext 3) #15
  %list.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 5
  %29 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i419 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 5, i32 1
  %30 = ptrtoint ptr %prev.i.i419 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i, ptr %prev.i.i419, align 8
  %delay.i = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 7
  tail call void @init_timer_key(ptr noundef %delay.i, ptr noundef nonnull @usbatm_tasklet_schedule, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @usbatm_init_channel.__key.21) #15
  %tx_channel = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16
  %lock.i420 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i420, ptr noundef nonnull @.str.20, ptr noundef nonnull @usbatm_init_channel.__key, i16 noundef signext 3) #15
  %list.i421 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 5
  %31 = ptrtoint ptr %list.i421 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list.i421, ptr %list.i421, align 4
  %prev.i.i422 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 5, i32 1
  %32 = ptrtoint ptr %prev.i.i422 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i421, ptr %prev.i.i422, align 8
  %delay.i423 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 7
  tail call void @init_timer_key(ptr noundef %delay.i423, ptr noundef nonnull @usbatm_tasklet_schedule, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @usbatm_init_channel.__key.21) #15
  %tasklet = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 6
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @usbatm_rx_process) #15
  %tasklet39 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 6
  tail call void @tasklet_setup(ptr noundef %tasklet39, ptr noundef nonnull @usbatm_tx_process) #15
  %rx_padding = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 9
  %33 = ptrtoint ptr %rx_padding to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_padding, align 4
  %add40 = add i32 %34, 53
  %stride = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add40, ptr %stride, align 4
  %tx_padding = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 10
  %36 = ptrtoint ptr %tx_padding to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_padding, align 4
  %add42 = add i32 %37, 53
  %stride44 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %stride44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add42, ptr %stride44, align 4
  %usbatm = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 8
  %39 = ptrtoint ptr %usbatm to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i.i, ptr %usbatm, align 4
  %usbatm47 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 8
  %40 = ptrtoint ptr %usbatm47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i.i, ptr %usbatm47, align 4
  %flags = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end33.if.else_crit_edge, label %land.lhs.true49

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true49:                                  ; preds = %if.end33
  %isoc_in = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 7
  %43 = ptrtoint ptr %isoc_in to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %isoc_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool50.not = icmp eq i32 %44, 0
  br i1 %tobool50.not, label %land.lhs.true49.if.else_crit_edge, label %land.lhs.true49.if.end49.i_crit_edge

land.lhs.true49.if.end49.i_crit_edge:             ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i

land.lhs.true49.if.else_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %land.lhs.true49.if.else_crit_edge, %if.end33.if.else_crit_edge
  %bulk_in = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 6
  %45 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bulk_in, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else, %land.lhs.true49.if.end49.i_crit_edge
  %.sink483 = phi i32 [ %46, %if.else ], [ %44, %land.lhs.true49.if.end49.i_crit_edge ]
  %.sink = phi i32 [ -1073741696, %if.else ], [ 128, %land.lhs.true49.if.end49.i_crit_edge ]
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %48, 8
  %shl1.i = shl i32 %.sink483, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or54 = or i32 %or.i, %.sink
  %49 = ptrtoint ptr %rx_channel to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or54, ptr %rx_channel, align 8
  %bulk_out = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 8
  %50 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bulk_out, align 4
  %52 = load i32, ptr %add.ptr.i, align 8
  %shl.i427 = shl i32 %52, 8
  %shl1.i428 = shl i32 %51, 15
  %or.i429 = or i32 %shl1.i428, %shl.i427
  %or63 = or i32 %or.i429, -1073741824
  %53 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or63, ptr %tx_channel, align 8
  %54 = load i32, ptr @snd_buf_bytes, align 4
  %rem = urem i32 %54, %add42
  %sub70 = sub i32 %54, %rem
  %55 = tail call i32 @llvm.umax.i32(i32 %add42, i32 %sub70)
  %buf_size = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 16, i32 2
  %56 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %buf_size, align 32
  %57 = lshr i32 %or.i, 15
  %and.i = and i32 %57, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i, i32 0, i32 21, i32 %and.i
  %58 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %59, null
  br i1 %tobool59.not.i, label %if.end49.i.do.end86_crit_edge, label %usb_maxpacket.exit

if.end49.i.do.end86_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end86

usb_maxpacket.exit:                               ; preds = %if.end49.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %62 = and i16 %61, -249
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #15
  %conv77 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp78 = icmp eq i16 %62, 0
  br i1 %cmp78, label %usb_maxpacket.exit.do.end86_crit_edge, label %if.end90

usb_maxpacket.exit.do.end86_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end86

do.end86:                                         ; preds = %usb_maxpacket.exit.do.end86_crit_edge, %if.end49.i.do.end86_crit_edge
  %64 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_channel, align 8
  %66 = lshr i32 %65, 15
  %and89 = and i32 %66, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %and89) #19
  br label %fail_unbind

if.end90:                                         ; preds = %usb_maxpacket.exit
  %67 = load i32, ptr @rcv_buf_bytes, align 4
  %div410 = lshr i32 %conv77, 1
  %add91 = add i32 %67, %div410
  call void @__sanitizer_cov_trace_cmp4(i32 %add91, i32 %conv77)
  %cmp94 = icmp ult i32 %add91, %conv77
  br i1 %cmp94, label %if.end90.cond.end98_crit_edge, label %cond.false97

if.end90.cond.end98_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end98

cond.false97:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %div92 = udiv i32 %add91, %conv77
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %if.end90.cond.end98_crit_edge
  %cond99 = phi i32 [ %div92, %cond.false97 ], [ 1, %if.end90.cond.end98_crit_edge ]
  %mul = mul i32 %cond99, %conv77
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul)
  %cmp100 = icmp ugt i32 %mul, 65536
  %dec = sext i1 %cmp100 to i32
  %spec.select = add i32 %cond99, %dec
  %mul104 = mul i32 %spec.select, %conv77
  %buf_size106 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 2
  %68 = ptrtoint ptr %buf_size106 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul104, ptr %buf_size106, align 16
  %packet_size = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 15, i32 3
  %69 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv77, ptr %packet_size, align 4
  br label %for.body

for.cond130.preheader:                            ; preds = %do.end129
  %70 = load i32, ptr @num_rcv_urbs, align 4
  %71 = load i32, ptr @num_snd_urbs, align 4
  %add131477 = sub i32 0, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add131477)
  %cmp132478.not = icmp eq i32 %71, %add131477
  br i1 %cmp132478.not, label %for.cond130.preheader.for.end194_crit_edge, label %for.cond130.preheader.for.body134_crit_edge

for.cond130.preheader.for.body134_crit_edge:      ; preds = %for.cond130.preheader
  br label %for.body134

for.cond130.preheader.for.end194_crit_edge:       ; preds = %for.cond130.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end194

for.body:                                         ; preds = %do.end129.for.body_crit_edge, %cond.end98
  %tobool110.not = phi i1 [ true, %cond.end98 ], [ false, %do.end129.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_usb_probe.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_usb_probe, %if.then123)) #15
          to label %do.end129 [label %if.then123], !srcloc !222

if.then123:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %rx_channel.tx_channel = select i1 %tobool110.not, ptr %rx_channel, ptr %tx_channel
  %buf_size124 = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel, i32 0, i32 2
  %72 = ptrtoint ptr %buf_size124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_size124, align 16
  %cond126 = select i1 %tobool110.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbatm_usb_probe.__UNIQUE_ID_ddebug482, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef %73, ptr noundef nonnull %cond126, ptr noundef nonnull %rx_channel.tx_channel) #15
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %for.body
  br i1 %tobool110.not, label %do.end129.for.body_crit_edge, label %for.cond130.preheader

do.end129.for.body_crit_edge:                     ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body134:                                      ; preds = %for.inc192.for.body134_crit_edge, %for.cond130.preheader.for.body134_crit_edge
  %74 = phi i32 [ %111, %for.inc192.for.body134_crit_edge ], [ %70, %for.cond130.preheader.for.body134_crit_edge ]
  %i.1479 = phi i32 [ %inc193, %for.inc192.for.body134_crit_edge ], [ 0, %for.cond130.preheader.for.body134_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1479, i32 %74)
  %cmp136 = icmp ult i32 %i.1479, %74
  %rx_channel.tx_channel411 = select i1 %cmp136, ptr %rx_channel, ptr %tx_channel
  %75 = ptrtoint ptr %rx_channel.tx_channel411 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_channel.tx_channel411, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %76)
  %cmp147 = icmp ult i32 %76, 1073741824
  br i1 %cmp147, label %cond.true149, label %for.body134.cond.end154_crit_edge

for.body134.cond.end154_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end154

cond.true149:                                     ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #17
  %buf_size150 = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel411, i32 0, i32 2
  %77 = ptrtoint ptr %buf_size150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_size150, align 16
  %packet_size151 = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel411, i32 0, i32 3
  %79 = ptrtoint ptr %packet_size151 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %packet_size151, align 4
  %div152 = udiv i32 %78, %80
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true149, %for.body134.cond.end154_crit_edge
  %cond155 = phi i32 [ %div152, %cond.true149 ], [ 0, %for.body134.cond.end154_crit_edge ]
  %call156 = tail call ptr @usb_alloc_urb(i32 noundef %cond155, i32 noundef 3264) #15
  %tobool157.not = icmp eq ptr %call156, null
  br i1 %tobool157.not, label %cond.end154.fail_unbind_crit_edge, label %if.end159

cond.end154.fail_unbind_crit_edge:                ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_unbind

if.end159:                                        ; preds = %cond.end154
  %arrayidx = getelementptr %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 24, i32 %i.1479
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call156, ptr %arrayidx, align 4
  %buf_size160 = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel411, i32 0, i32 2
  %82 = ptrtoint ptr %buf_size160 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf_size160, align 16
  %call9.i.i448 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #18
  %tobool162.not = icmp eq ptr %call9.i.i448, null
  br i1 %tobool162.not, label %if.end159.fail_unbind_crit_edge, label %if.end164

if.end159.fail_unbind_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_unbind

if.end164:                                        ; preds = %if.end159
  %84 = ptrtoint ptr %usb_dev7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_dev7, align 4
  %86 = ptrtoint ptr %rx_channel.tx_channel411 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_channel.tx_channel411, align 8
  %88 = ptrtoint ptr %buf_size160 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buf_size160, align 16
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 8
  %90 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %85, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 10
  %91 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %87, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 14
  %92 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call9.i.i448, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 19
  %93 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %89, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 28
  %94 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @usbatm_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 27
  %95 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %rx_channel.tx_channel411, ptr %context4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond155)
  %tobool168.not = icmp eq i32 %cond155, 0
  br i1 %tobool168.not, label %if.end164.if.end184_crit_edge, label %if.then169

if.end164.if.end184_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

if.then169:                                       ; preds = %if.end164
  %interval = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 25
  %96 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %interval, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 13
  %97 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %transfer_flags, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 24
  %98 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cond155, ptr %number_of_packets, align 4
  %packet_size174 = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel411, i32 0, i32 3
  br label %for.body173

for.body173:                                      ; preds = %for.body173.for.body173_crit_edge, %if.then169
  %j.0476 = phi i32 [ 0, %if.then169 ], [ %inc182, %for.body173.for.body173_crit_edge ]
  %99 = ptrtoint ptr %packet_size174 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %packet_size174, align 4
  %mul175 = mul i32 %100, %j.0476
  %arrayidx176 = getelementptr %struct.urb, ptr %call156, i32 0, i32 29, i32 %j.0476
  %101 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul175, ptr %arrayidx176, align 4
  %102 = load i32, ptr %packet_size174, align 4
  %length180 = getelementptr %struct.urb, ptr %call156, i32 0, i32 29, i32 %j.0476, i32 1
  %103 = ptrtoint ptr %length180 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %length180, align 4
  %inc182 = add nuw i32 %j.0476, 1
  %exitcond.not = icmp eq i32 %inc182, %cond155
  br i1 %exitcond.not, label %for.body173.if.end184_crit_edge, label %for.body173.for.body173_crit_edge

for.body173.for.body173_crit_edge:                ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body173

for.body173.if.end184_crit_edge:                  ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

if.end184:                                        ; preds = %for.body173.if.end184_crit_edge, %if.end164.if.end184_crit_edge
  %104 = load i32, ptr @num_rcv_urbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1479, i32 %104)
  %cmp185.not = icmp ult i32 %i.1479, %104
  br i1 %cmp185.not, label %if.end184.for.inc192_crit_edge, label %if.then187

if.end184.for.inc192_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc192

if.then187:                                       ; preds = %if.end184
  %urb_list = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 5
  %list = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel411, i32 0, i32 5
  %prev.i452 = getelementptr inbounds %struct.usbatm_channel, ptr %rx_channel.tx_channel411, i32 0, i32 5, i32 1
  %105 = ptrtoint ptr %prev.i452 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i452, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %urb_list, ptr noundef %106, ptr noundef %list) #15
  br i1 %call.i.i, label %if.end.i.i453, label %if.then187.for.inc192_crit_edge

if.then187.for.inc192_crit_edge:                  ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc192

if.end.i.i453:                                    ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %prev.i452 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %urb_list, ptr %prev.i452, align 8
  %108 = ptrtoint ptr %urb_list to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %list, ptr %urb_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.urb, ptr %call156, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %urb_list, ptr %106, align 4
  br label %for.inc192

for.inc192:                                       ; preds = %if.end.i.i453, %if.then187.for.inc192_crit_edge, %if.end184.for.inc192_crit_edge
  %inc193 = add nuw i32 %i.1479, 1
  %111 = load i32, ptr @num_rcv_urbs, align 4
  %112 = load i32, ptr @num_snd_urbs, align 4
  %add131 = add i32 %112, %111
  %cmp132 = icmp ult i32 %inc193, %add131
  br i1 %cmp132, label %for.inc192.for.body134_crit_edge, label %for.inc192.for.end194_crit_edge

for.inc192.for.end194_crit_edge:                  ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end194

for.inc192.for.body134_crit_edge:                 ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body134

for.end194:                                       ; preds = %for.inc192.for.end194_crit_edge, %for.cond130.preheader.for.end194_crit_edge
  %cached_vpi = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 21
  %113 = ptrtoint ptr %cached_vpi to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -2, ptr %cached_vpi, align 4
  %cached_vci = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 20
  %114 = ptrtoint ptr %cached_vci to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -2, ptr %cached_vci, align 8
  %115 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %stride, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %116, i32 noundef 3264) #18
  %cell_buf = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 22
  %117 = ptrtoint ptr %cell_buf to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call9.i, ptr %cell_buf, align 16
  %tobool199.not = icmp eq ptr %call9.i, null
  br i1 %tobool199.not, label %for.end194.fail_unbind_crit_edge, label %if.end201

for.end194.fail_unbind_crit_edge:                 ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_unbind

if.end201:                                        ; preds = %for.end194
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 8
  %and203 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %land.lhs.true205, label %if.end201.if.else209_crit_edge

if.end201.if.else209_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else209

land.lhs.true205:                                 ; preds = %if.end201
  %heavy_init = getelementptr inbounds %struct.usbatm_driver, ptr %driver, i32 0, i32 2
  %120 = ptrtoint ptr %heavy_init to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %heavy_init, align 4
  %tobool206.not = icmp eq ptr %121, null
  br i1 %tobool206.not, label %land.lhs.true205.if.else209_crit_edge, label %if.then207

land.lhs.true205.if.else209_crit_edge:            ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else209

if.then207:                                       ; preds = %land.lhs.true205
  %122 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call9.i.i, align 128
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %call.i454 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @usbatm_do_heavy_init, ptr noundef nonnull %call9.i.i, i32 noundef -1, ptr noundef nonnull @.str.50, ptr noundef %125) #15
  %cmp.i.i455 = icmp ugt ptr %call.i454, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i455, label %do.end.i, label %if.end212.thread

do.end.i:                                         ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb_intf, align 32
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %call.i454 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %128) #19
  br label %if.end212

if.end212.thread:                                 ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #17
  %129 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i454, ptr %thread, align 4
  %call4.i = tail call i32 @wake_up_process(ptr noundef %call.i454) #15
  tail call void @wait_for_completion(ptr noundef %thread_started) #15
  br label %if.end216

if.else209:                                       ; preds = %land.lhs.true205.if.else209_crit_edge, %if.end201.if.else209_crit_edge
  tail call void @complete(ptr noundef %thread_exited) #15
  %call211 = tail call fastcc i32 @usbatm_atm_init(ptr noundef nonnull %call9.i.i)
  br label %if.end212

if.end212:                                        ; preds = %if.else209, %do.end.i
  %error.3 = phi i32 [ %call211, %if.else209 ], [ %128, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %cmp213 = icmp slt i32 %error.3, 0
  br i1 %cmp213, label %if.end212.fail_unbind_crit_edge, label %if.end212.if.end216_crit_edge

if.end212.if.end216_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end216

if.end212.fail_unbind_crit_edge:                  ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_unbind

if.end216:                                        ; preds = %if.end212.if.end216_crit_edge, %if.end212.thread
  %call217 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #15
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %130 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup242

fail_unbind:                                      ; preds = %if.end212.fail_unbind_crit_edge, %for.end194.fail_unbind_crit_edge, %if.end159.fail_unbind_crit_edge, %cond.end154.fail_unbind_crit_edge, %do.end86
  %error.4 = phi i32 [ -22, %do.end86 ], [ %error.3, %if.end212.fail_unbind_crit_edge ], [ -12, %for.end194.fail_unbind_crit_edge ], [ -12, %if.end159.fail_unbind_crit_edge ], [ -12, %cond.end154.fail_unbind_crit_edge ]
  %131 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call9.i.i, align 128
  %unbind = getelementptr inbounds %struct.usbatm_driver, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %unbind to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %unbind, align 4
  %tobool219.not = icmp eq ptr %134, null
  br i1 %tobool219.not, label %fail_unbind.fail_free_crit_edge, label %if.then220

fail_unbind.fail_free_crit_edge:                  ; preds = %fail_unbind
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_free

if.then220:                                       ; preds = %fail_unbind
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %134(ptr noundef nonnull %call9.i.i, ptr noundef %intf) #15
  br label %fail_free

fail_free:                                        ; preds = %if.then220, %fail_unbind.fail_free_crit_edge, %do.end
  %error.5 = phi i32 [ %call29, %do.end ], [ %error.4, %if.then220 ], [ %error.4, %fail_unbind.fail_free_crit_edge ]
  %cell_buf224 = getelementptr inbounds %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 22
  %135 = ptrtoint ptr %cell_buf224 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cell_buf224, align 16
  tail call void @kfree(ptr noundef %136) #15
  %137 = load i32, ptr @num_rcv_urbs, align 4
  %138 = load i32, ptr @num_snd_urbs, align 4
  %add226480 = sub i32 0, %137
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %add226480)
  %cmp227481.not = icmp eq i32 %138, %add226480
  br i1 %cmp227481.not, label %fail_free.for.end241_crit_edge, label %fail_free.for.body229_crit_edge

fail_free.for.body229_crit_edge:                  ; preds = %fail_free
  br label %for.body229

fail_free.for.end241_crit_edge:                   ; preds = %fail_free
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end241

for.body229:                                      ; preds = %if.end236.for.body229_crit_edge, %fail_free.for.body229_crit_edge
  %i.2482 = phi i32 [ %inc240, %if.end236.for.body229_crit_edge ], [ 0, %fail_free.for.body229_crit_edge ]
  %arrayidx231 = getelementptr %struct.usbatm_data, ptr %call9.i.i, i32 0, i32 24, i32 %i.2482
  %139 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx231, align 4
  %tobool232.not = icmp eq ptr %140, null
  br i1 %tobool232.not, label %for.body229.if.end236_crit_edge, label %if.then233

for.body229.if.end236_crit_edge:                  ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end236

if.then233:                                       ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #17
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %140, i32 0, i32 14
  %141 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %142) #15
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %for.body229.if.end236_crit_edge
  %143 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx231, align 4
  tail call void @usb_free_urb(ptr noundef %144) #15
  %inc240 = add nuw i32 %i.2482, 1
  %145 = load i32, ptr @num_rcv_urbs, align 4
  %146 = load i32, ptr @num_snd_urbs, align 4
  %add226 = add i32 %146, %145
  %cmp227 = icmp ult i32 %inc240, %add226
  br i1 %cmp227, label %if.end236.for.body229_crit_edge, label %if.end236.for.end241_crit_edge

if.end236.for.end241_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end241

if.end236.for.body229_crit_edge:                  ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body229

for.end241:                                       ; preds = %if.end236.for.end241_crit_edge, %fail_free.for.end241_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %cleanup242

cleanup242:                                       ; preds = %for.end241, %if.end216, %entry.cleanup242_crit_edge
  %retval.0 = phi i32 [ %error.5, %for.end241 ], [ 0, %if.end216 ], [ -12, %entry.cleanup242_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbatm_rx_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -396
  %lock.i = getelementptr i8, ptr %t, i32 -52
  %list.i = getelementptr i8, ptr %t, i32 -8
  %buf_usage43 = getelementptr i8, ptr %t, i32 296
  %stride1.i149 = getelementptr i8, ptr %t, i32 -64
  %cell_buf3.i152 = getelementptr i8, ptr %t, i32 292
  %packet_size2 = getelementptr i8, ptr %t, i32 -56
  %atm_dev = getelementptr i8, ptr %t, i32 -296
  br label %while.cond

while.cond:                                       ; preds = %if.end45.while.cond_crit_edge, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #15
  %0 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %list.i
  br i1 %cmp.i.not.i, label %usbatm_pop_urb.exit.thread, label %if.end.i

usbatm_pop_urb.exit.thread:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #15
  br label %cleanup

if.end.i:                                         ; preds = %while.cond
  %add.ptr.i = getelementptr i8, ptr %1, i32 -20
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.usbatm_pop_urb.exit_crit_edge

if.end.i.usbatm_pop_urb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_pop_urb.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %usbatm_pop_urb.exit

usbatm_pop_urb.exit:                              ; preds = %if.end.i.i.i, %if.end.i.usbatm_pop_urb.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #15
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %usbatm_pop_urb.exit.cleanup_crit_edge, label %while.body

usbatm_pop_urb.exit.cleanup_crit_edge:            ; preds = %usbatm_pop_urb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %usbatm_pop_urb.exit
  %pipe = getelementptr i8, ptr %1, i32 28
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %11)
  %cmp = icmp ult i32 %11, 1073741824
  br i1 %cmp, label %if.then, label %if.else36

if.then:                                          ; preds = %while.body
  %12 = ptrtoint ptr %packet_size2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %packet_size2, align 4
  %number_of_packets = getelementptr i8, ptr %1, i32 84
  %14 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3186 = icmp sgt i32 %15, 0
  br i1 %cmp3186, label %for.body.lr.ph, label %if.then.if.end45_crit_edge

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

for.body.lr.ph:                                   ; preds = %if.then
  %status27 = getelementptr i8, ptr %1, i32 36
  %transfer_buffer = getelementptr i8, ptr %1, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %merge_length.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %merge_length.2, %for.inc.for.body_crit_edge ]
  %merge_start.0187 = phi ptr [ null, %for.body.lr.ph ], [ %merge_start.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %add.ptr.i, i32 0, i32 29, i32 %i.0189
  %status = getelementptr %struct.urb, ptr %add.ptr.i, i32 0, i32 29, i32 %i.0189, i32 3
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %for.body
  %actual_length8 = getelementptr %struct.urb, ptr %add.ptr.i, i32 0, i32 29, i32 %i.0189, i32 2
  %18 = ptrtoint ptr %actual_length8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %merge_length.0188)
  %tobool9.not = icmp eq i32 %merge_length.0188, 0
  br i1 %tobool9.not, label %if.then10, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 %23
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then5.if.end_crit_edge
  %merge_start.1 = phi ptr [ %merge_start.0187, %if.then5.if.end_crit_edge ], [ %add.ptr13, %if.then10 ]
  %add = add i32 %19, %merge_length.0188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool14.not = icmp eq i32 %add, 0
  br i1 %tobool14.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp15 = icmp ult i32 %19, %13
  br i1 %cmp15, label %if.then16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %stride1.i149 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stride1.i149, align 4
  %26 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_usage43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %if.then16.if.end12.i_crit_edge, label %if.then.i

if.then16.if.end12.i_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then.i:                                        ; preds = %if.then16
  %28 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cell_buf3.i152, align 4
  %sub.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp4.not.i = icmp ult i32 %add, %sub.i
  %add.ptr9.i = getelementptr i8, ptr %29, i32 %27
  br i1 %cmp4.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = call ptr @memcpy(ptr %add.ptr9.i, ptr %merge_start.1, i32 %add)
  %add.i = add i32 %27, %add
  br label %for.inc.sink.split

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = call ptr @memcpy(ptr %add.ptr9.i, ptr %merge_start.1, i32 %sub.i)
  %add.ptr6.i = getelementptr i8, ptr %merge_start.1, i32 %sub.i
  %sub7.i = sub i32 %add, %sub.i
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %29) #15
  %32 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %buf_usage43, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %cleanup.i, %if.then16.if.end12.i_crit_edge
  %source.addr.1.i = phi ptr [ %add.ptr6.i, %cleanup.i ], [ %merge_start.1, %if.then16.if.end12.i_crit_edge ]
  %avail_data.addr.1.i = phi i32 [ %sub7.i, %cleanup.i ], [ %add, %if.then16.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %avail_data.addr.1.i, i32 %25)
  %cmp13.not62.i = icmp ult i32 %avail_data.addr.1.i, %25
  br i1 %cmp13.not62.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %avail_data.addr.264.i = phi i32 [ %sub14.i, %for.body.i.for.body.i_crit_edge ], [ %avail_data.addr.1.i, %if.end12.i.for.body.i_crit_edge ]
  %source.addr.263.i = phi ptr [ %add.ptr15.i, %for.body.i.for.body.i_crit_edge ], [ %source.addr.1.i, %if.end12.i.for.body.i_crit_edge ]
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %source.addr.263.i) #15
  %sub14.i = sub i32 %avail_data.addr.264.i, %25
  %add.ptr15.i = getelementptr i8, ptr %source.addr.263.i, i32 %25
  %cmp13.not.i = icmp ult i32 %sub14.i, %25
  br i1 %cmp13.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %source.addr.2.lcssa.i = phi ptr [ %source.addr.1.i, %if.end12.i.for.end.i_crit_edge ], [ %add.ptr15.i, %for.body.i.for.end.i_crit_edge ]
  %avail_data.addr.2.lcssa.i = phi i32 [ %avail_data.addr.1.i, %if.end12.i.for.end.i_crit_edge ], [ %sub14.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_data.addr.2.lcssa.i)
  %cmp16.not.i = icmp eq i32 %avail_data.addr.2.lcssa.i, 0
  br i1 %cmp16.not.i, label %for.end.i.for.inc_crit_edge, label %if.then17.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cell_buf3.i152, align 4
  %35 = call ptr @memcpy(ptr %34, ptr %source.addr.2.lcssa.i, i32 %avail_data.addr.2.lcssa.i)
  br label %for.inc.sink.split

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_rx_process.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_rx_process, %land.lhs.true23)) #15
          to label %do.end [label %land.lhs.true23], !srcloc !222

land.lhs.true23:                                  ; preds = %do.body
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_rx_process._rs, ptr noundef nonnull @.str.24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end_crit_edge, label %if.then26

land.lhs.true23.do.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %number, align 4
  %40 = ptrtoint ptr %status27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status27, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_rx_process.descriptor, ptr noundef nonnull @.str.25, i32 noundef %39, ptr noundef nonnull @.str.24, i32 noundef %41, i32 noundef %i.0189) #15
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true23.do.end_crit_edge, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %merge_length.0188)
  %tobool29.not = icmp eq i32 %merge_length.0188, 0
  br i1 %tobool29.not, label %do.end.for.inc.sink.split_crit_edge, label %if.then30

do.end.for.inc.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

if.then30:                                        ; preds = %do.end
  %42 = ptrtoint ptr %stride1.i149 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stride1.i149, align 4
  %44 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_usage43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i87 = icmp eq i32 %45, 0
  br i1 %cmp.not.i87, label %if.then30.if.end12.i101_crit_edge, label %if.then.i92

if.then30.if.end12.i101_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i101

if.then.i92:                                      ; preds = %if.then30
  %46 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cell_buf3.i152, align 4
  %sub.i89 = sub i32 %43, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %merge_length.0188, i32 %sub.i89)
  %cmp4.not.i90 = icmp ult i32 %merge_length.0188, %sub.i89
  %add.ptr9.i91 = getelementptr i8, ptr %47, i32 %45
  br i1 %cmp4.not.i90, label %cleanup.thread.i94, label %cleanup.i97

cleanup.thread.i94:                               ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #17
  %48 = call ptr @memcpy(ptr %add.ptr9.i91, ptr %merge_start.0187, i32 %merge_length.0188)
  br label %for.inc.sink.split

cleanup.i97:                                      ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #17
  %49 = call ptr @memcpy(ptr %add.ptr9.i91, ptr %merge_start.0187, i32 %sub.i89)
  %add.ptr6.i95 = getelementptr i8, ptr %merge_start.0187, i32 %sub.i89
  %sub7.i96 = sub i32 %merge_length.0188, %sub.i89
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %47) #15
  %50 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %buf_usage43, align 4
  br label %if.end12.i101

if.end12.i101:                                    ; preds = %cleanup.i97, %if.then30.if.end12.i101_crit_edge
  %source.addr.1.i98 = phi ptr [ %add.ptr6.i95, %cleanup.i97 ], [ %merge_start.0187, %if.then30.if.end12.i101_crit_edge ]
  %avail_data.addr.1.i99 = phi i32 [ %sub7.i96, %cleanup.i97 ], [ %merge_length.0188, %if.then30.if.end12.i101_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %avail_data.addr.1.i99, i32 %43)
  %cmp13.not62.i100 = icmp ult i32 %avail_data.addr.1.i99, %43
  br i1 %cmp13.not62.i100, label %if.end12.i101.for.end.i111_crit_edge, label %if.end12.i101.for.body.i107_crit_edge

if.end12.i101.for.body.i107_crit_edge:            ; preds = %if.end12.i101
  br label %for.body.i107

if.end12.i101.for.end.i111_crit_edge:             ; preds = %if.end12.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i111

for.body.i107:                                    ; preds = %for.body.i107.for.body.i107_crit_edge, %if.end12.i101.for.body.i107_crit_edge
  %avail_data.addr.264.i102 = phi i32 [ %sub14.i104, %for.body.i107.for.body.i107_crit_edge ], [ %avail_data.addr.1.i99, %if.end12.i101.for.body.i107_crit_edge ]
  %source.addr.263.i103 = phi ptr [ %add.ptr15.i105, %for.body.i107.for.body.i107_crit_edge ], [ %source.addr.1.i98, %if.end12.i101.for.body.i107_crit_edge ]
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %source.addr.263.i103) #15
  %sub14.i104 = sub i32 %avail_data.addr.264.i102, %43
  %add.ptr15.i105 = getelementptr i8, ptr %source.addr.263.i103, i32 %43
  %cmp13.not.i106 = icmp ult i32 %sub14.i104, %43
  br i1 %cmp13.not.i106, label %for.body.i107.for.end.i111_crit_edge, label %for.body.i107.for.body.i107_crit_edge

for.body.i107.for.body.i107_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i107

for.body.i107.for.end.i111_crit_edge:             ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i111

for.end.i111:                                     ; preds = %for.body.i107.for.end.i111_crit_edge, %if.end12.i101.for.end.i111_crit_edge
  %source.addr.2.lcssa.i108 = phi ptr [ %source.addr.1.i98, %if.end12.i101.for.end.i111_crit_edge ], [ %add.ptr15.i105, %for.body.i107.for.end.i111_crit_edge ]
  %avail_data.addr.2.lcssa.i109 = phi i32 [ %avail_data.addr.1.i99, %if.end12.i101.for.end.i111_crit_edge ], [ %sub14.i104, %for.body.i107.for.end.i111_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_data.addr.2.lcssa.i109)
  %cmp16.not.i110 = icmp eq i32 %avail_data.addr.2.lcssa.i109, 0
  br i1 %cmp16.not.i110, label %for.end.i111.for.inc.sink.split_crit_edge, label %if.then17.i113

for.end.i111.for.inc.sink.split_crit_edge:        ; preds = %for.end.i111
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

if.then17.i113:                                   ; preds = %for.end.i111
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cell_buf3.i152, align 4
  %53 = call ptr @memcpy(ptr %52, ptr %source.addr.2.lcssa.i108, i32 %avail_data.addr.2.lcssa.i109)
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then17.i113, %for.end.i111.for.inc.sink.split_crit_edge, %cleanup.thread.i94, %do.end.for.inc.sink.split_crit_edge, %if.then17.i, %cleanup.thread.i
  %add.sink.i.sink = phi i32 [ %add.i, %cleanup.thread.i ], [ %avail_data.addr.2.lcssa.i, %if.then17.i ], [ 0, %cleanup.thread.i94 ], [ 0, %if.then17.i113 ], [ 0, %for.end.i111.for.inc.sink.split_crit_edge ], [ 0, %do.end.for.inc.sink.split_crit_edge ]
  %merge_start.2.ph = phi ptr [ %merge_start.1, %cleanup.thread.i ], [ %merge_start.1, %if.then17.i ], [ %merge_start.0187, %cleanup.thread.i94 ], [ %merge_start.0187, %if.then17.i113 ], [ %merge_start.0187, %for.end.i111.for.inc.sink.split_crit_edge ], [ %merge_start.0187, %do.end.for.inc.sink.split_crit_edge ]
  %54 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.sink.i.sink, ptr %buf_usage43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.end.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %merge_start.2 = phi ptr [ %merge_start.1, %land.lhs.true.for.inc_crit_edge ], [ %merge_start.1, %if.end.for.inc_crit_edge ], [ %merge_start.1, %for.end.i.for.inc_crit_edge ], [ %merge_start.2.ph, %for.inc.sink.split ]
  %merge_length.2 = phi i32 [ %add, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ], [ 0, %for.end.i.for.inc_crit_edge ], [ 0, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %i.0189, 1
  %55 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %number_of_packets, align 4
  %cmp3 = icmp slt i32 %inc, %56
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %merge_length.2)
  %tobool33.not = icmp eq i32 %merge_length.2, 0
  br i1 %tobool33.not, label %for.end.if.end45_crit_edge, label %if.then34

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then34:                                        ; preds = %for.end
  %57 = ptrtoint ptr %stride1.i149 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stride1.i149, align 4
  %59 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_usage43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.not.i119 = icmp eq i32 %60, 0
  br i1 %cmp.not.i119, label %if.then34.if.end12.i133_crit_edge, label %if.then.i124

if.then34.if.end12.i133_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i133

if.then.i124:                                     ; preds = %if.then34
  %61 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cell_buf3.i152, align 4
  %sub.i121 = sub i32 %58, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %merge_length.2, i32 %sub.i121)
  %cmp4.not.i122 = icmp ult i32 %merge_length.2, %sub.i121
  %add.ptr9.i123 = getelementptr i8, ptr %62, i32 %60
  br i1 %cmp4.not.i122, label %cleanup.thread.i126, label %cleanup.i129

cleanup.thread.i126:                              ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #17
  %63 = call ptr @memcpy(ptr %add.ptr9.i123, ptr %merge_start.2, i32 %merge_length.2)
  %add.i125 = add i32 %60, %merge_length.2
  br label %if.end45.sink.split

cleanup.i129:                                     ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #17
  %64 = call ptr @memcpy(ptr %add.ptr9.i123, ptr %merge_start.2, i32 %sub.i121)
  %add.ptr6.i127 = getelementptr i8, ptr %merge_start.2, i32 %sub.i121
  %sub7.i128 = sub i32 %merge_length.2, %sub.i121
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %62) #15
  %65 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %buf_usage43, align 4
  br label %if.end12.i133

if.end12.i133:                                    ; preds = %cleanup.i129, %if.then34.if.end12.i133_crit_edge
  %source.addr.1.i130 = phi ptr [ %add.ptr6.i127, %cleanup.i129 ], [ %merge_start.2, %if.then34.if.end12.i133_crit_edge ]
  %avail_data.addr.1.i131 = phi i32 [ %sub7.i128, %cleanup.i129 ], [ %merge_length.2, %if.then34.if.end12.i133_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %avail_data.addr.1.i131, i32 %58)
  %cmp13.not62.i132 = icmp ult i32 %avail_data.addr.1.i131, %58
  br i1 %cmp13.not62.i132, label %if.end12.i133.for.end.i143_crit_edge, label %if.end12.i133.for.body.i139_crit_edge

if.end12.i133.for.body.i139_crit_edge:            ; preds = %if.end12.i133
  br label %for.body.i139

if.end12.i133.for.end.i143_crit_edge:             ; preds = %if.end12.i133
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i143

for.body.i139:                                    ; preds = %for.body.i139.for.body.i139_crit_edge, %if.end12.i133.for.body.i139_crit_edge
  %avail_data.addr.264.i134 = phi i32 [ %sub14.i136, %for.body.i139.for.body.i139_crit_edge ], [ %avail_data.addr.1.i131, %if.end12.i133.for.body.i139_crit_edge ]
  %source.addr.263.i135 = phi ptr [ %add.ptr15.i137, %for.body.i139.for.body.i139_crit_edge ], [ %source.addr.1.i130, %if.end12.i133.for.body.i139_crit_edge ]
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %source.addr.263.i135) #15
  %sub14.i136 = sub i32 %avail_data.addr.264.i134, %58
  %add.ptr15.i137 = getelementptr i8, ptr %source.addr.263.i135, i32 %58
  %cmp13.not.i138 = icmp ult i32 %sub14.i136, %58
  br i1 %cmp13.not.i138, label %for.body.i139.for.end.i143_crit_edge, label %for.body.i139.for.body.i139_crit_edge

for.body.i139.for.body.i139_crit_edge:            ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i139

for.body.i139.for.end.i143_crit_edge:             ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i143

for.end.i143:                                     ; preds = %for.body.i139.for.end.i143_crit_edge, %if.end12.i133.for.end.i143_crit_edge
  %source.addr.2.lcssa.i140 = phi ptr [ %source.addr.1.i130, %if.end12.i133.for.end.i143_crit_edge ], [ %add.ptr15.i137, %for.body.i139.for.end.i143_crit_edge ]
  %avail_data.addr.2.lcssa.i141 = phi i32 [ %avail_data.addr.1.i131, %if.end12.i133.for.end.i143_crit_edge ], [ %sub14.i136, %for.body.i139.for.end.i143_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_data.addr.2.lcssa.i141)
  %cmp16.not.i142 = icmp eq i32 %avail_data.addr.2.lcssa.i141, 0
  br i1 %cmp16.not.i142, label %for.end.i143.if.end45_crit_edge, label %if.then17.i145

for.end.i143.if.end45_crit_edge:                  ; preds = %for.end.i143
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then17.i145:                                   ; preds = %for.end.i143
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cell_buf3.i152, align 4
  %68 = call ptr @memcpy(ptr %67, ptr %source.addr.2.lcssa.i140, i32 %avail_data.addr.2.lcssa.i141)
  br label %if.end45.sink.split

if.else36:                                        ; preds = %while.body
  %status37 = getelementptr i8, ptr %1, i32 36
  %69 = ptrtoint ptr %status37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool38.not = icmp eq i32 %70, 0
  br i1 %tobool38.not, label %if.then39, label %if.else36.if.end45.sink.split_crit_edge

if.else36.if.end45.sink.split_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45.sink.split

if.then39:                                        ; preds = %if.else36
  %transfer_buffer40 = getelementptr i8, ptr %1, i32 44
  %71 = ptrtoint ptr %transfer_buffer40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transfer_buffer40, align 4
  %actual_length41 = getelementptr i8, ptr %1, i32 68
  %73 = ptrtoint ptr %actual_length41 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %actual_length41, align 4
  %75 = ptrtoint ptr %stride1.i149 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %stride1.i149, align 4
  %77 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_usage43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not.i151 = icmp eq i32 %78, 0
  br i1 %cmp.not.i151, label %if.then39.if.end12.i165_crit_edge, label %if.then.i156

if.then39.if.end12.i165_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i165

if.then.i156:                                     ; preds = %if.then39
  %79 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cell_buf3.i152, align 4
  %sub.i153 = sub i32 %76, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %sub.i153)
  %cmp4.not.i154 = icmp ult i32 %74, %sub.i153
  %add.ptr9.i155 = getelementptr i8, ptr %80, i32 %78
  br i1 %cmp4.not.i154, label %cleanup.thread.i158, label %cleanup.i161

cleanup.thread.i158:                              ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #17
  %81 = call ptr @memcpy(ptr %add.ptr9.i155, ptr %72, i32 %74)
  %add.i157 = add i32 %78, %74
  br label %if.end45.sink.split

cleanup.i161:                                     ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #17
  %82 = call ptr @memcpy(ptr %add.ptr9.i155, ptr %72, i32 %sub.i153)
  %add.ptr6.i159 = getelementptr i8, ptr %72, i32 %sub.i153
  %sub7.i160 = sub i32 %74, %sub.i153
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %80) #15
  %83 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %buf_usage43, align 4
  br label %if.end12.i165

if.end12.i165:                                    ; preds = %cleanup.i161, %if.then39.if.end12.i165_crit_edge
  %source.addr.1.i162 = phi ptr [ %add.ptr6.i159, %cleanup.i161 ], [ %72, %if.then39.if.end12.i165_crit_edge ]
  %avail_data.addr.1.i163 = phi i32 [ %sub7.i160, %cleanup.i161 ], [ %74, %if.then39.if.end12.i165_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %avail_data.addr.1.i163, i32 %76)
  %cmp13.not62.i164 = icmp ult i32 %avail_data.addr.1.i163, %76
  br i1 %cmp13.not62.i164, label %if.end12.i165.for.end.i175_crit_edge, label %if.end12.i165.for.body.i171_crit_edge

if.end12.i165.for.body.i171_crit_edge:            ; preds = %if.end12.i165
  br label %for.body.i171

if.end12.i165.for.end.i175_crit_edge:             ; preds = %if.end12.i165
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i175

for.body.i171:                                    ; preds = %for.body.i171.for.body.i171_crit_edge, %if.end12.i165.for.body.i171_crit_edge
  %avail_data.addr.264.i166 = phi i32 [ %sub14.i168, %for.body.i171.for.body.i171_crit_edge ], [ %avail_data.addr.1.i163, %if.end12.i165.for.body.i171_crit_edge ]
  %source.addr.263.i167 = phi ptr [ %add.ptr15.i169, %for.body.i171.for.body.i171_crit_edge ], [ %source.addr.1.i162, %if.end12.i165.for.body.i171_crit_edge ]
  tail call fastcc void @usbatm_extract_one_cell(ptr noundef %add.ptr, ptr noundef %source.addr.263.i167) #15
  %sub14.i168 = sub i32 %avail_data.addr.264.i166, %76
  %add.ptr15.i169 = getelementptr i8, ptr %source.addr.263.i167, i32 %76
  %cmp13.not.i170 = icmp ult i32 %sub14.i168, %76
  br i1 %cmp13.not.i170, label %for.body.i171.for.end.i175_crit_edge, label %for.body.i171.for.body.i171_crit_edge

for.body.i171.for.body.i171_crit_edge:            ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i171

for.body.i171.for.end.i175_crit_edge:             ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i175

for.end.i175:                                     ; preds = %for.body.i171.for.end.i175_crit_edge, %if.end12.i165.for.end.i175_crit_edge
  %source.addr.2.lcssa.i172 = phi ptr [ %source.addr.1.i162, %if.end12.i165.for.end.i175_crit_edge ], [ %add.ptr15.i169, %for.body.i171.for.end.i175_crit_edge ]
  %avail_data.addr.2.lcssa.i173 = phi i32 [ %avail_data.addr.1.i163, %if.end12.i165.for.end.i175_crit_edge ], [ %sub14.i168, %for.body.i171.for.end.i175_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail_data.addr.2.lcssa.i173)
  %cmp16.not.i174 = icmp eq i32 %avail_data.addr.2.lcssa.i173, 0
  br i1 %cmp16.not.i174, label %for.end.i175.if.end45_crit_edge, label %if.then17.i177

for.end.i175.if.end45_crit_edge:                  ; preds = %for.end.i175
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then17.i177:                                   ; preds = %for.end.i175
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %cell_buf3.i152 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cell_buf3.i152, align 4
  %86 = call ptr @memcpy(ptr %85, ptr %source.addr.2.lcssa.i172, i32 %avail_data.addr.2.lcssa.i173)
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.then17.i177, %cleanup.thread.i158, %if.else36.if.end45.sink.split_crit_edge, %if.then17.i145, %cleanup.thread.i126
  %add.sink.i178.sink = phi i32 [ %add.i125, %cleanup.thread.i126 ], [ %avail_data.addr.2.lcssa.i141, %if.then17.i145 ], [ %add.i157, %cleanup.thread.i158 ], [ %avail_data.addr.2.lcssa.i173, %if.then17.i177 ], [ 0, %if.else36.if.end45.sink.split_crit_edge ]
  %87 = ptrtoint ptr %buf_usage43 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.sink.i178.sink, ptr %buf_usage43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %for.end.i175.if.end45_crit_edge, %for.end.i143.if.end45_crit_edge, %for.end.if.end45_crit_edge, %if.then.if.end45_crit_edge
  %call46 = tail call fastcc i32 @usbatm_submit_urb(ptr noundef nonnull %add.ptr.i)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.while.cond_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end45.while.cond_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %usbatm_pop_urb.exit.cleanup_crit_edge, %usbatm_pop_urb.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbatm_tx_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %current_skb = getelementptr i8, ptr %t, i32 132
  %0 = ptrtoint ptr %current_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_skb, align 4
  %buf_size1 = getelementptr i8, ptr %t, i32 -60
  %2 = ptrtoint ptr %buf_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_size1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.lr.ph

if.end:                                           ; preds = %entry
  %sndqueue = getelementptr i8, ptr %t, i32 76
  %call = tail call ptr @skb_dequeue(ptr noundef %sndqueue) #15
  %tobool2.not67 = icmp eq ptr %call, null
  br i1 %tobool2.not67, label %if.end.while.end_crit_edge, label %if.end.while.body.lr.ph_crit_edge

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %skb.079 = phi ptr [ %call, %if.end.while.body.lr.ph_crit_edge ], [ %1, %entry.while.body.lr.ph_crit_edge ]
  %lock.i = getelementptr i8, ptr %t, i32 -52
  %list.i = getelementptr i8, ptr %t, i32 -8
  %stride2.i = getelementptr i8, ptr %t, i32 -64
  %sndqueue18 = getelementptr i8, ptr %t, i32 76
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %buffer.072 = phi ptr [ null, %while.body.lr.ph ], [ %buffer.1, %if.end30.while.body_crit_edge ]
  %bytes_written.071 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end30.while.body_crit_edge ]
  %urb.070 = phi ptr [ null, %while.body.lr.ph ], [ %urb.2, %if.end30.while.body_crit_edge ]
  %skb.168 = phi ptr [ %skb.079, %while.body.lr.ph ], [ %skb.2, %if.end30.while.body_crit_edge ]
  %tobool3.not = icmp eq ptr %urb.070, null
  br i1 %tobool3.not, label %if.then4, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then4:                                         ; preds = %while.body
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #15
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %list.i
  br i1 %cmp.i.not.i, label %usbatm_pop_urb.exit.thread, label %if.end.i

usbatm_pop_urb.exit.thread:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #15
  br label %while.end

if.end.i:                                         ; preds = %if.then4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -20
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.usbatm_pop_urb.exit_crit_edge

if.end.i.usbatm_pop_urb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_pop_urb.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %usbatm_pop_urb.exit

usbatm_pop_urb.exit:                              ; preds = %if.end.i.i.i, %if.end.i.usbatm_pop_urb.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #15
  %tobool7.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool7.not, label %usbatm_pop_urb.exit.while.end_crit_edge, label %if.end9

usbatm_pop_urb.exit.while.end_crit_edge:          ; preds = %usbatm_pop_urb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end9:                                          ; preds = %usbatm_pop_urb.exit
  %transfer_buffer = getelementptr i8, ptr %5, i32 44
  %14 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer, align 4
  %status = getelementptr i8, ptr %5, i32 36
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %17)
  %cmp = icmp eq i32 %17, -11
  br i1 %cmp, label %cond.true, label %if.end9.if.end10_crit_edge

if.end9.if.end10_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %transfer_buffer_length = getelementptr i8, ptr %5, i32 64
  %18 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transfer_buffer_length, align 4
  br label %if.end10

if.end10:                                         ; preds = %cond.true, %if.end9.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %urb.1 = phi ptr [ %urb.070, %while.body.if.end10_crit_edge ], [ %add.ptr.i, %if.end9.if.end10_crit_edge ], [ %add.ptr.i, %cond.true ]
  %bytes_written.1 = phi i32 [ %bytes_written.071, %while.body.if.end10_crit_edge ], [ 0, %if.end9.if.end10_crit_edge ], [ %19, %cond.true ]
  %buffer.1 = phi ptr [ %buffer.072, %while.body.if.end10_crit_edge ], [ %15, %if.end9.if.end10_crit_edge ], [ %15, %cond.true ]
  %sub = sub i32 %3, %bytes_written.1
  %20 = ptrtoint ptr %stride2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stride2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bytes_written.1)
  %cmp119.not.i = icmp eq i32 %3, %bytes_written.1
  br i1 %cmp119.not.i, label %if.end10.usbatm_write_cells.exit_crit_edge, label %land.rhs.lr.ph.i

if.end10.usbatm_write_cells.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_write_cells.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end10
  %add.ptr11 = getelementptr i8, ptr %buffer.1, i32 %bytes_written.1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 3, i32 12
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 6
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %23, i32 0, i32 2
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %23, i32 0, i32 3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 19
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 7
  %crc57.i = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 3, i32 16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %target.addr.0121.i = phi ptr [ %add.ptr11, %land.rhs.lr.ph.i ], [ %add.ptr63.i, %cleanup.i.land.rhs.i_crit_edge ]
  %bytes_written.0120.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %cleanup.i.land.rhs.i_crit_edge ]
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %land.rhs.i.usbatm_write_cells.exit_crit_edge, label %for.body.i

land.rhs.i.usbatm_write_cells.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_write_cells.exit

for.body.i:                                       ; preds = %land.rhs.i
  %26 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len3.i, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 48) #15
  %sub.i = sub nuw nsw i32 48, %28
  %29 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vpi.i, align 4
  %31 = lshr i16 %30, 4
  %conv5.i = trunc i16 %31 to i8
  %32 = ptrtoint ptr %target.addr.0121.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv5.i, ptr %target.addr.0121.i, align 1
  %33 = load i16, ptr %vpi.i, align 4
  %conv7.i = sext i16 %33 to i32
  %shl.i = shl nsw i32 %conv7.i, 4
  %34 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vci.i, align 8
  %36 = lshr i32 %35, 12
  %or.i = or i32 %shl.i, %36
  %conv9.i = trunc i32 %or.i to i8
  %arrayidx10.i = getelementptr i8, ptr %target.addr.0121.i, i32 1
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %38 = load i32, ptr %vci.i, align 8
  %39 = lshr i32 %38, 4
  %conv13.i = trunc i32 %39 to i8
  %arrayidx14.i = getelementptr i8, ptr %target.addr.0121.i, i32 2
  %40 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv13.i, ptr %arrayidx14.i, align 1
  %41 = load i32, ptr %vci.i, align 8
  %.tr.i = trunc i32 %41 to i8
  %conv17.i = shl i8 %.tr.i, 4
  %arrayidx18.i = getelementptr i8, ptr %target.addr.0121.i, i32 3
  %42 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %target.addr.0121.i, i32 4
  %43 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -20, ptr %arrayidx19.i, align 1
  %add.ptr.i58 = getelementptr i8, ptr %target.addr.0121.i, i32 5
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %46 = call ptr @memcpy(ptr %add.ptr.i58, ptr %45, i32 %28)
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i58, i32 %28
  %47 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len3.i, align 4
  %sub.i.i = sub i32 %48, %28
  store i32 %sub.i.i, ptr %len3.i, align 4
  %49 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %50)
  %cmp.i.i = icmp ult i32 %sub.i.i, %50
  br i1 %cmp.i.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !223

do.body4.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #15, !srcloc !224
  unreachable

__skb_pull.exit.i:                                ; preds = %for.body.i
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %28
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %27)
  %tobool21.not.i = icmp ugt i32 %27, 47
  br i1 %tobool21.not.i, label %__skb_pull.exit.i.cleanup.i_crit_edge, label %if.end.i59

__skb_pull.exit.i.cleanup.i_crit_edge:            ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end.i59:                                       ; preds = %__skb_pull.exit.i
  %53 = call ptr @memset(ptr %add.ptr20.i, i32 0, i32 %sub.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %28)
  %cmp22.i = icmp ult i32 %28, 41
  br i1 %cmp22.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i, align 4
  %shr28.i = lshr i32 %55, 8
  %conv29.i = trunc i32 %shr28.i to i8
  %arrayidx30.i = getelementptr i8, ptr %target.addr.0121.i, i32 47
  %56 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv29.i, ptr %arrayidx30.i, align 1
  %57 = load i32, ptr %len.i, align 4
  %conv32.i = trunc i32 %57 to i8
  %arrayidx33.i = getelementptr i8, ptr %target.addr.0121.i, i32 48
  %58 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv32.i, ptr %arrayidx33.i, align 1
  %59 = ptrtoint ptr %crc57.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crc57.i, align 4
  %sub34.i = sub nuw nsw i32 44, %28
  %call35.i = tail call i32 @crc32_be(i32 noundef %60, ptr noundef %add.ptr20.i, i32 noundef %sub34.i) #20
  %neg.i = xor i32 %call35.i, -1
  %61 = ptrtoint ptr %crc57.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %neg.i, ptr %crc57.i, align 4
  %shr38.i = lshr i32 %neg.i, 24
  %conv39.i = trunc i32 %shr38.i to i8
  %arrayidx40.i = getelementptr i8, ptr %target.addr.0121.i, i32 49
  %62 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv39.i, ptr %arrayidx40.i, align 1
  %63 = load i32, ptr %crc57.i, align 4
  %shr42.i = lshr i32 %63, 16
  %conv43.i = trunc i32 %shr42.i to i8
  %arrayidx44.i = getelementptr i8, ptr %target.addr.0121.i, i32 50
  %64 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv43.i, ptr %arrayidx44.i, align 1
  %65 = load i32, ptr %crc57.i, align 4
  %shr46.i = lshr i32 %65, 8
  %conv47.i = trunc i32 %shr46.i to i8
  %arrayidx48.i = getelementptr i8, ptr %target.addr.0121.i, i32 51
  %66 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv47.i, ptr %arrayidx48.i, align 1
  %67 = load i32, ptr %crc57.i, align 4
  %conv50.i = trunc i32 %67 to i8
  %arrayidx51.i = getelementptr i8, ptr %target.addr.0121.i, i32 52
  %68 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv50.i, ptr %arrayidx51.i, align 1
  %69 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx18.i, align 1
  %71 = or i8 %70, 2
  store i8 %71, ptr %arrayidx18.i, align 1
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %len.i, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %crc57.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %crc57.i, align 4
  %call58.i = tail call i32 @crc32_be(i32 noundef %74, ptr noundef %add.ptr20.i, i32 noundef %sub.i) #20
  %75 = ptrtoint ptr %crc57.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call58.i, ptr %crc57.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then24.i, %__skb_pull.exit.i.cleanup.i_crit_edge
  %add.i = add i32 %bytes_written.0120.i, %21
  %add.ptr63.i = getelementptr i8, ptr %target.addr.0121.i, i32 %21
  %cmp.i = icmp ult i32 %add.i, %sub
  br i1 %cmp.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.usbatm_write_cells.exit_crit_edge

cleanup.i.usbatm_write_cells.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_write_cells.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

usbatm_write_cells.exit:                          ; preds = %cleanup.i.usbatm_write_cells.exit_crit_edge, %land.rhs.i.usbatm_write_cells.exit_crit_edge, %if.end10.usbatm_write_cells.exit_crit_edge
  %bytes_written.0.lcssa.i = phi i32 [ 0, %if.end10.usbatm_write_cells.exit_crit_edge ], [ %bytes_written.0120.i, %land.rhs.i.usbatm_write_cells.exit_crit_edge ], [ %add.i, %cleanup.i.usbatm_write_cells.exit_crit_edge ]
  %add = add i32 %bytes_written.0.lcssa.i, %bytes_written.1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 3, i32 12
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool13.not = icmp eq i32 %77, 0
  br i1 %tobool13.not, label %if.then14, label %usbatm_write_cells.exit.if.end20_crit_edge

usbatm_write_cells.exit.if.end20_crit_edge:       ; preds = %usbatm_write_cells.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then14:                                        ; preds = %usbatm_write_cells.exit
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.168, i32 0, i32 3
  %78 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cb, align 8
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pop.i, align 4
  %tobool.not.i60 = icmp eq ptr %81, null
  br i1 %tobool.not.i60, label %if.else.i61, label %if.then.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %81(ptr noundef %79, ptr noundef nonnull %skb.168) #15
  br label %usbatm_pop.exit

if.else.i61:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.168, i32 noundef 1) #15
  br label %usbatm_pop.exit

usbatm_pop.exit:                                  ; preds = %if.else.i61, %if.then.i
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %79, i32 0, i32 16
  %82 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stats, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %83, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %83, i32 1, i32 3, i32 1) #15
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #15, !srcloc !225
  %call19 = tail call ptr @skb_dequeue(ptr noundef %sndqueue18) #15
  br label %if.end20

if.end20:                                         ; preds = %usbatm_pop.exit, %usbatm_write_cells.exit.if.end20_crit_edge
  %skb.2 = phi ptr [ %skb.168, %usbatm_write_cells.exit.if.end20_crit_edge ], [ %call19, %usbatm_pop.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp21 = icmp eq i32 %add, %3
  br i1 %cmp21, label %if.end20.if.then24_crit_edge, label %lor.lhs.false

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end20
  %tobool22.not = icmp ne ptr %skb.2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool23.not = icmp eq i32 %add, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  %transfer_buffer_length25 = getelementptr inbounds %struct.urb, ptr %urb.1, i32 0, i32 19
  %85 = ptrtoint ptr %transfer_buffer_length25 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add, ptr %transfer_buffer_length25, align 4
  %call26 = tail call fastcc i32 @usbatm_submit_urb(ptr noundef %urb.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then24.while.end_crit_edge

if.then24.while.end_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge
  %urb.2 = phi ptr [ %urb.1, %lor.lhs.false.if.end30_crit_edge ], [ null, %if.then24.if.end30_crit_edge ]
  %tobool2.not = icmp eq ptr %skb.2, null
  br i1 %tobool2.not, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %if.then24.while.end_crit_edge, %usbatm_pop_urb.exit.while.end_crit_edge, %usbatm_pop_urb.exit.thread, %if.end.while.end_crit_edge
  %skb.3 = phi ptr [ %skb.168, %usbatm_pop_urb.exit.thread ], [ null, %if.end.while.end_crit_edge ], [ null, %if.end30.while.end_crit_edge ], [ %skb.168, %usbatm_pop_urb.exit.while.end_crit_edge ], [ %skb.2, %if.then24.while.end_crit_edge ]
  %86 = ptrtoint ptr %current_skb to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %skb.3, ptr %current_skb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbatm_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %lock = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %urb_list = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5
  %list = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %urb_list, ptr noundef %5, ptr noundef %list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %urb_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %urb_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %urb_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %urb_list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %list_add_tail.exit.if.else_crit_edge, label %land.lhs.true, !prof !226

list_add_tail.exit.if.else_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %usbatm = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usbatm, align 4
  %flags9 = getelementptr inbounds %struct.usbatm_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags9, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %3)
  %cmp11.not = icmp eq i32 %3, -84
  %or.cond = select i1 %tobool10.not, i1 %cmp11.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %3)
  %cmp13 = icmp eq i32 %3, -108
  br i1 %cmp13, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call16 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.usbatm_complete) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.if.end25_crit_edge, label %do.end21

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbatm, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %19, ptr noundef nonnull @__func__.usbatm_complete, ptr noundef %urb, i32 noundef %3) #19
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %if.end.if.end25_crit_edge
  %delay = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 10
  %call27 = tail call i32 @mod_timer(ptr noundef %delay, i32 noundef %add) #15
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %list_add_tail.exit.if.else_crit_edge
  %state.i = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 6, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %tasklet = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else.cleanup_crit_edge, %if.end25, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbatm_atm_init(ptr noundef %instance) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_name = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 2
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 5
  %0 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %call = tail call ptr @atm_dev_register(ptr noundef %driver_name, ptr noundef %dev, ptr noundef nonnull @usbatm_atm_devops, i32 noundef -1, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %atm_dev3 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %4 = ptrtoint ptr %atm_dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %atm_dev3, align 4
  %ci_range = getelementptr inbounds %struct.atm_dev, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %ci_range to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ci_range, align 2
  %vci_bits = getelementptr inbounds %struct.atm_dev, ptr %call, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %vci_bits to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %vci_bits, align 1
  %signal = getelementptr inbounds %struct.atm_dev, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %signal, align 8
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 301, ptr %link_rate, align 4
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instance, align 4
  %atm_start = getelementptr inbounds %struct.usbatm_driver, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %atm_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atm_start, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 %12(ptr noundef %instance, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %atm_dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %atm_dev3, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %16, ptr noundef nonnull @.str.54, i32 noundef %call8) #19
  %17 = ptrtoint ptr %atm_dev3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %atm_dev3, align 4
  tail call void @atm_dev_deregister(ptr noundef nonnull %call) #15
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %refcount.i = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !227
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !223

if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end15
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.usbatm_get_instance.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !226

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.usbatm_get_instance.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_get_instance.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %usbatm_get_instance.exit

usbatm_get_instance.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.usbatm_get_instance.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !228
  tail call void @arm_heavy_mb() #15
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %instance, ptr %dev_data, align 8
  %21 = load i32, ptr @num_rcv_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1946.not = icmp eq i32 %21, 0
  br i1 %cmp1946.not, label %usbatm_get_instance.exit.cleanup_crit_edge, label %usbatm_get_instance.exit.for.body_crit_edge

usbatm_get_instance.exit.for.body_crit_edge:      ; preds = %usbatm_get_instance.exit
  br label %for.body

usbatm_get_instance.exit.cleanup_crit_edge:       ; preds = %usbatm_get_instance.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %usbatm_get_instance.exit.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %usbatm_get_instance.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbatm_data, ptr %instance, i32 0, i32 24, i32 %i.047
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call fastcc i32 @usbatm_submit_urb(ptr noundef %23)
  %inc = add nuw i32 %i.047, 1
  %24 = load i32, ptr @num_rcv_urbs, align 4
  %cmp19 = icmp ult i32 %inc, %24
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %usbatm_get_instance.exit.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ -1, %do.end ], [ 0, %usbatm_get_instance.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbatm_usb_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_usb_disconnect.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_usb_disconnect, %if.then6)) #15
          to label %cleanup [label %if.then6], !srcloc !222

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbatm_usb_disconnect.__UNIQUE_ID_ddebug483, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %serialize = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #15
  %disconnected = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %disconnected to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %disconnected, align 4
  %thread = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end7.if.end11_crit_edge, label %if.then8

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @send_sig(i32 noundef 15, ptr noundef nonnull %5, i32 noundef 1) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end7.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %serialize) #15
  %thread_exited = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 13
  tail call void @wait_for_completion(ptr noundef %thread_exited) #15
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #15
  %vcc_list = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %vcc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %vcc_data.0134 = load ptr, ptr %vcc_list, align 4
  %cmp16.not135 = icmp eq ptr %vcc_data.0134, %vcc_list
  br i1 %cmp16.not135, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11.for.body_crit_edge
  %vcc_data.0136 = phi ptr [ %vcc_data.0, %for.body.for.body_crit_edge ], [ %vcc_data.0134, %if.end11.for.body_crit_edge ]
  %vcc = getelementptr inbounds %struct.usbatm_vcc_data, ptr %vcc_data.0136, i32 0, i32 3
  %7 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vcc, align 4
  tail call void @vcc_release_async(ptr noundef %8, i32 noundef -32) #15
  %9 = ptrtoint ptr %vcc_data.0136 to i32
  call void @__asan_load4_noabort(i32 %9)
  %vcc_data.0 = load ptr, ptr %vcc_data.0136, align 4
  %cmp16.not = icmp eq ptr %vcc_data.0, %vcc_list
  br i1 %cmp16.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %serialize) #15
  %tasklet = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 15, i32 6
  %count.i.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 15, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !230
  %tasklet25 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 16, i32 6
  %count.i.i128 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 16, i32 6, i32 2
  %call.i.i.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i128, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i128, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i128, ptr %count.i.i128, i32 1, ptr elementtype(i32) %count.i.i128) #15, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet25) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !230
  %12 = load i32, ptr @num_rcv_urbs, align 4
  %13 = load i32, ptr @num_snd_urbs, align 4
  %add137 = sub i32 0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add137)
  %cmp27138.not = icmp eq i32 %13, %add137
  br i1 %cmp27138.not, label %for.end.for.end30_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end30

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %i.0139 = phi i32 [ %inc, %for.body28.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %arrayidx = getelementptr %struct.usbatm_data, ptr %1, i32 0, i32 24, i32 %i.0139
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #15
  %inc = add nuw i32 %i.0139, 1
  %16 = load i32, ptr @num_rcv_urbs, align 4
  %17 = load i32, ptr @num_snd_urbs, align 4
  %add = add i32 %17, %16
  %cmp27 = icmp ult i32 %inc, %add
  br i1 %cmp27, label %for.body28.for.body28_crit_edge, label %for.body28.for.end30_crit_edge

for.body28.for.end30_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end30

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body28

for.end30:                                        ; preds = %for.body28.for.end30_crit_edge, %for.end.for.end30_crit_edge
  %delay = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 15, i32 7
  %call32 = tail call i32 @del_timer_sync(ptr noundef %delay) #15
  %delay34 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 16, i32 7
  %call35 = tail call i32 @del_timer_sync(ptr noundef %delay34) #15
  %list37 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 15, i32 5
  %18 = ptrtoint ptr %list37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list37, ptr %list37, align 4
  %prev.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 15, i32 5, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list37, ptr %prev.i, align 4
  %list39 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 16, i32 5
  %20 = ptrtoint ptr %list39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list39, ptr %list39, align 4
  %prev.i130 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 16, i32 5, i32 1
  %21 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list39, ptr %prev.i130, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  %call.i.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i128, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i128, i32 1, i32 3, i32 1) #15
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i128, ptr %count.i.i128, i32 1, ptr elementtype(i32) %count.i.i128) #15, !srcloc !232
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %atm_dev, align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %for.end30.if.end50_crit_edge, label %land.lhs.true

for.end30.if.end50_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

land.lhs.true:                                    ; preds = %for.end30
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %atm_stop = getelementptr inbounds %struct.usbatm_driver, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %atm_stop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %atm_stop, align 4
  %tobool45.not = icmp eq ptr %29, null
  br i1 %tobool45.not, label %land.lhs.true.if.end50_crit_edge, label %if.then46

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %29(ptr noundef nonnull %1, ptr noundef nonnull %25) #15
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %land.lhs.true.if.end50_crit_edge, %for.end30.if.end50_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %unbind = getelementptr inbounds %struct.usbatm_driver, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %unbind to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unbind, align 4
  %tobool52.not = icmp eq ptr %33, null
  br i1 %tobool52.not, label %if.end50.if.end56_crit_edge, label %if.then53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %33(ptr noundef nonnull %1, ptr noundef %intf) #15
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %driver_data, align 4
  %35 = load i32, ptr @num_rcv_urbs, align 4
  %36 = load i32, ptr @num_snd_urbs, align 4
  %add58140 = sub i32 0, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add58140)
  %cmp59141.not = icmp eq i32 %36, %add58140
  br i1 %cmp59141.not, label %if.end56.for.end67_crit_edge, label %if.end56.for.body60_crit_edge

if.end56.for.body60_crit_edge:                    ; preds = %if.end56
  br label %for.body60

if.end56.for.end67_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %if.end56.for.body60_crit_edge
  %i.1142 = phi i32 [ %inc66, %for.body60.for.body60_crit_edge ], [ 0, %if.end56.for.body60_crit_edge ]
  %arrayidx62 = getelementptr %struct.usbatm_data, ptr %1, i32 0, i32 24, i32 %i.1142
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx62, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %40) #15
  %41 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx62, align 4
  tail call void @usb_free_urb(ptr noundef %42) #15
  %inc66 = add nuw i32 %i.1142, 1
  %43 = load i32, ptr @num_rcv_urbs, align 4
  %44 = load i32, ptr @num_snd_urbs, align 4
  %add58 = add i32 %44, %43
  %cmp59 = icmp ult i32 %inc66, %add58
  br i1 %cmp59, label %for.body60.for.body60_crit_edge, label %for.body60.for.end67_crit_edge

for.body60.for.end67_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body60

for.end67:                                        ; preds = %for.body60.for.end67_crit_edge, %if.end56.for.end67_crit_edge
  %cell_buf = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 22
  %45 = ptrtoint ptr %cell_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cell_buf, align 4
  tail call void @kfree(ptr noundef %46) #15
  %47 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %atm_dev, align 4
  %tobool69.not = icmp eq ptr %48, null
  br i1 %tobool69.not, label %for.end67.if.end73_crit_edge, label %if.then70

for.end67.if.end73_crit_edge:                     ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.then70:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @atm_dev_deregister(ptr noundef nonnull %48) #15
  %49 = ptrtoint ptr %atm_dev to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %atm_dev, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %for.end67.if.end73_crit_edge
  tail call fastcc void @usbatm_put_instance(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_release_async(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbatm_put_instance(ptr noundef %instance) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #15, !srcloc !234
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !226

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !235
  %tasklet.i.i = getelementptr %struct.usbatm_data, ptr %instance, i32 0, i32 15, i32 6
  tail call void @tasklet_kill(ptr noundef %tasklet.i.i) #15
  %tasklet1.i.i = getelementptr %struct.usbatm_data, ptr %instance, i32 0, i32 16, i32 6
  tail call void @tasklet_kill(ptr noundef %tasklet1.i.i) #15
  %usb_dev.i.i = getelementptr %struct.usbatm_data, ptr %instance, i32 0, i32 4
  %1 = ptrtoint ptr %usb_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_dev.i.i, align 4
  tail call void @usb_put_dev(ptr noundef %2) #15
  tail call void @kfree(ptr noundef %instance) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbatm_usb_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_rcv_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %0)
  %cmp = icmp ugt i32 %0, 16
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @num_snd_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp1 = icmp ugt i32 %1, 16
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr @rcv_buf_bytes, align 4
  %3 = add i32 %2, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %3)
  %4 = icmp ult i32 %3, -65536
  br i1 %4, label %lor.lhs.false2.return_crit_edge, label %lor.lhs.false6

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #17
  %5 = load i32, ptr @snd_buf_bytes, align 4
  %6 = add i32 %5, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %6)
  %7 = icmp ult i32 %6, -65536
  %spec.select = select i1 %7, i32 -22, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false6, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usbatm_usb_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbatm_tasklet_schedule(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %t, i32 -20
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tasklet = getelementptr i8, ptr %t, i32 -24
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #15
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbatm_submit_urb(ptr noundef %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.usbatm_submit_urb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %usbatm = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbatm, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %7, ptr noundef nonnull @__func__.usbatm_submit_urb, ptr noundef %urb, i32 noundef %call) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -11, ptr %status, align 4
  %lock = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %urb_list = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5
  %list = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %urb_list, ptr noundef %list, ptr noundef %10) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %urb_list, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %urb_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %urb_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %urb_list, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %delay = getelementptr inbounds %struct.usbatm_channel, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 10
  %call7 = tail call i32 @mod_timer(ptr noundef %delay, i32 noundef %add) #15
  br label %if.end8

if.end8:                                          ; preds = %list_add.exit, %entry.if.end8_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbatm_extract_one_cell(ptr noundef %instance, ptr nocapture noundef readonly %source) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %source, align 1
  %2 = shl i8 %1, 4
  %shl = zext i8 %2 to i32
  %arrayidx1 = getelementptr i8, ptr %source, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %5 = lshr i32 %conv2, 4
  %or = or i32 %5, %shl
  %conv3 = trunc i32 %or to i16
  %and6 = shl nuw nsw i32 %conv2, 12
  %shl7 = and i32 %and6, 61440
  %arrayidx8 = getelementptr i8, ptr %source, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 4
  %or11 = or i32 %shl7, %shl10
  %arrayidx12 = getelementptr i8, ptr %source, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %10 = lshr i8 %9, 4
  %11 = zext i8 %10 to i32
  %or15 = or i32 %or11, %11
  %cached_vci = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 20
  %12 = ptrtoint ptr %cached_vci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached_vci, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or15, i32 %13)
  %cmp.not = icmp eq i32 %or15, %13
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cached_vpi = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 21
  %14 = ptrtoint ptr %cached_vpi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cached_vpi, align 4
  %conv23 = sext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv23)
  %cmp24.not = icmp eq i32 %or, %conv23
  br i1 %cmp24.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cached_vpi26 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 21
  %16 = ptrtoint ptr %cached_vpi26 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv3, ptr %cached_vpi26, align 4
  %17 = ptrtoint ptr %cached_vci to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or15, ptr %cached_vci, align 4
  %vcc_list.i = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 14
  %18 = ptrtoint ptr %vcc_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %vcc_data.018.i = load ptr, ptr %vcc_list.i, align 4
  %cmp.not19.i = icmp eq ptr %vcc_data.018.i, %vcc_list.i
  br i1 %cmp.not19.i, label %if.then.usbatm_find_vcc.exit.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.usbatm_find_vcc.exit.thread_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_find_vcc.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %vcc_data.020.i = phi ptr [ %vcc_data.0.i, %for.inc.i.for.body.i_crit_edge ], [ %vcc_data.018.i, %if.then.for.body.i_crit_edge ]
  %vci2.i = getelementptr inbounds %struct.usbatm_vcc_data, ptr %vcc_data.020.i, i32 0, i32 2
  %19 = ptrtoint ptr %vci2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vci2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %or15)
  %cmp3.i = icmp eq i32 %20, %or15
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vpi4.i = getelementptr inbounds %struct.usbatm_vcc_data, ptr %vcc_data.020.i, i32 0, i32 1
  %21 = ptrtoint ptr %vpi4.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vpi4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %conv3)
  %cmp6.i = icmp eq i16 %22, %conv3
  br i1 %cmp6.i, label %usbatm_find_vcc.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %vcc_data.020.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %vcc_data.0.i = load ptr, ptr %vcc_data.020.i, align 4
  %cmp.not.i = icmp eq ptr %vcc_data.0.i, %vcc_list.i
  br i1 %cmp.not.i, label %for.inc.i.usbatm_find_vcc.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.usbatm_find_vcc.exit.thread_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %usbatm_find_vcc.exit.thread

usbatm_find_vcc.exit.thread:                      ; preds = %for.inc.i.usbatm_find_vcc.exit.thread_crit_edge, %if.then.usbatm_find_vcc.exit.thread_crit_edge
  %cached_vcc343 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 19
  %24 = ptrtoint ptr %cached_vcc343 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cached_vcc343, align 4
  br label %do.body

usbatm_find_vcc.exit:                             ; preds = %land.lhs.true.i
  %cached_vcc = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 19
  %25 = ptrtoint ptr %cached_vcc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vcc_data.020.i, ptr %cached_vcc, align 4
  %tobool.not = icmp eq ptr %vcc_data.020.i, null
  br i1 %tobool.not, label %usbatm_find_vcc.exit.do.body_crit_edge, label %usbatm_find_vcc.exit.if.end39_crit_edge

usbatm_find_vcc.exit.if.end39_crit_edge:          ; preds = %usbatm_find_vcc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

usbatm_find_vcc.exit.do.body_crit_edge:           ; preds = %usbatm_find_vcc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %usbatm_find_vcc.exit.do.body_crit_edge, %usbatm_find_vcc.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_extract_one_cell.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_extract_one_cell, %land.lhs.true)) #15
          to label %if.end39 [label %land.lhs.true], !srcloc !222

land.lhs.true:                                    ; preds = %do.body
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_extract_one_cell._rs, ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end39_crit_edge, label %if.then36

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %26 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_extract_one_cell.descriptor, ptr noundef nonnull @.str.27, i32 noundef %29, ptr noundef nonnull @.str.26, i32 noundef %or, i32 noundef %or15) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %land.lhs.true.if.end39_crit_edge, %do.body, %usbatm_find_vcc.exit.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %cached_vcc40 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 19
  %30 = ptrtoint ptr %cached_vcc40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cached_vcc40, align 4
  %tobool41.not = icmp eq ptr %31, null
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %vcc45 = getelementptr inbounds %struct.usbatm_vcc_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %vcc45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vcc45, align 4
  %34 = and i8 %9, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %cmp47 = icmp eq i8 %34, 10
  br i1 %cmp47, label %if.then49, label %if.end62

if.then49:                                        ; preds = %if.end43
  %call50 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end61_crit_edge, label %do.end55

if.then49.if.end61_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

do.end55:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev57 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %35 = ptrtoint ptr %atm_dev57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %atm_dev57, align 4
  %number58 = getelementptr inbounds %struct.atm_dev, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %number58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number58, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %38, ptr noundef nonnull @.str.26, i32 noundef %or, i32 noundef %or15) #19
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.then49.if.end61_crit_edge
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 16
  %39 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stats, align 8
  %rx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %40, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rx_err, i32 1, i32 3, i32 1) #15
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err, ptr %rx_err, i32 1, ptr elementtype(i32) %rx_err) #15, !srcloc !225
  br label %cleanup

if.end62:                                         ; preds = %if.end43
  %sarb64 = getelementptr inbounds %struct.usbatm_vcc_data, ptr %31, i32 0, i32 4
  %42 = ptrtoint ptr %sarb64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sarb64, align 4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %45, i32 48
  %end = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 17
  %46 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end, align 4
  %cmp65 = icmp ugt ptr %add.ptr, %47
  br i1 %cmp65, label %do.body68, label %if.end62.if.end89_crit_edge

if.end62.if.end89_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

do.body68:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_extract_one_cell.descriptor.30, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_extract_one_cell, %land.lhs.true80)) #15
          to label %do.end88 [label %land.lhs.true80], !srcloc !222

land.lhs.true80:                                  ; preds = %do.body68
  %call81 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_extract_one_cell._rs.29, ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.do.end88_crit_edge, label %if.then83

land.lhs.true80.do.end88_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end88

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev84 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %48 = ptrtoint ptr %atm_dev84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %atm_dev84, align 4
  %number85 = getelementptr inbounds %struct.atm_dev, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %number85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %number85, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_extract_one_cell.descriptor.30, ptr noundef nonnull @.str.31, i32 noundef %51, ptr noundef nonnull @.str.26, i32 noundef %53, ptr noundef %33) #15
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %land.lhs.true80.do.end88_crit_edge, %do.body68
  tail call void @skb_trim(ptr noundef %43, i32 noundef 0) #15
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %if.end62.if.end89_crit_edge
  %54 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail, align 8
  %add.ptr91 = getelementptr i8, ptr %source, i32 5
  %56 = call ptr @memcpy(ptr %55, ptr %add.ptr91, i32 48)
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 7
  %57 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !226

do.body3.i:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #15, !srcloc !236
  unreachable

__skb_put.exit:                                   ; preds = %if.end89
  %59 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail, align 8
  %add.ptr.i = getelementptr i8, ptr %60, i32 48
  store ptr %add.ptr.i, ptr %tail, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 6
  %61 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %62, 48
  store i32 %add.i, ptr %len9.i, align 4
  %63 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool95.not = icmp eq i8 %63, 0
  br i1 %tobool95.not, label %__skb_put.exit.cleanup_crit_edge, label %if.then96

__skb_put.exit.cleanup_crit_edge:                 ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then96:                                        ; preds = %__skb_put.exit
  %arrayidx97 = getelementptr i8, ptr %source, i32 47
  %64 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %65 to i32
  %shl99 = shl nuw nsw i32 %conv98, 8
  %arrayidx100 = getelementptr i8, ptr %source, i32 48
  %66 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %67 to i32
  %add = or i32 %shl99, %conv101
  %add.i330 = add nuw nsw i32 %add, 55
  %rem.i = urem i32 %add.i330, 48
  %sub.i = sub nuw nsw i32 %add.i330, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i)
  %cmp131 = icmp ult i32 %add.i, %sub.i
  br i1 %cmp131, label %do.body134, label %if.end158

do.body134:                                       ; preds = %if.then96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_extract_one_cell.descriptor.36, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_extract_one_cell, %land.lhs.true146)) #15
          to label %do.end155 [label %land.lhs.true146], !srcloc !222

land.lhs.true146:                                 ; preds = %do.body134
  %call147 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_extract_one_cell._rs.35, ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %land.lhs.true146.do.end155_crit_edge, label %if.then149

land.lhs.true146.do.end155_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end155

if.then149:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev150 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %68 = ptrtoint ptr %atm_dev150 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %atm_dev150, align 4
  %number151 = getelementptr inbounds %struct.atm_dev, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %number151 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %number151, align 4
  %72 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_extract_one_cell.descriptor.36, ptr noundef nonnull @.str.37, i32 noundef %71, ptr noundef nonnull @.str.26, i32 noundef %sub.i, i32 noundef %73, ptr noundef %33) #15
  br label %do.end155

do.end155:                                        ; preds = %if.then149, %land.lhs.true146.do.end155_crit_edge, %do.body134
  %stats156 = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 16
  %74 = ptrtoint ptr %stats156 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %stats156, align 8
  %rx_err157 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %75, i32 0, i32 3
  %call.i.i319 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err157, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rx_err157, i32 1, i32 3, i32 1) #15
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err157, ptr %rx_err157, i32 1, ptr elementtype(i32) %rx_err157) #15, !srcloc !225
  br label %out

if.end158:                                        ; preds = %if.then96
  %idx.neg = sub nsw i32 0, %sub.i
  %add.ptr160 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg
  %call161 = tail call i32 @crc32_be(i32 noundef -1, ptr noundef %add.ptr160, i32 noundef %sub.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -955982469, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, -955982469
  br i1 %cmp162.not, label %if.end188, label %do.body165

do.body165:                                       ; preds = %if.end158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_extract_one_cell.descriptor.39, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_extract_one_cell, %land.lhs.true177)) #15
          to label %do.end185 [label %land.lhs.true177], !srcloc !222

land.lhs.true177:                                 ; preds = %do.body165
  %call178 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_extract_one_cell._rs.38, ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %land.lhs.true177.do.end185_crit_edge, label %if.then180

land.lhs.true177.do.end185_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end185

if.then180:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev181 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %77 = ptrtoint ptr %atm_dev181 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %atm_dev181, align 4
  %number182 = getelementptr inbounds %struct.atm_dev, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %number182 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %number182, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_extract_one_cell.descriptor.39, ptr noundef nonnull @.str.40, i32 noundef %80, ptr noundef nonnull @.str.26, ptr noundef %33) #15
  br label %do.end185

do.end185:                                        ; preds = %if.then180, %land.lhs.true177.do.end185_crit_edge, %do.body165
  %stats186 = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 16
  %81 = ptrtoint ptr %stats186 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stats186, align 8
  %rx_err187 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %82, i32 0, i32 3
  %call.i.i323 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err187, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rx_err187, i32 1, i32 3, i32 1) #15
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err187, ptr %rx_err187, i32 1, ptr elementtype(i32) %rx_err187) #15, !srcloc !225
  br label %out

if.end188:                                        ; preds = %if.end158
  %call.i.i332 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #15
  %tobool190.not = icmp eq ptr %call.i.i332, null
  br i1 %tobool190.not, label %if.then191, label %if.end204

if.then191:                                       ; preds = %if.end188
  %call192 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then191.if.end202_crit_edge, label %do.end197

if.then191.if.end202_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end202

do.end197:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev199 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %84 = ptrtoint ptr %atm_dev199 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %atm_dev199, align 4
  %number200 = getelementptr inbounds %struct.atm_dev, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %number200 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %number200, align 4
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %87, ptr noundef nonnull @.str.26, i32 noundef %add) #19
  br label %if.end202

if.end202:                                        ; preds = %do.end197, %if.then191.if.end202_crit_edge
  %stats203 = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 16
  %88 = ptrtoint ptr %stats203 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %stats203, align 8
  %rx_drop = getelementptr inbounds %struct.k_atm_aal_stats, ptr %89, i32 0, i32 4
  %call.i.i324 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rx_drop, i32 1, i32 3, i32 1) #15
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop, ptr %rx_drop, i32 1, ptr elementtype(i32) %rx_drop) #15, !srcloc !225
  br label %out

if.end204:                                        ; preds = %if.end188
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i.i332, i32 0, i32 20
  %91 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %truesize, align 8
  %call205 = tail call i32 @atm_charge(ptr noundef %33, i32 noundef %92) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %do.body208, label %if.end230

do.body208:                                       ; preds = %if.end204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_extract_one_cell.descriptor.45, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_extract_one_cell, %land.lhs.true220)) #15
          to label %do.end229 [label %land.lhs.true220], !srcloc !222

land.lhs.true220:                                 ; preds = %do.body208
  %call221 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_extract_one_cell._rs.44, ptr noundef nonnull @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %land.lhs.true220.do.end229_crit_edge, label %if.then223

land.lhs.true220.do.end229_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end229

if.then223:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev224 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %93 = ptrtoint ptr %atm_dev224 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %atm_dev224, align 4
  %number225 = getelementptr inbounds %struct.atm_dev, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %number225 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %number225, align 4
  %97 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %truesize, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_extract_one_cell.descriptor.45, ptr noundef nonnull @.str.46, i32 noundef %96, ptr noundef nonnull @.str.26, i32 noundef %98) #15
  br label %do.end229

do.end229:                                        ; preds = %if.then223, %land.lhs.true220.do.end229_crit_edge, %do.body208
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i332, i32 noundef 1) #15
  br label %out

if.end230:                                        ; preds = %if.end204
  %99 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tail, align 8
  %add.ptr233 = getelementptr i8, ptr %100, i32 %idx.neg
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i332, i32 0, i32 19
  %101 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i, align 4
  %103 = call ptr @memcpy(ptr %102, ptr %add.ptr233, i32 %add)
  %data_len.i.i334 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i332, i32 0, i32 7
  %104 = ptrtoint ptr %data_len.i.i334 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len.i.i334, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i.not.i335 = icmp eq i32 %105, 0
  br i1 %tobool.i.not.i335, label %__skb_put.exit341, label %do.body3.i336, !prof !226

do.body3.i336:                                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #15, !srcloc !236
  unreachable

__skb_put.exit341:                                ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  %tail.i.i337 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i332, i32 0, i32 16
  %106 = ptrtoint ptr %tail.i.i337 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i.i337, align 8
  %add.ptr.i338 = getelementptr i8, ptr %107, i32 %add
  store ptr %add.ptr.i338, ptr %tail.i.i337, align 8
  %len9.i339 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i332, i32 0, i32 6
  %108 = ptrtoint ptr %len9.i339 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len9.i339, align 4
  %add.i340 = add i32 %109, %add
  store i32 %add.i340, ptr %len9.i339, align 4
  %push = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 10
  %110 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %push, align 8
  tail call void %111(ptr noundef %33, ptr noundef nonnull %call.i.i332) #15
  %stats235 = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 16
  %112 = ptrtoint ptr %stats235 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %stats235, align 8
  %rx = getelementptr inbounds %struct.k_atm_aal_stats, ptr %113, i32 0, i32 2
  %call.i.i328 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rx, i32 1, i32 3, i32 1) #15
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx, ptr %rx, i32 1, ptr elementtype(i32) %rx) #15, !srcloc !225
  br label %out

out:                                              ; preds = %__skb_put.exit341, %do.end229, %if.end202, %do.end185, %do.end155
  tail call void @skb_trim(ptr noundef %43, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %__skb_put.exit.cleanup_crit_edge, %if.end61, %if.end39.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_charge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbatm_do_heavy_init(ptr noundef %arg) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  %thread_started = getelementptr inbounds %struct.usbatm_data, ptr %arg, i32 0, i32 12
  tail call void @complete(ptr noundef %thread_started) #15
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %heavy_init = getelementptr inbounds %struct.usbatm_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %heavy_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %heavy_init, align 4
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %arg, i32 0, i32 5
  %4 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_intf, align 4
  %call = tail call i32 %3(ptr noundef %arg, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call fastcc i32 @usbatm_atm_init(ptr noundef %arg)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  %serialize = getelementptr inbounds %struct.usbatm_data, ptr %arg, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #15
  %thread = getelementptr inbounds %struct.usbatm_data, ptr %arg, i32 0, i32 11
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %thread, align 4
  tail call void @mutex_unlock(ptr noundef %serialize) #15
  %thread_exited = getelementptr inbounds %struct.usbatm_data, ptr %arg, i32 0, i32 13
  call void @__asan_handle_no_return()
  tail call void @kthread_complete_and_exit(ptr noundef %thread_exited, i32 noundef %ret.0) #21
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbatm_atm_dev_close(ptr nocapture noundef %atm_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dev_data, align 8
  tail call fastcc void @usbatm_put_instance(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbatm_atm_open(ptr noundef %vcc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %vci1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %4 = ptrtoint ptr %vci1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vci1, align 8
  %vpi2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %6 = ptrtoint ptr %vpi2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vpi2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.not = icmp eq i8 %9, 5
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %9 to i32
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %13, ptr noundef nonnull @.str.59, i32 noundef %conv) #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %max_sdu = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1, i32 5
  %14 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %15)
  %16 = icmp ugt i32 %15, 65535
  br i1 %16, label %do.body18, label %if.end33

do.body18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_atm_open.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_atm_open, %if.then24)) #15
          to label %cleanup [label %if.then24], !srcloc !222

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev25 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %atm_dev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %atm_dev25, align 4
  %number26 = getelementptr inbounds %struct.atm_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %number26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number26, align 4
  %21 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_sdu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_atm_open.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.60, i32 noundef %20, ptr noundef nonnull @.str.59, i32 noundef %22) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end8
  %serialize = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #15
  %disconnected = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool34.not = icmp eq i32 %24, 0
  br i1 %tobool34.not, label %if.end54, label %do.body36

do.body36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_atm_open.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_atm_open, %if.then48)) #15
          to label %fail [label %if.then48], !srcloc !222

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev49 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %atm_dev49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %atm_dev49, align 4
  %number50 = getelementptr inbounds %struct.atm_dev, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %number50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number50, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_atm_open.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.61, i32 noundef %28, ptr noundef nonnull @.str.59) #15
  br label %fail

if.end54:                                         ; preds = %if.end33
  %vcc_list.i = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %vcc_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %vcc_data.018.i = load ptr, ptr %vcc_list.i, align 4
  %cmp.not19.i = icmp eq ptr %vcc_data.018.i, %vcc_list.i
  br i1 %cmp.not19.i, label %if.end54.if.end77_crit_edge, label %if.end54.for.body.i_crit_edge

if.end54.for.body.i_crit_edge:                    ; preds = %if.end54
  br label %for.body.i

if.end54.if.end77_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end54.for.body.i_crit_edge
  %vcc_data.020.i = phi ptr [ %vcc_data.0.i, %for.inc.i.for.body.i_crit_edge ], [ %vcc_data.018.i, %if.end54.for.body.i_crit_edge ]
  %vci2.i = getelementptr inbounds %struct.usbatm_vcc_data, ptr %vcc_data.020.i, i32 0, i32 2
  %30 = ptrtoint ptr %vci2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vci2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %5)
  %cmp3.i = icmp eq i32 %31, %5
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vpi4.i = getelementptr inbounds %struct.usbatm_vcc_data, ptr %vcc_data.020.i, i32 0, i32 1
  %32 = ptrtoint ptr %vpi4.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vpi4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %7)
  %cmp6.i = icmp eq i16 %33, %7
  br i1 %cmp6.i, label %usbatm_find_vcc.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %34 = ptrtoint ptr %vcc_data.020.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %vcc_data.0.i = load ptr, ptr %vcc_data.020.i, align 4
  %cmp.not.i = icmp eq ptr %vcc_data.0.i, %vcc_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end77_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.end77_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

usbatm_find_vcc.exit:                             ; preds = %land.lhs.true.i
  %tobool56.not = icmp eq ptr %vcc_data.020.i, null
  br i1 %tobool56.not, label %usbatm_find_vcc.exit.if.end77_crit_edge, label %do.body58

usbatm_find_vcc.exit.if.end77_crit_edge:          ; preds = %usbatm_find_vcc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

do.body58:                                        ; preds = %usbatm_find_vcc.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_atm_open.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_atm_open, %if.then70)) #15
          to label %fail [label %if.then70], !srcloc !222

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev71 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %atm_dev71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %atm_dev71, align 4
  %number72 = getelementptr inbounds %struct.atm_dev, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %number72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number72, align 4
  %conv73 = sext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_atm_open.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.62, i32 noundef %38, ptr noundef nonnull @.str.59, i32 noundef %conv73, i32 noundef %5) #15
  br label %fail

if.end77:                                         ; preds = %usbatm_find_vcc.exit.if.end77_crit_edge, %for.inc.i.if.end77_crit_edge, %if.end54.if.end77_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 24) #22
  %tobool79.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool79.not, label %if.end77.fail_crit_edge, label %if.end81

if.end77.fail_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end81:                                         ; preds = %if.end77
  %vcc82 = getelementptr inbounds %struct.usbatm_vcc_data, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %vcc82 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %vcc, ptr %vcc82, align 8
  %vpi83 = getelementptr inbounds %struct.usbatm_vcc_data, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %vpi83 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %7, ptr %vpi83, align 8
  %vci84 = getelementptr inbounds %struct.usbatm_vcc_data, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %vci84 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %5, ptr %vci84, align 4
  %43 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_sdu, align 4
  %add.i = add i32 %44, 55
  %rem.i = urem i32 %add.i, 48
  %sub.i = sub i32 %add.i, %rem.i
  %call.i = tail call ptr @__alloc_skb(i32 noundef %sub.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %sarb = getelementptr inbounds %struct.usbatm_vcc_data, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %sarb to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %sarb, align 4
  %tobool91.not = icmp eq ptr %call.i, null
  br i1 %tobool91.not, label %do.end95, label %if.end100

do.end95:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev97 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %46 = ptrtoint ptr %atm_dev97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %atm_dev97, align 4
  %number98 = getelementptr inbounds %struct.atm_dev, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %number98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number98, align 4
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %49, ptr noundef nonnull @.str.59) #19
  br label %fail

if.end100:                                        ; preds = %if.end81
  %dev_data101 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %50 = ptrtoint ptr %dev_data101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %dev_data101, align 8
  %tasklet = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 15, i32 6
  %count.i.i = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 15, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !230
  %cached_vcc = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 19
  %52 = ptrtoint ptr %cached_vcc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %cached_vcc, align 4
  %cached_vpi = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 21
  %53 = ptrtoint ptr %cached_vpi to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %7, ptr %cached_vpi, align 4
  %cached_vci = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 20
  %54 = ptrtoint ptr %cached_vci to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %5, ptr %cached_vci, align 4
  %55 = ptrtoint ptr %vcc_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vcc_list.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vcc_list.i, ptr noundef %56) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end100.list_add.exit_crit_edge

if.end100.list_add.exit_crit_edge:                ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %vcc_list.i, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %vcc_list.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i, ptr %vcc_list.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end100.list_add.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !232
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #15
  tail call void @mutex_unlock(ptr noundef %serialize) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_atm_open.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_atm_open, %if.then119)) #15
          to label %cleanup [label %if.then119], !srcloc !222

if.then119:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev120 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %62 = ptrtoint ptr %atm_dev120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %atm_dev120, align 4
  %number121 = getelementptr inbounds %struct.atm_dev, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %number121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %number121, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_atm_open.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.66, i32 noundef %65, ptr noundef nonnull @.str.59, ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

fail:                                             ; preds = %do.end95, %if.end77.fail_crit_edge, %if.then70, %do.body58, %if.then48, %do.body36
  %ret.0 = phi i32 [ -12, %do.end95 ], [ -19, %if.then48 ], [ -98, %if.then70 ], [ -12, %if.end77.fail_crit_edge ], [ -19, %do.body36 ], [ -98, %do.body58 ]
  %new.0 = phi ptr [ %call7.i.i, %do.end95 ], [ null, %if.then48 ], [ null, %if.then70 ], [ null, %if.end77.fail_crit_edge ], [ null, %do.body36 ], [ null, %do.body58 ]
  tail call void @kfree(ptr noundef %new.0) #15
  tail call void @mutex_unlock(ptr noundef %serialize) #15
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then119, %list_add.exit, %if.then24, %do.body18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %fail ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.then24 ], [ 0, %if.then119 ], [ -22, %do.body18 ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbatm_atm_close(ptr noundef %vcc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool2.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @usbatm_cancel_send(ptr noundef nonnull %3, ptr noundef %vcc)
  %serialize = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #15
  %tasklet = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 15, i32 6
  %count.i.i = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 15, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !230
  %cached_vcc = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %cached_vcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cached_vcc, align 4
  %cmp = icmp eq ptr %8, %5
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %cached_vcc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cached_vcc, align 4
  %cached_vpi = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %cached_vpi to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -2, ptr %cached_vpi, align 4
  %cached_vci = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 20
  %11 = ptrtoint ptr %cached_vci to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2, ptr %cached_vci, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !232
  %sarb = getelementptr inbounds %struct.usbatm_vcc_data, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %sarb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sarb, align 4
  tail call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #15
  %23 = ptrtoint ptr %sarb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sarb, align 4
  tail call void @kfree(ptr noundef nonnull %5) #15
  %24 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dev_data1, align 8
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %25 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -2, ptr %vpi, align 4
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %26 = ptrtoint ptr %vci to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2, ptr %vci, align 8
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #15
  tail call void @mutex_unlock(ptr noundef %serialize) #15
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbatm_atm_ioctl(ptr nocapture noundef readonly %atm_dev, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %disconnected = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553172, i32 %cmd)
  %cond4 = icmp eq i32 %cmd, 1074553172
  br i1 %cond4, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 895) #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !212) #15
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #14, !srcloc !237
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !239
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 0, i32 -1226833921) #15, !srcloc !240
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #15, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool3.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.bb ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbatm_atm_send(ptr noundef %vcc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %lor.lhs.false

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

lor.lhs.false:                                    ; preds = %entry
  %disconnected = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end:                                           ; preds = %lor.lhs.false
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp.not = icmp eq i8 %7, 5
  br i1 %cmp.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_atm_send.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_atm_send, %land.lhs.true)) #15
          to label %fail [label %land.lhs.true], !srcloc !222

land.lhs.true:                                    ; preds = %do.body
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_atm_send._rs, ptr noundef nonnull @.str.70) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.fail_crit_edge, label %if.then9

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  %12 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aal, align 8
  %conv12 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_atm_send.descriptor, ptr noundef nonnull @.str.71, i32 noundef %11, ptr noundef nonnull @.str.70, i32 noundef %conv12) #15
  br label %fail

if.end14:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %15)
  %cmp15 = icmp ugt i32 %15, 65535
  br i1 %cmp15, label %do.body18, label %if.end40

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_atm_send.descriptor.73, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_atm_send, %land.lhs.true30)) #15
          to label %fail [label %land.lhs.true30], !srcloc !222

land.lhs.true30:                                  ; preds = %do.body18
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @usbatm_atm_send._rs.72, ptr noundef nonnull @.str.70) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.fail_crit_edge, label %if.then33

land.lhs.true30.fail_crit_edge:                   ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev34 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %atm_dev34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %atm_dev34, align 4
  %number35 = getelementptr inbounds %struct.atm_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %number35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number35, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_atm_send.descriptor.73, ptr noundef nonnull @.str.74, i32 noundef %19, ptr noundef nonnull @.str.70, i32 noundef %21, i32 noundef 65535) #15
  br label %fail

if.end40:                                         ; preds = %if.end14
  %22 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vcc, ptr %cb, align 4
  %len43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %len43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %len43, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %call45 = tail call i32 @crc32_be(i32 noundef -1, ptr noundef %25, i32 noundef %15) #20
  %crc = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %26 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call45, ptr %crc, align 4
  %sndqueue = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 17
  tail call void @skb_queue_tail(ptr noundef %sndqueue, ptr noundef %skb) #15
  %state.i = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 16, i32 6, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %tasklet = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 16, i32 6
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #15
  br label %cleanup

fail:                                             ; preds = %if.then33, %land.lhs.true30.fail_crit_edge, %do.body18, %if.then9, %land.lhs.true.fail_crit_edge, %do.body, %lor.lhs.false.fail_crit_edge, %entry.fail_crit_edge
  %err.0 = phi i32 [ -19, %lor.lhs.false.fail_crit_edge ], [ -19, %entry.fail_crit_edge ], [ -22, %if.then9 ], [ -22, %land.lhs.true.fail_crit_edge ], [ -22, %if.then33 ], [ -22, %land.lhs.true30.fail_crit_edge ], [ -22, %do.body ], [ -22, %do.body18 ]
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %27 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pop.i, align 4
  %tobool.not.i69 = icmp eq ptr %28, null
  br i1 %tobool.not.i69, label %if.else.i, label %if.then.i70

if.then.i70:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %28(ptr noundef %vcc, ptr noundef %skb) #15
  br label %cleanup

if.else.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i70, %if.then.i, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40.cleanup_crit_edge ], [ 0, %if.then.i ], [ %err.0, %if.then.i70 ], [ %err.0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbatm_atm_proc_read(ptr noundef %atm_dev, ptr nocapture noundef readonly %pos, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conv = trunc i64 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then2
    i32 1, label %if.then6
    i32 2, label %if.then12
    i32 3, label %if.then30
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %description = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 6
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.75, ptr noundef %description)
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %esi = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 9
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, ptr noundef %esi)
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %aal5 = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 11, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aal5, i32 noundef 4) #15
  %5 = ptrtoint ptr %aal5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %aal5, align 4
  %tx_err = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 11, i32 2, i32 1
  %call.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_err, i32 noundef 4) #15
  %7 = ptrtoint ptr %tx_err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tx_err, align 4
  %rx = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 11, i32 2, i32 2
  %call.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #15
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx, align 4
  %rx_err = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 11, i32 2, i32 3
  %call.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_err, i32 noundef 4) #15
  %11 = ptrtoint ptr %rx_err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %rx_err, align 4
  %rx_drop = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 11, i32 2, i32 4
  %call.i.i62 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_drop, i32 noundef 4) #15
  %13 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rx_drop, align 4
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.77, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14)
  br label %cleanup

if.then30:                                        ; preds = %if.end
  %disconnected = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %17 = call ptr @memcpy(ptr %page, ptr @.str.78, i32 14)
  br label %cleanup

if.else:                                          ; preds = %if.then30
  %signal = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 12
  %18 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %signal, align 8
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %19, label %sw.default [
    i8 2, label %sw.bb
    i8 0, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %21 = call ptr @memcpy(ptr %page, ptr @.str.79, i32 9)
  br label %cleanup

sw.bb36:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %22 = call ptr @memcpy(ptr %page, ptr @.str.80, i32 11)
  br label %cleanup

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %23 = call ptr @memcpy(ptr %page, ptr @.str.81, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb36, %sw.bb, %if.then32, %if.then12, %if.then6, %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 13, %if.then32 ], [ 19, %sw.default ], [ 10, %sw.bb36 ], [ 8, %sw.bb ], [ %call26, %if.then12 ], [ %call8, %if.then6 ], [ %call, %if.then2 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbatm_cancel_send(ptr noundef %instance, ptr noundef %vcc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sndqueue = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 17
  %lock = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 17, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %0 = ptrtoint ptr %sndqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sndqueue, align 4
  %cmp.not76 = icmp eq ptr %1, %sndqueue
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %qlen.i = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 17, i32 1
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.077 = phi ptr [ %1, %for.body.lr.ph ], [ %n.078, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %skb.077 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.078 = load ptr, ptr %skb.077, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.077, i32 0, i32 3
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb, align 8
  %cmp5 = icmp eq ptr %4, %vcc
  br i1 %cmp5, label %do.body, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_cancel_send.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_cancel_send, %if.then8)) #15
          to label %do.end [label %if.then8], !srcloc !222

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_cancel_send.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.68, i32 noundef %8, ptr noundef nonnull @.str.67, ptr noundef %skb.077) #15
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %10, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %11 = ptrtoint ptr %skb.077 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb.077, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %skb.077, i32 0, i32 1
  %13 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.077, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %prev17.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %12, ptr %14, align 8
  %17 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pop.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %18(ptr noundef %vcc, ptr noundef %skb.077) #15
  br label %for.inc

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.077, i32 noundef 1) #15
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.078, %sndqueue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %tasklet = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 16, i32 6
  %count.i.i = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 16, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !230
  %current_skb = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 18
  %20 = ptrtoint ptr %current_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_skb, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %for.end.if.end40_crit_edge, label %land.lhs.true

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

land.lhs.true:                                    ; preds = %for.end
  %cb15 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cb15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb15, align 8
  %cmp19 = icmp eq ptr %23, %vcc
  br i1 %cmp19, label %do.body21, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

do.body21:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbatm_cancel_send.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbatm_cancel_send, %if.then33)) #15
          to label %do.end38 [label %if.then33], !srcloc !222

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %atm_dev34 = getelementptr inbounds %struct.usbatm_data, ptr %instance, i32 0, i32 7
  %24 = ptrtoint ptr %atm_dev34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %atm_dev34, align 4
  %number35 = getelementptr inbounds %struct.atm_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %number35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number35, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbatm_cancel_send.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.69, i32 noundef %27, ptr noundef nonnull @.str.67, ptr noundef nonnull %21) #15
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %28 = ptrtoint ptr %current_skb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %current_skb, align 4
  %pop.i68 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %29 = ptrtoint ptr %pop.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pop.i68, align 4
  %tobool.not.i69 = icmp eq ptr %30, null
  br i1 %tobool.not.i69, label %if.else.i71, label %if.then.i70

if.then.i70:                                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %30(ptr noundef %vcc, ptr noundef nonnull %21) #15
  br label %if.end40

if.else.i71:                                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %21, i32 noundef 1) #15
  br label %if.end40

if.end40:                                         ; preds = %if.else.i71, %if.then.i70, %land.lhs.true.if.end40_crit_edge, %for.end.if.end40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !232
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !141, !142, !143, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !163, !164, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !202, !204, !206, !208, !210}
!llvm.named.register.sp = !{!212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__param_num_rcv_urbs, !1, !"__param_num_rcv_urbs", i1 false, i1 false}
!1 = !{!"../drivers/usb/atm/usbatm.c", i32 103, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_rcv_urbstype462, !1, !"__UNIQUE_ID_num_rcv_urbstype462", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_rcv_urbs463, !4, !"__UNIQUE_ID_num_rcv_urbs463", i1 false, i1 false}
!4 = !{!"../drivers/usb/atm/usbatm.c", i32 104, i32 1}
!5 = !{ptr @__param_num_snd_urbs, !6, !"__param_num_snd_urbs", i1 false, i1 false}
!6 = !{!"../drivers/usb/atm/usbatm.c", i32 109, i32 1}
!7 = !{ptr @__UNIQUE_ID_num_snd_urbstype464, !6, !"__UNIQUE_ID_num_snd_urbstype464", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_num_snd_urbs465, !9, !"__UNIQUE_ID_num_snd_urbs465", i1 false, i1 false}
!9 = !{!"../drivers/usb/atm/usbatm.c", i32 110, i32 1}
!10 = !{ptr @__param_rcv_buf_bytes, !11, !"__param_rcv_buf_bytes", i1 false, i1 false}
!11 = !{!"../drivers/usb/atm/usbatm.c", i32 115, i32 1}
!12 = !{ptr @__UNIQUE_ID_rcv_buf_bytestype466, !11, !"__UNIQUE_ID_rcv_buf_bytestype466", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_rcv_buf_bytes467, !14, !"__UNIQUE_ID_rcv_buf_bytes467", i1 false, i1 false}
!14 = !{!"../drivers/usb/atm/usbatm.c", i32 116, i32 1}
!15 = !{ptr @__param_snd_buf_bytes, !16, !"__param_snd_buf_bytes", i1 false, i1 false}
!16 = !{!"../drivers/usb/atm/usbatm.c", i32 121, i32 1}
!17 = !{ptr @__UNIQUE_ID_snd_buf_bytestype468, !16, !"__UNIQUE_ID_snd_buf_bytestype468", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_snd_buf_bytes469, !19, !"__UNIQUE_ID_snd_buf_bytes469", i1 false, i1 false}
!19 = !{!"../drivers/usb/atm/usbatm.c", i32 122, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/atm/usbatm.c", i32 1044, i32 29}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/atm/usbatm.c", i32 1054, i32 24}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/atm/usbatm.c", i32 1058, i32 4}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @usbatm_usb_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @usbatm_usb_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @usbatm_usb_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/atm/usbatm.c", i32 1065, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/atm/usbatm.c", i32 1097, i32 3}
!37 = !{ptr @usbatm_usb_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @usbatm_usb_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/atm/usbatm.c", i32 1115, i32 3}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @usbatm_usb_probe.__UNIQUE_ID_ddebug482, !40, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__ksymtab_usbatm_usb_probe, !46, !"__ksymtab_usbatm_usb_probe", i1 false, i1 false}
!46 = !{!"../drivers/usb/atm/usbatm.c", i32 1204, i32 1}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/atm/usbatm.c", i32 1214, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usbatm_usb_disconnect.__UNIQUE_ID_ddebug483, !48, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!51 = !{ptr @__ksymtab_usbatm_usb_disconnect, !52, !"__ksymtab_usbatm_usb_disconnect", i1 false, i1 false}
!52 = !{!"../drivers/usb/atm/usbatm.c", i32 1273, i32 1}
!53 = !{ptr @__initcall__kmod_usbatm__484_1297_usbatm_usb_init6, !54, !"__initcall__kmod_usbatm__484_1297_usbatm_usb_init6", i1 false, i1 false}
!54 = !{!"../drivers/usb/atm/usbatm.c", i32 1297, i32 1}
!55 = !{ptr @__exitcall_usbatm_usb_exit, !56, !"__exitcall_usbatm_usb_exit", i1 false, i1 false}
!56 = !{!"../drivers/usb/atm/usbatm.c", i32 1302, i32 1}
!57 = !{ptr @__UNIQUE_ID_author485, !58, !"__UNIQUE_ID_author485", i1 false, i1 false}
!58 = !{!"../drivers/usb/atm/usbatm.c", i32 1304, i32 1}
!59 = !{ptr @__UNIQUE_ID_description486, !60, !"__UNIQUE_ID_description486", i1 false, i1 false}
!60 = !{!"../drivers/usb/atm/usbatm.c", i32 1305, i32 1}
!61 = !{ptr @__UNIQUE_ID_file487, !62, !"__UNIQUE_ID_file487", i1 false, i1 false}
!62 = !{!"../drivers/usb/atm/usbatm.c", i32 1306, i32 1}
!63 = !{ptr @__UNIQUE_ID_license488, !62, !"__UNIQUE_ID_license488", i1 false, i1 false}
!64 = !{ptr @__param_str_num_rcv_urbs, !1, !"__param_str_num_rcv_urbs", i1 false, i1 false}
!65 = !{ptr @num_rcv_urbs, !66, !"num_rcv_urbs", i1 false, i1 false}
!66 = !{!"../drivers/usb/atm/usbatm.c", i32 98, i32 21}
!67 = !{ptr @__param_str_num_snd_urbs, !6, !"__param_str_num_snd_urbs", i1 false, i1 false}
!68 = !{ptr @num_snd_urbs, !69, !"num_snd_urbs", i1 false, i1 false}
!69 = !{!"../drivers/usb/atm/usbatm.c", i32 99, i32 21}
!70 = !{ptr @__param_str_rcv_buf_bytes, !11, !"__param_str_rcv_buf_bytes", i1 false, i1 false}
!71 = !{ptr @rcv_buf_bytes, !72, !"rcv_buf_bytes", i1 false, i1 false}
!72 = !{!"../drivers/usb/atm/usbatm.c", i32 100, i32 21}
!73 = !{ptr @__param_str_snd_buf_bytes, !16, !"__param_str_snd_buf_bytes", i1 false, i1 false}
!74 = !{ptr @snd_buf_bytes, !75, !"snd_buf_bytes", i1 false, i1 false}
!75 = !{!"../drivers/usb/atm/usbatm.c", i32 101, i32 21}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/usb.h", i32 912, i32 31}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @skb_queue_head_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!83 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @usbatm_init_channel.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/usb/atm/usbatm.c", i32 1003, i32 2}
!86 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @usbatm_init_channel.__key.21, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/usb/atm/usbatm.c", i32 1005, i32 2}
!89 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/atm/usbatm.c", i32 542, i32 6}
!92 = !{ptr @usbatm_rx_process._rs, !91, !"_rs", i1 false, i1 false}
!93 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @usbatm_rx_process.descriptor, !91, !"descriptor", i1 false, i1 false}
!96 = !{ptr @usbatm_extract_one_cell._rs, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/usb/atm/usbatm.c", i32 306, i32 4}
!98 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @usbatm_extract_one_cell.descriptor, !97, !"descriptor", i1 false, i1 false}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/atm/usbatm.c", i32 317, i32 4}
!103 = !{ptr @usbatm_extract_one_cell._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @usbatm_extract_one_cell._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @usbatm_extract_one_cell._rs.29, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../drivers/usb/atm/usbatm.c", i32 326, i32 3}
!107 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @usbatm_extract_one_cell.descriptor.30, !106, !"descriptor", i1 false, i1 false}
!109 = distinct !{null, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/usb/atm/usbatm.c", i32 344, i32 4}
!111 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !110, !"descriptor", i1 false, i1 false}
!113 = !{ptr @usbatm_extract_one_cell._rs.35, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../drivers/usb/atm/usbatm.c", i32 353, i32 4}
!115 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @usbatm_extract_one_cell.descriptor.36, !114, !"descriptor", i1 false, i1 false}
!117 = !{ptr @usbatm_extract_one_cell._rs.38, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/usb/atm/usbatm.c", i32 360, i32 4}
!119 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @usbatm_extract_one_cell.descriptor.39, !118, !"descriptor", i1 false, i1 false}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/atm/usbatm.c", i32 373, i32 5}
!123 = !{ptr @usbatm_extract_one_cell._entry.41, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @usbatm_extract_one_cell._entry_ptr.43, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @usbatm_extract_one_cell._rs.44, !126, !"_rs", i1 false, i1 false}
!126 = !{!"../drivers/usb/atm/usbatm.c", i32 384, i32 4}
!127 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @usbatm_extract_one_cell.descriptor.45, !126, !"descriptor", i1 false, i1 false}
!129 = !{ptr @__func__.usbatm_submit_urb, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/atm/usbatm.c", i32 223, i32 7}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/atm/usbatm.c", i32 224, i32 4}
!133 = !{ptr @usbatm_submit_urb._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @usbatm_submit_urb._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!137 = !{ptr @__func__.usbatm_complete, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/atm/usbatm.c", i32 266, i32 7}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/atm/usbatm.c", i32 267, i32 4}
!141 = !{ptr @usbatm_complete._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @usbatm_complete._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/atm/usbatm.c", i32 979, i32 6}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/atm/usbatm.c", i32 982, i32 3}
!147 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @usbatm_heavy_init._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @usbatm_heavy_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/atm/usbatm.c", i32 914, i32 3}
!152 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @usbatm_atm_init._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @usbatm_atm_init._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/atm/usbatm.c", i32 928, i32 3}
!157 = !{ptr @usbatm_atm_init._entry.55, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @usbatm_atm_init._entry_ptr.57, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @usbatm_atm_devops, !160, !"usbatm_atm_devops", i1 false, i1 false}
!160 = !{!"../drivers/usb/atm/usbatm.c", i32 162, i32 32}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/atm/usbatm.c", i32 783, i32 3}
!163 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @usbatm_atm_open._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @usbatm_atm_open._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.60, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/atm/usbatm.c", i32 789, i32 3}
!168 = !{ptr @usbatm_atm_open.__UNIQUE_ID_ddebug474, !167, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/atm/usbatm.c", i32 796, i32 3}
!171 = !{ptr @usbatm_atm_open.__UNIQUE_ID_ddebug475, !170, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/atm/usbatm.c", i32 802, i32 3}
!174 = !{ptr @usbatm_atm_open.__UNIQUE_ID_ddebug476, !173, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/atm/usbatm.c", i32 819, i32 3}
!177 = !{ptr @usbatm_atm_open._entry.63, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @usbatm_atm_open._entry_ptr.65, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/atm/usbatm.c", i32 839, i32 2}
!181 = !{ptr @usbatm_atm_open.__UNIQUE_ID_ddebug477, !180, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!182 = !{ptr @.str.67, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/atm/usbatm.c", i32 628, i32 4}
!184 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @usbatm_cancel_send.__UNIQUE_ID_ddebug472, !183, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!186 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/atm/usbatm.c", i32 637, i32 3}
!188 = !{ptr @usbatm_cancel_send.__UNIQUE_ID_ddebug473, !187, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!189 = !{ptr @usbatm_atm_send._rs, !190, !"_rs", i1 false, i1 false}
!190 = !{!"../drivers/usb/atm/usbatm.c", i32 660, i32 3}
!191 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @usbatm_atm_send.descriptor, !190, !"descriptor", i1 false, i1 false}
!194 = !{ptr @usbatm_atm_send._rs.72, !195, !"_rs", i1 false, i1 false}
!195 = !{!"../drivers/usb/atm/usbatm.c", i32 666, i32 3}
!196 = !{ptr @.str.74, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @usbatm_atm_send.descriptor.73, !195, !"descriptor", i1 false, i1 false}
!198 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/atm/usbatm.c", i32 739, i32 24}
!200 = !{ptr @.str.76, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/atm/usbatm.c", i32 742, i32 24}
!202 = !{ptr @.str.77, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/atm/usbatm.c", i32 746, i32 11}
!204 = !{ptr @.str.78, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/atm/usbatm.c", i32 755, i32 25}
!206 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/atm/usbatm.c", i32 759, i32 26}
!208 = !{ptr @.str.80, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/atm/usbatm.c", i32 761, i32 26}
!210 = !{ptr @.str.81, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/atm/usbatm.c", i32 763, i32 26}
!212 = !{!"sp"}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{i64 2148414157, i64 2148414162, i64 2148414175, i64 2148414219, i64 2148414253, i64 2148414274}
!223 = !{!"branch_weights", i32 1, i32 2000}
!224 = !{i64 2154633774, i64 2154634262, i64 2154633811, i64 2154633867, i64 2154633901, i64 2154633925, i64 2154633966, i64 2154633987, i64 2154634015, i64 2154634049}
!225 = !{i64 2148589559, i64 2148589585, i64 2148589614, i64 2148589648, i64 2148589679, i64 2148589702}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2148591089, i64 2148591121, i64 2148591150, i64 2148591184, i64 2148591215, i64 2148591238}
!228 = !{i64 2157200449}
!229 = !{i64 2155386272}
!230 = !{i64 2155386914}
!231 = !{i64 2155387261}
!232 = !{i64 2148592024, i64 2148592050, i64 2148592079, i64 2148592113, i64 2148592144, i64 2148592167}
!233 = !{i64 2148679114}
!234 = !{i64 2148593554, i64 2148593586, i64 2148593615, i64 2148593649, i64 2148593680, i64 2148593703}
!235 = !{i64 2150492737}
!236 = !{i64 2154630806, i64 2154631294, i64 2154630843, i64 2154630899, i64 2154630933, i64 2154630957, i64 2154630998, i64 2154631019, i64 2154631047, i64 2154631081}
!237 = !{i64 4771020}
!238 = !{i64 4771217}
!239 = !{i64 2152256450}
!240 = !{i64 2157193659, i64 2157193939, i64 2157194273, i64 2157194607}
